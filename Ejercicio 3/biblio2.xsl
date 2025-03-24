<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Libros con Precio Menor a 100</title>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <ol>
                    <xsl:for-each select="bib/libro[precio &lt; 100]">
                        <li>
                            <xsl:value-of select="titulo"/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>