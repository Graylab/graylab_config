# Copy this file to $HOME/.zshrc

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="weitzner"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx macports screen)

source $ZSH/oh-my-zsh.sh
setopt no_hist_verify # This allows things like "sudo !!" to work without the shell wanting confirmation
# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin

export LSCOLORS='ExGxcxdxcxegedabagacad'

source $HOME/.rosetta3_rc

# Additional Mac settings for GNUplot, R, PyMOL (always use the PyMOL-PyRosetta server) and an Xcode variable
export GNUTERM="aqua"
export R_HOME=/Library/Frameworks/R.framework/Resources
alias pymol='open /Applications/MacPyMOLX11Hybrid.app --args $PYROSETTA/PyMOLPyRosettaServer.py'

# Commnonly used Graylab machines
alias jazz='ssh -Y jazz -l $USER'
alias satchmo='ssh -Y satchmo -l $USER'
alias omar='ssh -Y omar.graylab.jhu.edu -l $USER'
alias crumb='ssh -Y crumb -l $USER'
alias hawk='ssh -Y hawk -l $USER'
alias hhpc='ssh -Y login.hhpc.jhu.edu -l $USER'

alias ll='ls -hl'

