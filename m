Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD1518438F
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDWSVzXiCp2itkwZMAA0MvyMfEpgbIfTNklRLHFcdKs=; b=PSc4CB5CMPcZD1
	6BGl2xZPyTP0BGB/ED33MsG04d4crzPzJYDrfSd8C5rGlqdXbqdcYdIIUKL/qchHcFgB1L2tEnmsB
	ld9UeRgVD/VhilYXTwEn22rwkgfrvNcUwduQhA+a4F0mXYiU98oAcL8dJPFI8BJGOuYhfAw3nqRB5
	3uuL9QkmgM0vMpbKBpXkIY2E6NAxzGTgQrq2NjTR+gvjMqleO/GfL5uODuIdM5lgSbeHjEm0xeeXk
	7qxAaCJeTWQ2K15Rw1/uci3tjLFI/hLh0MLeqog3pQiKxEWR9QR6B9XxjgES/aIiW0BMyWddxFK0m
	VUR8zoMEvYvYoqLgjIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRO-0006n1-5A; Fri, 13 Mar 2020 09:17:14 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQz-0006JH-Ae
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091009; x=1615627009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YnJDxVTvCfMa7CzXSBcHLammnRkBJq+coceO+e/SqCk=;
 b=bsF8LOiatJP8UZ/Ji06gT1EOPN0CY2n5PJhik0FLMsPTA1UlZFG61fPX
 98aZOpAQSIExCGCERhEz3jaxDAYbWc782p3YOlalyM9HKo1jbOwA2gqSX
 5JDnt7sEjlOZ5LmUH+uhQaW/J8hY2fh+EVIqiQl2dDgTI1PGpkvFqj0pq
 jZqD4Zo/bFknBQFwe5gFlCvzk5QZ9+ks9PmLP0md/ZKsmpnHZ9o0cRuuh
 dW+w3539iVqxhX8SU/My0Z+0C2t0eLf76P+HJWvRz0pnjYd4BWvrhkP9k
 w0jk8AVD31yaCJYIlDcChpRHSRzdmwviklLUvRKWySit04u6cRppxpUQH Q==;
IronPort-SDR: FZOuB8AwukeX1OHLSz5A+o1NaIgMvmAawZIXamyjc/DcGskWNZ0wXrgkqHNq3Bzu5FdoDDU8nX
 3LumMTVevkzCyHE6cht26D8ynysKXAlEDUAep17ceBEwyg8xuUtPdqxLYKMQ/nopqbzceKTRoh
 KgWYp96Lw1p6hPuJI1v6DXoIq0MPBi4zeSQ0BBVwl2KK2NpvSsHTvVWqDLexlFouAMqxcmbT3T
 zrZvb7lI7vcNoetA8/DB+SX8ATgwl3pM7Lzsd9+8bbaasRP3DP8ra0EQLDNtsygkz0ARSFO1VO
 gIg=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669791"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:47 +0800
IronPort-SDR: lo+uyjXk7RFlmZnvpVoeM4+8OEJoQ2zsYhtMrwG/8FV8E4vchP/XjpIEvli4FtLx4+yz20ITgj
 DfOASkAjJlJHiLrjKD3x+cHZyAokMhx0LIJiJw/DapzDtJClzPAwUMeRIm6YhF6JmrJICz3aGm
 o9PfEnL7iiovM4fgsxwXzD4FjsScRvwbraQeL7pI9Jdh9APDvK/dmg4Uv28b4e8r+nicy7a87E
 urhvqsKOToYuyXTAuNHRK2HlGckfKeNWm+Qy1kp4+c4/0ID2KDwW1H5E8vQEBYDe35Z4cZ1r4/
 QmSPu3vnijEnqlPlwGhqa10e
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:46 -0700
IronPort-SDR: G7hLnSlYTlmn2m5dkPwLg6QrMyTUTi9lI+L2mlHtxdkX/IB+Y2FulkKCCWx5HAWAnclSLGhESP
 wLicb+p7Ep0S1rHSm1dBpV1HZDalcdqZwWFYyyojGOBdh+u1xDmfzsyjBqc6OKBG3zi/gYxD08
 RSrxhTlxXHqgtrZ3mPKpXf7JsI4QRr8IdOoclbOP6ZeIlhDMaMCD12UiZKZ6b0ptq3QG5CPvMK
 wEjC6vd5OAmqhl1aDyPcRydJSRD6ECQYG7yyIvbtWlCIhXQ7mKtL8K571+LJieJsyBwbTCsHoF
 zfc=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:47 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 8/9] riscv: create a loader.bin boot image for Kendryte SoC
Date: Fri, 13 Mar 2020 18:16:38 +0900
Message-Id: <20200313091639.87862-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021649_403089_1F73D25D 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

Create the loader.bin bootable image file that can be loaded into
Kendryte K210 based boards using the kflash.py tool with the command:

kflash.py/kflash.py -t arch/riscv/boot/loader.bin

Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Makefile      | 6 +++---
 arch/riscv/boot/Makefile | 3 +++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 259cb53d7f20..fb6e37db836d 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -85,12 +85,12 @@ PHONY += vdso_install
 vdso_install:
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
 
-ifeq ($(CONFIG_RISCV_M_MODE),y)
-KBUILD_IMAGE := $(boot)/loader
+ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_KENDRYTE),yy)
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


