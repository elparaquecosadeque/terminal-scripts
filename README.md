# Terminal Scripts

Terminal scripts to use as handlers for heavy use in terminal

## Installation

Run the installer from this directory:

```powershell
.\install.ps1
```

This adds the directory to your user `PATH`, making its scripts available from the terminal.

---

## Table of scripts and their purposes

| Script | Purpose |
| --- | --- |
| `cdx.ps1` | Move up one or more directories |
| `commit.ps1` | Commit staged files using a message or the current branch name |
| `fetchpullmaster.ps1` | Reset and update the local master branch from origin |
| `glist.ps1` | List the scripts in this directory and their purpose |
| `gorepos.ps1` | Change directory to the local repositories folder |
| `goremote.ps1` | Open the current repository origin remote in the browser |
| `goroot.ps1` | Change directory to the current Git repository root |
| `install.ps1` | Add this directory to the user `PATH` |
| `killport.ps1` | Kill processes occupying a local TCP or UDP port on Windows |
| `mkcd.ps1` | Create a directory and change into it |
| `nubranch.ps1` | Create and switch to a new Git branch |
| `ports.ps1` | List local TCP and UDP ports, optionally filtered by port number |
| `pusho.ps1` | Push the current or specified branch to origin |
| `reloadpath.ps1` | Reload this terminal's PATH from the user and machine environment |
| `resethard.ps1` | Hard-reset the current branch to HEAD |
| `status.ps1` | Show Git working tree status |
