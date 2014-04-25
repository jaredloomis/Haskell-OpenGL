#! /bin/sh
  head -`fgrep -n END_SAMPLE Main.hp | tail -1 | cut -d : -f 1` Main.hp \
    | hp2ps -c -t0 > Main.ps
  gv Main.ps &
  gvpsnum=$!
  while [ 1 ] ; do
    sleep 10
    head -`fgrep -n END_SAMPLE Main.hp | tail -1 | cut -d : -f 1` Main.hp \
      | hp2ps -c -t0 > Main.ps
    kill -HUP $gvpsnum
  done
