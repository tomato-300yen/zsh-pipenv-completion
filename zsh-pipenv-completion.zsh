function pipenv() {
  unfunction "$0"
  echo "enabled pipenv completion"
  source < (pipenv --completion)
  $0 "$@"
}
