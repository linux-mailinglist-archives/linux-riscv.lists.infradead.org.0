Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1B81E73EC
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 05:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hTUz/DHRU5QzlOedofjSKhyi7eTdoAXNwTWC/Lv5VW0=; b=pJt5SfZsYOovgYWbu0iIwxlqL
	sJbpYFLOSk+52mliIZIjxVkJPxaPJTjMxgfqc0M7wD+zwsjSgmyhG8mkdBV6FkREpQTb9lM/IP1u2
	RBPaUSuGDsrGUsSXBZ7laNPQVh7erzP9Fpsp1k2mAm/VTedZRDf7TibmKUfsFiE9BxWjT0OGtctfR
	G0bXZNYs6SzmFusIqZO9ZN9g1BjIl1QTIb3HoohIe3Qt0JJqqHwWtVXUc3NT44Ofp7LMqcZ2/f/ZV
	92P5CtrKUxnITiA0fvBLSOxrzBhCIhuCJet+WKgxvB6U7neoA23O0adQa6pmGpR+GZbyo1e3KSUNP
	dlJvU7/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeW9T-0002Nn-Tu; Fri, 29 May 2020 03:57:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeW9Q-0002MY-Jc
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 03:57:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id c71so1579675wmd.5
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 20:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hTUz/DHRU5QzlOedofjSKhyi7eTdoAXNwTWC/Lv5VW0=;
 b=eVgRnHVYENb1kH9fslo7+LSj+oDvjrmTb7JfFDZMhrizogMrpyn6CZp7qhtIwI0znX
 yb0CSXeDy2IUyUvmYjvkROmdAyem5Zmr15LCJAJKd7iebKAcGWua6v2vVb8pgbOG4KHE
 r2AFmZHLhIlJWZPcO3Lh9JiR9BtdZXgVCipKZYDBiixlBAwa5U1T0wOEH0IkS/01o45s
 Li6QUoYh0qhEOfk6C2K+Mx+u4qtxQzkYqtbDrjTWyPhYLjVQQemrAReQLtlPgt0tE/Sy
 B4wov3NMpvf5CCBqkQkQF4Zt1NQtJaQYYg07EnTzQhKY0BHr8g324P+6epDLt7bG7TFa
 4nnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hTUz/DHRU5QzlOedofjSKhyi7eTdoAXNwTWC/Lv5VW0=;
 b=lzqc9qyeotFDW4qNiXSjsNBedRefva2VCbkPGVJ6OVdfwaf+hmVIVMk2BrrrsLpFIt
 QwTMVdKWxyV5Y5S8gdPz0Go2AnCka4acBTGRD+IYSzdNp/cxdMiqojKSP1iY0IadadSa
 07RsyShVEwvvJAp0f7Uc7lJNB1zbTYxs3uHcmj/r4wd0DLtG5/BOXDIThs2Xs31TMd7d
 ZrEecMn4UEbypxVfhk3y92EhcrXUgSw8FOgAWxEI0dSQK++IbW3SayOwTv1WfVhmCNDG
 bXx2aLbDAiOUFHVnOwOl34xP4I+ZzxPNBeuzNnfQDdEktTLuXCNalACmtdMTmpJ9yqVM
 oo4Q==
X-Gm-Message-State: AOAM530huLyVUtOoZUUJUf+fBnazH2TOdE5FOCEWnk9OxKfbWL21ujVf
 mDxmU2uQdrErewPh+6jcBqIH4ZIPyBc6a1NMhhwkPg==
X-Google-Smtp-Source: ABdhPJyEoFD5JPpXQvMjSGeKZ0rm6eFwCWwPVyfb29G+qBk0LcMuS7b5AsH7dE+2YoIKzqwAZdNJK8dah8V1U2gjaks=
X-Received: by 2002:a1c:9ac1:: with SMTP id c184mr6263627wme.152.1590724658339; 
 Thu, 28 May 2020 20:57:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <mhng-72b70f0c-28d7-425b-b45a-a132cf27e894@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-72b70f0c-28d7-425b-b45a-a132cf27e894@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 29 May 2020 09:27:26 +0530
