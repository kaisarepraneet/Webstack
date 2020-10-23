<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <style>
        table
        {
            margin-left:10%;
            margin-top:10%;
            padding:20px;
            width:70%;
        }
        .container
        {
            width:100%;
            margin-top:auto;
            margin-bottom:auto;
        }
        <style>
    </head>
    <body>
        <h2>Employee Management System</h2>
        <div class="container">
        <table border="2">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Salary</th>
                <th>Email</th>
                <th>Mobile No.</th>
                <th>Designation</th>
                <th>Promotion</th>
            </tr>
        <xsl:for-each select="Company/Employee">
            <tr>
                <td>
                    1
                </td>
                <td>
                    <xsl:value-of select="EmpName"/>
                </td>
                <td>
                    <xsl:value-of select="EmpAge"/>
                </td>
                <td>
                    <xsl:value-of select="EmpSalary"/>
                </td>
                <td>
                    <xsl:value-of select="EmpEmailId"/>
                </td>
                <td>
                    <xsl:value-of select="EmpDesignation"/>
                </td>
                <td>
                    <xsl:value-of select="EmpPhonenum"/>
                </td>
                <td>
                    <xsl:if test="EmpAge &gt;= 50">
                    Associate Project Manager
                    </xsl:if>
                    <xsl:if test="(EmpAge &gt;= 40) and (EmpAge &lt;= 49)">
                    Team Leader
                    </xsl:if>
                    <xsl:if test="EmpAge &lt; 40">
                    Developer
                    </xsl:if>
                </td>
            </tr>
        </xsl:for-each>
        </table>
        </div>
    </body>
</html>
</xsl:template>
</xml:stylesheet>