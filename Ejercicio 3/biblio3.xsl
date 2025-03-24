<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Tabla de Libros</title>
                <style>
                    table { border-collapse: collapse; width: 50%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    .high-price { background-color: red; }
                    .italic { font-style: italic; }
                </style>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <table>
                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" data-type="number" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="precio"/></td>
                            <td>
                                <xsl:if test="precio &gt; 100">
                                    <xsl:attribute name="class">high-price</xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td class="italic">
                                <xsl:value-of select="@año"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>