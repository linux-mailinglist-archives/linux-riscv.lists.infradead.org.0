Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A6A1EECB9
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 23:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l9WNpzAk6GR0oZM1MZXq4tkoPwG5z3FJyTDP4kfhabM=; b=WodKGxKZbMdBiv
	m8V5onZ7Dlk9qHCQO18c/d3agCw5Pe9VkpKqCiK797YratY/LJA7QOM34ZHn5EUmlaZP+Zu0qiPAW
	sUfmqis34iufIjMv2p6eRbkiIlrUl4nXEmxvKVbkqHZbV6gmFDfGq4KaCC4vEG1uhRFBNWj+PNV2e
	sFkC8vK7j1QmHqt7lmOkX67bcVO+RJJcY8rR3wyc2MhH0r3JYsr1F89GLbPtrTtog6U20ncFfI41r
	KHumZ5mTKJR2DwQuo4EPiqNpdhQfs+eFtReZ1wxn3diekerdED/FGzKxdNZSss8evhXH1S0xBUyei
	WQpYsWZVyi2gBdF42efg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwzH-0001Sj-9L; Thu, 04 Jun 2020 21:01:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwzD-0001Rr-Sg
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 21:01:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id 185so4041717pgb.10
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 14:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=l9WNpzAk6GR0oZM1MZXq4tkoPwG5z3FJyTDP4kfhabM=;
 b=ZRKasw3uiJWcW5F3OFNkQUXYk/FvHHktAsBmkcapQFckPyCaYH3WcT/5kd9KGMktF+
 /CHjqZ6qm4BHoXWxEApcpbf0vZ4dl6BCHhcGL8M5XuO0lXigscod/IzHL/9p7K1japQ/
 BgFUkFgWn/jIzlmfgu+wU391E9RS/3lNg8YPTBCWhkPjf+qhX/fNK+cb3Lhr/d6S9xyw
 1VzNwLae2lRsYNpU918tRacM04YKLj5dQLCkGUTepPm45s+5gmG9mLOnOk7LdOd0SNDx
 dAQM7Vi7XT5ravtB+537SZujQg6nZ5ylIKNCgghN0dFGLifsWwhaqb+K2bsv3adp0I17
 k1pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=l9WNpzAk6GR0oZM1MZXq4tkoPwG5z3FJyTDP4kfhabM=;
 b=CrBaj+gYGIlGtnc0/ipRIjROROSki0978xlWP4MJoe9PgPBFzHUmeh6NvbGJFUBWpa
 8RPF2pUQ6+0928BQU9TwgZAR74xCzvSngWkdF0ATLKdOn9LaMLpLgF2UgG7dn1afD2o4
 00gTN2Yq0oQphZzQuX/thyVbeD8GIOpW/qWMGNFI8PJNTF+T001ZxMqm5L4DY5Gceq8O
 ye949zYhWIlhuMberc2ZgN0AvfAYSS/dup6JosKKvXDOJ4go4nelR02CheA/BBYYYJiQ
 JHH+u1r196JCqCqY5/NvAVsv+/O11K6qzuR3Utg22nXvP6gnxOOLfT9p88JrSSpOTEKu
 lz4g==
X-Gm-Message-State: AOAM5315zfUvvwB5x2DzAwgqyozzuvqu3i5vrz2eCtEXyD1pcpVuyLXz
 Yts1kE/RTErb+5ro/4XHuhUU/w==
X-Google-Smtp-Source: ABdhPJzsAeP68mNdJIneUKPsl9YIY7b3ptemV4ja0CAtW/T8+5kxv0yK5sG/GODQZXenDUR2gRFdzg==
X-Received: by 2002:a63:d412:: with SMTP id a18mr6212761pgh.154.1591304472412; 
 Thu, 04 Jun 2020 14:01:12 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id e124sm5347082pfh.140.2020.06.04.14.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:01:11 -0700 (PDT)
