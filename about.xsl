<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <div class="team-container">
            <xsl:for-each select="team/member">
                <div class="team-member">
                    <img src="{image}" alt="{name}" />
                    <h3><xsl:value-of select="name"/></h3>
                    <p><xsl:value-of select="role"/></p>
                    <p><xsl:value-of select="description"/></p>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>