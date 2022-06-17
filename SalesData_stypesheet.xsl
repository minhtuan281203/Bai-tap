<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
       <xsl:for-each select="CottonDesk/SalesPerson">
           <xsl:if test="Product='Laptop'">
               <xsl:choose>
                   <xsl:when test="Sales > 30000">
                       <span style="color:blue;">
                            Name:
                           <xsl:value-of select="Name"/>
                           AGE:
                           <xsl:value-of select="Age"/>
                           Your Commision is $5000.
                       </span>
                   </xsl:when>

                   <xsl:when test="Sales > 20000">
                       <span style="color:green;">
                           Name:
                           <xsl:value-of select="Name"/>
                           AGE:
                           <xsl:value-of select="Age"/>
                           Your Commision is $1000.
                       </span>
                   </xsl:when>

                   <xsl:when test="Sales > 10000">
                       <span style="color:red;">
                           Name:
                           <xsl:value-of select="Name"/>
                           AGE:
                           <xsl:value-of select="Age"/>
                           Your Commision is $500.
                       </span>
                   </xsl:when>

                   <xsl:when test="Sales > 5000">
                       <span style="color:magenta;">
                           Name:
                           <xsl:value-of select="Name"/>
                           AGE:
                           <xsl:value-of select="Age"/>
                           Your Commision is $10000.
                       </span>
                   </xsl:when>

                   <xsl:otherwise>
                       <span style="color:black;">
                           Name:
                           <xsl:value-of select="Name"/>
                           AGE:
                           <xsl:value-of select="Age"/>
                           Your Commision is $0.
                       </span>
                   </xsl:otherwise>
               </xsl:choose>
               <br/>
           </xsl:if>
       </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>