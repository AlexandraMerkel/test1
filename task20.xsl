<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="utf-8"/>

<xsl:template match="/">
  
    <xsl:for-each select="//book"> 
      <xsl:value-of select="child::title"/>;
          </xsl:for-each>

</xsl:template>
</xsl:stylesheet>
