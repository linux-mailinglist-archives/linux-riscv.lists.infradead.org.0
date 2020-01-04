Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D065E12FFF2
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 02:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bWg/c6iA97v6B47byrT70FImUW3Ul6QAIc+rwRJT/OQ=; b=UXmtuxoQWaGibxazpOAVVADah
	GuNd4RRgShhrqAgDmbtbeY9Cdq+BQr+ewHYX5nanrMP4Zlyv9LIll5wAtT8v392j1nMyM60Fs2UTn
	9hD3eeM58h7O9qJ4kZanLT0UQqYfSv8LyMtEH2z5ZcWMntVGBJmdSUJ2777P3VpZdLKHNY0CwMu2l
	UO5J6PhE0BRiYJNifTtsquj52HXp6y2vKb70g9P1Hgl/Hq6PA42foNImuMJhvRiXgl9QXaKlMcSZC
	z0vYlbEDFTEeKxzyAvF1NPP9iGZs+B+RXzjE33i7lrVhlQy+QLgKgT2dfM8883LaO/ZHszLHZFZ56
	vIr4a0UHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inYFJ-00056k-51; Sat, 04 Jan 2020 01:28:53 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inYFE-00056P-8g
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 01:28:50 +0000
Received: by mail-io1-xd42.google.com with SMTP id k24so12848762ioc.4
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 17:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=bWg/c6iA97v6B47byrT70FImUW3Ul6QAIc+rwRJT/OQ=;
 b=DGylNAeGolb940YItbiF0WjP6HQRAiy8Qt1AQFiOKqKP0rqj+fwofzVopfuuQhrX8t
 nxFSxA83DvvvTUdqC/LkIipFAwUvOUFOn2xE0syIhQ79C4xyuMt48ilIt7iBTOHPIiZV
 NtmbddY4rM6Dt3/Lf+BX7cpzvjjdpqxuXwQSa11ffMc3DgajPmfiJCnu0CbfQWfnYdiO
 s9RpqFBoschdvt/7OPhAOlZFePmqsNINX4s4LUnvbs6bOZBdzp+jDk9AUg1LhQBV2q3o
 DCZ2+yvgeZu9E99IuW6AfNDqXIN6nqcGv6Jh1w1jKQUdK+SbxwBLnnljrUWoc4QkiLPk
 TZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=bWg/c6iA97v6B47byrT70FImUW3Ul6QAIc+rwRJT/OQ=;
 b=Ox7cHsMo9U4NwZZR2hIkcZBQz4ARSRXgVbytRqnEaL3O8WT73myiq/+P35jAd6Cccj
 x1M3POiA54Yw3zDpSt2ynoynUFYRgnFbJKfbNraDLQaZWZ8hNoGFg0Yb1gp+Ks9yjMZb
 0IdXqgo27Sx4jO86rXrXwmZFENtcHTit2DKw9HgmKM3zZaSd3qOqFlZvX7XibFXElH4u
 62Bn1AtiiXhK/wMg+0Mr2FocwmKsJX2qHzEUyKXZosu76wjH82cIlwku7nDJ42tftG1w
 JHDByCEgLLI9A8EGNCDluu2QvOHh93Adpd3QBvkDIuoWQMfkhOI0JP1Yr6WkKRatkDiN
 Ez+g==
X-Gm-Message-State: APjAAAV81nXXAO7yhyCoiaXeIzgf3xEFgJBvT5orhy40PinPU+hOPD9z
 TB0X85ilIsK0fVf3khkX7LYgBNgDVxc=
X-Google-Smtp-Source: APXvYqxuG1jD6XtqASTj/6Pokx6/krwRshKhNCR9F5TP012pZ92GX/I5bwp23IUXU+m2O50QOisbTw==
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr64046750iop.113.1578101326790; 
 Fri, 03 Jan 2020 17:28:46 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id p5sm21304395ilg.69.2020.01.03.17.28.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 17:28:46 -0800 (PST)
Date: Fri, 3 Jan 2020 17:28:44 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: change CSR M/S defines to use "X" for prefix
In-Reply-To: <20191218170603.58256-1-olof@lixom.net>
Message-ID: <alpine.DEB.2.21.9999.2001031723310.283180@viisi.sifive.com>
References: <20191218170603.58256-1-olof@lixom.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_172848_444718_78289CF7 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: damien.lemoal@wdc.com, Albert Ou <aou@eecs.berkeley.edu>,
 jason@lakedaemon.net, maz@kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019, Olof Johansson wrote:

