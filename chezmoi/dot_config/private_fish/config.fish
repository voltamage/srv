alias c='chezmoi'
alias cd='z'
alias cdi='zi'
alias cdif='chezmoi diff'
alias cgit='lazygit -p ~/srv'
alias dd='cd ~/srv && sudo docker-compose down'
alias du='cd ~/srv && sudo docker-compose up -d'
alias e='nvim'
alias ed='nvim ~/srv/docker-compose.yml'
alias ef='nvim ~/.config/fish/config.fish'
alias ff='fd --color=always -H | fzf --ansi'
alias ls='eza -ao'
alias mt='sh ~/srv/maintain.sh'
alias q='exit'
alias sf='source ~/.config/fish/config.fish'

bind \e\[B 'complete'
