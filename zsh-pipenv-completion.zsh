function pipenv() {
  unfunction "$0"
  echo "enabled pipenv completion"
  eval "$(pipenv --completion)"
  $0 "$@"
}
