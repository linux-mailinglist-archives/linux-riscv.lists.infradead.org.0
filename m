Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B1C15A680
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6+V1PQUUBSmQuDE4B5R11++mFC/Wa74g7jSWcL8JKk=; b=K5CfoVDkEvkopL
	8AeDXsx8QttnyMPEPN7SXZw4k2RTO1Ir2rLJjQVu+j/hZRCSTeDra9Aw3PgnoWyEh/9DIlSX2kKpk
	UkOXqPL4w7EI5brPOUMx1llIkOpwbE/MDS7JwtTMvqay3sq/08hL0bPBHIZKU3Uj5SwQco/7pO2aw
	7glvutcbGTBqMsE/STxSKEWBQWjga9CyD+uzBZH1/S9PyMSltIAEv2j/YanyR6Hvgb4z0Jk6EEbTj
	FOkgeXqGSmEUm7gY4DIHDjobkhZ0GCAZbXdGYOvdfRl17pDNjpBw2QbP1LSCbx76sY9LjxkdG+ulE
	SZxdoR+Zo9xG+L28SwMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pMN-0002xZ-OA; Wed, 12 Feb 2020 10:35:11 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLt-0002KQ-F8
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503682; x=1613039682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mhmtc5P9+Ho3G7uvS2eMMg3MxZ9Q6XaFeRrsQaXHpFs=;
 b=olItEDOUdKxN46RuuT3mOSSglJnUOh5ZBVHI6nDXjI6j+/Cu+dAN5ahH
 3yveLnXD0YzE4BfqB8f0mShbqwFkQMEehekKnNOvJd3RnA4xY9vGYCHo8
 dVLGMDkY2xbJR9AXhPmA1mwGjdVcm9XhtqQTlxUqZMV5/Op/jMXWQIwnG
 WLEERO6Z48ASB6F6knYlmN/8AEdQbcz5fxf0nz1qgyHeme6qntI4+RQIW
 o/dpcvANe+bVt7OG8avMmdipShXv2rzL6F/oSPriUtwyK/1wjSEsgdLja
 wds859I5suUXWAxaz7o49a1ciO+SKbkVvb2HkJpaJffnobP7wlaBJGY4v w==;
IronPort-SDR: mqasC3x6uUO6DLP9c6+IQFAAT7c/rB+M3YQ+5A2irJe3bP2u2SVySP3YURFm09EhMCQoXT0Rfo
 Gv9Jb6Rrfsu0HFtUDzgWR3cOHZpQcqj0WJnCv5G7bLihStPv1cLt4rQIQqX8gLw2BExXK2Hi8c
 rlamepaSMlpyHZ8Kad0Mceww741lgRDhM+qidBu9ODghP75nUmcboA7XlLhlcObaoXtIf7DGu3
 altNInmIXyncTHiE8kaKJKhjU9WXLk1BFi5ce6LkGcJdCviNwbPKwDyjpYcRphnT96QCQg/6do
 AjE=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113055"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:41 +0800
IronPort-SDR: jpndGCra5fC1Z6V8TwBx/+rQEtNOLSSFK1zY0zGgB3fWfObGC2V/ctSXpcOoFJOzcmv9711GuN
 vViggsFfXjFhwpXXqW8hoYbPEIK9woNXUjS0G8xXZ9AGh0YcyLxNE1xwH9mFfxi2i6mXBrmpBE
 dzy/GeLvuyUnmw8LcI3ochwTvulWhdsxdBWuUMYlbzk4xorzwuYev13bQGb1Qx0Vt/7FIINoA4
 Tj+znLwtkTR+UiC41qJtU2NSnOoyvlzNFrGZAZbtxCoilhn0znBwXkOVknfD9MutMT++ha76ey
 D3Whm6F3EqdMEK5dvM2b1r8B
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:29 -0800
IronPort-SDR: Clb0Qzq6pxeDSNg/z8o3kyJzbEgdYnY3JAA6ipfcM38G63o0NLXWHGWt2ba+7FxElmr2FBYyMw
 LJ1mTKqJSLGHDlEiQUpBqtmCQBPliHiRUlEjc32rGdTkTUz9kCXZIkNEaNgHqsUS1WCZI6qaNC
 HhRU05AYABUtqqKCu13Po57Ks5XgSv2faK1wakJEpv7F16sp9/XJKq5Zt/0JUNpdNfnk7eiqwm
 tGsjzUISOOCRWCZyghFdorjMPG6+AV+f324EbPjebo2vZqlwrGesVt/dcsycJpghfmm1EyBSe2
 neo=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:38 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 07/10] riscv: Select required drivers for Kendryte SOC
Date: Wed, 12 Feb 2020 19:34:29 +0900
Message-Id: <20200212103432.660256-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023441_601444_733D6B7F 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch selects drivers required for the Kendryte K210 SOC.

Since K210 based boards do not provide a device tree, this patch
also enables the BUILTIN_DTB option.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig.socs | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 4d5d4a65b2a2..8d83210467d9 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -13,6 +13,10 @@ config SOC_SIFIVE
 config SOC_KENDRYTE
 	bool "Kendryte K210 SoC"
 	depends on !MMU
+	select BUILTIN_DTB
+	select SERIAL_SIFIVE if TTY
+	select SERIAL_SIFIVE_CONSOLE if TTY
+	select SIFIVE_PLIC
 	help
 	  This enables support for Kendryte K210 SoC hardware.
 
-- 
2.24.1


