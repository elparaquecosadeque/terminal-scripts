param([ValidateRange(1, 65535)][int]$Port)

$tcp = Get-NetTCPConnection -State Listen -ErrorAction SilentlyContinue |
    Where-Object { -not $Port -or $_.LocalPort -eq $Port } |
    ForEach-Object {
        $process = Get-Process -Id $_.OwningProcess -ErrorAction SilentlyContinue
        [pscustomobject]@{
            Protocol = 'TCP'
            Port = $_.LocalPort
            Process = if ($process) { $process.ProcessName } else { '' }
            Pid = $_.OwningProcess
        }
    }

$udp = Get-NetUDPEndpoint -ErrorAction SilentlyContinue |
    Where-Object { -not $Port -or $_.LocalPort -eq $Port } |
    ForEach-Object {
        $process = Get-Process -Id $_.OwningProcess -ErrorAction SilentlyContinue
        [pscustomobject]@{
            Protocol = 'UDP'
            Port = $_.LocalPort
            Process = if ($process) { $process.ProcessName } else { '' }
            Pid = $_.OwningProcess
        }
    }

@($tcp; $udp) | Sort-Object Port, Protocol, Process | Format-Table -AutoSize
