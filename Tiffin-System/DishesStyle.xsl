<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    	<html>
    		<head>
    			<style>
    		div
            {
                text-align:center;
                width:80%;
                border:2px solid black;
                margin-left:10%;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
            table
            {
                margin-bottom:3%;
            }

    			</style>
    		</head>
    		<body>
				   		<h1 style="text-align:center;">DISHES OFFERED</h1>
                <div class='Gadgets' style="float:center;">
                    <h2>List of Dishes</h2>
                    <table border="2" align="center">
                        <tr style="background-color:black;color:white;">
                            <th>Name</th>
                            <th>Item_1</th>
                            <th>Item_2</th>
                            <th>Item_3</th>
                            <th>Item_4</th>
                            <th>Price</th>
                        </tr>
                        <xsl:for-each select="Dishes/Dish">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Item_1"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Item_2"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Item_3"/>
                                </td>
                                 <td>
                                    <xsl:value-of select="Item_4"/>
                                </td>
                                 <td>
                                    <xsl:value-of select="Price"/>
                                </td>

                            </tr>
                        </xsl:for-each>
                    </table>
                </div>	

    			</body>
    		</html>
    	 </xsl:template>
</xsl:stylesheet>
