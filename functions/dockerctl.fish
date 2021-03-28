function dockerctl
  set -l containerID (docker ps |peco --prompt "接続先コンテナを選択して下さい。 >" | awk '{print $1}')
  docker exec -it $containerID /bin/bash || echo "bashからshに切り替えて再試行します。" && docker exec -it $containerID /bin/sh
end
