Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576241860E7
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 01:48:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeYBuFuarrS2jqjo1NZBvAYwKqxBQ4CQJDmuhvtaLvM=; b=Mni1r3eKoSgouZ
	mwk9zkram5XoFTbFe5GHYq+cdmfHAv6UwK5cKM7kkpTV4PAIr5OQUprydE3ZKDtq+yXqtwa3+x4NQ
	fVQWo9hibXNifWOfEREb/Q4YRGB58GXlSzwXyAccrOSFgYS/pSMoKFzeSIs5cOfsuo9nUFY42w3wV
	IaW8EFubC5QTLU09y7VRRj/U2DC1qgoJ831xIAyg4ABTU5NTvsUNjiPyhv7eQWPfW3qbls58lRrA9
	oUxD5w99QoIrfCzxmQN3UQcM5uCIpmuNF+IF5kSbl4b1UON5TY0+opfG4SudyX54AO6mjtsEdJn7Y
	GCbvGuis0H65R6OBajeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdvX-0005NW-Ox; Mon, 16 Mar 2020 00:48:19 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdv7-0004tB-MQ
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 00:47:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584319674; x=1615855674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pl1TKwoc4AJIuIZudJ75PGAeBGt3OPtarJZ5vuLVVGw=;
 b=CoNJYbE5/LNhpB3+XaaYNvNYDXUwaKLdOjTI8lIiWs0fXfqLnWSSJxyN
 +7B1ygmSWXnSPYt2isqyR9Pnu3YFHPORbBn82hIwuIbyAyFuq5V+2/uWf
 z2Mb+R0CmE/zrSCoTG8Dr6lL7BOF4rHoHEtOSK1bD65MMgpTGRyRwv68C
 vF6G/ZI9kpBjbYaJDnojocvVisTH/p/K2LUUHSg4ZVELehPjArAksh20H
 Qwl6RJA19ahWk2vx3JkbO/glw2UFTV66a2fVgyWcre9pZ42B/4kW7dHv/
 FQUbRCCLdlyH4f7dA+JreF4xO5Z0/GxJcfKS6ZEwELbf98Sctd0Ced63H Q==;
IronPort-SDR: EzuD6O3TVF2uSD/FR0mAHF2HWvTRa+zJRe9n4mFH6LycH46fxYixxxZBsTCHOOJUIGihKCh05Z
 RKsJ/LPPSx6oXxtmsL2m+LTtFpJrpv9uGyrp3D0pb9AgMHS2YDn4d/S+2j9bNj58YfSD38vD38
 UaWRHse/KlfzKGYsoO/TJvJT2m1kqg5bucZuzaNwkymm7jZXvOu8TtuNlANt15CMGC/TfkFs4v
 4htkq/56NCnM+qXyCWVNBFuCCFy/RIsOSE+19R6N9h9W0iC8BzSPRw1cYKz+0otpQb9oCxhb7n
 XTc=
X-IronPort-AV: E=Sophos;i="5.70,558,1574092800"; d="scan'208";a="133011927"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2020 08:47:52 +0800
IronPort-SDR: lZ2QFrXpsYQrd5EH2YTKZrhUToZZoHS4Sd+2nMvOzlWg+1V65vYN4zTdv9kfwCFsbxcqCXcXt+
 gK9cMdV4qvCVMkifxqFjtYCzzXiK6z+1JIIB2tvBPmiP0trfq5VKoQgr9FkMTWi8RrtNXPXhNP
 Q+GK7Etp8qgmwdMz1vGSogIKwxSY+SZ4ItoDVlJOgfZHd25zJSDbI4fEJu9KVLkYXZTWKk+kiG
 9OFT1lcP4sWtnM3nM+91Nv0nrf9gQEPOMy1dFKiNbins/w/WSM/knfSJD+CaXFJ7k6Dm4ACLa+
 iM4wei8lxfJp1ao+eZSWNSkR
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2020 17:39:22 -0700
IronPort-SDR: YWLh9oXPXFZc3FenF7uLXPaXT6kZh/AGoaZ4yn5+Go7zySBka3A0m9n+2OAS3d7TR9xfle19yC
 Q98F2MiSKUmkFKUe45gHeTd9zWblZLMpsG+iW7CEQs73F/SJWHPNpFDQS3guiGk9Cnvix3wguB
 TVquIkA5MvJKszfaLtFyjiu0P6rKMXecRbm5wBrbJM5gJRIKNMd7rC5AG0iBsuofZ1nAGMwFLD
 LAo9NxlcldWFtAVpa5g3fIzd2XB7pWBJ2/WVT43BJyYrdOHnH4QP0iqECauYHF1+tbVzJe5evC
 v94=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Mar 2020 17:47:51 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v4 7/9] riscv: Kendryte K210 default config
