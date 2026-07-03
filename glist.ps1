@(
    [pscustomobject]@{ Script = 'cdx.ps1';             Purpose = 'Move up one or more directories' }
    [pscustomobject]@{ Script = 'commit.ps1';          Purpose = 'Commit staged files using a message or the current branch name' }
    [pscustomobject]@{ Script = 'fetchpullmaster.ps1'; Purpose = 'Reset and update the local master branch from origin' }
    [pscustomobject]@{ Script = 'glist.ps1';           Purpose = 'List the scripts in this directory and their purpose' }
    [pscustomobject]@{ Script = 'gorepos.ps1';         Purpose = 'Change directory to the local repositories folder' }
    [pscustomobject]@{ Script = 'install.ps1';         Purpose = 'Add this directory to the user PATH' }
    [pscustomobject]@{ Script = 'nubranch.ps1';        Purpose = 'Create and switch to a new Git branch' }
    [pscustomobject]@{ Script = 'pusho.ps1';           Purpose = 'Push the current or specified branch to origin' }
    [pscustomobject]@{ Script = 'resethard.ps1';       Purpose = 'Hard-reset the current branch to HEAD' }
    [pscustomobject]@{ Script = 'status.ps1';          Purpose = 'Show Git working tree status' }
) | Format-Table -AutoSize
