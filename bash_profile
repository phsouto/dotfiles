# Path
export PATH=~/bin:$PATH

# Sem entradas repetidas no historico
export HISTCONTROL=ignoredups
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Cores!
if [ $(uname -s) = "Darwin" ]; then # Se eu estiver num Mac...
    export GREP_OPTIONS="--color=auto"
    export GREP_COLOR="4;33"
    export CLICOLOR=1
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
    alias ls="ls -G"
else
    export LS_COLORS='di=94:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
    alias ls="ls --color"
fi

##############################################################################
# Text color codes:                                                          #
#                                                                            #
# How this works:                                                            #
# \[\033[attribute code; text color code; background color code m\]          #
#                                                                            #
# Attributes:        Text color codes:      Background Color Codes:          #
# 00 = None          30 = Black             40 = Black                       #
# 01 = Bold          31 = Red               41 = Red                         #
# 04 = Unserscore    32 = Green             42 = Green                       #
# 05 = Blink         33 = Yellow            43 = Yellow                      #
# 07 = Reverse       34 = Blue              44 = Blue                        #
# 08 = Concealed     35 = Magenta           45 = Magenta                     #
#                    36 = Cyan              46 = Cyan                        #
#                    37 = White             47 = White                       #
##############################################################################

# Ajustando o prompt (fancy function, eh?)
function prompt {
    local BLUE="\[\033[0;34m\]"
    local B_BLUE="\[\033[1;34m\]"
    local RED="\[\033[0;31m\]"
    local B_RED="\[\033[1;31m\]"
    local YELLOW="\[\033[0;33m\]"
    local GREEN="\[\033[0;32m\]"
    local CYAN="\[\033[0;36m\]"
    local NONE="\[\033[0m\]"
    
    PS1="[$GREEN\u@\h$CYAN \W$NONE]\$ "
}

# Mais Aliases!
alias ll="ls -Alh"
alias l="ls -A"
alias cd..="cd .."
alias cls="clear"

# Aliases para usar com o Git
alias gs="git status"
alias gl="git log -1"       # Mostrar log apenas do ultimo commit

# Alias para 'sourcear' e editar este arquivo
alias sbp="source ~/.bash_profile"    # sbp = 'source bash_profile'
alias ebp="vim ~/.bash_profile"       # ebp = 'edit bash_profile'

prompt
#fortune
# EOF

