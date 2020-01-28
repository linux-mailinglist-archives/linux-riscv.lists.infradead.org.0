Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691EA14AE1B
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UpHxVS2gVAxs/9Cbn/wcdIL9e99du87e4bJ+tdoN04=; b=jEfkQ8X/Qnko+7
	9SXRPiJmHLtIwA+zQvhyUbf2aJUrEFgZyn8m7HUKUeULpEr0wKB26+xsRP2XEIeCJtX3lv+3KjRXh
	ySr77J1PqVn6yM2M2NlScAP4mwZaZ1ZDAhFWj+xrEQXVvKp2V0GMQj8H1BnN+nOSaCVbf9hh6VqGY
	56CaiZ6MXocYwCvugB2y5ofIfWoq/MEuwCs2VYRr6k2NE+ZfEbXkTyrg2xNpdVgKbfQYYRWf2bYKF
	TBx7/3kBVQr/Gqz3svBvRIRnnjr7GtHOPyS2PEWoVXn0lG+C4FvaaFw7Vyg3RXTCTvqPoWzEgKGqH
	6VpdhCgbXLZ4VJFeg5HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGcH-0006GF-28; Tue, 28 Jan 2020 02:28:37 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbt-0005pr-Gc
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178515; x=1611714515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Aa/KOay4NXW/kCM7QuDcS3Px0MPY5o5nqFvm1/cPYf4=;
 b=Wh/SuAY1bgZlV/5NJ7Q9azN/S1zoznXRzJOexsQlvY8LxDbQVYS7FI1f
 tz82zdOKtermFIz4AiSHiQzhwGqPZWrbP6WDTFbt6TXGU/pFhrTBojsvL
 +aCvSb4ZMAUI/5zGg5ms4OTv4jnnHVe/rWXwjW7iLx4x5xgA+yZUWL+oG
 qx56G00zXON9J53o/l+xbY23Z8PDYmrwkVn9H0yXbB/y8qvJ/azrgfeiD
 199haaiaugxillxU145yC32M9FiejmSK0ok1o5jw0sfryrNBTbuTHJVuB
 J80nIOtmM1/pSa5rmR9ljj18L90qSE2OblU/l+D8JxpqK8yQBYiXRuOYf A==;
IronPort-SDR: 5jXxZ7DUHHMKjsLVzbZRa+LDbDgj21ETJGb3scktYHWO6oJmcQvuzX0sdGAdCWfsl67D9mo0C1
 uFvPCKRNqw638synutAG+5XIt3f+pbp/KsR5m8ErXV6P1WUyoqgNHSZgraq6FBpkNaEcTji9NQ
 I/KioZ99U7q9k4+9zRu7Wk1DJtpIEdmFz4wN5RC0z67bh3BKUnRLvPGUlBYkW/QKBOwwfgmkOy
 To69vM5Mr4HO5+91A9M6dquepVUNHFLZWdzukbwFytLoqVujRH6UpLHktset4LcG6A/6lx0KvL
 A7U=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237599"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:31 +0800
IronPort-SDR: HBACq077S+cAY6yiJ39FwRd2tbZKtfEIWpAy/sIMxGz+3j3uyWauTsr6vrWoIl3tCjlvQSaYc+
 SzvC3f36dTPyEq/KCSPfZFiKSgA8WAfum7EUJugPuQRz0fOcumzHrgm/fYEPim0R33rLtp7exm
 IeS62OnCvgg9nYXGwzeR+uWXLc+zkYC4240ooDin4Q/2BjbPzGydDbcNuk7LYdmT8pKTpaIoWz
 Q8gDI99SzMcrhiTYYph4HA+Ik/9NxQfhfJGrNg3sd/Yavow89HVirHvjKj/mEKu1mr6VH5N4gD
 TrRsxmYlPc8/rTpFa0mwnyhg
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:25 -0800
IronPort-SDR: xjtXdnYD68EmEyMnqmzrTVMrZxbCZwVJb/v6gC9WAN9oAsky/IKHwA201FTIcsJTdBvH1w0Qhr
 h5n/SIRg6lE+KJmdIsn2eTQdholBnvKykXfZQpvQwMDn1XTQq0sJ8qd6vfqd/DpaEBZBfaomta
 0lsfxNW3l/pvmf+SvH8dcg5zesILijyXiPdhFWxBNBMdV9sZnv37bVD9E1liae5PtlgHid56Ua
 LdVuMPclvkT+UIiv1DIUJaUzIfHltfLqrLfMEiNs3SP0kXegVKVw2H54lsbbYhV9jGFdptTJI9
 CZg=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:10 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 07/10] RISC-V: Move relocate and few other functions out of
 __init
