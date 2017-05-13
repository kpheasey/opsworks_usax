#!/usr/bin/env bash

rm cookbooks.tar.gz

berks update
berks package cookbooks.tar.gz

git add .
git commit -m 'package update'
git push
