if [[ -f ~/.profile ]] ; then
  . ~/.profile
fi

if [[ -f ~/.bashrc ]] ; then
  . ~/.bashrc
fi

echo "**************************************************"
echo "*          Start setting up for myself!          *"
echo "**************************************************"
echo ""

if ! service docker status > /dev/null 2>&1; then
  echo "Firing up docker daemon..." >&2
  sudo service docker start > /dev/null 2>&1
  if service docker status > /dev/null 2>&1; then
    echo "docker now running." >&2
  else
    echo "docker failed to start!" >&2
  fi
else
  echo "docker already running." >&2
fi

if ! service cron status > /dev/null 2>&1; then
  echo "Firing up cron daemon..." >&2
  sudo service cron start > /dev/null 2>&1
  if service cron status > /dev/null 2>&1; then
    echo "cron now running." >&2
  else
    echo "cron failed to start!" >&2
  fi
else
  echo "cron already running." >&2
fi

echo ""
