function enable_completion {
  if [ ! type pipenv > /dev/null 2>&1 ]; then
    return 0
  fi
  COMP_DIR=${ZDOTDIR:-$HOME}/completion
  COMP_FILE=$COMP_DIR/_pipenv
  DUMP_FILE=${ZDOTDIR:-$HOME}/.zcompdump
  [ ! -e $COMP_DIR ] && mkdir $COMP_DIR

  if [ ! -e $COMP_FILE ]; then
    pipenv --completion > $COMP_FILE
    [ -f $DUMP_FILE ] && rm $DUMP_FILE
  fi
}

enable_completion
