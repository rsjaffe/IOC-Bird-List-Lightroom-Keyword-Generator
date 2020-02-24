<?xml version="1.0" encoding="utf-8"?><!-- MIT License Copyright (c) 2020 Rory Jaffe. -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="utf-8" omit-xml-declaration="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="/">
    <xsl:text>[IOC World Birds by Family v</xsl:text>
    <xsl:value-of select="ioclist/@version"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="ioclist/@year"/>
    <xsl:text>]&#x0D;&#x0A;&#9;{animals}&#x0D;&#x0A;&#9;{birds}&#x0D;&#x0A;&#9;{Aves}&#x0D;&#x0A;&#9;{Chordata}&#x0D;&#x0A;&#9;{Animalia}&#x0D;&#x0A;&#9;{Eumaniraptora}&#x0D;&#x0A;&#9;{Tetrapoda}&#x0D;&#x0A;&#9;{Avilalae}&#x0D;&#x0A;&#9;{Neornithes}&#x0D;&#x0A;</xsl:text>
    <xsl:for-each select="ioclist/list/order/family">
      <xsl:text>&#9;</xsl:text>
      <xsl:value-of select="translate(english_name,',','')"/>
      <xsl:text>&#x0D;&#x0A;&#9;&#9;{</xsl:text>
      <xsl:value-of select="latin_name"/>
      <xsl:text>}&#x0D;&#x0A;</xsl:text>
      <xsl:text>&#9;&#9;{</xsl:text>
      <xsl:value-of select="substring(../latin_name,1,1)"/>
      <xsl:value-of select="lower-case(substring(../latin_name,2))"/>
      <xsl:text>}&#x0D;&#x0A;</xsl:text>
      <xsl:value-of select="if(matches(../latin_name,'^Apterygiformes|^Casuariformes|^Rheiformes|^Struthioniformes|^Tinamiformes','i'))  then '&#9;&#9;{Palaeognathae}&#x0D;&#x0A;' else '&#9;&#9;{Neognathae}&#x0D;&#x0A;'" />
      <xsl:for-each select="genus">
        <xsl:for-each select="species">
          <xsl:text>&#9;&#9;</xsl:text>
          <xsl:value-of select="english_name"/>
          <xsl:text>&#x0D;&#x0A;&#9;&#9;&#9;{</xsl:text>
          <xsl:value-of select="../latin_name"/>
          <xsl:text> </xsl:text>
          <xsl:value-of select="latin_name"/>
          <xsl:value-of select="translate(@extinct,'yes','†')"/>
          <xsl:text>}&#x0D;&#x0A;</xsl:text>
        </xsl:for-each>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