Date: Mon, 16 Mar 2020 09:47:42 +0900
Message-Id: <20200316004744.209292-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200316004744.209292-1-damien.lemoal@wdc.com>
References: <20200316004744.209292-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_174753_816853_385CE4F4 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

This patch adds a defconfig file to build No-MMU kernels meant for
boards based on the Kendryte K210 SoC.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/configs/nommu_k210_defconfig | 68 +++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 arch/riscv/configs/nommu_k210_defconfig

diff --git a/arch/riscv/configs/nommu_k210_defconfig b/arch/riscv/configs/nommu_k210_defconfig
new file mode 100644
index 000000000000..632aa2f95e57
--- /dev/null
+++ b/arch/riscv/configs/nommu_k210_defconfig
@@ -0,0 +1,68 @@
+# CONFIG_CPU_ISOLATION is not set
+CONFIG_LOG_BUF_SHIFT=15
+CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_INITRAMFS_SOURCE=""
+CONFIG_INITRAMFS_FORCE=y
+# CONFIG_RD_BZIP2 is not set
+# CONFIG_RD_LZMA is not set
+# CONFIG_RD_XZ is not set
+# CONFIG_RD_LZO is not set
+# CONFIG_RD_LZ4 is not set
+# CONFIG_BOOT_CONFIG is not set
+CONFIG_CC_OPTIMIZE_FOR_SIZE=y
+# CONFIG_SYSFS_SYSCALL is not set
+# CONFIG_FHANDLE is not set
+# CONFIG_BASE_FULL is not set
+# CONFIG_EPOLL is not set
+# CONFIG_SIGNALFD is not set
+# CONFIG_TIMERFD is not set
+# CONFIG_EVENTFD is not set
+# CONFIG_AIO is not set
+# CONFIG_IO_URING is not set
+# CONFIG_ADVISE_SYSCALLS is not set
+# CONFIG_MEMBARRIER is not set
+# CONFIG_KALLSYMS is not set
+CONFIG_EMBEDDED=y
+# CONFIG_VM_EVENT_COUNTERS is not set
+# CONFIG_COMPAT_BRK is not set
+CONFIG_SLOB=y
+# CONFIG_SLAB_MERGE_DEFAULT is not set
+# CONFIG_MMU is not set
+CONFIG_SOC_KENDRYTE=y
+CONFIG_MAXPHYSMEM_2GB=y
+CONFIG_SMP=y
+CONFIG_NR_CPUS=2
+CONFIG_CMDLINE="earlycon console=ttySIF0"
+CONFIG_CMDLINE_FORCE=y
+CONFIG_USE_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_SOURCE="kendryte/k210"
+# CONFIG_BLOCK is not set
+CONFIG_BINFMT_FLAT=y
+# CONFIG_COREDUMP is not set
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+# CONFIG_FW_LOADER is not set
+# CONFIG_ALLOW_DEV_COREDUMP is not set
+# CONFIG_INPUT_KEYBOARD is not set
+# CONFIG_INPUT_MOUSE is not set
+# CONFIG_SERIO is not set
+# CONFIG_LEGACY_PTYS is not set
+# CONFIG_LDISC_AUTOLOAD is not set
+# CONFIG_DEVMEM is not set
+# CONFIG_HW_RANDOM is not set
+# CONFIG_HWMON is not set
+# CONFIG_VGA_CONSOLE is not set
+# CONFIG_HID is not set
+# CONFIG_USB_SUPPORT is not set
+# CONFIG_VIRTIO_MENU is not set
+# CONFIG_DNOTIFY is not set
+# CONFIG_INOTIFY_USER is not set
+# CONFIG_MISC_FILESYSTEMS is not set
+CONFIG_LSM="[]"
+CONFIG_PRINTK_TIME=y
+# CONFIG_DEBUG_MISC is not set
+# CONFIG_SCHED_DEBUG is not set
+# CONFIG_RCU_TRACE is not set
+# CONFIG_FTRACE is not set
+# CONFIG_RUNTIME_TESTING_MENU is not set
-- 
2.24.1


