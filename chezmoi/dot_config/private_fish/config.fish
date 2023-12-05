atuin init fish | source
zoxide init fish | source

if ! builtin functions --query __zoxide_cd_internal
	if builtin functions --query cd
		builtin functions --copy cd __zoxide_cd_internal
	else
		alias __zoxide_cd_internal='builtin cd'
	end
end

alias cd='z'
alias cdi='zi'

bind \e\[B 'complete'
