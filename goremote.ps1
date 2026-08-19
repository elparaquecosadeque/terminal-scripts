$remote = git remote get-url origin

if ($LASTEXITCODE -or [string]::IsNullOrWhiteSpace($remote)) {
    Write-Error 'Could not determine origin remote.'
    exit 1
}

$url = $remote -replace '^git@github\.com:', 'https://github.com/' -replace '\.git$', ''
Start-Process $url
