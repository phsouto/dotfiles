# Path
export PATH=~/bin:/usr/local/bin:$PATH

# Sem entradas repetidas no historico
export HISTCONTROL=ignoredups

# Cores!
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
alias ls="ls --color"
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

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
    local NONE="\[\033[0m\]"

    # \n[user@host][/complete/path]\n$ 
    #PS1="\n[\u@\h][$BLUE\w$NONE]\n\$ "
    #PS2='continue-> '
    #PS4='$0.$LINENO+ '
    
    PS1="$YELLOW[\w]$NONE\$ "
}

# Mais Aliases!
alias ll="ls -Al"
alias gvim="mvim"
alias la="ls -A"
alias cd..="cd .."
alias cls="clear"

# Abrir arquivos em um Vim existente
alias g="gvim --remote-silent"

# Aliases para usar com o Git
alias gs="git status"
alias gcm="git commit -a"   # Commitar todos os modificados
alias gc="git commit"
alias gla="git log"         # Mostra log de todos os commits
alias gl="git log -1"       # Mostrar log apenas do ultimo commit
alias gb="git branch"       # Lista ou cria branches
alias gck="git checkout"

# Alias para 'sourcear' e editar este arquivo
alias sbp="source ~/.bash_profile"  # sbp = 'source bash_profile'
alias ebp="vim ~/.bash_profile"       # ebp = 'edit bash_profile'

# Alias para facilitar o sincronismo da biblioteca do iTunes
alias itsync="rsync -ar --progress /Volumes/D/Music/ /Users/pedro/Music/"

prompt
