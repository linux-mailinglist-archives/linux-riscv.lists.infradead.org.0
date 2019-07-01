Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD5A5C27D
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 20:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJ3gxMCBgtWYibOTiXyIv5JGuB3CMEz1SQftqsBNeoo=; b=JiAP1kLUVUWCUX
	s2Y2MFvfXqSjB4Fc6KefUeSc5XejjeVR9kBJYcf1oqBj+m7c8y/lCmw7VmqiDluYKULi2mRM40pLi
	7HyyidPZeCl8XNjgNUCsvpCLVrFs79q3Ruw9JS1UFDdInNWbZpwBo8ljF2vyVlB9mSuFCcaxqCpbE
	VFntGNrVbgVqMMbS+Ao5ZVguHhs/xbkDvKAvT5dyACnF2ehW3TKEw6jyHHvZGM5uj1odc3vvy4wBM
	R1EWHfIAGDn9+TbHmcWM2TKnPwsc0BgnNMgzAJGmU355BbSq1ml/fBEaMzITbJUrv2SyuBXRsylTp
	AFEsqfHUT2HM8LOqNT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0bX-0000q9-MS; Mon, 01 Jul 2019 18:00:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0bN-0000Ya-Fd; Mon, 01 Jul 2019 18:00:31 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 60561240008;
 Mon,  1 Jul 2019 18:00:12 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Hanjun Guo <guohanjun@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Mike Kravetz <mike.kravetz@oracle.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/2] x86,
 arm64: Move ARCH_WANT_HUGE_PMD_SHARE config in arch/Kconfig
Date: Mon,  1 Jul 2019 13:58:59 -0400
Message-Id: <20190701175900.4034-2-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190701175900.4034-1-alex@ghiti.fr>
References: <20190701175900.4034-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_110029_680600_B29BB7B4 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

ARCH_WANT_HUGE_PMD_SHARE config was declared in both architectures:
move this declaration in arch/Kconfig and make those architectures
select it.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/Kconfig       | 3 +++
 arch/arm64/Kconfig | 4 +---
 arch/x86/Kconfig   | 4 +---
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index c47b328eada0..d2f212dc8e72 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -577,6 +577,9 @@ config HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
 config HAVE_ARCH_HUGE_VMAP
 	bool
 
+config ARCH_WANT_HUGE_PMD_SHARE
+	bool
+
 config HAVE_ARCH_SOFT_DIRTY
 	bool
 
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea0510729..c862575decd3 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -71,6 +71,7 @@ config ARM64
 	select ARCH_SUPPORTS_NUMA_BALANCING
 	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
 	select ARCH_WANT_FRAME_POINTERS
+	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARM_AMBA
 	select ARM_ARCH_TIMER
@@ -901,9 +902,6 @@ config HW_PERF_EVENTS
 config SYS_SUPPORTS_HUGETLBFS
 	def_bool y
 
-config ARCH_WANT_HUGE_PMD_SHARE
-	def_bool y if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
-
 config ARCH_HAS_CACHE_LINE_SIZE
 	def_bool y
 
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 2bbbd4d1ba31..fa021ec38803 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -93,6 +93,7 @@ config X86
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
 	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
+	select ARCH_WANT_HUGE_PMD_SHARE
 	select ARCH_WANTS_THP_SWAP		if X86_64
 	select BUILDTIME_EXTABLE_SORT
 	select CLKEVT_I8253
@@ -301,9 +302,6 @@ config ARCH_HIBERNATION_POSSIBLE
 config ARCH_SUSPEND_POSSIBLE
 	def_bool y
 
-config ARCH_WANT_HUGE_PMD_SHARE
-	def_bool y
-
 config ARCH_WANT_GENERAL_HUGETLB
 	def_bool y
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
