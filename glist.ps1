@(
    [pscustomobject]@{ Script = 'cdx.ps1';             Purpose = 'Move up one or more directories' }
    [pscustomobject]@{ Script = 'commit.ps1';          Purpose = 'Commit staged files using a message or the current branch name' }
    [pscustomobject]@{ Script = 'fetchpullmaster.ps1'; Purpose = 'Reset and update the local master or main branch from origin' }
    [pscustomobject]@{ Script = 'glist.ps1';           Purpose = 'List the scripts in this directory and their purpose' }
    [pscustomobject]@{ Script = 'gorepos.ps1';         Purpose = 'Change directory to the local repositories folder' }
    [pscustomobject]@{ Script = 'goremote.ps1';        Purpose = 'Open the current repository origin remote in the browser' }
    [pscustomobject]@{ Script = 'goroot.ps1';          Purpose = 'Change directory to the current Git repository root' }
    [pscustomobject]@{ Script = 'install.ps1';         Purpose = 'Add this directory to the user PATH' }
    [pscustomobject]@{ Script = 'killport.ps1';        Purpose = 'Kill processes occupying a local TCP or UDP port on Windows' }
    [pscustomobject]@{ Script = 'mkcd.ps1';            Purpose = 'Create a directory and change into it' }
    [pscustomobject]@{ Script = 'nubranch.ps1';        Purpose = 'Create and switch to a new Git branch' }
    [pscustomobject]@{ Script = 'ports.ps1';           Purpose = 'List local TCP and UDP ports, optionally filtered by port number' }
    [pscustomobject]@{ Script = 'pusho.ps1';           Purpose = 'Push the current or specified branch to origin' }
    [pscustomobject]@{ Script = 'reloadpath.ps1';      Purpose = 'Reload this terminal''s PATH from the user and machine environment' }
    [pscustomobject]@{ Script = 'resethard.ps1';       Purpose = 'Hard-reset the current branch to HEAD' }
    [pscustomobject]@{ Script = 'status.ps1';          Purpose = 'Show Git working tree status' }
) | Format-Table -AutoSize
