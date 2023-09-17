#! /bin/bash
shopt -s lastpipe
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}
shared_object_dirs=$(find ${@:$#} -name "*.so*" -printf "%h\n" | sort | uniq)

echo -e "${shared_object_dirs}" | while read line
do
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}${line}:
done

while [ $# -gt 1 ]; do
  case $1 in
	-p | --permanent)
	echo -e "export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}" > /etc/profile.d/$(echo ${@:$#} | md5sum | head -c 20).sh
	;;
  esac
  shift
done

echo $LD_LIBRARY_PATH
