<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="utf-8" method="text"/>

<xsl:template match="/">
 
    <xsl:for-each select="//book"> 
      <xsl:value-of select="title"/> 
      
       <xsl:choose>
        <xsl:when test="child::price &gt; 30"><xsl:text>&gt;30;</xsl:text>
        </xsl:when>
        
        <xsl:otherwise>
          
         <xsl:choose>
           <xsl:when test="child::price = 30"><xsl:text>=30;</xsl:text>
             </xsl:when>

         <xsl:otherwise><xsl:text>&lt;30;</xsl:text>

            </xsl:otherwise>

          </xsl:choose>

        </xsl:otherwise>

      </xsl:choose>

    </xsl:for-each>

</xsl:template>
  
</xsl:stylesheet>
