Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7411FEB32
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 21:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yr2J2YLmd5VRd54dKtG892QxzSE3qkQy1vUmXqgdwcQ=; b=fao2LaP/mxZzi+
	pRAAhCPXsVcjx2Oz8KiGzOhuUnXuhLdJriybbQe8nqisKuU9oiLfOMTUbxfb+YDsyFcyrbQqgU6K4
	U5FbdEpnt0kI8zsMeq/sYx0bb68aer/BQ/IPIY16jZNerdwwglE1z1SvIHfIRg7yuMIoDKPsvo+IG
	LTVu4N+VnPjsM2qfVFrMgtuFma3m79lnSKGuD/Awktj1Kk3Mq4tvQ2wZk/UYdt4MMdR3Jkq0vwU3o
	zrfZWNQSE8CTZufc6Fo3LQ8ro/4vMZIB3rMYG+ENMFlLEn8qsQNtVnvw8p+YqZEoRHv3drAne/EUQ
	MzDo17jP0ydmu6Uc68QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCPn-0003gj-N7; Mon, 29 Apr 2019 19:58:15 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCPk-0003fL-H7
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 19:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556567911; x=1588103911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQpKXJ6rfJbjxybm+qOYB3z1XmPhKagdgdILF7N0WwA=;
 b=iD3LR0MpV51a0bOMhDUIN8naLB54WOFwNPbvXIQwIaPJg903aLsU/UxH
 mK2Qa4cEwJkLEJDD+p6hUrX1n6a5X7o7D9ykqTrMDiYj4r6Qww9NruvdJ
 ECIQHXyku3tdC1Fn1VAOaspf5JXgycNAwMgXuh6aNgQjqgBjInb7/wvuc
 5jz3eHeJE5spWMwVKEj+LltEfVICc3s5erkWIgAk3altuEknKpsc8hjLO
 xGp1J4DlKTmLT8wsoScBUNp61DBrtBUu4Jm9NjtEF5K5Am03HHVesng/Q
 c2+1/rh12HXxFW0V+ON/St8klQPSgpkkOzomcWJ2jJ0S2WPGdZG9VXrVb w==;
X-IronPort-AV: E=Sophos;i="5.60,410,1549900800"; d="scan'208";a="206289672"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 03:58:29 +0800
IronPort-SDR: t+DV2Bl4iIl8wCgGAiYOccWVzMksLkw2DuT1ThbDp97DFgo4apvoiv7h0tzWY9ueypSKI3z8r7
 qTEKSX0oDZ1OWrO+ejzMxqcScwprxhofBIWPuZNnVYMobMLb0zXk8DxGPLaQoGiufoEF6eYrTO
 LiOmbCasDSeZB4DR27SmhzIR286VIbePzK3Jvn94B3805E3DraCr2yMYRTUkyn9YKxMl1+5QWk
 ICEQVbjG8+HIKbshjzV1AZRBZTUpNDM4ZzQ/K0ssTd5+Bq/7jOKq44wJEDjq4Pf2i6LGeOVp48
 toHnOolvyMOqVKU2/9tCKkWw
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Apr 2019 12:36:42 -0700
IronPort-SDR: wz9YGcayYviARxURW0XYZuUzYVCZFmYVx0XdGd5JZHZiNh02M12LMvPMG8IMYcAtZPZcy1EeDb
 h3W9jYm/1FQlZZHxDvV7Prowbsd3Hyz1a/RTdWFHN0r5GMxoiiiDXhfxhLeiwqugDGnA05Ljq4
 moiPxBN2X9YhDPIWKJYtQve9/hgsixthYTDEgtOkb23Yld3IOO/JdsyvvCGFG92A8VPkK75xXs
 A9KKcfbWLwIjssH3PDU+LBp77MSbbrSFkbhUoC8pi5FigiTn+C/eTzzxNX9qF9uVZ00cmOxTce
 epM=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Apr 2019 12:58:11 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] x86: Move DEBUG_TLBFLUSH option.
