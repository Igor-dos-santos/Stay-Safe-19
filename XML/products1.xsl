<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : products1.xsl
    Created on : 06 November 2020, 21:50
    Author     : Tamara
    Description:
        Purpose of transformation follows.
-->

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Products from Stay Safe 19</title>
            </head>
            <body>
                
                    <a href="index.html">Back</a>
              <!--1. All products names-->
              <h2>All products names:</h2>
              <xsl:apply-templates select="/shop/products/product/name"/>

              <!--2. Categories for products-->
              <h2>Products category:</h2>
              <xsl:apply-templates select="/shop/products/product/category"/>

              <!--3. Products id numbers -->
              <h2>Product id's :</h2>
              <xsl:apply-templates select="/shop/products/product/id"/>

              <!--4. Quantity more than 300-->
              <h2>Units quantity more than 300:</h2> 
              <xsl:apply-templates select="/shop/products/product[quantity>'300']"/>

              <!--5. Products costing more than 10 -->
              <h2>Products more expensice than 10 euros:</h2>
              <xsl:apply-templates select="/shop/products/product[price>'10']"/>
                  
            </body>
        </html>
    </xsl:template>
    
    <!--1. All products names-->
  <xsl:template match="name">
    <p><xsl:value-of select="." /></p>
  </xsl:template>

 <!--2. Categories for products-->
  <xsl:template match="category">
    <p><xsl:value-of select="category" /></p>
  </xsl:template>

  <!--3. Products id numbers -->
  <xsl:template match="id">
    <p><xsl:value-of select="../@id" /></p>
  </xsl:template>

  <!--4. Quantity more than 300-->
  <xsl:template match="product[quantity>'300']">
    <p><xsl:value-of select="title" />, <xsl:value-of select="quantity"</p>
  </xsl:template>

  <!--5. Products costing more than 10 -->
  <xsl:template match="product[price>'10']">
    <p><xsl:value-of select="title" />, <xsl:value-of select="price"/>,<xsl:value-of select="id"/></p>
  </xsl:template>

</xsl:transform>

