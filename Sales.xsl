<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/Sales">

        <html>
            <head>
                <style>
                    .red{color: red;}
                </style>
            </head>
            <body>
                <table boder="0">
                    <xsl:for-each select="Person">
                        <xsl:choose>
                            <xsl:when test="Commission>=5000">
                                <tr align="left" style="color:blue">
                                    <th>NAME:<xsl:value-of select="Name"/></th>
                                    <th>AGE:<xsl:value-of select="Age"/></th>
                                    <th>Your Commission is &#36;<xsl:value-of select="Commission"/></th>
                                </tr>
                            </xsl:when>
                            <xsl:when test="Commission>=500">
                                <tr align="left" style="color:red">
                                    <th>NAME:<xsl:value-of select="Name"/></th>
                                    <th>AGE:<xsl:value-of select="Age"/></th>
                                    <th>Your Commission is &#36;<xsl:value-of select="Commission"/></th>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr align="left">
                                    <th>NAME:<xsl:value-of select="Name"/></th>
                                    <th>AGE:<xsl:value-of select="Age"/></th>
                                    <th>Your Commission is &#36;<xsl:value-of select="Commission"/></th>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>

                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>