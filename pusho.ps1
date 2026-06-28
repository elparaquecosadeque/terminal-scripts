param([string]$Branch)

if ([string]::IsNullOrWhiteSpace($Branch)) {
    $Branch = git branch --show-current
    if ($LASTEXITCODE -or [string]::IsNullOrWhiteSpace($Branch)) {
        Write-Error 'Could not determine the current branch.'
        exit 1
    }
}

git push origin $Branch
