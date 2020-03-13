Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FD718438E
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeYBuFuarrS2jqjo1NZBvAYwKqxBQ4CQJDmuhvtaLvM=; b=kRG15wCDpPZbCq
	w6bp17iNuqPn66zQp60iodxgervLV5gTI7DUMUYnrPtLmw8tX9myUq3tR+C4iRQcCps1uueTK2p63
	zvBxqYhOIJIfLksO/Bn7ZhogAEtJhl7aCwXzIcKOyzOdfKmutlcg+s4/Mhn96/9C9zgbMQGLEy0ON
	vA5sv8jyvfoSCEJdGShS3qK+9kKanZjOK5Kvn7qu+NKf2vlLJZvp/LwFbId7G9Meoi2f7ZPn2edDt
	iX9bbjqMyL7C8VME4L2bVgMaYmeOaFltfXYM/9oPMPc6A60S294AtO3FqfZrnSszArNTMTOwfNfPW
	GoJZ3OPUCJj0n/siLUKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRJ-0006fc-HO; Fri, 13 Mar 2020 09:17:09 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQy-0006IT-Ee
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091008; x=1615627008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pl1TKwoc4AJIuIZudJ75PGAeBGt3OPtarJZ5vuLVVGw=;
 b=f2H7cMw0vzt0zxE9jOLCVJ7O4L4Mdu9dJvtBJ9eS0tKo76UXmN5q/tm8
 OoUvm3s0CcJi7JAlSY5wr3+uxcAt6wTffzoN8+IisMGgeVSV1lBCKJBRo
 /4QbHvAs0WU07Jq0e8WRPUML6J9Nfh+btuX+RFfk+n/hDAS+1t/bSdVil
 cAaDjMN1v/Zma+E3D/TWOkfVEJKeAll1xknDI/M6hD9dFpxIhTuyhrjr+
 MD8Jqn66sUqbmPw8TZB+FfQaZbgvpf63BNP2EmsdOAPzniqAMvK2C9JKv
 y/0RI2Um+kKRBkAJ8+X7Vvk3XzVMYDzZq8uCIYVgtRvtAJ9lHyRvGp+rW Q==;
IronPort-SDR: u8KWedeSQGrfKJtiVyljrCSKbv0o7h5IVX18D1/Cl6ND1u2qgwHdnAe05tVHdGKYr5e7qfcOIU
 e7cMWV+BXT1552VyaD+wExEYONTzUMzKbz52Z14uvgDrC77huR9xkudyD1ViSzCrvDF/t77fdF
 No7g9L+8WYtcuMiP+gFZBSBwzCg/bKgi5WKFLGIkVRIKR4xiKyFPy49YXFyZvVelsRNnzH2ocI
 SkJGF3MljC4+j6Wgjf2K7TaYW/qSU/MkvwIISLhM2W4+j3O64MJdJJJrRducUF9OEjEKQ4L4rB
 XEM=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669788"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:47 +0800
IronPort-SDR: COfmSoWnZrEzMtR8SNfmEu8rR4/BU1R6uG+frCCa1fcOZQBX6ThIq6e2F4Nk9XAR7+0AKAyHZA
 ksrDd1pV8XMsS6yB5tZwqlQRxHxvePu12SEZUBcpOD+Yg2ovdxe0bglDpqJpVvGKc1+H9jX86B
 Y6mDDNwsmH1lJ7qhBX8iEjjsZwfhw2dr7SgN+U706AwRpAYNYjanj69LffFP1kpygjpVDU8sK8
 aCjvwQJnMQ7JWnT5h6ko/VuIi/Ln5JNFSk8aLAcX1G+xInCxvNa8t9mVDbMVO7OA0zGrN8ADTf
 YIgnWPEiihsWDXoMPfNpY+5q
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:45 -0700
IronPort-SDR: 3qOQTXvr5qjqqgfacy/OAu64qmI54jfh9ulJVLOKOIxOokwzSIZvAQloEqSzzwSEJw3n9E0V33
 PoXUbgIPbSNg566gIjk35FxtQ/6nq114iwtW8DNGmHB21gtpbPZCNu3zbAEe+ryBR2dz4XhMaf
 lh1Be4u8xmbSQ/HWAc36t0ZR1g6xnWcImma+cWk6TUhod9D/59zUv5RnqG3ArJ8qARbPh5Yj1L
 QUrpb8jjOa7r6h5WG8jtgGMnSeHqa76guMMvm7jQyrOgLSOWdIpdDX5WJNtgtyt0YpUBik6S1v
 uFg=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:46 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 7/9] riscv: Kendryte K210 default config
Date: Fri, 13 Mar 2020 18:16:37 +0900
Message-Id: <20200313091639.87862-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021648_514575_8598CC38 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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


