function dockerctl
  set -l containerID (docker ps |peco --prompt "接続先コンテナを選択して下さい。 >" | awk '{print $1}')
  docker exec -it $containerID /bin/bash; or begin echo "shで再試行します" ; and docker exec -it $containerID /bin/sh; end 
end
