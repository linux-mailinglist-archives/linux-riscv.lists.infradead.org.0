Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720B8189384
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uy0KskCPp61QyAywLIT1Y9CxhHBz0oR+hBc2LGXTJcw=; b=U0Ng8QU+opndxg
	CeL2FKuZUyIvXO9hEP/VuPRq6L38VOydhWtWpc6fns84QfrZKYQYyID74B/JJY2+VVv+io0/cgsFL
	WGuThBbDpUuU1OSx7oQNhzWd6tNohNTcmHW4MVe3ltdZfXdAYTX4u/PIV8/WOgjvJwYwr3/U9svH8
	81I2zftD6HEwidJAJ0kV4wDmvwMFCI6sGKR/UYvAz7wMH4rmpyy9HWIJRPUXTBIYqiJC9Ir5fyWxO
	6oW1tdVEZNnKiXmDgREKWdoNlS2Sfafmn8YMNmzmfdcDqLgerzdv5FV1wUMJZUsz5/gjPl1O1/p7A
	S5C3igINqgCSih233xuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFt-0007GA-Gz; Wed, 18 Mar 2020 01:12:21 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFe-0006vA-PO
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493927; x=1616029927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JYTimahxcw8q6zIu6hPSn8yTDPvVgrP3ZU4qSOXZc/o=;
 b=RlJu39cIbOlAXR/JuHAU6anrZ0wWsbczKI1mcj1BbEU365t2cP6sb2JT
 StqxINDHl55AmvAhKEGL9wp5o4VsfFhN4D10GB9E1GynzdmS664GX9z8X
 H3buIi9fEth0H/cl8XGMTR6cJyO8Y7sXXCGIDZlLyZgDbhR3Fbf6CDRa8
 2J+5HNS4+iFr3H8Yw4VDszUcSLEJCeGtnu5T0CHH2zPBPZUlJ0sMS/DwR
 nMwaJKaRw9r0irqx6TxgcNBUVeZ8SY5Fq8xf7tQyXjhQw8DoeeiRSgW/i
 ogQFDVgz7J30NCxOPFKTVJ0v/soYdZ4NpKehdOJfTUPSbornHhI6zjtIV Q==;
IronPort-SDR: f85Y4nvM9KQ5uL21rJ8z9UVe9vK3vc6A+pXJSLHB8EOwOYPsgUcisVRMa+jfWZwJCOOK8LizzB
 piEZ8wgjlP1WHBCiut1EEuyoM2ExvQdz28PhACQRD1suw6tavEH/GatgPNmpIeI0GZcCy9varK
 8ZcwJfviJmaLIhW/9Wq8j20vnWtpfJKtuYHcNHdv9pLl74e4mQCtliyLdh+qJhnytOEn8ES1AY
 TvFhvt8LXdimmLxZ3YZKmyEsbM9P2yZEkYZwDs/HuafFAmy3T0c2OrFIz6Wx1EPP4owguOYKSc
 WyI=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242158"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:11:59 +0800
IronPort-SDR: 1OzCFF+Hr2TKJ0LqhvZDv4HyB/njFfC21EFiKnLnQhs16kWRti9J2DWn3TIy4So+RCXnd6Wgcl
 +BhRUtNDTtkRaK3uX/KZ1Ui6g1/0ssMEkGGKnN+0u0UbD8iUGi7cQxpIDtIZB2tXU/2BtPUftX
 qeKOg41bW/7tiCyPrNSq9N2AIl9cOFMFPGHcjz+CvbKbNPDVo/XIpR8+D8dF18rw331KhyM/sK
 q+QuP+/6p1OUQ1s3W06uqEBqH8g6Qk77TlyNZG2XIjX2zd3VWVx+5+hLjaQPHnQg1Ep2eQ3FDa
 zBu6nmiNe7vwE8eKfthvl3eA
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:26 -0700
IronPort-SDR: 0xwe56tlmAZW2U/SltKb3aBDh14ylBm7OPKNTOLhjazsqJCj2FvlohuF7PHqj9wFIvTKW6hHxR
 /fulnA4OJlYVqo/P23e5HNV8UTxFUiyz/BjBC09wtRF/5sSMI/Mkrx1V+NvSoBUKdcglnOdHlY
 ff+5Ka4l2utoVILnfqa5ugp+Hg3MaYYuV1ZR0ESxsI3UcW8FAoz1ZvWw/HyMGQTpspspbfswz7
 QzFEq7YmjpIy5WOLaNoSpUnFfD0cA9rsdoXuIFYEv/Z9INmXxR35ysQi6wBDt8ejxK5OlesVuV
 ReE=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:59 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 06/11] RISC-V: Move relocate and few other functions out
 of __init
