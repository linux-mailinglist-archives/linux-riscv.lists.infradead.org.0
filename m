Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC6C1D5993
	for <lists+linux-riscv@lfdr.de>; Fri, 15 May 2020 21:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y4Tu4UqtalfMRN8mnNoM6mpqo/qALhm8HqxuxykVAjE=; b=sjvvTnqsM9x7Qq2o7NkfIc9aKP
	5B4YluLRBWzTF9w7jM49No7JBpY1NV+Nf145UtRxsVAzU+/eh19eOn9BK5IXZhCtzosxnXbQu3KoZ
	6LF0n4gB26NHQlmao07pDYYGY3Rs45Y597ufHvVgQEOfOk1bxPhFR84fgB4L+/dnpMo1lfL51LSPD
	ySbm26qsfnbNZg+CWLZqXvk1URA2SYz4hZ3LwNBYYG8oQFccRZqgNIjyzGBQ3ypEA1/RzGg9S2CmV
	zfKE0L8EZSb/2fnRwRcTr3zfSGj8Z1kMe+Em1fnlW8yIqle7oCFnrbj80aVR9stEOXuyZ+B2ukbKc
	c5L19PDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZfaC-0005Vi-KB; Fri, 15 May 2020 19:01:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZfa9-0005VJ-Dk
 for linux-riscv@lists.infradead.org; Fri, 15 May 2020 19:01:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id x77so1415907pfc.0
 for <linux-riscv@lists.infradead.org>; Fri, 15 May 2020 12:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=Y4Tu4UqtalfMRN8mnNoM6mpqo/qALhm8HqxuxykVAjE=;
 b=1uWs4zKf4rQGsgiboVezung6oJ1vpH+pnRdjBVMXfyDJyIS1CV4CGEncgYCMYLtvES
 J64a013s9DcH76+W3dU+SmJg9kKInKG6ZE9zwbOwHHiEF+tWFwUc5DtppaydVC5Pgvpk
 Vq5YwwtqTPtxl/CaAkIXHCZaKkgbWGm7TLEQBuU3MkjhHqlCiSuxEUG6v19ViH9O6Poh
 honoDgGJO2bVhqjzz9OXcsfncuQjro2bAfQdZHJp7KU3aFgrYq3xUUlb4vI89dPqLOaI
 lpHYhbWYiBEM/QtL78s/GHWVQBkGf9KAVUUIJdTi047noN0A7mKxlZfQ3pUi3kJFWrMD
 fn0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=Y4Tu4UqtalfMRN8mnNoM6mpqo/qALhm8HqxuxykVAjE=;
 b=LtM3J0NkQYeGgAQtvmzJ2liv8ErQztJooQD4ZPYGg3TepIAuvkBQc8CbnrmRZxQq7i
 FZFBDY57TZlmAB2u9JYGYi2Y8qc7MsPnvjqiqBBNeQ8lQ3J0qjhuXFj+bzqeDXO9R/O5
 /Wig7GNFW5lIP2O0shd1iM/59AZoOUtt2eqfo7iSoIzymqd9RiqN95YPeGNJC78lMDwJ
 En008HZ2s6qaZNLsmtKT8YO8uIVfcjFg8IgnNB/AgmsSE5GM+Cd0j0/cvz5vP1+zv3/d
 h09Yho3vTiQSOqM79glX5MtrFQpa5l0ZwKWmkj0y6SsrT+XQWI0EZkrIAbjnV7nogrur
 NhwQ==
X-Gm-Message-State: AOAM533UymXfICzlf4AyvyVL+iAzeQ2gz1zotOiKGkgLhUM4m0m6JRLx
 hUeed5qfBUDKpjvwbn9nYW8qgIYMFVqf7g==
X-Google-Smtp-Source: ABdhPJw6LoHwUAxm+l8/QIdvGoJTT2nBrVnwuMLOr03EUKhztvF58+XxCYARunlt/hIb7c53IltMGQ==
X-Received: by 2002:a63:175c:: with SMTP id 28mr4243174pgx.44.1589569276342;
 Fri, 15 May 2020 12:01:16 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id g1sm2574162pfb.191.2020.05.15.12.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 12:01:15 -0700 (PDT)
Date: Fri, 15 May 2020 12:01:15 -0700 (PDT)
X-Google-Original-Date: Fri, 15 May 2020 11:58:33 PDT (-0700)
Subject: [GIT PULL] RISC-V Fixes for 5.7-rc6
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-0786a015-369a-4f54-aa78-f4550588e4ef@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_120117_467438_0A36BF3E 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit 2ef96a5bb12be62ef75b5828c0aab838ebb29cb8:

  Linux 5.7-rc5 (2020-05-10 15:16:58 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7-rc6

for you to fetch changes up to ed1ed4c0da5447c5e322481ce2ef9f03336c6ffb:

  riscv: mmiowb: Fix implicit declaration of function 'smp_processor_id' (2020-05-13 17:11:46 -0700)

----------------------------------------------------------------
RISC-V Fixes for 5.7-rc6

This consists of a handful of build fixes, all found by Huawei's autobuilder.
None of these patches should have any functional impact on kernels that build,
and they're mostly related to various features intermingling with !MMU.  While
some of these might be better hoisted to generic code, it seems better to have
the simple fixes in the meanwhile.

As far as I know these are the only outstanding patches for 5.7.

----------------------------------------------------------------
Kefeng Wang (9):
      riscv: perf_event: Make some funciton static
      riscv: perf: RISCV_BASE_PMU should be independent
      riscv: Fix unmet direct dependencies built based on SOC_VIRT
      riscv: stacktrace: Fix undefined reference to `walk_stackframe'
      riscv: Add pgprot_writecombine/device and PAGE_SHARED defination if NOMMU
      riscv: Disable ARCH_HAS_DEBUG_VIRTUAL if NOMMU
      riscv: Make SYS_SUPPORTS_HUGETLBFS depends on MMU
      riscv: pgtable: Fix __kernel_map_pages build error if NOMMU
      riscv: mmiowb: Fix implicit declaration of function 'smp_processor_id'

 arch/riscv/Kconfig                  |  3 ++-
 arch/riscv/Kconfig.socs             | 17 +++++++++--------
 arch/riscv/include/asm/mmio.h       |  2 ++
 arch/riscv/include/asm/mmiowb.h     |  1 +
 arch/riscv/include/asm/perf_event.h |  8 ++------
 arch/riscv/include/asm/pgtable.h    |  3 +++
 arch/riscv/kernel/Makefile          |  2 +-
 arch/riscv/kernel/perf_event.c      |  8 ++++----
 arch/riscv/kernel/stacktrace.c      |  2 +-
 9 files changed, 25 insertions(+), 21 deletions(-)

