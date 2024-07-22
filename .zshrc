export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="krios2146"

plugins=(
    git
    virtualenv
    docker
    python
)

export PYTHON_AUTO_VRUN=true

source $ZSH/oh-my-zsh.sh # End of the oh-my-zsh config

# Start of the zsh config
export CATALINA_HOME=/opt/apache-tomcat-9.0.84
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$JAVA_HOME/bin"

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

eval "$(zoxide init --cmd cd zsh)"
eval "$(ssh-agent -s)" > /dev/null 2>&1

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; 

if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then
    . "${___MY_VMOPTIONS_SHELL_FILE}"; 
fi
