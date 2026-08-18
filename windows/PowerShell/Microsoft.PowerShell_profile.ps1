# https://starship.rs/advanced-config/#transientprompt-in-powershell
function Invoke-Starship-TransientFunction {
  &starship module character
}

Invoke-Expression (&starship init powershell)

fnm env --use-on-cd | Out-String | Invoke-Expression

Enable-TransientPrompt

# Для правильной работы `eza` ниже
Remove-Alias -Name ls -Force -ErrorAction SilentlyContinue

# https://github.com/eza-community/eza
function ls   { eza --icons --classify --all --group-directories-first -1 @args }
function tree { eza --icons --classify --tree @args }

# https://github.com/burntsushi/ripgrep
$script:rg_exe = (Get-Command rg -CommandType Application | Select-Object -First 1).Source

function rg { & $script:rg_exe --hyperlink-format default @args }

# Хэлперы
function c       { Clear-Host }
function profile { notepad $PROFILE }

function cpwd {
    [CmdletBinding()]
    param()

    $PWD.Path | Set-Clipboard
}

# Python
function av { .venv\Scripts\activate.ps1 }

# Rust
function _cargo {
    param(
        [Parameter(Mandatory = $true)]
        [ValidateSet("stable", "unstable")]
        [string]$mode
    )

    $config_dir = Join-Path $env:USERPROFILE ".cargo"
    $mode_toml = Join-Path $config_dir "_$mode.toml"
    $config = Join-Path $config_dir "config.toml"

    if (-not (Test-Path $mode_toml)) {
        Write-Error "Файл $mode_toml не найден!"
        return
    }

    Copy-Item $mode_toml $config -Force
    bat $config
}


