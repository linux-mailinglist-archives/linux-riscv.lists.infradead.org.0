Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D981860E5
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 01:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDWSVzXiCp2itkwZMAA0MvyMfEpgbIfTNklRLHFcdKs=; b=bzqWpN+rKy74AW
	kuO7XuHnIDl/yafmxbbvNVC94YtEI7K6TpFVc0UwKkqaP3c86PyCrP1PQZ0NaoTMNrDDDyZhqvEB7
	cerh7gsd4m3Nlu07i6tQJhQrhEPTu+jOaRvBxBOBJuNG+k/jgBvI2FdSVt7srGJd2wxSv8ubC5E7W
	FEuDxkLveBq5AL6M8Uu+5qnBgY6H4kh1YE7da8HGS1rUM5/9FlzPKJYDaFWsd1IL53ghP1KhieemZ
	h9xrsD6y797A7PRb4LRMC3njljj2lYrI7vF5Yl4uoxgVdA/ANkOen9D3rSz4iMTCTu+AvEpI2hBqo
	lW37nRx/jxolE2b4Onew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdvU-0005K3-D7; Mon, 16 Mar 2020 00:48:16 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdv8-0004td-9I
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 00:47:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584319675; x=1615855675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YnJDxVTvCfMa7CzXSBcHLammnRkBJq+coceO+e/SqCk=;
 b=lcNFDlIqjPVVvpCwTpk2KHjDIJMeoYRM2uTqWjcprEWlBv0hnqcrIlwH
 mVRcmFh/DAMZq2A/hyxNvGbZlqwgtUjGkMRg7vs6n/GMVR1DRx4gEs9O9
 lPdehrUFGEV7gmbx6sQJ4ySRvgTgMNP/AFGx6S8WSfnukuqtQAaqao7Fd
 r+k3tPDH6b8HLSHLYRevsc767jxTVYUQCK9IzDz0SPCuPwof3+ro4P4lG
 pcaOwVWV0Gs7GymvINcfaD8tTocovMPg7e38jmTnSbfo6VBZiCdDySBhn
 k28K17iSGspXPUdDSiIuOhAwDccXBA9LqXmXMBWPLabBc0zMwLjJF0p6g g==;
IronPort-SDR: YlXEtdJr4SgyEiyXjPd8vkEXx4O+9NcHYWpZx/ZTTsn+koy9dwAj85xtWoJXdGrOs+kueOpzFb
 c469GAo7nwr7dHt1aNk2RRqIuSEGjmZoVOrtxAmeZvtBOh6Twhora31ssHOgKKD0PsgaWGRTaj
 xT5WtLuzpihWMn038xVRJ51r0H/kwf/8ANBSCjEK8M69SzgtuEjNUSYz1x4WjfC/Z6hY2Z9lwm
 DcBq26Z16N8YBqpzzkipQ82c3rMShY6XkKIuq568sLAqQ/ex+iMfYmYC/2AM0Z3Xy7RHKpDZC2
 NCc=
X-IronPort-AV: E=Sophos;i="5.70,558,1574092800"; d="scan'208";a="133011929"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2020 08:47:53 +0800
IronPort-SDR: vSfv/HH5vXPIcoHW4rkHo9mnRVECFfwml5M2pxKLWfK0NK9Nb2cqphYX/VYVYB5USQDIu3SAiP
 6Coq1BWwvA4xAV/pQ8mSKFyFk8Ns8DiBzIBfb1Qi5UTxEfgJ1eWjdYReg27CJnKZyrHsRlNBv3
 UQNEqquVhJd1fnQt075jwLSdm4J4e7HMKRVI8NUAFX8U1O8mLv35ttzmBd3OQmlb6vi5e+5nwZ
 59Bw3qmE0bbEmZXBLO4wfPCVki7kesTzDqHVdHniW90IbD1O6Fo2+0W+YnB8v2Fe3hFwsmcEU0
 t64K8/DVP11NTWEuu8N1t/Jf
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2020 17:39:23 -0700
IronPort-SDR: hH0EtFGyLYOPavj4+ahJiq1l2iT4Bb3gwiHr1zoPg4I1Vv62zTGrYCXP3RBtNZS4SMwARpc9ol
 ZNzFtx0Xzd73yExNgHei66XBRLHsB2u7ExyOcAQeRwrsvqvXE3on4M9Etp+Y06BGgXhraRZO1G
 VFyVOYZ65afpmKywWBmRUfS2MAPF0Ezs2aLGwCH+eq1Axw+Eoc4zy2TlSxmYtu7W7Tvcu+WLOG
 fLHbA/0Xf8gYfSGp/mu2qzshSCCzcBhQWAUHjVgFttdnsXpo8C9EgfTAY89DpDEDJEEUDXndOG
 Tp8=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Mar 2020 17:47:52 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v4 8/9] riscv: create a loader.bin boot image for Kendryte SoC
Date: Mon, 16 Mar 2020 09:47:43 +0900
Message-Id: <20200316004744.209292-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200316004744.209292-1-damien.lemoal@wdc.com>
References: <20200316004744.209292-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_174754_347460_4B9E05D9 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


