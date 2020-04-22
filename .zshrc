# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/tom/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nemo="nemo . &"

alias catmake="pushd ~/catkin_ws > /dev/null \
&& catkin build \
&& source devel/setup.zsh \
&& popd > /dev/null"
alias catclean="pushd ~/catkin_ws > /dev/null \
&& catkin clean \
&& source devel/setup.zsh \
&& popd > /dev/null"
alias catsh="source ~/catkin_ws/devel/setup.zsh"
alias catdep="rosdep install --from-paths ~/catkin_ws/src/TAUV-ROS-Packages --ignore-src -r -y"
alias wcatmake="pushd ~/whac_ws > /dev/null \
&& catkin build --make-args install\
&& source devel/setup.zsh \
&& popd > /dev/null"
alias wcatclean="pushd ~/whac_ws > /dev/null \
&& catkin clean \
&& popd > /dev/null"
alias wcatsh="source ~/whac_ws/devel/setup.zsh"
alias wcatdep="rosdep install --from-paths ~/whac_ws/src/build18 --ignore-src -r -y"

alias scatsh="source ~/proj/robot_software/robot_driver/devel/setup.zsh \
&& source ~/proj/robot_software/ground_based_autonomy/devel/setup.zsh \
&& source ~/proj/robot_software/laser_odometry/devel/setup.zsh"

alias cliffmake="pushd ~/clifford_ws > /dev/null \
&& catkin build \
&& source devel/setup.zsh \
&& popd > /dev/null"
alias cliffsh="pushd ~/clifford_ws > /dev/null \
&& source devel/setup.zsh \
&& popd > /dev/null"
alias cliffdep="rosdep install --from-paths ~/clifford_ws/src/clifford-control --ignore-src -r -y"
alias cliffclean="pushd ~/clifford_ws > /dev/null \
&& catkin clean \
&& source devel/setup.zsh \
&& popd > /dev/null"

source /opt/ros/melodic/setup.zsh
catsh
# wcatsh
# scatsh

alias python="rlwrap python"
alias branchclean="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias python="rlwrap python"
alias fixsound="pulseaudio -k && sudo alsa force-reload"

export ROS_OS_OVERRIDE=ubuntu:18.04:bionic
export ROS_HOSTNAME=$HOST.local
export ROS_MASTER_URI=http://$HOST.local:11311
