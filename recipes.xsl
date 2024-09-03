<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <h2>Recipes</h2>
            <table border="1" bordercolor="white">
                <tr bgcolor="#007bff">
                    <th>Recipe Name</th>
                    <th>Description</th>
                    <th>Preparation Time</th>
                    <th>Servings</th>
                    <th>Difficulty</th>
                    <th>Calories</th>
                </tr>
                <xsl:for-each select="recipes/recipe">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="description"/></td>
                        <td><xsl:value-of select="preparationTime"/></td>
                        <td><xsl:value-of select="servings"/></td>
                        <td><xsl:value-of select="difficulty"/></td>
                        <td><xsl:value-of select="calories"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
