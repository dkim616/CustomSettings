export PATH=/usr/local/bin:$PATH

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/DK/workspace/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/DK/workspace/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/DK/workspace/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/DK/workspace/google-cloud-sdk/completion.bash.inc'
fi

# Path for brew
export PATH="/usr/local/sbin:$PATH"

# PostgreSQL environment vars
export PGHOME=/Users/DK/PostgreSQL/pg95
export PGDATA=/Users/DK/PostgreSQL/data/pg95
export PATH=/Users/DK/PostgreSQL/pg95/bin:$PATH
export PGUSER=postgres
export PGDATABASE=postgres
export PGPORT=5432
export PGPASSFILE=/Users/DK/.pgpass
export PYTHONPATH=/Users/DK/PostgreSQL/pg95/python/site-packages

# Autoenv
source /usr/local/opt/autoenv/activate.sh
