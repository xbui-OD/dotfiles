export EDITOR="vim"

export MANPAGER="less -X"

export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

PATH=$PATH:/Users/dheindel/Library/Python/2.7/bin:/Applications/MacVim.app/Contents/bin

source "$(brew --prefix)/etc/bash_completion.d/git-completion.bash"

## Powerline Stuff
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/dheindel/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh


## Aliases
alias ll="ls -l"
alias json_pretty="python -m json.tool"

