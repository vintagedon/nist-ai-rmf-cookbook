# Session-only activation for a CONDA prefix, without calling `conda activate`.
# Works because we set PATH/vars to the prefix's bins/DLLs explicitly.

$prefix = "D:\AI-ML\venv-global"
$envfile = "D:\AI-ML\global-env\research.env"

if (-not (Test-Path "$prefix\python.exe")) {
  Write-Error "Python not found at $prefix\python.exe"
  return
}

# 1) Minimal PATH needed for compiled wheels (MKL/OpenMP/HDF5 etc.)
$prepend = @(
  "$prefix",
  "$prefix\Scripts",
  "$prefix\Library\bin"
) -join ";"

if ("$env:PATH".StartsWith($prepend) -eq $false) {
  $env:PATH = "$prepend;$env:PATH"
}

# 2) Helpful vars (not strictly required but keeps tools predictable)
$env:PYTHONHOME = $prefix
$env:PYTHONPATH = "$prefix\Lib\site-packages"

# 3) Load canonical env file into the session (key=value lines, ignore comments/blanks)
if (Test-Path $envfile) {
  Get-Content $envfile | ForEach-Object {
    if ($_ -match "^\s*#" -or $_ -match "^\s*$") { return }
    $kv = $_ -split "=", 2
    if ($kv.Count -eq 2) {
      $name = $kv[0].Trim()
      $val  = $kv[1].Trim()
      [System.Environment]::SetEnvironmentVariable($name, $val, "Process")
    }
  }
} else {
  Write-Warning "Env file not found at $envfile"
}

# 4) Handy helpers (always use the prefix python, never PATH resolution)
function pyg { & "$prefix\python.exe" @Args }
function pipg { & "$prefix\python.exe" -m pip @Args }

Write-Host "Activated prefix: $prefix"
& "$prefix\python.exe" -V
