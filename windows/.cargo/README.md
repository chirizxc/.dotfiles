## _cargo

See: [Microsoft.PowerShell_profile.ps1](https://github.com/chirizxc/.dotfiles/blob/main/windows/PowerShell/Microsoft.PowerShell_profile.ps1) 

```console
_cargo stable
# or
_cargo unstable
```

## Required for local fast debug builds

See: [rustc_codegen_cranelift](https://github.com/rust-lang/rustc_codegen_cranelift)

```console
rustup component add rustc-codegen-cranelift-preview --toolchain nightly
```

## Cargo tools

```console
# https://github.com/pacak/cargo-show-asm
cargo install cargo-show-asm
```