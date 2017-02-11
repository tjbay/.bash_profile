# Command aliases
alias ls="ls -AFlkGpt"
alias ipython_qt="ipython qtconsole --colors=LightBG --deep-reload --pylab=inline --pprint"
alias nb="jupyter notebook"

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
export PYTHONPATH=$PYTHONPATH:/Users/tjbay/alpine_dev/python-alpine-api/
export PYTHONDONTWRITEBYTECODE=1

# Scala
export SCALA_HOME=/usr/local/share/scala/current
export PATH=$PATH:$SCALA_HOME/bin

# Spark
export SPARK_HOME=/Users/tjbay/Spark/spark
#export SPARK_HOME=/Users/tjbay/Spark/spark-2.0.0-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin

# Java location
export JAVA_HOME=$(/usr/libexec/java_home)

# added by Anaconda2 4.1.1 installer
export PATH="/Users/tjbay/anaconda2/bin:$PATH"
