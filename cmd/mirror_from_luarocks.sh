
server=http://luarocks.org/repositories/rocks/
server_scm=http://luarocks.org/repositories/rocks-scm/

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

function _annotate() {
  echo "$(tput setaf 4)>>$(tput sgr0) $@"
  $@
}

(
  cd "$root"
  _annotate moon "cmd/mirror_server.moon" . "$server" "luarocks"
  _annotate moon "cmd/mirror_server.moon" . "$server_csm" "luarocks-scm"
)

