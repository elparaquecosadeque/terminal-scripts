param([string]$Message = (git branch --show-current))

git commit -m $Message
