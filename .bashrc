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

###
# time to upgrade `ls`

# use coreutils `ls` if possible…
hash gls >/dev/null 2>&1 || alias gls="ls"

# always use color, even when piping (to awk,grep,etc)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;
export CLICOLOR_FORCE=1

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='gls -Fh ${colorflag} --group-directories-first'
alias lsd='ls -l | grep "^d"' # only directories
#    `la` defined in .functions
###


# here's LS_COLORS
# github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)"