<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <body>
  <h1><xsl:value-of select="FESTIVAL_NAME"/></h1>
  <h2><xsl:value-of select="DATE"/></h2>
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
        <td><xsl:value-of select="SYNOPSIS_ES"/></td>
        <td style="text-align:center" width="20%"><xsl:value-of select="PLACE/ADDRESS"/><br/>(<xsl:value-of select="PLACE/NAME"/>)</td>
        <td><xsl:value-of select="TIME"/>hs</td>
        <td><xsl:value-of select="ARTIST"/></td>
        <td><xsl:value-of select="BIO_ES"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


