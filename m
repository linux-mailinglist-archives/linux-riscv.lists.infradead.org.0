Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D1C15A684
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oBQCnCIL6rAz94mPcCOzp4gFcn2gaGVAbvDThe9Wk0=; b=kjzDBgU34/YpbE
	Z4dAJA1t68XbLyeZvJvhwCj8naHCzz7Wr6c63lLRAjiv9wUQO2Jo4xh+2UFCcKpNIO/k9imqvuKLF
	keAY+T5gUg6nUGeamUyxZIBgoJlNZ6lZjIfG1IpHfqHmFz3FPzgM1Jn2GKT4pKyA+71fFd1pL4wVi
	xfDEj38m1Kw3pNXayFNP7d/COj4Dn+p1yaq7sAJeCDU2o/8f9Q16Yu/W/VwQrV6a5B1D6GgLGlTQd
	I7JgH5CVEXndtr9+y73OWwjrxuIUJ60yLs7bUbvDzctW6FNBH3jtRLW7oMAXyVVyBOxgChVxrocOM
	3DSyKT9W/Ta5N/p2hUtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pMa-000451-PS; Wed, 12 Feb 2020 10:35:24 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLv-0002KQ-Q4
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503684; x=1613039684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U4GFnOM6ZYHanqOSEkU76cPVgEA7wxNUgrdUUfdEfPk=;
 b=Al9B04k7qMzEPNKX44Uf/mnjgo/m+OcOggmXLE1kmX50emgiLFe3GBFb
 iE3bvsxM3Mgk90a+effQJ0h0b9sp3u9yRGvvKR9xmsEngmXNvre7P9C8D
 mhfQLMk9uSXyBey6VwRnS9UoTD4U0Ia5158a/F1EmPk/pmM3gCRmfnkls
 eVTBpmBoW+RuOvvG9UHNjsCn0zx0oqtjGdtXVBRri7r02vYOhtY1Bk+S5
 X96d0+3kEEBf20sKje9gYZbzD6EQJvXtqzP+YyV6kN6kNVdGmkmbzVgxQ
 WYPlmhCCyZQa44swEqM5wkm4ofXhVxleynTNIGvp3wOyYjQhfI4ftqUgp w==;
IronPort-SDR: WoP1mG6oML8qypFBzirk+M6S4XPtW3C3Sq+mGE7qXIBEqlXM1aQSZ/vDMyWNAxkzkX2gHfk6MD
 6TS+yGcayNH/IIFC2/7FfQdJxD3SQSnrf2E2Ap4tcO5zmPbEK/WNWPTpJmS84fIoZuDiPAzJnT
 /gW3EHyXmQRe3JUmYW7JDj4AO/eRv4qfxcw3b2dq0xYhD5MxwC56hrL/lwl3BDYgVxgnn1/IuV
 cPRwyhS8c9MdzyiVupMqcNqrL+1U/lfY0jLQp08Kq9EtybqCasfwoa8E07EpCpZ6+Cf/OYycwR
 VJ8=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113058"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:43 +0800
IronPort-SDR: j+bxqQQB1SFQgCGpVvASg59clRA2Wvvnzu4IeLtEBD4JbhImibWAGCcrCezsQkb3wEAoQQZlTM
 sBjVBk+FAm5yKaGYWTMajrPN+c3H8/I0PHbNBX0Eb+XCT5AqZO7NsLNlB5CX1Q5Xaheq7JKB1M
 5n9LRaMjTU/O3rEFKLZdQlT6qd+yUikI2OWnvwLBh5WN97MvJTVtqLKvmBrvzecSMQ9rsQ7vQt
 QC/IuvFkZpLiSR/OtuUWy2yE6ZDbTTUW3rUHObw4dswD1kF5fz+0wkKEZxKGZMrOX/sVTjS9Pd
 Qlp0elu3pLryf85wxxNRKkrJ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:31 -0800
IronPort-SDR: wH3pnzLxobNDDfSdxjOEwBDbS8BVCdvJG6N4q5ouU82wWFxoulqOmVRGSERBoB6QeZBA+JI6Fn
 7O/qtaa/kz3KgzN96I1gZirtRRgHkjb+j+kPBW6RSb8JrzjpJ3DjxT+ebofAWbenkgvaxsQW6c
 wC09opH7FaGlVQIRZwn/UcjfESuJuMVH/sQ17vyY+n1T6ZTg3tnIjA2WQLGA0Lf1pp8rIunpdK
 NvC1tXh70TOjWw+q1hSScl71L5mk39Bp2VRzsripNhchrUpltXA7eKa/ee3wfZnFCL/gu1QSgI
 nQE=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:40 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 09/10] riscv: Kendryte K210 default config
Date: Wed, 12 Feb 2020 19:34:31 +0900
Message-Id: <20200212103432.660256-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023443_960386_F8E91DCD 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch adds defconfig to build No-MMU kernel meant for
Kendryte K210 SoC.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
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


