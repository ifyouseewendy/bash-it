# ruby
alias bi='bundle install --binstubs .bundle/bin'
# alias bi='bundle install --path=vendor/bundle --binstubs .bundle/bin'
alias be='bundle exec'
alias ri='ri -f ansi'

# tools
alias tigs='tig status'
alias g='git status'
alias mvim='open -a /Applications/MacVim.app'
# auto open gz by tar
# alias -s gz='tar -xzvf'
alias pre='open -a Preview'
alias tailf='tail -f'
alias lessf='less +F'
alias cat="ccat"
alias cleardns="sudo killall -HUP mDNSResponder"
alias pt='pstree'

# service
alias crontab="VIM_CRONTAB=true crontab"
# alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Beginning with OSX Yosemite (10.10), pbcopy is reported to work correctly with tmux
# alias pbcopy='reattach-to-user-namespace pbcopy'
# alias pbpaste='reattach-to-user-namespace pbpaste'
