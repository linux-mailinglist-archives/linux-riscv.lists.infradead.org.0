Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9FB18281D
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDWSVzXiCp2itkwZMAA0MvyMfEpgbIfTNklRLHFcdKs=; b=Va7jTd8mILH8/c
	RbsNhy/vIGuYB/ZwZUJG3C9jnJ0wqPp0nI+OOU4r34V0Mh4WxvBKt9JVCqX536BP/KYjmeXJPELS0
	ceqnkM54V5XLyr7Q7VLVlMn9Nisww4svECawtFDW9apQTcE+Y0XhKKVaCPdMf5OgSUUGsCbvUJLJp
	Dm7biA47r0W5Ntu8a4JZsblVPyh2GCTG7TLJY7zlzcsZQN+jpz9y+iqLx3+DOBjI1N7ioGx0fDEqH
	KDTvH2HjQralBWPy/mH57Hkt9wJslWObjoD+948IPqSooIglDwYFmtwpze9XTHEHDn0P0TABM9M1j
	jwyi7vw8izEeU+bjewoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG8A-0000Xi-Jd; Thu, 12 Mar 2020 05:11:38 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7o-0008W8-Qt
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989877; x=1615525877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YnJDxVTvCfMa7CzXSBcHLammnRkBJq+coceO+e/SqCk=;
 b=dLmQVw3Qnpcr6Cs70OR4NYBnMUqNCD6Ahz2gbvwFy4MSQ9t0ohQUNBy5
 vfWSwouGfrqKD17uww08f3jYaReVmi8X4EEfmBTl6I+Zmngn7NIxKxbEF
 IrNBxr9du2BMRNmhMMH1ACDe+xRSiBP3cZnfG8G3zkb9maIW1bOjFCzF6
 Oq2WX+w55tgRaGvkp1tySQWrX6i8mUbAd67nbDl4cxbOm7GCC8I5P/uX8
 ZB8scOak96eLwsFcsrRxIG/bjZj7nvFDo3Mf1cO3J/mkCwFI0/FfCkf30
 1NFybTce7ldjhEw0DaasXxmlQ3ayWl09MrsHt2MXmAiqlZqqre/RrHCnm Q==;
IronPort-SDR: sMP7Hawz+rZOJS9zf5/jTMw/ezJactIvbXWWHTYa4ze/jeS2AlaJs2CVXG552z8aLlB4aXOgSt
 j3UcSx4WElf5jq4o66ZxPPLqJCqaLCRWGFWrjJMuAgprq2w20QGvoV0JbEJyH0067FD1PUSW9w
 r6ukGZ6EzUEapIX1FzQqoKmaMsdw1lP/zlCzveQgC2SlMOyx6UUD5eVfgXf4XW5rPrtgaWKydf
 P6GnmCd6uLVtHP+gjw8PDX7kM5nxsjPlFo3DgmxA6eerdO6O9/dQjtXmdq5WaBbzhdg9gZ+uGK
 Xgw=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718981"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:17 +0800
IronPort-SDR: bMuKowuLtiMEcH6GZDQO9F9eNKvlDJ7cmcYn3LYOWSn7inlYAEWrVFdh3ccKnyK+6/l05ZC4Qp
 WLkPxOvUrwDp56ZuwQSx/dWCZv9eGeL5wTnjuF2YiBNw1EkpAYqDY2RSxm6A3ZJlmeunR/bGen
 bggRCrWJc3ZYAcd0Iej3vgLQMGPp5OILYlTfhD0bL4Tbsc+ih50SbbMVs+sTqTcnPI1MPMpQOw
 OMvvWQEazL1XxEKfBTixhXoieLl6C0Plt9mwGzyRHV2oC81tDgMgeei3F6ltwgETGnpt2CWeSV
 DY3eVavFe0BQkh1TrWxJxLaK
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:17 -0700
IronPort-SDR: fGvdKwrFrpZzzALZREvgeXRtuQgdRneSBOvN0H8I2xnHJ3/baJNDDXks9Uincp8rDQMsQw/bsE
 ZW+fy4RDKQdHXYvFV6e8TRgXog6SLCfDyk/5brpDJxDIUd0jCM6iQ4y/5oS2dcvINncYJJzDaZ
 /usXQa6cUxKMhGTf7SYHNlgnXf96lpGcpKbZkTk1t0zE5WmmRMvQHR5/lPdgMBL2d9KzfOhVjq
 4Ivq8iYJhmKsnW+/1/RaIdUSFGip1KppGJSPHBKH1cxrnb/OKG6ncryZkZVUy6Z1xj6lgoc2Ug
 obs=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:15 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 8/9] riscv: create a loader.bin boot image for Kendryte SoC
Date: Thu, 12 Mar 2020 14:11:06 +0900
Message-Id: <20200312051107.1454880-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312051107.1454880-1-damien.lemoal@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221116_948662_9495A013 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


