<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="oxm-list-wx">
    <!-- className 'J_OXMod' required  -->
    <div class="J_OXMod oxmod-oxm-list-wx" ox-mod="oxm-list-wx">
        <xsl:for-each select="data/list-wx/i">
            <ul>
                <li>
                    <span class="img-box" style="background-image:url({img})">
                    </span>
                    <h3>
                        <xsl:if test="is-new = 'true'">
                            <xsl:attribute name="class">new</xsl:attribute>
                        </xsl:if>
                        <span class="right-time">
                            <xsl:value-of select="time"/>
                        </span>
                        <a href="{href}">
                            <xsl:value-of select="title"/>
                        </a>
                    </h3>
                    <p>
                        <span class="right-status">
                            <xsl:value-of select="status" />
                        </span>
                        <xsl:value-of select="desc"/>
                    </p>
                </li>
            </ul>

        </xsl:for-each>
      </div>
    </xsl:template>

</xsl:stylesheet>
