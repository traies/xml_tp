<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="empty_template">
	<html>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<body>
		<h1>Festival de danza contemporanea</h1>
		<h2 style="color:red">No se encontraron eventos para el día: <xsl:value-of select="date"/></h2>
	</body>
  	</html>
</xsl:template>
<xsl:template name="main_template">
  <html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <body>
  <h1>Festival de danza contemporanea</h1>
  <h2>Eventos del día: <xsl:value-of select="date"/></h2>
    <table border="1px solid black" style="width: 100%;">
      <tr bgcolor="#9acd32">
        <th style="text-align:center">Titulo</th>
        <th style="text-align:center">Sinopsis</th>
        <th style="text-align:center">Lugar</th>
        <th style="text-align:center">Hora</th>
        <th style="text-align:center">Artista</th>
        <th style="text-align:center">Descripción</th>
      </tr>
      <xsl:for-each select="table/row">
      <tr>
        <td style="text-align:center"><xsl:value-of select="TITLE"/></td>
        <td style="text-align:center"><xsl:value-of select="SYNOPSIS_ES"/></td>
        <td style="text-align:center" width="20%"><xsl:value-of select="PLACE/ADDRESS"/><br/>(<xsl:value-of select="PLACE/NAME"/>)</td>
        <td style="text-align:center"><xsl:value-of select="TIME"/>hs</td>
        <td style="text-align:center"><xsl:value-of select="ARTIST"/></td>
        <td style="text-align:center"><xsl:value-of select="BIO_ES"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="root">
	<xsl:choose>
		<xsl:when test="table/row">
			<xsl:call-template name="main_template" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="empty_template" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>
</xsl:stylesheet>



