# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s cdspell  
shopt -s checkwinsize 
shopt -s histappend
shopt -s cmdhist  
shopt -s expand_aliases
shopt -s extglob 
export EDITOR=vim
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/opt/depot_tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/drake/.gem/ruby/2.5.0/bin 
set -o vi
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
alias ping="ping -c 5"
alias pinstall="sudo pacman -S"
alias yinstall="yaourt -S"
alias web="cd ~/lonewolf38.github.io"
alias res="cd ~/CV"

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
alias cpo="vim ~/.config/polybar/config"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }
dotup()
{
  cd ~/Dotfiles/DotFiles
  git add -A 
  git commit -m "$1"
  git push origin master
}



remindme() {
  if [[ "$#" -lt 2 ]]; then
    echo -e "Usage: remindme [time] '[message]'"
    echo -e "Example: remindme 50s 'check mail'"
    echo -e "Example: remindme 10m 'go to class'"
    #exit 0 #not enough args
  fi
  if [[ "$#" -gt 2 ]]; then
    echo -e "Usage: remindme [time] '[message]'"
    echo -e "Example: remindme 50s 'check mail'"
    echo -e "Example: remindme 10m 'go to class'"
    #exit 0 #more than enough args
  fi
  if  [[ "$#" == 2 ]]; then
    sleep $1 && notify-send -t 15000 "$2" & echo 'Reminder set'
  fi
}


welcome()
{
  toilet -F metal -t -f mono12 "Welcome ${USER}"
  espeak "WELCOME SIR" &>/dev/null
  sleep 20s 

}


refresh()
{
  source ~/.bashrc
  pacman -Qqe > ~/scripts/KonfigManager/pkgs/paclist
  pacman -Qqm > ~/scripts/KonfigManager/pkgs/aurlist
  pacman -Qq > ~/Dotfiles/DotFiles/paclist
}

update-config()
{
  cp ~/.config/i3/* ~/Dotfiles/DotFiles/.config/i3/.
  cp ~/.config/polybar/* ~/Dotfiles/DotFiles/.config/polybar/.
  cp ~/.config/asciinema/* ~/Dotfiles/DotFiles/.config/asciinema/.
  cp ~/.config/cava/* ~/Dotfiles/DotFiles/.config/cava/.
  cp ~/.config/dunst/* ~/Dotfiles/DotFiles/.config/dunst/.
  cp ~/.config/gtk-2.0/* ~/Dotfiles/DotFiles/.config/gtk-2.0
  cp ~/.config/gtk-3.0/* ~/Dotfiles/DotFiles/.config/gtk-3.0
  cp ~/.config/terminator/* ~/Dotfiles/DotFiles/.config/terminator/.
  cp ~/.tmux.conf ~/Dotfiles/DotFiles/.tmux.conf
  cp ~/.tmux.conf.local ~/Dotfiles/DotFiles/.tmux.conf.local

}



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
