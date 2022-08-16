# Oh My Posh

## Install Oh My Posh
https://ohmyposh.dev/docs/installation/windows

`winget install JanDeDobbeleer.OhMyPosh -s winget`

## Install A Font
Open a new terminal as administrator and run:

`oh-my-posh font install`

CascadiaCode was my pick. It will install `CaskaydiaCove NF`

## Windows Terminal Settings
Open windows terminal settings with `"CTRL + SHIFT + ,"`

Under `profiles / default`, add this:

```json
"profiles": {
    "defaults": {
        "font": {
            "face": "CaskaydiaCove NF"
        }
    },
    ...
}
```
Note: You may need to relaunch the terminal

## Copy Files

### Profile
Copy: `Microsoft.PowerShell_profile.ps1`

To: `C:\Users\Zach\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

### Theme
Copy: `zps.omp.json`

To: `C:\Users\Zach\AppData\Local\Programs\oh-my-posh\themes\zps.omp.json`

## Relaunch Terminal

## VS Code
Open settings with `CTRL + ,`

Set `terminal.integrated.fontFamily` to `CaskaydiaCove NF`