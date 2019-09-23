Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CEABB6E1
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 16:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZszuZRrCVrib/Q2hfTq0TlJdtjr/GKczQdt6o2xFa6c=; b=MuuUkwX4gS+vLn
	cj9rB+V9QjFydEvknp371qYpGAD1p3hxsCY93sd2xGJvAs3QcoPel0aqLkEhZ8Hy1hstUcXJt6Zsp
	e0xMHw9AzhEJGAFQLbk82pNBhNGIGFW5ycz1GlyjHaTWRkpotojafiuMQISmFMtqUbqqVSWpJNGGU
	fr5Wg73Hl87GEEvTDfkaM7LR1sSsr6GsyBVh9VuKG9B2p+Wd07+BA/YBYESlZjkLnL5vpMqfwgYmS
	pk7F0nwuLfccJ1bTuTQ1avHue2fXauINpAms774ilOsiH11XJLZhaxsc6mr/cmIQ+rlfTv7s5i/R0
	PNe9lkBzgjgtctBNtlwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPSK-0006nS-I9; Mon, 23 Sep 2019 14:36:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPSE-0006mK-QC
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 14:36:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE9481000;
 Mon, 23 Sep 2019 07:36:39 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 78F4D3F59C;
 Mon, 23 Sep 2019 07:36:38 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/9] entry: preempt_schedule_irq() callers scrub
Date: Mon, 23 Sep 2019 15:36:11 +0100
Message-Id: <20190923143620.29334-1-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_073642_933946_712F65CB 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-c6x-dev@linux-c6x.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I've left this to ~rot~ age out in the sun for a while, apologies for that.
One early new-year resolution for me is to maintain a shorter resend
timeout on this.


This is the continuation of [1] where I'm hunting down
preempt_schedule_irq() callers because of [2]. I've looked at users of
preempt_schedule_irq(), and made sure they didn't have one of those useless
loops. The list of offenders is:

$ grep -r -I "preempt_schedule_irq" arch/ | cut -d/ -f2 | sort | uniq

  arc
  arm
  arm64
  c6x
  csky
  h8300
  ia64
  m68k
  microblaze
  mips
  nds32
  nios2
  parisc
  powerpc
  riscv
  s390
  sh
  sparc
  x86
  xtensa

Regarding that loop, archs seem to fall in 3 categories:
A) Those that don't have the loop
B) Those that have a small need_resched() loop around the
   preempt_schedule_irq() callsite
C) Those that branch to some more generic code further up the entry code
   and eventually branch back to preempt_schedule_irq()

arc, m68k, nios2 fall in A)
sparc, ia64, s390 fall in C)
all the others fall in B)

I've written patches for B). As of 5.3 mainline contains those for:
- arm64
- mips
- x86
- powerpc
- nds32

I've also got acks/reviews but haven't seen in any tree yet for:
- c6x
- csky
- riscv
- xtensa

The remaining ones for which I haven't had any reply at all are
- h8300
- microblaze
- sh
- sh64

Build-tested:
- h8300
- c6x
- microblaze
- riscv

No major change since v1 other than rebasing on top of 5.4 and collecting
Reviewed-By / Acked-By.

Thanks,
Valentin

[1]: https://lore.kernel.org/lkml/20190131182339.9835-1-valentin.schneider@arm.com/
[2]: https://lore.kernel.org/lkml/cc989920-a13b-d53b-db83-1584a7f53edc@arm.com/

Valentin Schneider (9):
  sched/core: Fix preempt_schedule() interrupt return comment
  c6x: entry: Remove unneeded need_resched() loop
  csky: entry: Remove unneeded need_resched() loop
  h8300: entry: Remove unneeded need_resched() loop
  microblaze: entry: Remove unneeded need_resched() loop
  RISC-V: entry: Remove unneeded need_resched() loop
  sh: entry: Remove unneeded need_resched() loop
  sh64: entry: Remove unneeded need_resched() loop
  xtensa: entry: Remove unneeded need_resched() loop

 arch/c6x/kernel/entry.S        | 3 +--
 arch/csky/kernel/entry.S       | 4 ----
 arch/h8300/kernel/entry.S      | 3 +--
 arch/microblaze/kernel/entry.S | 5 -----
 arch/riscv/kernel/entry.S      | 3 +--
 arch/sh/kernel/cpu/sh5/entry.S | 5 +----
 arch/sh/kernel/entry-common.S  | 4 +---
 arch/xtensa/kernel/entry.S     | 2 +-
 kernel/sched/core.c            | 7 +++----
 9 files changed, 9 insertions(+), 27 deletions(-)

--
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
