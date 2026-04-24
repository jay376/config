alias ll='ls -alF'
alias tailf='tail -f'

export PATH="/usr/local/opt/gnu-getopt/bin:$HOME/.cargo/bin:$PATH"
export GOPATH="/Users/moon/go_mac"
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN
export GO111MODULE=auto
alias ll='ls -al'
alias e='TERM=xterm-24bits emacs -nw'
# export GOPROXY=https://goproxy.cn,direct
export GOPROXY=direct
export GOPRIVATE=code.hashdata.xyz

if [ $SHELL = "/bin/bash" ]; then
    export PS1='[\u@mbp:$PWD]\n==> '
fi

# Set CLICOLOR if you want Ansi Colors in iTerm2
# export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

alias 'me=make -B -j build-e2e'
alias ssh="TERM=xterm-256color ssh"
alias '141=ssh 10.65.136.141'
alias 'moon=mosh moon@192.168.1.24'
alias 'vps=ssh moon@66.112.220.108 -p 29143'
alias 121="TERM=xterm-256color ssh ld-fangjie_zhang@10.2.12.121 -A -t  \" tmux a -t fj \""
#alias 47="TERM=xterm-256color ssh ld-fangjie_zhang@10.22.12.47 -A -t  \" tmux a -t fj \""
alias 47="ssh -o ProxyCommand=\"nc -X 5 -x 127.0.0.1:1081 %h %p\" ld-fangjie_zhang@10.22.12.47 -A -t  \" tmux a -t fj \""
alias 117="ssh -o ProxyCommand=\"nc -X 5 -x 127.0.0.1:1081 %h %p\" shopee-jenkins@10.129.104.117 -A -t  \" tmux a -t xx \""
alias 190="TERM=xterm-256color ssh ld-fangjie_zhang@10.143.201.190 -A -t  \" tmux a -t fj \""
alias vps='ssh jay@zxrgo.com -p 26558 -A'

alias '181=ssh 10.65.136.181'


SSH_AUTH_SOCK=~/.ssh/auth_sock
AGENT_INFO_FILE=~/.ssh/agent-info
if [ ! -f $AGENT_INFO_FILE ] ; then
  echo 123
  ssh-agent -a "$SSH_AUTH_SOCK" -s >$AGENT_INFO_FILE
fi

source $AGENT_INFO_FILE

if ! kill -0 $SSH_AGENT_PID >/dev/null 2>&1 ; then
  rm $SSH_AUTH_SOCK
  ssh-agent -a "$SSH_AUTH_SOCK" -s >$AGENT_INFO_FILE
  source $AGENT_INFO_FILE
fi


alias 'gco=git checkout'
alias 'gcb=git checkout -b'
alias 'gbr=git branch'
alias 'gci=git commit'
alias 'gst=git status'
alias 'gla=git la'
alias 'gls=git ls'
alias 'gdc=git dc'
alias 'gam=git amend'
alias 'gpl=git pl --rebase'
alias 'gpu=git pu'
alias 'gbdm=git bdm'
alias 'gau=git au'
alias 'gfe=git fetch origin'
alias 'greset=git reset --hard HEAD'

alias k=kubectl
alias kc='kubectl clusternet'
alias kg='kubectl get'
alias ka='kubectl apply'
alias kt='kubetail'
alias kdesc='kubectl describe'

alias proxy='export all_proxy=socks5://127.0.0.1:1081'
export http_proxy=http://localhost:1080
export https_proxy=$http_proxy

# disable docker warning 'Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them'
export KUBE_CONFIG_PATH=~/.kube/config
ulimit -n 10240
# alias dev='ssh  -R 1080::1080  -A -p 2222 root@192.168.197.115  -t \" tmux a -t fj \"'
# alias dev="ssh  -A  10.13.9.14 -p2222 -t  \" tmux a -t fj \""
alias rdev="ssh  -A  10.13.9.14 -p22"
alias dev="ssh  -A  10.13.8.101 -p2222 -t  \" tmux a -t fj \""

alias fdb='ssh  -R 1080::1080  root@192.168.48.63'
. "$HOME/.cargo/env"
