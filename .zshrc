# Zsh history suggestion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# AWS Settings
export AWS_PROFILE=tricera
export PATH=/opt/homebrew/bin/:$PATH
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# Terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.11.1/terraform terraform

# Starship
eval "$(starship init zsh)"
