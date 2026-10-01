## [Scoop] installation

```console
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## Install

```console
# https://github.com/astral-sh/uv
scoop install uv
# https://github.com/cli/cli
scoop install gh
# https://github.com/eza-community/eza
scoop install eza
# https://github.com/sharkdp/bat
scoop install bat
# https://codeberg.org/ziglang/zig
scoop install zig
# https://www.7-zip.org
scoop install 7zip
# https://github.com/llvm/llvm-project
scoop install llvm
# https://github.com/casey/just
scoop install just
# https://github.com/XAMPPRocky/tokei
scoop install tokei
# https://github.com/BurntSushi/ripgrep
scoop install ripgrep
# https://github.com/starship/starship
scoop install starship
# https://github.com/sharkdp/hyperfine
scoop install hyperfine
# https://github.com/schniz/fnm
scoop install fnm
fnm install --lts
fnm default
# https://sqlite.org
scoop install sqlite

# https://github.com/suzuki-shunsuke/pinact
scoop bucket add suzuki-shunsuke https://github.com/suzuki-shunsuke/scoop-bucket
scoop install pinact

# https://github.com/kunobi-ninja/kache
scoop bucket add kunobi https://github.com/kunobi-ninja/scoop-kunobi
scoop install kunobi/kache

# https://gitforwindows.org
scoop bucket add main && scoop install main/git
```

## Update

```console
scoop update *
scoop cleanup *
scoop cache rm *
```

[Scoop]: https://scoop.sh
