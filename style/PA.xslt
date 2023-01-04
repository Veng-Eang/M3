<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
        <head>
            <title>XML to HTML transform</title>
            <link rel="stylesheet" href="../style/xsl.css"/>
        </head>
        <body>
            <h1>XML to HTML transform</h1>    
            <table border="1">
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Present</th>
                <th>Absent</th>
                <th>Class Id</th>
            </tr>
            <xsl:for-each select="students/student">
            <tr>
                <td><xsl:value-of select="@studentid"/></td>
                <td><xsl:value-of select="studentnamelt"/></td>
                <td><xsl:value-of select="present"/></td>
                <xsl:choose>
                    <xsl:when test="absent &gt; 10">
                    <td style="backgroundcolor"><xsl:value-of select="absent"/></td> 
                </xsl:choose>
                <td><xsl:value-of select="@classid"/></td>
            </tr>
            </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>