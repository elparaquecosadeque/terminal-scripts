param([Parameter(Mandatory)][ValidateRange(1, 65535)][int]$Port)

$pids = @(
    Get-NetTCPConnection -LocalPort $Port -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess
    Get-NetUDPEndpoint -LocalPort $Port -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess
) | Where-Object { $_ } | Sort-Object -Unique

if (-not $pids) {
    Write-Host "No process found on port $Port."
    exit 0
}

$pids | ForEach-Object {
    $process = Get-Process -Id $_ -ErrorAction SilentlyContinue
    if ($process) {
        Write-Host "Killing $($process.ProcessName) ($_) on port $Port."
        Stop-Process -Id $_ -Force
    }
}
