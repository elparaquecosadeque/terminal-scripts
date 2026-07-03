Set-Location ((Get-Content "$PSScriptRoot\.env" | Where-Object { $_ -match '^REPOS_DIRECTORY=' }) -replace '^REPOS_DIRECTORY=', '')
