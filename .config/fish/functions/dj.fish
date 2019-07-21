# Custom Django commands

function dj
  # Make sure we're in a valid Django directory
  if ! command ls | grep -q manage.py
    echo 'dj must be run in a valid Django directory'
  end

  set cmd $argv[1]

  switch $cmd
  case shell
    django_shell $argv[2..-1]
  case '*'
    echo 'Invalid command'
  end
end

function django_shell
  set env $argv[1]

  if test "$env" = "prod"
    django_shell_prod
  else
    python3 manage.py shell
  end
end

function django_shell_prod
  # TODO: Local/remote revision check to make sure running new code
  #       against production DB doesn't ruin any data.
  set cnn (get_django_var DB_CONNECTION_NAME)
  set db (get_django_var DB_NAME)
  set pw (get_django_var DB_PASSWORD)
  set port 5433

  echo 'Starting Cloud SQL Proxy...'
  ~/gcp/cloud_sql_proxy -instances=$cnn=tcp:$port 2>/dev/null &
  sleep 2

  begin
    set -lx DB_NAME $db
    set -lx DB_PASSWORD $pw
    set -lx DB_HOST /cloudsql/$cnn
    set -lx DB_PORT $port
    set -lx USE_CLOUD_SQL_PROXY 1
    python3 manage.py shell
  end

  # Kill the backgrounded cloud sql proxy
  echo 'Killing Cloud SQL Proxy...'
  set proxy_job_id (jobs | grep /cloud_sql_proxy | cut -c -1)
  if test -n "$proxy_job_id"
    kill %$proxy_job_id
  end
end

function get_django_var
  cat ~/gcp/production.txt | grep $argv[1] | sed 's/.*=//g'
end
