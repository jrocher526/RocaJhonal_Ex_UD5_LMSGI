<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Ciclos</title>
                <style>
                    .green { color: green; }
                    .blue { color: blue; }
                    .red { color: red; }
                    table { border-collapse: collapse; width: 50%; }
                    th, td { border: 1px solid black; padding: 5px; text-align: left; }
                </style>
            </head>
            <body>
                <p><strong>Nombre y apellidos:</strong> Jhonal Roca</p>
                <br/>
                <h1><xsl:value-of select="ies/@nombre"/></h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Año</th>
                    </tr>
                    <xsl:apply-templates select="ies/ciclos/ciclo"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ciclo">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td>
                <xsl:variable name="year" select="decretoTitulo/@año"/>
                <xsl:attribute name="class">
                    <xsl:choose>
                        <xsl:when test="$year > 2009">green</xsl:when>
                        <xsl:when test="$year = 2009">blue</xsl:when>
                        <xsl:otherwise>red</xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="$year"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
