#!/bin/bash

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

dir="/home/$1/.ssh"
file="$dir/authorized_keys"

mkdir -p "$dir"

chmod 700 $dir
chown $1:$1 $dir

cat id_rsa.pub >> $file

chmod 600 $file
chown $1:$1 $file
