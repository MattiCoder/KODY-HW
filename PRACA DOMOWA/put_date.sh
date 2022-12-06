#! /usr/bin/env bash

user_filename=$1
defined_filename=data.txt
if [ $# -eq 0 ]; then
date > $defined_filename
else
date > $user_filename
fi