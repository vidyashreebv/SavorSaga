<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>
        <head>
            <title>Recipe List</title>
            <style>
                table {
                    width: 100%;
                    border-collapse: collapse;
                    height: auto;
                }
                th, td {
                    padding: 10px;
                    border: 0px solid #ddd;
                }
                th {
                    background-color: #007bff;
                    color: white;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
                tr:hover {
                    background-color: #e9ecef;
                }
            </style>

        </head>
        <body>
            <h2>Recipes</h2>
            <table>
                <tr>
                    <th>Recipe ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Preparation Time (mins)</th>
                    <th>Servings</th>
                    <th>Difficulty</th>
                    <th>Calories</th>
                </tr>
                <xsl:for-each select="recipes/recipe">
                    <tr>
                        <td><xsl:value-of select="@id" /></td>
                        <td><xsl:value-of select="name" /></td>
                        <td><xsl:value-of select="description" /></td>
                        <td><xsl:value-of select="preparationTime" /></td>
                        <td><xsl:value-of select="servings" /></td>
                        <td><xsl:value-of select="difficulty" /></td>
                        <td><xsl:value-of select="calories" /></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
