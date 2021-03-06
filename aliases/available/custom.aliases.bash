# ruby
# alias bi='bundle install --binstubs .bundle/bin'
alias bi='bundle install --path=vendor/bundle --binstubs .bundle/bin'
alias be='bundle exec'
alias ri='ri -f ansi'

# tools
alias tigs='tig status'
alias g='git status'
alias vim='nvim'
alias mvim='open -a /Applications/MacVim.app'
# auto open gz by tar
# alias -s gz='tar -xzvf'
alias pre='open -a Preview'
alias tailf='tail -f'
alias lessf='less +F'
# alias cat="ccat --bg=dark"
alias cat='bat'
function lcat {
  ccat --bg=dark --color=always $1 | less -R
}
alias cleardns="sudo killall -HUP mDNSResponder"
alias pt='pstree'
alias ping='prettyping --nolegend'
alias quickview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

# service
alias crontab="VIM_CRONTAB=true crontab"
# alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Beginning with OSX Yosemite (10.10), pbcopy is reported to work correctly with tmux
# alias pbcopy='reattach-to-user-namespace pbcopy'
# alias pbpaste='reattach-to-user-namespace pbpaste'

alias tmux="TERM=screen-256color-bce tmux"

# For fuck sake
alias ffs="dev down && dev up && dev s"

# For docker
alias dk="docker"
alias dp="docker ps -a"
alias dc="docker-compose"
alias dm="docker-machine"

# For local dev
alias push-pr="git push -u origin HEAD --no-verify && dev open pr"
