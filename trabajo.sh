if [ "$#" -ne 1 ] 
then
	echo Numero de argumentos inválido.
	exit 1
fi

date=$1

echo ${date} | grep '^[0-9][0-9][0-9][0-9]-\(0[1-9]\|1[0-2]\)-\([0-2][0-9]\|3[0-1]\)$' > /dev/null 

if [ $? -ne 0 ]
then
        echo Formato de fecha inválido, usar YYYY-MM-DD.
	exit 1
fi


echo Consultando archivos xml...
java net.sf.saxon.Query junta.xq DATE=$date > datos_xml.xml
echo Generando archivo html...
java net.sf.saxon.Transform -s:datos_xml.xml -xsl:eventos.xsl -o:eventos.html
echo Listo
xdg-open eventos.html
