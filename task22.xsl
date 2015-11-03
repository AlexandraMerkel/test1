<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="utf-8" method="text"/>

<xsl:template match="/">
  
    <xsl:for-each select="//book"> 

      <xsl:value-of select="child::title"/> 

      <xsl:if test="count(author) &gt; 1"><xsl:text>*</xsl:text>
      </xsl:if><xsl:text>;</xsl:text>

    </xsl:for-each>
 
</xsl:template>

</xsl:stylesheet>
