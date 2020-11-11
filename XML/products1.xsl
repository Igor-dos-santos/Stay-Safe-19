<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : products1.xsl
    Created on : 06 November 2020, 21:50
    Author     : Tamara
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>

        <head>
            <title>Products from Stay Safe 19</title>
        </head>

        <body>

            <h1 align="center">Companies I have found</h1>
            <table style="width:70%;" border="1">
                <xsl:for-each select="/products/product">
                    <tr>

                        <th>
                            <xsl:value-of select="category" />
                        </th>
                        <th>
                            <xsl:value-of select="id" />
                        </th>
                        <th>
                            <xsl:value-of select="name" />
                        </th>
                        <th>
                            <xsl:value-of select="description" />
                        </th>
                        <th>
                            <xsl:value-of select="quantity" />
                        </th>
                        <th>
                            <xsl:value-of select="price" />
                        </th>

                    </tr>
                </xsl:for-each>
            </table>
        </body>

        </html>
    </xsl:template>



</xsl:stylesheet>
