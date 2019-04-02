# custome aliases setting

# docker for windows setting
export DOCKER_HOST='tcp://0.0.0.0:2375'
alias d='docker'
alias dc='docker-compose'
dbash() {
  _container_id=$1
  docker exec -it ${_container_id} /bin/bash
}
alias dls="docker container ls"
alias dimg="docker images"

# clippebord
alias clip=/mnt/c/Windows/System32/clip.exe
 
# ls setting
alias lla='ls -Al'

alias bashrc='. ~/.bashrc'
alias bd='cd ..'
