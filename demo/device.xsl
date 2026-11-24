<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
<html lang="zh-Hant"><head><title>設備相容模式 · XSLT Reader 示範</title><link rel="stylesheet" href="demo.css"/></head>
<body><main><header><span class="brand">XSLT Reader</span><span class="sample">設備操作示範 · 非真實影印機後台</span></header>
<section class="lead"><h1>保留原網站的互動</h1><p>只對你信任的來源啟用相容模式，讓原網站的表單與程式繼續運作。</p></section>
<div class="report-meta"><span>目前設備 <strong><xsl:value-of select="device/name"/></strong></span><span>資料用途 <strong>功能展示</strong></span></div>
<form onsubmit="return false"><label>顯示名稱<input type="text" value="{device/entry/label}" readonly="readonly"/></label><label>電子郵件<input type="text" value="{device/entry/address}" readonly="readonly"/></label><button id="show-help" type="button">查看使用說明</button><p id="help" hidden="hidden">原網站 JavaScript 已執行。這個示範按鈕只切換說明，不儲存、不送出任何資料。</p></form>
<footer><p>此頁使用虛構資料，不代表任何設備品牌的官方介面。</p><p>相容模式預設關閉，按完整來源分別設定；原網站程式沿用網站及瀏覽器的安全政策。</p></footer>
</main><script src="device.js"></script></body></html>
</xsl:template></xsl:stylesheet>
