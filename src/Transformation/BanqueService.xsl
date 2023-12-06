<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<xsl:variable name="Somme" >
	<xsl:value-of select="sum(Banqueservice/getComptes/solde)"></xsl:value-of>
	</xsl:variable>
	<xsl:variable name="somme" >
	<xsl:value-of select="sum(Banqueservice/getComptes/solde)"></xsl:value-of>
	</xsl:variable>
	<html>
			<head>
				<title>Liste des Comptes</title>
			</head>
			<body>
				<table border="1">
					<tr>
						<th>Code</th>
						<th>Solde</th>
						<th>Date de Création</th>
					</tr>
					
					<xsl:for-each select="//getComptes">
						<tr>
							<td>
								<xsl:value-of select="code" />
							</td>
							<td>
								<xsl:value-of select="solde" />
							</td>
							<td>
								<xsl:value-of select="dateCreation" />
							</td>
						</tr>
						
					</xsl:for-each>
				</table>
				<p>
						      la somme est :
						 <xsl:value-of select="$Somme"></xsl:value-of>
						 </p>
				<table border="1">
					<tr>
						<th>Code</th>
						<th>Solde</th>
						<th>Date de Création</th>
					</tr>
					<xsl:for-each select ="//getComptes[substring(dateCreation, 1, 4) > 2000]">
						<tr>
							<td>
								<xsl:value-of select="code" />
							</td>
							<td>
								<xsl:value-of select="solde" />
							</td>
							<td>
								<xsl:value-of select="dateCreation" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<p>
						      la somme est :
						 <xsl:value-of select="$somme"></xsl:value-of>
						 </p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
		<!-- TODO: Auto-generated template -->
