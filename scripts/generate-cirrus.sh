#!/bin/sh

cat global.yml > .cirrus.yml
cat packages/* >> .cirrus.yml
