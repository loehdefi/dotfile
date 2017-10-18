#!/bin/bash

cd git
export GIT_SRC=`pwd`
cd
ln -ns $GIT_SRC .git
ln -ns $GIT_SRC/gitrc.git .gitrc
