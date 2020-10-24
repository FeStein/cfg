# Path to your oh-my-zsh installation.
export ZSH="/Users/fsteinme/.oh-my-zsh"

ZSH_THEME="robbyrussell"

#Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#----------------------------Start Programs---------------------------------------
alias doxygen='/Users/fsteinme/Programme/doxygen/build/bin/doxygen'

#----------------------------Some Aliases----------------------------------------
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias tmuxconfig="vim ~/.tmux.conf"
alias p='python3'
alias zshreload="source ~/.zshrc"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# navigation and general terminal stuff
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias c='clear'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# git
alias add='git add'
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'
alias tag='git tag'
alias newtag='git tag -a'
alias diff='git diff'

#make
alias minimake='make -f minimakefile'

#Simple starting of programms
alias v='vim'
alias t='tmux'
alias o='open'

#some keybindings
bindkey '^ ' autosuggest-accept #For acceptence of autocomplete in Terminal

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/fsteinme/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/fsteinme/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/fsteinme/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/fsteinme/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

