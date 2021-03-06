# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"


#Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

#source the system config containing some paths first check if it exists
if test -f "$HOME/.system/zsh.sh"; then
    source $HOME/.system/zsh.sh
fi


#----------------------------Some Aliases----------------------------------------
alias zshconfig="vim ~/.zshrc"
alias sysconfig="vim ~/.system/zsh.sh"
alias vimconfig="vim ~/.vimrc"
alias tmuxconfig="vim ~/.tmux.conf"
alias zathuraconfig="vim ~/.config/zathura/zathurarc"
alias p='python3'
alias zshreload="source ~/.zshrc"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#some ssh stuff
alias cubu="ssh -X felix@192.168.178.57"   #locally connect to my pc
alias elwe="ssh -X fsteinme@elwe3.rhrk.uni-kl.de"   #locally connect to my pc
alias cwskl="ssh -X hiwi@131.246.27.74"   #connect to the workstation at wskl


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
alias gc='git clone'
alias add='git add'
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'
alias tag='git tag'
alias newtag='git tag -a'
alias diff='git diff'
alias tree='git log --graph --pretty=oneline --abbrev-commit'

# fast access to modify snippets
alias snip='cd $HOME/.vim/plugged/vim-snippets/snippets'
alias pythonsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/python.snippets'
alias texsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/tex.snippets'
alias cppsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/cpp.snippets'

#Simple starting of programms
alias v='vim'
alias t='tmux'
alias o='open'
alias z='zathura'
alias jn='jupyter notebook'
alias ca='conda activate'
alias cda='conda deactivate'

#some keybindings
bindkey '^ ' autosuggest-accept #For acceptence of autocomplete in Terminal

#----------------------------Functions------------------------------------------
source "$HOME/.config/functions.sh"
alias fun="vim $HOME/.config/functions.sh"