Date: Mon, 29 Apr 2019 12:57:57 -0700
Message-Id: <20190429195759.18330-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190429195759.18330-1-atish.patra@wdc.com>
References: <20190429195759.18330-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_125812_599654_D6F903F5 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Christoph Hellwig <hch@infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 Changbin Du <changbin.du@intel.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 linux-mm@kvack.org, Atish Patra <atish.patra@wdc.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Vlastimil Babka <vbabka@suse.cz>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CONFIG_DEBUG_TLBFLUSH was added in 'commit 3df3212f9722 ("x86/tlb: add
tlb_flushall_shift knob into debugfs")' to support tlb_flushall_shift
knob. The knob was removed in 'commit e9f4e0a9fe27 ("x86/mm: Rip out
complicated, out-of-date, buggy TLB flushing")'.  However, the debug
option was never removed from Kconfig. It was reused in commit
'9824cf9753ec ("mm: vmstats: tlb flush counters")' but the commit text
was never updated accordingly.

Update the Kconfig option description as per its current usage.

Take this opprtunity to make this kconfig option a common option as it
touches the common vmstat code. Introduce another arch specific config
HAVE_ARCH_DEBUG_TLBFLUSH that can be selected to enable this config.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/x86/Kconfig       |  1 +
 arch/x86/Kconfig.debug | 19 -------------------
 mm/Kconfig.debug       | 13 +++++++++++++
 3 files changed, 14 insertions(+), 19 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 62fc3fda1a05..4c59f59e9491 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -132,6 +132,7 @@ config X86
 	select HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD if X86_64
 	select HAVE_ARCH_VMAP_STACK		if X86_64
 	select HAVE_ARCH_WITHIN_STACK_FRAMES
+	select HAVE_ARCH_DEBUG_TLBFLUSH		if DEBUG_KERNEL
 	select HAVE_CMPXCHG_DOUBLE
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING		if X86_64
diff --git a/arch/x86/Kconfig.debug b/arch/x86/Kconfig.debug
index 15d0fbe27872..0c8f9931e901 100644
--- a/arch/x86/Kconfig.debug
+++ b/arch/x86/Kconfig.debug
@@ -124,25 +124,6 @@ config DOUBLEFAULT
 	  option saves about 4k and might cause you much additional grey
 	  hair.
 
-config DEBUG_TLBFLUSH
-	bool "Set upper limit of TLB entries to flush one-by-one"
-	depends on DEBUG_KERNEL
-	---help---
-
-	X86-only for now.
-
-	This option allows the user to tune the amount of TLB entries the
-	kernel flushes one-by-one instead of doing a full TLB flush. In
-	certain situations, the former is cheaper. This is controlled by the
-	tlb_flushall_shift knob under /sys/kernel/debug/x86. If you set it
-	to -1, the code flushes the whole TLB unconditionally. Otherwise,
-	for positive values of it, the kernel will use single TLB entry
-	invalidating instructions according to the following formula:
-
-	flush_entries <= active_tlb_entries / 2^tlb_flushall_shift
-
-	If in doubt, say "N".
-
 config IOMMU_DEBUG
 	bool "Enable IOMMU debugging"
 	depends on GART_IOMMU && DEBUG_KERNEL
diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index e3df921208c0..760c3fda8b57 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -111,3 +111,16 @@ config DEBUG_RODATA_TEST
     depends on STRICT_KERNEL_RWX
     ---help---
       This option enables a testcase for the setting rodata read-only.
+
+config HAVE_ARCH_DEBUG_TLBFLUSH
+	bool
+	depends on DEBUG_KERNEL
+
+config DEBUG_TLBFLUSH
+	bool "Save tlb flush statstics to vmstat"
+	depends on HAVE_ARCH_DEBUG_TLBFLUSH
+	help
+
+	Add tlbflush statstics to vmstat. It is really helpful understand tlbflush
+	performance and behavior. It should be enabled only for debugging purpose
+	by individual architectures explicitly by selecting HAVE_ARCH_DEBUG_TLBFLUSH.
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
