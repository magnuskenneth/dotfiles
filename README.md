# dotfiles

Use [GNU Stow](https://www.gnu.org/software/stow/) to setup symlinks to the dotfiles.

## Install GNU Stow on mac using Homebrew

```
brew install stow
```

## Use GNU Stow to setup symlinks

1. Clone this repo in your home folder `~/`
2. Go to the dotfiles folder: `cd dotfiles/`
3. Run `stow nvim` for setting up nvim, run `stow zsh` for setting up `.zshrc` etc
