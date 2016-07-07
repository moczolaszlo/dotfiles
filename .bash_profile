function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ -f ~/.git-completion.bash ]; then
 . ~/.git-completion.bash
fi

PS1='\w $(parse_git_branch)\$ '

export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/bin:/usr/local/bin:/usr/local/sbin:~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
