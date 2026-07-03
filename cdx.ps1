param([ValidateRange(1, 10)][int]$Levels = 1)

Set-Location ('../' * $Levels -join '')
