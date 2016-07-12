etcd-ls() {
  curl -s http://127.0.0.1:2379/v2/keys/$1 | python -m json.tool
}