Date: Tue, 17 Mar 2020 18:11:39 -0700
Message-Id: <20200318011144.91532-7-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181206_885219_068F5A4C 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The secondary hart booting and relocation code are under .init section.
As a result, it will be freed once kernel booting is done. However,
ordered booting protocol and CPU hotplug always requires these functions
to be present to bringup harts after initial kernel boot.

Move the required functions to a different section and make sure that
they are in memory within first 2MB offset as trampoline page directory
only maps first 2MB.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/kernel/head.S        | 153 +++++++++++++++++---------------
 arch/riscv/kernel/vmlinux.lds.S |   5 +-
 2 files changed, 86 insertions(+), 72 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 85f2073e7fe4..173507395a6b 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -14,7 +14,7 @@
 #include <asm/hwcap.h>
 #include <asm/image.h>
 
-__INIT
+__HEAD
 ENTRY(_start)
 	/*
 	 * Image header expected by Linux boot-loaders. The image header data
@@ -45,8 +45,85 @@ ENTRY(_start)
 	.ascii RISCV_IMAGE_MAGIC2
 	.word 0
 
-.global _start_kernel
-_start_kernel:
+.align 2
+#ifdef CONFIG_MMU
+relocate:
+	/* Relocate return address */
+	li a1, PAGE_OFFSET
+	la a2, _start
+	sub a1, a1, a2
+	add ra, ra, a1
+
+	/* Point stvec to virtual address of intruction after satp write */
+	la a2, 1f
+	add a2, a2, a1
+	csrw CSR_TVEC, a2
+
+	/* Compute satp for kernel page tables, but don't load it yet */
+	srl a2, a0, PAGE_SHIFT
+	li a1, SATP_MODE
+	or a2, a2, a1
+
+	/*
+	 * Load trampoline page directory, which will cause us to trap to
+	 * stvec if VA != PA, or simply fall through if VA == PA.  We need a
+	 * full fence here because setup_vm() just wrote these PTEs and we need
+	 * to ensure the new translations are in use.
+	 */
+	la a0, trampoline_pg_dir
+	srl a0, a0, PAGE_SHIFT
+	or a0, a0, a1
+	sfence.vma
+	csrw CSR_SATP, a0
+.align 2
+1:
+	/* Set trap vector to spin forever to help debug */
+	la a0, .Lsecondary_park
+	csrw CSR_TVEC, a0
+
+	/* Reload the global pointer */
+.option push
+.option norelax
+	la gp, __global_pointer$
+.option pop
+
+	/*
+	 * Switch to kernel page tables.  A full fence is necessary in order to
+	 * avoid using the trampoline translations, which are only correct for
+	 * the first superpage.  Fetching the fence is guarnteed to work
+	 * because that first superpage is translated the same way.
+	 */
+	csrw CSR_SATP, a2
+	sfence.vma
+
+	ret
+#endif /* CONFIG_MMU */
+#ifdef CONFIG_SMP
+	/* Set trap vector to spin forever to help debug */
+	la a3, .Lsecondary_park
+	csrw CSR_TVEC, a3
+
+	slli a3, a0, LGREG
+	.global secondary_start_common
+secondary_start_common:
+
+#ifdef CONFIG_MMU
+	/* Enable virtual memory and relocate to virtual address */
+	la a0, swapper_pg_dir
+	call relocate
+#endif
+	tail smp_callin
+#endif /* CONFIG_SMP */
+
+.Lsecondary_park:
+	/* We lack SMP support or have too many harts, so park this hart */
+	wfi
+	j .Lsecondary_park
+
+END(_start)
+
+	__INIT
+ENTRY(_start_kernel)
 	/* Mask all interrupts */
 	csrw CSR_IE, zero
 	csrw CSR_IP, zero
