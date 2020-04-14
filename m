Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487C41A72B7
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Apr 2020 06:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JfbJtHABBXHE6qR413llpn3Hhg+bqqtz4ITGGvoBrU=; b=s1f+LCBkrwrDfk
	DhjeNtzpONwdLhMS8VgP1Hong1p6eZFZIKe8UzyqblsUzgpyXsdEgT7VDkcStwLPZ/XLHY+ThzlSX
	pE+JTv/2t/kXorKgtpZIuUkXBe9PsPt+WP26rQ34Ry4RZ1IYZNxSVk5Osnt80YAI2UihB2vsCFnnv
	aDlXFeF0Gc60V7SrjzFgG6SBZA9w5U9NSoLhIc8+0zA34SGWYVDF5EPb72T4BdIGwdxqCBygQ0i3E
	YZkp2HTOdQYj76xgLMVJ/jrTG/ctzYbtA1dOyhvOalaIdJ+r5ixXXHjO7DIM7+7BJWSdeALLZQYoi
	XBQNRxJGBUQi8+cglEZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jODQ9-00076a-RG; Tue, 14 Apr 2020 04:43:37 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jODQ5-00072H-E7
 for linux-riscv@lists.infradead.org; Tue, 14 Apr 2020 04:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586839414; x=1618375414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6cpFpMWgjzh+DSkjj6zUf2NaqPMK+dE/DiaoecEbIY=;
 b=dDPuc9UhJvI0qwmtYc4/9ZsmIJuR1JKGtLmKbJPvwzRJM+ebc+ps5KHo
 fScxNf9DoysT7dkRR709pUThYYmqCqosPWag575jo4CdCETbYgLYZwsuf
 iPsVcIisi6RucECkYcOUiZrZEGZsNkAIUK7yLHZeditBiyVrePwLB0meD
 qcIxDipNinEHtR9kE0IEUFVSnviOb5ID/ZLwQlC6D9PJW76dmyXDgYllc
 LrKnlsS/bKmSCgmA5xzPnYQsJyOWCgl87sSqYoTm1wo/YZ+hTkRafohok
 rYOPqfC/Nq8mTn2KMdGM0HPYSzmOY1mV3A3x5ZbnxjkQri6j2BFAI3+IG w==;
IronPort-SDR: LcEvThFTo8sAQV50ajdYf8ADD56TgoeSE9UIwuGvsdUbY0A725EO0i7Gs6JOP6SDR/4Iuu85UE
 fcj9KLjPCil3zeRl3q+sASzRFY2z/g2Qb5JoYm7GchKpIjOR5PxAAhofozXi2xISQefSmIOS2T
 OBTbBhv7Gd1+g8k93Jag7DrQ8mEP8fAvVuCTg3OPRJrGZBBwbxDa8AfHcBTiLxFoU4NzYgmF0M
 8d79K+71aeBx8Brxbo/uxLB8sVjrPRjy6PZHceQTf65vzbkmOety8jHAB39igf0bPxFzyrIaX+
 1s8=
X-IronPort-AV: E=Sophos;i="5.72,381,1580745600"; d="scan'208";a="139605675"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 12:43:31 +0800
IronPort-SDR: pBj36UGoBa8ladolp4I0LVdEBfMCiiCE3K90yoFitZANrDfzt0Niv1ogNTFW2Fzbq9phhmS6tK
 eO9bY+oLQlclzEsKLsoFODOqJYRnXp62IPHH5s9PHkT/w5+3UURIHIVj6MPXGA6ySOpHxx9deN
 C5U+JEWGgQfaR4N9ODIN6w7bpA4Wqlwi1elGXNfZk6Cf9MrIA5L6/NbcIxmhYXxtiehU1yIaXK
 gDmMZkhfSnBSrXYp1TJ+iXJCsSSkjDV0uTcLqqOJbrn+OFPM9WDZyUvMuEiAWber/Y5OrHMdCH
 +p9q9Bo3JI70ieTVSaEpRCIa
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 21:34:02 -0700
IronPort-SDR: 2LiaIeh3Np9PAPm4v9SmdHG6hDj9iHs3ok56T0arkn7Xd6FJ5WISqHzQxW2uvpUCWh3NmwXkta
 6t90d0ubqqV4cCQYDU7yluOrEcmYwwz+k6z7OOrq9pw0VP3l+CvEUIesvYhTtsGRlU2dztY0Re
 F7VyE75IPzvut70QB9vUWaJtEYiPdeIPQ1ovfjruCcXqAwFjukbsqbS4cCss/S5kFFof2JcjKz
 bvKH9O1T6URi8ewwDQXA6xBFDJNL4RCN5BHorLO6jmtsvy93UGd3EwUhHMb0wHae8i0fb3af6m
 ZCo=
