#! /bin/bash

md5_test=$(md5sum index.html)
md5_orig=$(md5sum html/index.html)
if [ "${md5_test::32}" = "${md5_orig::32}" ]
then
  exit 0
else
  exit 1
fi