Message-ID: <CAAhSdy0zXh46P5WPZHmQ_PjwfOEWkh77EZ-_CroH1Eb1c3fDJg@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
To: Palmer Dabbelt <palmer@dabbelt.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_205744_699396_5B1E31D5 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 12:17 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Thu, 21 May 2020 06:32:55 PDT (-0700), Anup Patel wrote:
> > This patchset provides a new RISC-V Local Interrupt Controller Driver
> > for managing per-CPU local interrupts. The overall approach is inspired
> > from the way per-CPU local interrupts are handled by Linux ARM64 and
> > ARM GICv3 driver.
> >
> > Few advantages of this new driver over previous one are:
> > 1. All local interrupts are registered as per-CPU interrupts
> > 2. The RISC-V timer driver can register timer interrupt handler
> >    using kernel irq subsystem without relying on arch/riscv to
> >    explicitly call it's interrupt handler
> > 3. The KVM RISC-V can use this driver to implement interrupt
> >    handler for per-HART guest external interrupt defined by
> >    the RISC-V H-Extension
> > 4. In future, we can develop drivers for devices with per-HART
> >    interrupts without changing arch code or this driver (example,
> >    CLINT timer driver for RISC-V M-mode kernel)
> >
> > With this patchset, output of "cat /proc/interrupts" looks as follows:
> >            CPU0       CPU1       CPU2       CPU3
> >   2:        379          0          0          0  SiFive PLIC  10  ttyS0
> >   3:        591          0          0          0  SiFive PLIC   8  virtio0
> >   5:       5079      10821       8435      12984  RISC-V INTC   5  riscv-timer
> > IPI0:      2045       2537        891        870  Rescheduling interrupts
> > IPI1:         9        269         91        168  Function call interrupts
> > IPI2:         0          0          0          0  CPU stop interrupts
> >
> > The patchset is based up Linux-5.7-rc6 and can be found at riscv_intc_v5
> > branch of: https://github.com/avpatel/linux.git
> >
> > This series is tested on:
> >  1. QEMU RV64 virt machine using Linux RISC-V S-mode
> >  2. QEMU RV32 virt machine using Linux RISC-V S-mode
> >  3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)
> >
> > Changes since v4:
> >  - Rebased to Linux-5.7-rc6 and multi-PLIC improvement patches
> >  - Added separate patch to force select RISCV_INTC for CONFIG_RISCV
> >  - Fixed the driver for Linux RISC-V NoMMU
> >
> > Changes since v3:
> >  - Rebased to Linux-5.6-rc5 and Atish's PLIC patches
> >  - Added separate patch to rename and move plic_find_hart_id()
> >    to arch directory
> >  - Use riscv_of_parent_hartid() in riscv_intc_init() instead of
> >    atomic counter
> >
> > Changes since v2:
> >  - Dropped PATCH2 since it was merged long-time back
> >  - Rebased series from Linux-4.19-rc2 to Linux-5.6-rc2
> >
> > Changes since v1:
> >  - Removed changes related to puggable IPI triggering
> >  - Separate patch for self-contained IPI handling routine
> >  - Removed patch for GENERIC_IRQ kconfig options
> >  - Added patch to remove do_IRQ() function
> >  - Rebased upon Atish's SMP patches
> >
> > Anup Patel (6):
> >   RISC-V: self-contained IPI handling routine
> >   RISC-V: Rename and move plic_find_hart_id() to arch directory
> >   irqchip: RISC-V per-HART local interrupt controller driver
> >   clocksource/drivers/timer-riscv: Use per-CPU timer interrupt
> >   RISC-V: Remove do_IRQ() function
> >   RISC-V: Force select RISCV_INTC for CONFIG_RISCV
> >
> >  arch/riscv/Kconfig                     |   2 +
> >  arch/riscv/include/asm/irq.h           |   5 -
> >  arch/riscv/include/asm/processor.h     |   1 +
> >  arch/riscv/include/asm/smp.h           |   3 +
> >  arch/riscv/kernel/cpu.c                |  16 +++
> >  arch/riscv/kernel/entry.S              |   4 +-
> >  arch/riscv/kernel/irq.c                |  33 +-----
> >  arch/riscv/kernel/smp.c                |  11 +-
> >  arch/riscv/kernel/traps.c              |   2 -
> >  drivers/clocksource/timer-riscv.c      |  30 ++++-
> >  drivers/irqchip/Kconfig                |  13 +++
> >  drivers/irqchip/Makefile               |   1 +
> >  drivers/irqchip/irq-riscv-intc.c       | 150 +++++++++++++++++++++++++
> >  drivers/irqchip/irq-sifive-plic.c      |  52 +++++----
> >  include/linux/cpuhotplug.h             |   1 +
> >  include/linux/irqchip/irq-riscv-intc.h |  20 ++++
> >  16 files changed, 280 insertions(+), 64 deletions(-)
> >  create mode 100644 drivers/irqchip/irq-riscv-intc.c
> >  create mode 100644 include/linux/irqchip/irq-riscv-intc.h
>
> So I read through this a bit, and while I haven't gone through every line of
> code I'm somewhat inclined toward taking it.
>
> During the original RISC-V port submission we went back and forth between
> having this first-level interrupt controller in arch/riscv/ vs
> drivers/irqchip/.  The original deciding factor was that the ISA mandated the
> interrupt controller, but as that's proving to be less and less the case every
> day (with the CLIC and M-mode Linux) it certainly seem sane to move all our
> interrupt controller drivers out of arch/riscv/.
>
> This is certainly a step in the right direction, and it handles some of the
> more glaring issues (iscv_timer_interrupt and lacking IRQs for the CLINT).  I
> think we should just go ahead and merge it, even though there might be some
> more refactoring to do when we eventually end up with another interrupt
> controller.
>
> I think it's best if this all goes in through a single tree, as it seems more
> work than it's worth to split it up.  I'm happy to take it through my tree if
> that's OK with the irqchip folks?

A small heads up...

Marc has queued a few PLIC improvement patches for Linux-next.
(https://patchwork.kernel.org/cover/11555051/)

This series (particularly PATCH3) is based upon above mentioned
PLIC patches.

Apart from above, I don't see any potential merge conflicts.

Regards,
Anup

