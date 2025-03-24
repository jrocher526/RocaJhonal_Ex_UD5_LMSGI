<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Autores</title>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <ol>
                    <xsl:for-each select="bib/libro/autor | bib/libro/editor">
                        <xsl:sort select="apellido" order="ascending"/>
                        <li>
                            <xsl:value-of select="apellido"/>, <xsl:value-of select="nombre"/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>