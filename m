Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A65718281C
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKcNLKlwtFgOS+1vPzq8mJFJAC25YrlXYWCOuXe0T20=; b=mgaDMl9OZr6wWh
	lsaUzxB8+57+sIwizUDk1ZPzHwTtLaYGQVDsKm9Mn3/OsDCoHfr7kl5BvPcx1WyL2kzsI0GR5l/wJ
	GzvcOqp5VXgQA7L97s9tQZeB55TmH/VwiKF+IVue2RaybIWzWnDDJQA5jky4O7Xzx8Lp9Idc+pvPB
	MZksLNcm23MHOP8/ITgntPgkUjdoANNPE0Xu2sPzioDpL5JaKc9fUu6ioJqFs6Tgb5E2j8On3RoEF
	KMEScmF2qG0zU2qGvbxWoAN6PLU3Pku/uaq43WFXOyo9VglYKwV+QoZCAcsCxhmVWKXUYirlvaYKn
	TDPs2OVoIepOveiHJVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG86-0000TA-9E; Thu, 12 Mar 2020 05:11:34 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7o-0008VZ-88
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989876; x=1615525876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aZxYoQgkeNNJt7u0DVWBdSAgOQQXLWfFXDIV8VkE4lY=;
 b=VJXQDYVlcaN20WGHEtclQarD/3/u/bxVgTv0G93YZOa2FeHvSreyYs5g
 wGT6LOnuHLNVTlfnF1FWPxU7Fu3+tECXOzKY0lqgrcTVSqEe3ZwOOzjn4
 7UcmIl1i9/zluJ8T+exMU3qTFqG5XKtzc8eYgBDJVnt0pW9OqSRgCfAj7
 CVKdo4oWMe0PElCO8dHVRGts1O+f290u28nf7Ld3QxqDWBfHi87f3UrI/
 ZlFJ9TdxyVQhXkAk4eSgIlg9qI3EaRbgQw9fsGD8BAmK1hhQ9vYC3sE+7
 B9w6G1HvJdIsedncuRoVP5dVLelwb7RlNfogmXSXzoSDwHvV0CpvbMtyA w==;
IronPort-SDR: M9QzW6N11MV+owjXCLbJrMftOdLSMCcFMCbPHp+sUvT2xgPdBkQjJGDr/lTGeW3v0vWVEv7WeV
 p5VH8l9aV6z1uLXsB9khPrK6B0revLUPI/os5DQbPSNBC7m8Vymjondpsd+5r07ojHtcWaapjp
 A34bp9jPriITxIfv7kN4+86jCFepYKqRfbSpKhi2wuTbO2FcYmnx5fZ+9w/WyBb3kbOt6MKDAF
 4As3LG9akRjRDRwzVeJvsZlY3x1j1Nneg/UWlZNTO5brObltcQcYq5fni2umnBDvzYGrjOfGfq
 DLc=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718980"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:16 +0800
IronPort-SDR: ysvjS4rFCrI1mU8OqHLJMu+ZhQKsPEZxpnKrb/JbVsPUJYL7g/y1KUgJj0yGFuERNGfGxnlUPs
 zZjvoLEhGSRnGvfdlHChij3e5qRerIK1pbkQaDDBR9sqjqT/DbGVP8y7wTo4kgEwMBzdpedRYk
 uWAAbTDjV5OgbeySwvSw2h6avsxyl53H1RyyHvbFtDZ951GMVTdw3y39+0qofZPtzz+nptyiYh
 4hc8/kxvOYUfquvGq80VO70273EnxCEFc7LyZwUSLTYwZnn2CsdGvIQK5gjSn4UZcRLaX1VKkM
 99vbfF7OqHV6HYDX0sF4ZzUc
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:16 -0700
IronPort-SDR: PWnH3z6trsCTgO/EF5OgVmGH2sIH94JnsPa9TUVEpvr84eN8xKMnVcrChyCjeGkkbzwXw1qyid
 QknB88Wkao5OAysMK0sgppecQgTFdyYCwIE9RztZ0BRdkMcQkUGpQ47AQi+lcaQ621IziSdw4j
 /HSansTZbjavs607tAJJ1tqMZp62qRVilAMWUBtOAxXzUKDcsIhCH0Ak8eBMDaiW+SWuPhNcB2
 2KigEiscMmp+9VV+mNG6iicqUJtpRong0sZEpmBcYCiqzF+x2q880d6nAde5wuoW9rIGF+nyu/
 G1c=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:14 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 7/9] riscv: Kendryte K210 default config
Date: Thu, 12 Mar 2020 14:11:05 +0900
Message-Id: <20200312051107.1454880-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312051107.1454880-1-damien.lemoal@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221116_366737_22C7C6C9 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/configs/nommu_k210_defconfig | 68 +++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 arch/riscv/configs/nommu_k210_defconfig

diff --git a/arch/riscv/configs/nommu_k210_defconfig b/arch/riscv/configs/nommu_k210_defconfig
new file mode 100644
index 000000000000..00ded8f0bc55
--- /dev/null
+++ b/arch/riscv/configs/nommu_k210_defconfig
@@ -0,0 +1,68 @@
+# CONFIG_CPU_ISOLATION is not set
+CONFIG_LOG_BUF_SHIFT=15
+CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_INITRAMFS_SOURCE="k210.cpio"
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


