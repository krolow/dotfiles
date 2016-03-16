# docker alias
alias docker-ps='docker ps -a'
alias docker-clean='docker rm $(docker ps -aq)'
alias docker-force-clean='docker rm -f $(docker ps -aq)'
alias docker-start-work='docker run -d -p 172.17.42.1:14242:3000 -v ~/.ssh:/vault/.ssh dockito/vault && docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock jwilder/nginx-proxy && docker run -d -ti --name etcd2 -p 4001:4001 -p 2379:2379 quay.io/coreos/etcd:v2.1.2 -name devbox -advertise-client-urls "http://172.17.42.1:2379,http://172.17.42.1:4001" -listen-client-urls "http://0.0.0.0:2379,http://0.0.0.0:4001" -debug'
alias docker-compose-run="docker-compose run --service-ports"
