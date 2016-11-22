etcd-ls() {
  curl -s http://127.0.0.1:2379/v2/keys/$1 | python -m json.tool
}

docker-vault () {
  docker run -d -p :14242:3000 -v ~/.ssh:/vault/.ssh dockito/vault
}

docker-start-work () {
  docker-vault &&
  docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock jwilder/nginx-proxy &&
  docker run \
    -d \
    -ti \
    --name etcd2 \
    -p 4001:4001 \
    -p 2379:2379 \
    elcolio/etcd:2.0.10 \
    -name devbox \
    -advertise-client-urls "http://172.17.42.1:2379,http://172.17.42.1:4001" \
    -listen-client-urls "http://0.0.0.0:2379,http://0.0.0.0:4001"
}

docker-ready-to-work() {
  docker-force-clean
  docker-start-work
}

editorconfig() {
  cp ~/.dotfiles/.editorconfig $1
}

my-external-ip() {
  curl -S http://ipinfo.io/ip
}

docker-bash() {
  docker exec -ti $1 /bin/bash
}

listen-at-port() {
  sudo netstat -tulpn | grep "$1" | awk '{print $4 " " $7}'
}
