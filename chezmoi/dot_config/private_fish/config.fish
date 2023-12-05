atuin init fish | source
zoxide init fish | source

function ap
	sudo ansible-playbook ~/srv/$argv.yml
end

if ! builtin functions --query __zoxide_cd_internal
	if builtin functions --query cd
		builtin functions --copy cd __zoxide_cd_internal
	else
		alias __zoxide_cd_internal='builtin cd'
	end
end

alias cd='z'
alias cdi='zi'
alias dd='cd ~/srv && sudo docker-compose down'
alias du='cd ~/srv && sudo docker-compose up -d'
alias mt='sh ~/srv/maintain.sh'

bind \e\[B 'complete'
