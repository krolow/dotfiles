# docker alias
alias docker-ps='docker ps -a'
alias docker-clean='docker rm $(docker ps -aq)'
alias docker-force-clean='docker rm -f $(docker ps -aq)'
alias docker-compose-run="docker-compose run --service-ports --rm"
alias docker-compose-command="docker-compose run --rm --no-deps"
alias ubuntu-version="cat /etc/issue"
