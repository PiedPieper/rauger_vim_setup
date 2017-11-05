
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad;

alias pi='ssh pi@10.0.0.12'
alias vb='ssh ryan@192.168.7.82'
alias box85='ssh rauger@192.168.7.85'
alias piwork='ssh pi@192.168.7.98'
alias QR='scp ryan@192.168.7.82:~/repos/QR/* ~/repos/QR/'

