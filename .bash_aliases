#### custome aliases setting ####

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

# other
alias bashrc='. ~/.bashrc'
alias ..='cd ..'
alias exp='explorer.exe'
alias jcurl="curl -H 'Conntent-Type:application/json'"
alias glog="git log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph"
alias alternative='update-alternatives'

##### custome command ####
wcd() {
	_dir="$1"
  cd $(wslpath ${_dir})
}

# pict setting
pict() {
  _model="$1"
  shift
  _options="$*"
  /usr/local/bin/pict <(cat "$_model" | nkf -s) $_options | nkf -w
}

# fzf setting
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

col() {
  awk -v col=$1 '{print col}'
}

csvCol() {
  awk -F ',' -v col=$1 '{pring col}'
}

nles() {
	if [[ ! -e $1 ]]; then
		echo "not file"
	else
		cat $1 | nkf | less
	fi
}

fd() {
	local dir
	dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m) &&
	cd "$dir"	
}

### X Window System Setting ###
export DISPLAY=LPC-2063:0.0 

# lssh setting
export PATH="${PATH:+${PATH}:}~/go/bin"

# custom shell
export PATH="${PATH:+${PATH}:}~/sh"
