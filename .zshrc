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
alias cubu="ssh -X felix@192.168.178.82"   #locally connect to my pc
alias elwe="ssh -X fsteinme@elwe3.rhrk.uni-kl.de"   #locally connect to my pc
alias cwskl="ssh -X hiwi@131.246.27.74"   #connect to the workstation at wskl


# navigation and general terminal stuff
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias c='clear'
alias rzip='rm *.zip'

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
alias tree='git log --all --graph --oneline --date=short --abbrev=commit --pretty=format:"%C(yellow)%h%Creset%C(red)%C(bold)%d%Creset%C(white)(%cd)%Creset %s"'

# fast access to modify snippets
alias snip='cd $HOME/.vim/plugged/vim-snippets/snippets'
alias pythonsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/python.snippets'
alias texsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/tex.snippets'
alias cppsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/cpp.snippets'
alias mdsnip='vim $HOME/.vim/plugged/vim-snippets/snippets/markdown.snippets'

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

#source the system config containing some paths first check if it exists
if test -f "$HOME/.system/zsh.sh"; then
    source $HOME/.system/zsh.sh
fi

#----------------------------Functions------------------------------------------
if test -f "$HOME/.config/config.env"; then
        source $HOME/.config/config.env
    else
        echo "care config.env missing, system not properly configured"
fi

if test -f "$HOME/.config/functions.sh"; then
    source $HOME/.config/functions.sh
fi

alias fun="vim $HOME/.config/functions.sh"
