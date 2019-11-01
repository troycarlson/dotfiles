# -----------------------------------------------------------------------------
# Displays the help page and command documentation.
# -----------------------------------------------------------------------------
function tt_help
  set bold (tput bold)
  set normal (tput sgr0)

  echo ''
  echo '                 ___           ___      '
  echo '                /__/\         /__/\     '
  echo '                \  \:\        \  \:\    '
  echo '                 \__\:\        \__\:\   '
  echo '                 /  /::\       /  /::\  '
  echo '                /  /:/\:\     /  /:/\:\ '
  echo '               /  /:/__\/    /  /:/__\/ '
  echo '              /__/:/        /__/:/      '
  echo '              \__\/         \__\/       '
  echo ''
  echo '               '$bold'TT: Troy\'s Shell Goodies'$normal
  echo ''
  echo ''
  echo $bold'Usage:'$normal
  echo '  tt tmux'
  echo '  tt -h'
  echo ''
  echo $bold'Options:'$normal
  echo '  -h, --help'
  echo '          Show this screen.'
  echo ''
  echo $bold'Commands:'$normal
  echo '  tmux    Creates or attaches to a machine-specific tmux session.'
  echo ''
  echo '  serve   Serves the current directory with a Python SimpleHTTPServer'
end

# -----------------------------------------------------------------------------
# Routes tt commands to their implementation.
# -----------------------------------------------------------------------------
function tt
  set cmd $argv[1]
  set remaining_args $argv[2..-1]

  switch (echo $cmd)
  case tmux
    tt_tmux $remaining_args
  case serve
    tt_serve $remaining_args
  case -h --help help
    tt_help $remaining_args
  case '*'
    echo "Invalid command. Run 'tt help' to see valid commands."
  end
end

# -----------------------------------------------------------------------------
# Attaches to existing machine-named tmux session (if one exists). If no
# session exists, one is created with the name of the current machine.
# -----------------------------------------------------------------------------
function tt_tmux
  if command tmux ls | grep -q created
    tmux a -d -t (machine_name)
  else
    tmux new -s (machine_name)
  end
end

# -----------------------------------------------------------------------------
# Serves the current directory with a Python SimpleHTTPServer.
# -----------------------------------------------------------------------------
function tt_serve
  command python -m SimpleHTTPServer 8888
end
