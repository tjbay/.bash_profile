# Command aliases

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ls="ls -AFlkGpt"
alias ipython_qt="ipython qtconsole --colors=LightBG --deep-reload --pylab=inline --pprint"
alias nb="jupyter notebook"

zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

ii() {
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Current network location :$NC " ; scselect
    echo
}

alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Define colors in an understandable format
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Sets up git autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Load in the git branch prompt script - add \$(__git_ps1) to prompt to get branch name
source ~/.git-prompt.sh
PS1="\[$Blue\]\u@\W\[$Red\]\$(__git_ps1)\[$White\]\$ "

# Python
export PYTHONPATH=$PYTHONPATH:/Users/tjbay/
export PYTHONDONTWRITEBYTECODE=1

# Scala
# export SCALA_HOME=/usr/local/share/scala/current
# export PATH=$PATH:$SCALA_HOME/bin

# Spark
# export SPARK_HOME=/Users/tjbay/Spark/spark

# export SPARK_HOME=/Users/tjbay/Spark/spark-2.0.0-bin-hadoop2.7
# export PATH=$PATH:$SPARK_HOME/bin

# Java location
export JAVA_HOME=$(/usr/libexec/java_home)

# added by Anaconda2 4.1.1 installer
export PATH="/Users/tjbay/anaconda2/bin:$PATH"
