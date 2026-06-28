param([string]$Name)

if ([string]::IsNullOrWhiteSpace($Name)) {
    $Name = Read-Host 'Branch name'
}

git switch -c $Name
