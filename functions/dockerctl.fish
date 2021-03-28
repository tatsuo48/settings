function dockerctl
  set -l containerName (docker ps --format "{{.Names}}" |peco --prompt "接続先コンテナを選択して下さい。 >")
  docker exec -it $containerName /bin/bash || echo "bashからshに切り替えて再試行します。" && docker exec -it $containerName /bin/sh
end
