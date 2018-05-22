# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon
export LANG=en_US.UTF-8
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

shopt -s autocd

#Generic Shortcuts
alias music="cmus"
alias email="mutt"
alias files="ranger"
alias calendar="calcurse"

#Other aliases
alias v="vim"
alias ka="killall"
alias sv="sudo vim"
alias lsa='ls -hN --color=auto --group-directories-first'
alias gitup="git push origin master"
alias mkdir="mkdir -pv"
alias ll="ls -al"
alias sp="sudo pacman"
alias pup="sudo pacman -Syu"
alias sdn="sudo shutdown -h now"
alias starwars="telnet towel.blinkenlights.nl"
alias nf="clear && neofetch"
alias nm="sudo NetworkManager"
alias yt="youtube-viewer"
alias espeed="speedometer -r eno1"
alias wspeed="speedometer -r wlo1"


#Directory aliases
alias h="cd ~ && ls -a"
alias d="cd ~/Documents && ls -a"
alias D="cd ~/Downloads && ls -a"
alias P="cd ~/Projects && ls -a"
alias p="cd ~/Pictures && ls -a"
alias cf="cd ~/.config && ls -a"
alias cbr="vim ~/.bashrc"
alias cv="vim ~/.vimrc"
alias ci="vim ~/.config/i3/config"
alias dot="cd ~/Dotfiles/DotFiles/"












# Path to the bash it configuration
export BASH_IT="/home/drake/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
#export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
#export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
#export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
