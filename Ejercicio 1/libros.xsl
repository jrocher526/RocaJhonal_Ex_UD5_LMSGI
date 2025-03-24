<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Libros</title>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <xsl:apply-templates select="bib/book"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="book">
        <p>*<xsl:value-of select="title"/> -
        <xsl:choose>
            <xsl:when test="publisher">
                "<xsl:value-of select="publisher"/>"
            </xsl:when>
        </xsl:choose>
        (<xsl:value-of select="year"/>)
        </p>
    </xsl:template>
</xsl:stylesheet>