@@ -134,59 +211,6 @@ clear_bss_done:
 	call parse_dtb
 	tail start_kernel
 
-#ifdef CONFIG_MMU
-relocate:
-	/* Relocate return address */
-	li a1, PAGE_OFFSET
-	la a2, _start
-	sub a1, a1, a2
-	add ra, ra, a1
-
-	/* Point stvec to virtual address of intruction after satp write */
-	la a2, 1f
-	add a2, a2, a1
-	csrw CSR_TVEC, a2
-
-	/* Compute satp for kernel page tables, but don't load it yet */
-	srl a2, a0, PAGE_SHIFT
-	li a1, SATP_MODE
-	or a2, a2, a1
-
-	/*
-	 * Load trampoline page directory, which will cause us to trap to
-	 * stvec if VA != PA, or simply fall through if VA == PA.  We need a
-	 * full fence here because setup_vm() just wrote these PTEs and we need
-	 * to ensure the new translations are in use.
-	 */
-	la a0, trampoline_pg_dir
-	srl a0, a0, PAGE_SHIFT
-	or a0, a0, a1
-	sfence.vma
-	csrw CSR_SATP, a0
-.align 2
-1:
-	/* Set trap vector to spin forever to help debug */
-	la a0, .Lsecondary_park
-	csrw CSR_TVEC, a0
-
-	/* Reload the global pointer */
-.option push
-.option norelax
-	la gp, __global_pointer$
-.option pop
-
-	/*
-	 * Switch to kernel page tables.  A full fence is necessary in order to
-	 * avoid using the trampoline translations, which are only correct for
-	 * the first superpage.  Fetching the fence is guarnteed to work
-	 * because that first superpage is translated the same way.
-	 */
-	csrw CSR_SATP, a2
-	sfence.vma
-
-	ret
-#endif /* CONFIG_MMU */
-
 .Lsecondary_start:
 #ifdef CONFIG_SMP
 	/* Set trap vector to spin forever to help debug */
@@ -211,16 +235,10 @@ relocate:
 	beqz tp, .Lwait_for_cpu_up
 	fence
 
-#ifdef CONFIG_MMU
-	/* Enable virtual memory and relocate to virtual address */
-	la a0, swapper_pg_dir
-	call relocate
+	tail secondary_start_common
 #endif
 
-	tail smp_callin
-#endif
-
-END(_start)
+END(_start_kernel)
 
 #ifdef CONFIG_RISCV_M_MODE
 ENTRY(reset_regs)
@@ -301,13 +319,6 @@ ENTRY(reset_regs)
 END(reset_regs)
 #endif /* CONFIG_RISCV_M_MODE */
 
-.section ".text", "ax",@progbits
-.align 2
-.Lsecondary_park:
-	/* We lack SMP support or have too many harts, so park this hart */
-	wfi
-	j .Lsecondary_park
-
 __PAGE_ALIGNED_BSS
 	/* Empty zero page */
 	.balign PAGE_SIZE
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..b32640300d07 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -10,6 +10,7 @@
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 
+#include <linux/sizes.h>
 OUTPUT_ARCH(riscv)
 ENTRY(_start)
 
@@ -20,8 +21,10 @@ SECTIONS
 	/* Beginning of code and text segment */
 	. = LOAD_OFFSET;
 	_start = .;
-	__init_begin = .;
 	HEAD_TEXT_SECTION
+	. = ALIGN(PAGE_SIZE);
+
+	__init_begin = .;
 	INIT_TEXT_SECTION(PAGE_SIZE)
 	INIT_DATA_SECTION(16)
 	/* we have to discard exit text and such at runtime, not link time */
-- 
2.25.1


