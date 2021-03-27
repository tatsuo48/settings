eval (hub alias -s)

function deb
  docker exec -it $argv /bin/bash
end

function des
  docker exec -it $argv /bin/sh
end

function dlf
  docker logs -f $argv
end

function dps
  docker ps
end

function gore
  docker run -it --rm gore
end


set PATH $HOME/go/bin:$HOME/.cargo/bin $PATH

abbr -a repo 'code (ghq list -p | peco)'
