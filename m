Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CD91D8E5A
	for <lists+linux-riscv@lfdr.de>; Tue, 19 May 2020 05:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hz7q0UBXblJmlQ0Hl2W6faDSP3NssHAPx2k9KjAeicQ=; b=jCaPA3n7rds4dg
	NTKE/6g6CTWa7yHVoPANoRGTRX8C/tSn8wsJ0a8uAiDVG3ZxsFx3zkVVR7wv1yrTklk8f6E9RLvJG
	pP+4K9FjGw1F1IjTRG8MU2eMS1odjXYU6tx6PE4FXni6DvUdpkEcQCvXuNDCQi62u6rL7p2Z7Q4xT
	L4roilyTNDmLCW1074/qf0a8rZbrLM2yrU7f2VAy4moubt0qeabWlvgL3juUqrrukuwWeY92fXoYV
	w05LbakwZier97FoRcJhK9BK1agiBzI3NWMLTX7L0+tlBJDRGWAWV9Y/CsXINAcESOa7lM01vq93k
	zECc2xLw7/HYRrkpG8Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jat8t-0002ne-F9; Tue, 19 May 2020 03:42:11 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jat8q-0002nC-4b
 for linux-riscv@lists.infradead.org; Tue, 19 May 2020 03:42:09 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t40so757835pjb.3
 for <linux-riscv@lists.infradead.org>; Mon, 18 May 2020 20:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hz7q0UBXblJmlQ0Hl2W6faDSP3NssHAPx2k9KjAeicQ=;
 b=UaafkKkHB3bn3XLmoTmBUZU5KegPGb7yPErquAgEVbCgBiU8D0JlUwxA9Am5kigVvK
 uBTdGmdTtfbsCVP+wq0fCu1+wLTzqGFKO6Rh2UeoZ90q6suAEKpdWGrXbTeqnVFK6lQB
 FQRmAFHVGjQ3yn5ASlot6syu4Ptyt0CjwwWTb3SKvRh6kd82uHPIjd++kgMcaD56bIdl
 RxY6u4dLxCtoK6Db3tcqvaqcmer5Nyt63Km/jayiGjOxGe2CVMPQ1BveHUtBKunf7n0h
 fGAAQI85he6V5bURxKkDgJAqM8kmkKtAGoiu0S3V6e3BRzBGE0jiJoCL/UxBRbmKdyKi
 1u2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hz7q0UBXblJmlQ0Hl2W6faDSP3NssHAPx2k9KjAeicQ=;
 b=id59cwqlb5IV6+fwjr2Th7ZmJqT8QN2yjU5TWph4Y48Pzle8Bxf70Km6qxf7A/ViL2
 BVNgjfir4b3mrK+QNYXuK4fk+k5YxMNOw1Jqb3mFLuGVUqq/kf+pmxfCbACJNkfVVQIP
 gxB9Z6WSeYNFVbxBY3Ua08vCN2JY6XyWvcgsLoHQngZKxol7imycvoOUuq8OjdXNXMBE
 OWrqZ25Qy1/eqR9t+/bZBwdtrYFY0ffZ18F65XhNe2W+N6ou8rzN+PeirSWeF+K7Y4OV
 jNPzFrLZLVyap2jnuPYdcJ74GusCZdgiYtWd9SbyBYDgre9SMAWBFV26eCKXxW9LK3DZ
 /Asg==
X-Gm-Message-State: AOAM530h+2vnQBVLbZizhIjYWqgojO+ebWM/RvgMeHbwrXPT+DN0i08m
 qoVkJry/8G42j+UEbuIxrGuwcg==
X-Google-Smtp-Source: ABdhPJz0IdEJZwszdGYcpyvCUZEq/Vy7gmVpIPeErXvXC9hONhg5CBbhkxozisfGyPcrnbQxxSLWuQ==
X-Received: by 2002:a17:90a:fb96:: with SMTP id
 cp22mr2816190pjb.201.1589859726950; 
 Mon, 18 May 2020 20:42:06 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id 188sm9832256pfg.218.2020.05.18.20.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 20:42:06 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] riscv: sort select statements alphanumerically
Date: Tue, 19 May 2020 11:42:04 +0800
Message-Id: <0609f8f0c0c7182fda08fc395161ec11309c63fb.1589859647.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_204208_243241_D0196729 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
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

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig | 70 +++++++++++++++++++++++-----------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 74ce5c5249e9..8244b8f7e7c3 100644
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
+	select ARCH_HAS_DEBUG_WX
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
-	select ARCH_HAS_DEBUG_WX
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
2.26.2


