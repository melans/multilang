#!/bin/bash

# by anssary@gmail.com
# usage: 1) chmod +x multilang.sh
#        2) ./multilang.sh

Rscript <(awk '/^#RSCRIPT START/,/^#RSCRIPT END/' $0);

python <(awk '/^#PYTHON START/,/^#PYTHON END/' $0);

awk -f <(awk '/^#AWK START/,/^#AWK END/' $0);


: '
################################################################################
#RSCRIPT START

print("this is R")
print(1+2);

#RSCRIPT END
################################################################################
#PYTHON START

print("this is python")
print(1+2);

#PYTHON END
################################################################################
#AWK START

BEGIN{print "this is awk"}
NR<2{print 1+2}

#AWK END
################################################################################
'

