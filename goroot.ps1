$root = git rev-parse --show-toplevel

if ($LASTEXITCODE -or [string]::IsNullOrWhiteSpace($root)) {
    Write-Error 'Not inside a git repository.'
    exit 1
}

Set-Location $root
