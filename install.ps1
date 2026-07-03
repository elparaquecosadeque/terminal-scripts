$directory = $PSScriptRoot.TrimEnd('\')

foreach ($target in 'User', 'Process') {
    $path = [Environment]::GetEnvironmentVariable('Path', $target)

    if (-not ($path -split ';' | Where-Object { $_.TrimEnd('\') -eq $directory })) {
        [Environment]::SetEnvironmentVariable('Path', "$path;$directory".Trim(';'), $target)
    }
}
