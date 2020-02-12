Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C542E159EA8
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVnOfEv+hFFCZsjUWWIfDGrWfd+Xl5BhNDFAY2YBWqs=; b=Y1Xj3YUeXdMMAl
	5tICR014MWo48lvrHgfMjQjZjlhEnPyNceHxhRdw1/i+RGucChoAGCWwGEVf9CDDJ81TphilK9mSd
	Pq3OWjKi76Hyh2Q6V0jePiL5LjDutosh/2fHO50YWb5E94ceQek0tAlxpyvvDSyoHe1KttOMnqCFD
	xzE8mkDKAqMV5quQtQZXlucYYqhVkwtHmZV2iQ9AsdvUk8C4dnbimHbgjH9fwVk9Tvcz6/X0DLh15
	bcEqqVPq4K9rUikLekBFZoTlmIl5yaNgB5FbKAiE1ECiI4JD6oaECsA1wj/lO6gKPvgwhmUexMD/i
	8TVN+bTIz7wfCkAmHeTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCA-0005vZ-Sw; Wed, 12 Feb 2020 01:52:06 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC0-0005mv-Tj
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472325; x=1613008325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=in+am6V5cB5vIxYi0RDDoJhhDT9YUsFBQJfrnYzjyic=;
 b=Tr2uqXox94dOe4seon4ItwZ5CVmx6RiL+W1iwl6D5+2tUT8j+bdfrKPp
 MTSK/KAjKFnpgOME2GRcXYjSd7Wn10Gj7NyOEWBK2a935UtmOGrNU0CY/
 i7ejbYTXXQDp6WEFN8CXjYb2zTWHT+Dipv93Ajihoup+x9P9c5OHC+8te
 fSCmon0luIo7OyPOHAlGqx5j8UER5JFWPzjDGOmP0N7c7llk6Qql8bmj3
 qYUHTFJU4hAEW+eQ2apuEBfu7P2pv20P8ROfB+zbm4Z6ca+eAYXM7IKzo
 Q1ebKuq9WS2lbbZY4JoKUWO7/IqJBo1QUjRGq/zcJyHWmoZSUzwu87bjF w==;
IronPort-SDR: QizuUHqCic4HCHGQdNXTLoi7t6OLnfOOj9l0JQcUxckua5dmDJmJC3fz2dZsWQThI130QuBtOU
 nWQNaQgy/sBvyisRER1g/aRPT/dGXOzfo7QKu7c+1LEBsLGKNVWX8lUwKwp/hrTFLaOXS8No9u
 WawGyMBQ2UAkZjuVVNnosyyONS6W9T1KNSe3gUZ8RXqyrRh2WmulHkwipBY7nPrW+6SuPvlE61
 gQqRkWX9SDFrmIGaud0/fnHrior1B282k3yFOyD3ToTx3prFh+9aY0HIUiE+R5++X8CVoZ/GRv
 BjY=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="231429771"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:52:03 +0800
IronPort-SDR: O25yLmshz0dkr3PZs45yBwZG01OIAT4x1ovSDZ3ANBX50a8FhbgLnrOsvzgjL3QO0XFWqxNsEF
 h33KLVLQ4D5aogVABtNVSvr9X7bd1INiI6aqnlCC8eCD05Uv65T6axuthboU7iMxtU2ZXsxNCb
 ynOAVVYMJI7D5e6JexPAwlovcYfag0n2wwgadR/zcnlv0wQA3VxflKQRlvBKp0zar8+hrCyofT
 0eMykWofV93Dw/pFocCgvzAamC9LtGcwznLH3EoETZl3qrGB9bf0DUBt+TSWLgMUbnKXjb5h7p
 48vlMoU6ovoqvU8Wn5aodzDY
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:45 -0800
IronPort-SDR: opbXy4mSsm4DAWNqPVi6m7QjC3sARWoITBtt3fU/+yhyuHcKphGIHbPZjMbdIT2SJDl5yHGuV2
 2xiGINWbo/GFxvHa7nzt6qEAzQPNRJu+mJrhViMRavAytA6eWhHlo1iUiR9n922KOX/QOIEoHu
 LBshM86C+l5P76PUAL7RvBbsaH/ZH4BP1DDZmn8xDgQXx6sNJ/zURe6IxOvCs6VpfbLYcx0XjG
 UhlYLju0ofKPJEtbMWkgSVCEgGU3okzgrzBTgvEJA/5ibiMNx4p480Kfb22/L5GElQ9+i8oJqb
 rO8=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:55 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 06/11] RISC-V: Move relocate and few other functions out of
 __init
Date: Tue, 11 Feb 2020 17:48:17 -0800
Message-Id: <20200212014822.28684-7-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175157_092928_8F680C4B 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Vincent Chen <vincent.chen@sifive.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Mao Han <han_mao@c-sky.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The secondary hart booting and relocation code are under .init section.
As a result, it will be freed once kernel booting is done. However,
ordered booting protocol and CPU hotplug always requires these sections
to be present to bringup harts after initial kernel boot.

Move the required sections to a different section and make sure that
they are in memory within first 2MB offset as trampoline page directory
only maps first 2MB.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/head.S        | 153 +++++++++++++++++---------------
 arch/riscv/kernel/vmlinux.lds.S |   5 +-
 2 files changed, 86 insertions(+), 72 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index a4242be66966..c1be597d22a1 100644
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
@@ -125,59 +202,6 @@ clear_bss_done:
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
@@ -202,16 +226,10 @@ relocate:
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
@@ -292,13 +310,6 @@ ENTRY(reset_regs)
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
index 12f42f96d46e..18c397953bfc 100644
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
2.24.0


