# .dotfiles

> [!IMPORTANT]
> Clone to the .dotfiles directory with --bare flag, not to the home directory
>
> ```bash
> git clone --bare git@github.com:krios2146/.dotfiles.git $HOME/.dotfiles
> ```

## Neovim

Telescope plugin requires manual installation of the following:

 - [ripgrep](https://github.com/BurntSushi/ripgrep)
 - [fd](https://github.com/sharkdp/fd)

```bash
cargo install ripgrep
```

```bash
cargo install fd-find
```

## oh-my-zsh

Custom theme should be added to the git bypassing .gitignore file

```bash
dotfiles add .oh-my-zsh/custom/themes/ -f
```
