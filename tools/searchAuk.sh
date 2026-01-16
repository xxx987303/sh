#! /bin/bash

grep -i $1 *.txt |grep -v _for_|grep --color -i $1
