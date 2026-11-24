<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
<html lang="zh-Hant"><head><title>辦公用品庫存報表 · XSLT Reader 示範</title><link rel="stylesheet" href="demo.css"/></head>
<body><main>
  <header><span class="brand">XSLT Reader</span><span class="sample">虛構示範資料</span></header>
  <section class="lead"><h1>辦公用品庫存報表</h1><p>從 XML 與原有 XSL 樣式表，呈現清楚易讀的報表。</p></section>
  <div class="report-meta"><span>盤點日期 <strong><xsl:value-of select="inventory/@date"/></strong></span><span>項目數 <strong><xsl:value-of select="count(inventory/item)"/></strong></span><span>幣別 <strong>新台幣</strong></span></div>
  <table><thead><tr><th>品項</th><th>分類</th><th class="number">數量</th><th class="number">單價</th><th class="number">小計</th></tr></thead><tbody>
  <xsl:for-each select="inventory/item"><xsl:sort select="@code"/>
    <tr><td><strong><xsl:value-of select="name"/></strong><small><xsl:value-of select="@code"/></small></td><td><xsl:value-of select="category"/></td><td class="number"><xsl:value-of select="quantity"/><span class="unit"><xsl:value-of select="unit"/></span></td><td class="number"><xsl:value-of select="format-number(price,'#,##0')"/></td><td class="number"><xsl:value-of select="format-number(quantity * price,'#,##0')"/></td></tr>
  </xsl:for-each></tbody></table>
  <footer><p>此頁由標準 XML／XSLT 1.0 轉換，沒有修改原始資料。</p><p>靜態閱讀模式 · 轉換引擎隨擴充功能提供</p></footer>
</main></body></html>
</xsl:template></xsl:stylesheet>
