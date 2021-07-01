# zsh-pipenv-completion

completion for pipenv (faster start-up)

## Configuration

Add this to your `.zshrc`.

```sh
fpath=(${ZDOTDIR:-$HOME}/completion $fpath)
autoload -Uz compinit
compinit -C
```
