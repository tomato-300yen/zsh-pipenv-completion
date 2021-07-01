COMP_DIR=${ZDOTDIR:-$HOME}/completion
if [ ! -e COMP_DIR ]; then
  mkdir COMP_DIR
fi
COMP_FILE=$COMP_DIR/_pipenv
DUMP_FILE=${ZDOTDIR:-$HOME}/.zcompdump
if [ ! -f COMPDEF_FILE ]; then
  pipenv --completion > COMPDEF_FILE
  [ -f DUMP_FILE ] && rm DUMP_FILE
fi
fpath=(COMP_DIR $fpath)
