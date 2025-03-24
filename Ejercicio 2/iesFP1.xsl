<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Ciclos</title>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <br/>
                <xsl:apply-templates select="ies/ciclos/ciclo"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ciclo">
        <p style="margin: 0;">"<xsl:value-of select="nombre"/>"</p>
    </xsl:template>
</xsl:stylesheet>