WDCIronportException: Internal
Received: from 2768r8lbtd9.hitachigst.global (HELO localhost.hgst.com)
 ([10.84.70.38])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Apr 2020 21:43:30 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 3/3] riscv: K210: Update defconfig
Date: Tue, 14 Apr 2020 13:43:26 +0900
Message-Id: <20200414044326.103884-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200414044326.103884-1-damien.lemoal@wdc.com>
References: <20200414044326.103884-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_214333_516888_543A38AD 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Update the Kendryte K210 default kernel configuration file
nommu_k210_defconfig to enable builtin DTB by default.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/configs/nommu_k210_defconfig | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/configs/nommu_k210_defconfig b/arch/riscv/configs/nommu_k210_defconfig
index 632aa2f95e57..b48138e329ea 100644
--- a/arch/riscv/configs/nommu_k210_defconfig
+++ b/arch/riscv/configs/nommu_k210_defconfig
@@ -2,14 +2,12 @@
 CONFIG_LOG_BUF_SHIFT=15
 CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
 CONFIG_BLK_DEV_INITRD=y
-CONFIG_INITRAMFS_SOURCE=""
 CONFIG_INITRAMFS_FORCE=y
 # CONFIG_RD_BZIP2 is not set
 # CONFIG_RD_LZMA is not set
 # CONFIG_RD_XZ is not set
 # CONFIG_RD_LZO is not set
 # CONFIG_RD_LZ4 is not set
-# CONFIG_BOOT_CONFIG is not set
 CONFIG_CC_OPTIMIZE_FOR_SIZE=y
 # CONFIG_SYSFS_SYSCALL is not set
 # CONFIG_FHANDLE is not set
@@ -35,8 +33,6 @@ CONFIG_SMP=y
 CONFIG_NR_CPUS=2
 CONFIG_CMDLINE="earlycon console=ttySIF0"
 CONFIG_CMDLINE_FORCE=y
-CONFIG_USE_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_SOURCE="kendryte/k210"
 # CONFIG_BLOCK is not set
 CONFIG_BINFMT_FLAT=y
 # CONFIG_COREDUMP is not set
@@ -49,8 +45,8 @@ CONFIG_DEVTMPFS_MOUNT=y
 # CONFIG_SERIO is not set
 # CONFIG_LEGACY_PTYS is not set
 # CONFIG_LDISC_AUTOLOAD is not set
-# CONFIG_DEVMEM is not set
 # CONFIG_HW_RANDOM is not set
+# CONFIG_DEVMEM is not set
 # CONFIG_HWMON is not set
 # CONFIG_VGA_CONSOLE is not set
 # CONFIG_HID is not set
@@ -62,6 +58,7 @@ CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_LSM="[]"
 CONFIG_PRINTK_TIME=y
 # CONFIG_DEBUG_MISC is not set
+CONFIG_PANIC_ON_OOPS=y
 # CONFIG_SCHED_DEBUG is not set
 # CONFIG_RCU_TRACE is not set
 # CONFIG_FTRACE is not set
-- 
2.25.2


