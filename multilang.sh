







# by anssary@gmail.com

Rscript <(sed -n '/\tRscript start\t/,/\tRscript end\t/p' $0|sed '1d;$d')

python <(sed -n '/\tPython start\t/,/\tPython end\t/p' $0|sed '1d;$d')

awk -f <(sed -n '/\tAWK start\t/,/\tAWK end\t/p' $0|sed '1d;$d') $0



: '#############################################################################
	Rscript start	

print("this is R")
print(1+2);

	Rscript end	
###############################################################################'


: '#############################################################################
	Python start	

print("this is python")
print(1+2);

	Python end	
###############################################################################'


: '#############################################################################
	AWK start	
BEGIN{print "this is awk"}
NR<2{print 1+2}

	AWK end	
###############################################################################'

