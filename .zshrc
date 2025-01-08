# Clone antidote if necessary.
[[ -e ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Source antidote.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# User configuration
alias editzsh='nvim ~/.zshrc'
alias plugins='nvim ~/.zsh_plugins.txt'
alias refresh='source ~/.zshrc'

alias home="cd ~"
alias ..="cd .."
alias dev='cd ~/dev/'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'

alias gdockerrun='ADC=~/.config/gcloud/application_default_credentials.json && docker run -e GOOGLE_APPLICATION_CREDENTIALS=/tmp/keys/FILE_NAME.json -v ${ADC}:/tmp/keys/FILE_NAME.json:ro'
alias gdockerrundebug='gdockerrun -p 5005:5005 -e JAVA_TOOL_OPTIONS="-agentlib:jdwp=transport=dt_socket,address=*:5005,server=y,suspend=n"'

function killport() {
 kill -9 $(lsof -ti :$1)
}

HOMEBREW_NO_ENV_HINTS=1

source ~/.zshrcwork