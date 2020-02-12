Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B3F15A685
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3Jcmg7uXinbFamOSUZcg6W/DXu40dX6vH7C+MTXTvQ=; b=BaZEmZ5O/Ux1nu
	xblxCl6kZylTu24DEFsYu+YVFjeWSEPb3Md9gDx8RJd9r8adG6WrhC6xzi6H4+kVpxuKtCU/+yFt1
	g+Hb18tiQsBxZF6E39KnmvSmyzHAUYEgqqurclxuy/lpuNhQrLPEgs1mzRZPoNFfKzY890ue/Hfl1
	pQFfpn96Io/71LplLfhcGsv7B1gIHC3eYjc/KA1gWwud2EmMr1sOdyOeH01IFe7m/rywZE1rYa/Q/
	DGcjrqbJ14I1WaraMrmJHO6PRJ8eUTcyDCF6jPGCXMBAdBNm4F4ZiIZFtxlBCkAZv5iB0LTRuBJTb
	qFVUq12ODZWVOXhpTBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pMf-00048G-EC; Wed, 12 Feb 2020 10:35:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLw-0002L5-KS
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503685; x=1613039685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vhDvTJ0Md2ejhH01UoaBJ3BElUmjNTl9jpEIzxhQAZk=;
 b=jv+aYI2rg3A12tqaXFBeA7AGLl9IUi+YChj2Jery4Dc3OBxYioy3/5NI
 1yFc6+edpgMDyFFjxdziX/xgDVrkvdbjqjQq8TMKe6ujDtpEE/dbs1AAQ
 jquWIZH4ihRJAH5IJCulW3P92eP3uNNSVZZgBzaxAYGU4B+WX26pHLWAf
 sCDnjJ32DzYO2BRKN3AwCagzuTIvbilYCXQHRTo4SZgoe1k9bH0LxfDfA
 uN497zqUrijYwt3JvvD255GWEI61TUvZUF7Z2/a1/DG/2Vv2vwPmj4LYL
 jhIfNQ3pajXABjVJILGMBqZqvOwLV+UgBNsPX5tfSw1pDRsD0MaJAEi+Q w==;
IronPort-SDR: eICvVqOmqBw+4z5vhmItVdbHWgZt0hvDlt/gxuRGD1lG2c26+d2Ymk1MXBFjZ3kD2hSIZ+/AKC
 6JY4IEVJCO9OtRmWzP88RgqE9eng5/6Y80F473zBt5TG/Sv4f+j/4+3ZFrYggid10LThjsIDbA
 ApfNaX6+iHr6BO4C96OD6GiSTYJ2acxgbapfH4ZCEm8aaqx8DAJ94YUPmffCL4HAQvlZnkipqC
 OsQ7DxkhtjAxmwAUZVQoQap9OnVgB5Q1aMzdhpmge7d2LLV6+gHcMrqrkxHhhoy7XISmyCaMcN
 y84=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113059"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:44 +0800
IronPort-SDR: wocU/X9aS+36/zil9IcV6e83fsaqTfnQoThYrPH9JqQYibJsCJZCTm/Oj70NsMNRVt9v94wp5R
 ftPSOIt052x56Ohze2dLG804o2xhhe/TSrqxDmA/Xf2byDMFJfdDBsN8zTJuof7zxMhyH1NKZ9
 ManOQewlNYuP7D2PHM3TXWriFIkcU7asIUpKbtPWQVs5GtfZMaOBehoG5sTmFjcdM6xYdxTS/G
 aO2oSuQQ1pRHQD9CjstjIIQS7QUKhW+Ss+xguJTb/5zY6ko19W/c+lJKp5q5Os7s8AEj49OsOJ
 OzGOYsuWMFEmtCHOK/3KXOSB
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:32 -0800
IronPort-SDR: Skc1+74Sgjrmd6LbNZcaRZRF9EyoMKRlTL8PT3E5Iwly7C9fpW76eVxoJmPNmr+HJm0ALPwHXb
 WQ6xL2zs+YlOpDp9Tc4bo4z4WwuDFoETGQ6eBlItfv5vcbNeK1NYdsXvEqEW0Dld8D2W9AhHt4
 hc35EBgzR2ZUYEsIOSggCiQ3qUhXJutPWmK5FqfEjA+Bb4t6PNcxnaoDnKzicUtDk0kDdjm5S0
 ig+J/U3rZNxpiKxcNl6g9e8OBzcQY1Nn4tCDF5CZU7Rx7Zvk5yeyhLQFxCf/0KONJ8fKvrW119
 RWY=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:41 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 10/10] riscv: create a loader.bin for the kendryte kflash.py
 tool
Date: Wed, 12 Feb 2020 19:34:32 +0900
Message-Id: <20200212103432.660256-11-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023444_798050_527D03F7 
X-CRM114-Status: GOOD (  10.22  )
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

From: Christoph Hellwig <hch@lst.de>

This can be loaded into the Kendryte KD210 based boards using:

kflash.py/kflash.py -t arch/riscv/boot/loader.bin

Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Makefile      | 4 ++--
 arch/riscv/boot/Makefile | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index b9009a2fbaf5..440969763e14 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -84,11 +84,11 @@ vdso_install:
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
 
 ifeq ($(CONFIG_RISCV_M_MODE),y)
-KBUILD_IMAGE := $(boot)/loader
+KBUILD_IMAGE := $(boot)/loader.bin
 else
 KBUILD_IMAGE := $(boot)/Image.gz
 endif
-BOOT_TARGETS := Image Image.gz loader
+BOOT_TARGETS := Image Image.gz loader loader.bin
 
 all:	$(notdir $(KBUILD_IMAGE))
 
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 36db8145f9f4..3530c59b3ea7 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -41,6 +41,9 @@ $(obj)/Image.lzma: $(obj)/Image FORCE
 $(obj)/Image.lzo: $(obj)/Image FORCE
 	$(call if_changed,lzo)
 
+$(obj)/loader.bin: $(obj)/loader FORCE
+	$(call if_changed,objcopy)
+
 install:
 	$(CONFIG_SHELL) $(srctree)/$(src)/install.sh $(KERNELRELEASE) \
 	$(obj)/Image System.map "$(INSTALL_PATH)"
-- 
2.24.1


