
if [ "$#" -ne 1 ] 
then
	echo Numero de argumentos invalido
	exit 1
fi

date=$1
echo Consultando archivos xml...
java net.sf.saxon.Query juntas.xq DATE=$date > test.xml
echo Generando archivo html...
java net.sf.saxon.Transform -s:test.xml -xsl:eventos.xsl -o:final.html
echo Listo
xdg-open final.html
