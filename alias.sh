# docker alias
alias docker-ps='docker ps -a'
alias docker-clean='docker rm $(docker ps -aq)'
alias docker-force-clean='docker rm -f $(docker ps -aq)'
alias docker-compose-run="docker-compose run --service-ports"