Date: Mon, 27 Jan 2020 18:27:34 -0800
Message-Id: <20200128022737.15371-8-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182813_620136_612A7634 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, abner.chang@hpe.com,
 Vincent Chen <vincent.chen@sifive.com>, nickhu@andestech.com,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 clin@suse.com, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>
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
 arch/riscv/kernel/head.S        | 73 +++++++++++++++++++--------------
 arch/riscv/kernel/vmlinux.lds.S |  9 +++-
 2 files changed, 50 insertions(+), 32 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index a4242be66966..9d7f084a50cc 100644
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
@@ -44,9 +44,10 @@ ENTRY(_start)
 	.balign 4
 	.ascii RISCV_IMAGE_MAGIC2
 	.word 0
+END(_start)
 
-.global _start_kernel
-_start_kernel:
+	__INIT
+ENTRY(_start_kernel)
 	/* Mask all interrupts */
 	csrw CSR_IE, zero
 	csrw CSR_IP, zero
@@ -125,6 +126,37 @@ clear_bss_done:
 	call parse_dtb
 	tail start_kernel
 
+.Lsecondary_start:
+#ifdef CONFIG_SMP
+	/* Set trap vector to spin forever to help debug */
+	la a3, .Lsecondary_park
+	csrw CSR_TVEC, a3
+
+	slli a3, a0, LGREG
+	la a1, __cpu_up_stack_pointer
+	la a2, __cpu_up_task_pointer
+	add a1, a3, a1
+	add a2, a3, a2
+
+	/*
+	 * This hart didn't win the lottery, so we wait for the winning hart to
+	 * get far enough along the boot process that it should continue.
+	 */
+.Lwait_for_cpu_up:
+	/* FIXME: We should WFI to save some energy here. */
+	REG_L sp, (a1)
+	REG_L tp, (a2)
+	beqz sp, .Lwait_for_cpu_up
+	beqz tp, .Lwait_for_cpu_up
+	fence
+
+	tail secondary_start_common
+#endif
+
+END(_start_kernel)
+
+.section ".noinit.text","ax",@progbits
+.align 2
 #ifdef CONFIG_MMU
 relocate:
 	/* Relocate return address */
@@ -177,41 +209,27 @@ relocate:
 
 	ret
 #endif /* CONFIG_MMU */
-
-.Lsecondary_start:
 #ifdef CONFIG_SMP
 	/* Set trap vector to spin forever to help debug */
 	la a3, .Lsecondary_park
 	csrw CSR_TVEC, a3
 
 	slli a3, a0, LGREG
-	la a1, __cpu_up_stack_pointer
-	la a2, __cpu_up_task_pointer
-	add a1, a3, a1
-	add a2, a3, a2
-
-	/*
-	 * This hart didn't win the lottery, so we wait for the winning hart to
-	 * get far enough along the boot process that it should continue.
-	 */
-.Lwait_for_cpu_up:
-	/* FIXME: We should WFI to save some energy here. */
-	REG_L sp, (a1)
-	REG_L tp, (a2)
-	beqz sp, .Lwait_for_cpu_up
-	beqz tp, .Lwait_for_cpu_up
-	fence
+	.global secondary_start_common
+secondary_start_common:
 
 #ifdef CONFIG_MMU
 	/* Enable virtual memory and relocate to virtual address */
 	la a0, swapper_pg_dir
 	call relocate
 #endif
-
 	tail smp_callin
-#endif
+#endif /* CONFIG_SMP */
 
-END(_start)
+.Lsecondary_park:
+	/* We lack SMP support or have too many harts, so park this hart */
+	wfi
+	j .Lsecondary_park
 
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
index 12f42f96d46e..c8a88326df9e 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -10,6 +10,7 @@
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 
+#include <linux/sizes.h>
 OUTPUT_ARCH(riscv)
 ENTRY(_start)
 
@@ -20,8 +21,14 @@ SECTIONS
 	/* Beginning of code and text segment */
 	. = LOAD_OFFSET;
 	_start = .;
-	__init_begin = .;
 	HEAD_TEXT_SECTION
+	.noinit.text :
+	{
+		*(.noinit.text)
+	}
+	. = ALIGN(SZ_4K);
+
+	__init_begin = .;
 	INIT_TEXT_SECTION(PAGE_SIZE)
 	INIT_DATA_SECTION(16)
 	/* we have to discard exit text and such at runtime, not link time */
-- 
2.24.0


