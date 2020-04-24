#!/bin/zsh

mkdir $1 && cd $1
mkdir tasks handlers templates files vars defaults meta
echo "---" >> {tasks,handlers,templates,files,vars,defaults,meta}/main.yml
cd ..
