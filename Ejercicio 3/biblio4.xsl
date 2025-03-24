<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteca</title>
                <style>
                    table { border-collapse: collapse; width: 80%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    .high-price { color: red; }
                </style>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autor/es</th>
                        <th>Editor/es</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo" order="ascending"/>
                        <tr>
                            <td>
                                <xsl:if test="precio &gt; 100">
                                    <xsl:attribute name="class">high-price</xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="titulo"/>
                                <xsl:if test="precio &gt; 100"> (Caro)</xsl:if>
                            </td>
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="nombre"/> <xsl:value-of select="apellido"/> 
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/> <xsl:value-of select="apellido"/> <xsl:value-of select="afiliacion"/> 
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>