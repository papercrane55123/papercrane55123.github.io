#!/bin/bash

echo "start pull-->" >> sudo /var/log/pull.log
date "+%Y-%m-%d %H:%M:%S"

cd /home/wsl/code/papercrane55123.github.io
git pull

echo "<--end pull"
