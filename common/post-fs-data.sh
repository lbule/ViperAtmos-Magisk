#!/system/bin/sh

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
/magisk/.core/bin/sepolicy-inject --live -s mediaserver -t mediaserver_tmpfs -c file -p read,write,execute