Subject: [PATCH] RISC-V: Sort select statements alphanumerically
Date: Thu,  4 Jun 2020 14:00:07 -0700
Message-Id: <20200604210007.108432-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_140115_945367_853B2B13 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -14.9 (--------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-14.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Like patch b1b3f49 ("ARM: config: sort select statements alphanumerically")
, we sort all our select statements alphanumerically by using the perl
script in patch b1b3f49 as above.

As suggested by Andrew Morton:

  This is a pet peeve of mine.  Any time there's a long list of items
  (header file inclusions, kconfig entries, array initalisers, etc) and
  someone wants to add a new item, they *always* go and stick it at the
  end of the list.

  Guys, don't do this.  Either put the new item into a randomly-chosen
  position or, probably better, alphanumerically sort the list.

Suggested-by: Zong Li <zong.li@sifive.com>
[Palmer: Re-ran the script, as there were predictably a bunch of conflicts]
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig | 68 +++++++++++++++++++++++-----------------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c733007b90ab..8244b8f7e7c3 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -12,64 +12,64 @@ config 32BIT
 
 config RISCV
 	def_bool y
-	select OF
-	select OF_EARLY_FLATTREE
-	select OF_IRQ
 	select ARCH_HAS_BINFMT_FLAT
+	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEBUG_WX
+	select ARCH_HAS_GCOV_PROFILE_ALL
+	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_HAS_MMIOWB
+	select ARCH_HAS_PTE_SPECIAL
+	select ARCH_HAS_SET_DIRECT_MAP
+	select ARCH_HAS_SET_MEMORY
+	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
+	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_FRAME_POINTERS
+	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select CLONE_BACKWARDS
 	select COMMON_CLK
+	select EDAC_SUPPORT
+	select GENERIC_ARCH_TOPOLOGY if SMP
+	select GENERIC_ATOMIC64 if !64BIT
 	select GENERIC_CLOCKEVENTS
+	select GENERIC_IOREMAP
+	select GENERIC_IRQ_MULTI_HANDLER
 	select GENERIC_IRQ_SHOW
 	select GENERIC_PCI_IOMAP
+	select GENERIC_PTDUMP if MMU
 	select GENERIC_SCHED_CLOCK
+	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_STRNCPY_FROM_USER if MMU
 	select GENERIC_STRNLEN_USER if MMU
-	select GENERIC_SMP_IDLE_THREAD
-	select GENERIC_ATOMIC64 if !64BIT
-	select GENERIC_IOREMAP
-	select GENERIC_PTDUMP if MMU
 	select HAVE_ARCH_AUDITSYSCALL
+	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select HAVE_ARCH_KGDB
+	select HAVE_ARCH_KGDB_QXFER_PKT
+	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_ARCH_SECCOMP_FILTER
+	select HAVE_ARCH_TRACEHOOK
 	select HAVE_ASM_MODVERSIONS
+	select HAVE_COPY_THREAD_TLS
 	select HAVE_DMA_CONTIGUOUS if MMU
+	select HAVE_EBPF_JIT if MMU
 	select HAVE_FUTEX_CMPXCHG if FUTEX
+	select HAVE_PCI
 	select HAVE_PERF_EVENTS
 	select HAVE_PERF_REGS
 	select HAVE_PERF_USER_STACK_DUMP
 	select HAVE_SYSCALL_TRACEPOINTS
 	select IRQ_DOMAIN
-	select SPARSE_IRQ
-	select SYSCTL_EXCEPTION_TRACE
-	select HAVE_ARCH_TRACEHOOK
-	select HAVE_PCI
 	select MODULES_USE_ELF_RELA if MODULES
 	select MODULE_SECTIONS if MODULES
-	select THREAD_INFO_IN_TASK
+	select OF
+	select OF_EARLY_FLATTREE
+	select OF_IRQ
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_TIMER
-	select GENERIC_IRQ_MULTI_HANDLER
-	select GENERIC_ARCH_TOPOLOGY if SMP
-	select ARCH_HAS_PTE_SPECIAL
-	select ARCH_HAS_MMIOWB
-	select ARCH_HAS_DEBUG_VIRTUAL if MMU
-	select HAVE_EBPF_JIT if MMU
-	select EDAC_SUPPORT
-	select ARCH_HAS_GIGANTIC_PAGE
-	select ARCH_HAS_SET_DIRECT_MAP
-	select ARCH_HAS_SET_MEMORY
-	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
-	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
-	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
-	select HAVE_ARCH_MMAP_RND_BITS if MMU
-	select ARCH_HAS_GCOV_PROFILE_ALL
-	select HAVE_COPY_THREAD_TLS
-	select HAVE_ARCH_KASAN if MMU && 64BIT
-	select HAVE_ARCH_KGDB
-	select HAVE_ARCH_KGDB_QXFER_PKT
+	select SPARSE_IRQ
+	select SYSCTL_EXCEPTION_TRACE
+	select THREAD_INFO_IN_TASK
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
@@ -196,11 +196,11 @@ config ARCH_RV64I
 	bool "RV64I"
 	select 64BIT
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
-	select HAVE_FUNCTION_TRACER
-	select HAVE_FUNCTION_GRAPH_TRACER
-	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_DYNAMIC_FTRACE if MMU
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS if HAVE_DYNAMIC_FTRACE
+	select HAVE_FTRACE_MCOUNT_RECORD
+	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_TRACER
 	select SWIOTLB if MMU
 
 endchoice
-- 
2.27.0.278.ge193c7cf3a9-goog


