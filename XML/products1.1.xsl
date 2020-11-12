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
            
            <a href="../sites/products.html">Back</a>
            <h1 align="center">Products from Stay Safe 19</h1>
            <table style="width:70%; margin:auto;" border="1">
                
            <tr bgcolor="#1c94cc">
              <th style="text-align:left; padding:7px;">Category</th>
              <th style="text-align:left; padding:7px;">id</th> 
              <th style="text-align:left; padding:7px;">Name</th>
              <th style="text-align:left; padding:7px;">Description</th>
              <th style="text-align:left; padding:7px;">Quantity</th>
              <th style="text-align:left; padding:7px;">Price</th>

            </tr>         
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
