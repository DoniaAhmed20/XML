<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Employees</title>
      </head>
      <body>
        <h1 align="center">Employees</h1>
        <table align="center" border="1.0">
          <tr align="center" style="background:rgb(105, 105, 185);color:white;">
            <th rowspan="2">ISBN</th>
            <th rowspan="2">Name</th>
            <th rowspan="2">Phone</th>
            <th rowspan="2">Email</th>
            <th colspan="5">Address</th>
          </tr>

          <tr align="center" style="background:rgb(105, 105, 185);color:white;">
			<th>Country</th>
			<th>City</th>
			<th>Region</th>
			<th>Buliding Number</th>
			<th>Street</th>
		  </tr>

          <xsl:for-each select="EmployeeList/employee">
            <tr align="center">
              <td><xsl:value-of select="@isbn" /></td>
              <td><xsl:value-of select="name" /></td>
              <td><xsl:value-of select="phones/phone" /></td>
              <td><xsl:value-of select="email" /></td>
              <td><xsl:value-of select="address/country"/></td>
			  <td><xsl:value-of select="address/city"/></td>
			  <td><xsl:value-of select="address/region"/></td>
			  <td><xsl:value-of select="address/building"/></td>
			  <td><xsl:value-of select="address/street"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