> Commit a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs
> machine mode") introduced new non-S/M-specific defines for some of the
> CSRs and fields that differ for when you run the kernel in machine or
> supervisor mode.
> 
> One of those was "IRQ_TIMER" (instead of IRQ_S_TIMER/IRQ_M_MTIMER),
> which was generic enough to cause conflicts with other defines in
> drivers. Since it was in csr.h, it ended up getting pulled in through
> fairly generic include files, etc.
> 
> I looked at just renaming those, but for consistency I chose to rename all
> M/S symbols to using 'X' instead of 'S'/'M' in the identifiers instead,
> which gives them all less generic names.
> 
> This is pretty churny, and I'm sure there'll be opinions on naming, but
> I figured I'd do the busywork of fixing it up instead of just pointing
> out the conflicts.
> 
> Fixes: a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs machine mode")
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>

Thanks for taking a stab at fixing the issue.  I queued the following 
minimal fix has been queued for v5.5-rc, adding an RV_ prefix to the IRQ_* 
macros.  It may be that we need to do the same thing to the rest of the 
CSRs.  But, based on a quick look, I think we should be OK for the moment.  
Let us know if you have a different point of view.


- Paul

From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Fri, 20 Dec 2019 03:09:49 -0800
Subject: [PATCH] riscv: prefix IRQ_ macro names with an RV_ namespace

"IRQ_TIMER", used in the arch/riscv CSR header file, is a sufficiently
generic macro name that it's used by several source files across the
Linux code base.  Some of these other files ultimately include the
arch/riscv CSR include file, causing collisions.  Fix by prefixing the
RISC-V csr.h IRQ_ macro names with an RV_ prefix.

Fixes: a4c3733d32a72 ("riscv: abstract out CSR names for supervisor vs machine mode")
Reported-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/csr.h      | 18 +++++++++---------
 arch/riscv/kernel/irq.c           |  6 +++---
 drivers/irqchip/irq-sifive-plic.c |  2 +-
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 0a62d2d68455..435b65532e29 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -116,9 +116,9 @@
 # define SR_PIE		SR_MPIE
 # define SR_PP		SR_MPP
 
-# define IRQ_SOFT	IRQ_M_SOFT
-# define IRQ_TIMER	IRQ_M_TIMER
-# define IRQ_EXT	IRQ_M_EXT
+# define RV_IRQ_SOFT		IRQ_M_SOFT
+# define RV_IRQ_TIMER	IRQ_M_TIMER
+# define RV_IRQ_EXT		IRQ_M_EXT
 #else /* CONFIG_RISCV_M_MODE */
 # define CSR_STATUS	CSR_SSTATUS
 # define CSR_IE		CSR_SIE
@@ -133,15 +133,15 @@
 # define SR_PIE		SR_SPIE
 # define SR_PP		SR_SPP
 
-# define IRQ_SOFT	IRQ_S_SOFT
-# define IRQ_TIMER	IRQ_S_TIMER
-# define IRQ_EXT	IRQ_S_EXT
+# define RV_IRQ_SOFT		IRQ_S_SOFT
+# define RV_IRQ_TIMER	IRQ_S_TIMER
+# define RV_IRQ_EXT		IRQ_S_EXT
 #endif /* CONFIG_RISCV_M_MODE */
 
 /* IE/IP (Supervisor/Machine Interrupt Enable/Pending) flags */
-#define IE_SIE		(_AC(0x1, UL) << IRQ_SOFT)
-#define IE_TIE		(_AC(0x1, UL) << IRQ_TIMER)
-#define IE_EIE		(_AC(0x1, UL) << IRQ_EXT)
+#define IE_SIE		(_AC(0x1, UL) << RV_IRQ_SOFT)
+#define IE_TIE		(_AC(0x1, UL) << RV_IRQ_TIMER)
+#define IE_EIE		(_AC(0x1, UL) << RV_IRQ_EXT)
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index 3f07a91d5afb..345c4f2eba13 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -23,11 +23,11 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 
 	irq_enter();
 	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
-	case IRQ_TIMER:
+	case RV_IRQ_TIMER:
 		riscv_timer_interrupt();
 		break;
 #ifdef CONFIG_SMP
-	case IRQ_SOFT:
+	case RV_IRQ_SOFT:
 		/*
 		 * We only use software interrupts to pass IPIs, so if a non-SMP
 		 * system gets one, then we don't know what to do.
@@ -35,7 +35,7 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 		riscv_software_interrupt();
 		break;
 #endif
-	case IRQ_EXT:
+	case RV_IRQ_EXT:
 		handle_arch_irq(regs);
 		break;
 	default:
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 8df547d2d935..0aca5807a119 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -256,7 +256,7 @@ static int __init plic_init(struct device_node *node,
 		 * Skip contexts other than external interrupts for our
 		 * privilege level.
 		 */
-		if (parent.args[0] != IRQ_EXT)
+		if (parent.args[0] != RV_IRQ_EXT)
 			continue;
 
 		hartid = plic_find_hart_id(parent.np);
-- 
2.24.0


