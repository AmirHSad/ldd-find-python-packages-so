#! /bin/bash

LD_LIBRARY_PATH+=$(find ${@:$#} -name "*.so*" -printf "%h\n" | sort | uniq | sed ':a;N;$!ba;s/\n/:/g'):
while [ $# -gt 1 ]; do
  case $1 in
	-p | --permanent)
	echo -e "export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}" > /etc/profile.d/$(echo ${@:$#} | md5sum | head -c 20).sh
	;;
  esac
  shift
done

echo $LD_LIBRARY_PATH
