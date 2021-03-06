
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad;

alias pi='ssh pi@10.0.0.12'
alias vb='ssh ryan@192.168.7.82'
alias box85='ssh rauger@192.168.7.85'
alias box152='ssh rauger@192.168.7.152'
alias piwork='ssh pi@192.168.7.98'
alias QR='scp ryan@192.168.7.82:~/repos/QR/* ~/repos/QR/'

alias Own='sudo chown -R rauger .'

alias gpull='git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done && git fetch --all && git pull --all'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions



add_pwd_alias()
{
    echo "alias "$1"='cd `pwd`'" >> ~/.bashrc
    source ~/.bashrc

}
alias emq='cd /home/rauger/repos/emq-rlx'
