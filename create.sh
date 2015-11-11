
q=$#
if ( $q -ne 1)
then
	echo Numero de argumentos invalido
	exit
fi
date=$1
java net.sf.saxon.Query sort_by_date.xq DATE=$date -o:temp.xml


