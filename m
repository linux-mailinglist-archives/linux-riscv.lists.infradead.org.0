Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB737A0D3
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 07:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqnFEzzEDwydkWF3E3FTciFKLcXiYjiPoC69JT8OrHc=; b=c2MYQ6mRn0N/+Q
	mQRKfM05Jo70jTQvIMMIQfV14z3n3uXL8AV8KVGaMFVQvPvnvyIDOE3X0VMh9ySAthn5LyPc9xPXD
	tFFjBfSH81XEH5BgDMDOkJAKzTj6DOa8qqMmmFFKOu/G2X2a1NX6jIiVsKEIqS3kSaVJFU/NtsewC
	9wzH8UU1VYm+we2hVRLott01FTazqe0IAxywMUCg3o9q9Yn65Fb6ONkHdRfhiocO1IoVbXZuoqU3r
	5MWYcTrZuLP/S7XDHEdHn0yFLTH4TbzMEEs6BLk5I9/6LiwaZ4souBfndSMBCBpZMSE3J8oV4CLF9
	U8UDxk/D0gwD5bBDsUsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsL92-00051g-Ma; Tue, 30 Jul 2019 05:57:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsL8m-0004Ud-7j; Tue, 30 Jul 2019 05:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cBxJ1KxcGmfDIECI8Cra5LnZouD+2DUEmB1lShztgnM=; b=KFEkqHraAL8a0UYbHcfkmBdIMa
 LCOV5TwlpMMbti4MECBByw8XLNh2xaUMOPvnjG+Ht6pyjOcig4lGzjdmPNB2FCHggZUX+Md/kIpBC
 aYtTFN6j+W/oIQUHdm1NIfPaxG0yp13F9+2dcrkD+3LUAOfwtzSHdDI2d1dUeSY2icP2z6OPffhH6
 4PyUtxeNE11H141p7Hv0t/0LIlG/aDLXR3XvebRGcbiLrghPw/ix32qlkuRFrQaApef3/Ma/B2L5/
 QRyQTLtWD4ODXVqJXczjHxSw19P3Bk9qRgZkFxHYSKMqUF35cZ2xufdgIa2mfzv3U8oLaJknfbZai
 hYv62aLQ==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsL8i-0004Hd-CE; Tue, 30 Jul 2019 05:57:37 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id ED0F7240009;
 Tue, 30 Jul 2019 05:56:51 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 05/14] arm64,
 mm: Make randomization selected by generic topdown mmap layout
Date: Tue, 30 Jul 2019 01:51:04 -0400
Message-Id: <20190730055113.23635-6-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190730055113.23635-1-alex@ghiti.fr>
References: <20190730055113.23635-1-alex@ghiti.fr>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This commits selects ARCH_HAS_ELF_RANDOMIZE when an arch uses the generic
topdown mmap layout functions so that this security feature is on by
default.
Note that this commit also removes the possibility for arm64 to have elf
randomization and no MMU: without MMU, the security added by randomization
is worth nothing.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Acked-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
---
 arch/Kconfig                |  1 +
 arch/arm64/Kconfig          |  1 -
 arch/arm64/kernel/process.c |  8 --------
 mm/util.c                   | 11 +++++++++--
 4 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index a0bb6fa4d381..d4c1f0551dfe 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -705,6 +705,7 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
 config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
 	bool
 	depends on MMU
+	select ARCH_HAS_ELF_RANDOMIZE
 
 config HAVE_COPY_THREAD_TLS
 	bool
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 14a194e63458..399f595ef852 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -16,7 +16,6 @@ config ARM64
 	select ARCH_HAS_DMA_MMAP_PGPROT
 	select ARCH_HAS_DMA_PREP_COHERENT
 	select ARCH_HAS_ACPI_TABLE_UPGRADE if ACPI
-	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FAST_MULTIPLIER
 	select ARCH_HAS_FORTIFY_SOURCE
 	select ARCH_HAS_GCOV_PROFILE_ALL
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index f674f28df663..8ddc2471b054 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -548,14 +548,6 @@ unsigned long arch_align_stack(unsigned long sp)
 	return sp & ~0xf;
 }
 
-unsigned long arch_randomize_brk(struct mm_struct *mm)
-{
-	if (is_compat_task())
-		return randomize_page(mm->brk, SZ_32M);
-	else
-		return randomize_page(mm->brk, SZ_1G);
-}
-
 /*
  * Called from setup_new_exec() after (COMPAT_)SET_PERSONALITY.
  */
diff --git a/mm/util.c b/mm/util.c
index 0781e5575cb3..16f1e56e2996 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -321,7 +321,15 @@ unsigned long randomize_stack_top(unsigned long stack_top)
 }
 
 #ifdef CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
-#ifdef CONFIG_ARCH_HAS_ELF_RANDOMIZE
+unsigned long arch_randomize_brk(struct mm_struct *mm)
+{
+	/* Is the current task 32bit ? */
+	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
+		return randomize_page(mm->brk, SZ_32M);
+
+	return randomize_page(mm->brk, SZ_1G);
+}
+
 unsigned long arch_mmap_rnd(void)
 {
 	unsigned long rnd;
@@ -335,7 +343,6 @@ unsigned long arch_mmap_rnd(void)
 
 	return rnd << PAGE_SHIFT;
 }
-#endif /* CONFIG_ARCH_HAS_ELF_RANDOMIZE */
 
 static int mmap_is_legacy(struct rlimit *rlim_stack)
 {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
