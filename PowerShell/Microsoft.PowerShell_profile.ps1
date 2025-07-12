& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomic.omp.json" --print) -join "`n"))

# 1_shell atomic clean_detailed gruvbox velvet emodipt-extend di4am0nd craver cobalt2 agnoster

Set-Alias touch New-Item 
Set-Alias ll Get-Childitem -force
Set-Alias grep Select-String

function fzf { wsl find /mnt -type f | fzf }
function projdir { cd d:/Projects}
function nvimdir {cd c:\Users\EVA_Technology\AppData\local/nvim}
function wsldir { cd Microsoft.PowerShell.Core\FileSystem::\\wsl.localhost\kali-linux }

function dsize($path = ".") {
    $bytes = (Get-ChildItem $path -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum
    "{0:N2} MB" -f ($bytes / 1MB)
}

function mkcd {
	param([Parameter(Mandatory)] [string] $folderName)
	mkdir $folderName
	cd $folderName
}

function theme {
    param(
        [Parameter(Mandatory)]
        [string]$ThemeName
    )   
    # Construct the full path to the theme file.
    $configPath = "$env:POSH_THEMES_PATH$ThemeName.omp.json"
    # Initialize oh-my-posh using the specified theme configuration.
    & ([ScriptBlock]::Create((oh-my-posh init pwsh --config $configPath --print) -join "`n"))
}

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
