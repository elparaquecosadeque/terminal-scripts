param([Parameter(Mandatory)][string]$Path)

New-Item -ItemType Directory -Force -Path $Path | Out-Null
Set-Location $Path
