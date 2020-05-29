Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C901E7460
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 06:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8zvB/PWAc03/bXy1kS3cVXZDBJ6t9o/VOp1x3C8nEAM=; b=oja/+biZjxe3lQ
	j+lOEFOQ/h0gcSJVgkMuMKFcxhU5rrmJavOIqE6JfRK6sghpRXtAVIVGFj5MfoGJasTzdcDu/gJU5
	G2uKynmlz73jWvbGRsLDsvC1WoijQWmE04wF+Gcs84aB1f6yOKHkdcRTpRC9lm00UO03kF2XfKip2
	NyGYnXcrbbNtVtIcgtzNFW9KyGr9NZwWLh80RGl8OjnT1jHHqR8XOd69ChgjWhQVvWCtIGDCqt/ex
	EFZ5+rxqGWBhXjbWlSfsN+1WcaAgh+PF9E9fA6KUQthwIF0S6guV/YCNon1YRTQu4P9JSg686u2i4
	NxmcPbj0YrY9xwCMSluw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWOj-0003bh-5i; Fri, 29 May 2020 04:13:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWOf-0003bM-LV
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 04:13:31 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z15so2732172pjb.0
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 21:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=8zvB/PWAc03/bXy1kS3cVXZDBJ6t9o/VOp1x3C8nEAM=;
 b=kSV77T3NXq16MQtfa4cFHHytD4QGyxt1vZA31i8c3Bv1LkvDS71htb2ZSvCgi1EElX
 nyAJiQm8K8PKMfhiHiKG9c6m7d7saRI6YXQN5Z4V5pmUlhee0VQA486CEin6d7o00hQM
 6+OE/cRhPm1BAMcPB/9Zd8YOcmh+TzQFxfq3M3PZlmlSiUNafDfGYxE1O9uetskl2J2o
 dcjb7bC798Bx8eEzT3c7CyTF0792g2Jgw+tS6/AwjVXnuqvMdbDOwHCAMRofU8ZYw/mX
 Ht9n89AbS852fp6Hm4zwmwmwQjvpidVz/C/GomqfJmUwLMsufHxfMfvWrkaDOBekrAXN
 bSAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=8zvB/PWAc03/bXy1kS3cVXZDBJ6t9o/VOp1x3C8nEAM=;
 b=MzhwKPFY2EUPCisVdKYsRQQp2loo4CYzc9aIXQwObGEfl4nuYUcNKqz8girMj+1mAq
 U1lxxoQcgc9I/hFHslSjWOaiRJLvwjCCnru5dz2Yl+H/MppN7xS32h5oD5w+0fpxl/BG
 vPIKRn/Uj3E7OptRtLdbcj1poQI1GHnA1xynsjH6hMgYG99zU9oqS83EY4EndZ+DlXoI
 JFuZu9pZFMdL7wzw+LaC8jI7F0d3MdNLcZ5lsTPiaagny9sbnKWRXVRMSK05qFevoS88
 sVIPBTFlev0K7ZkWNYfKwDsCoehM3UXXyzSa9zIdQ6hsYcZLSlFNN8wqfG5WVWZQBCGz
 Pumw==
X-Gm-Message-State: AOAM531M/end73OnNGWfNrCSZ/lwbUNx3IPnIbt6fC1LHU+zVNwKDuQ1
 pfjN+0wEbExx4GJ7oWFF8IX8gfENrJqOdQ==
X-Google-Smtp-Source: ABdhPJx63TYCmfV45ENv6rkFK3AOMfUO0iJ3vD4RLOgwxG6k61GLZINXBWYJBBpsoMr0tkb95GHDWA==
X-Received: by 2002:a17:902:d90c:: with SMTP id
 c12mr6810664plz.113.1590725608366; 
 Thu, 28 May 2020 21:13:28 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id c2sm7304799pjg.51.2020.05.28.21.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 21:13:27 -0700 (PDT)
Date: Thu, 28 May 2020 21:13:27 -0700 (PDT)
X-Google-Original-Date: Thu, 28 May 2020 21:13:24 PDT (-0700)
Subject: Re: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
In-Reply-To: <CAAhSdy0zXh46P5WPZHmQ_PjwfOEWkh77EZ-_CroH1Eb1c3fDJg@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: anup@brainfault.org
Message-ID: <mhng-69ba2cf1-862f-49fc-ab79-eda329f69aee@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_211329_744892_1328209C 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: daniel.lezcano@linaro.org, jason@lakedaemon.net,
 Marc Zyngier <maz@kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 aou@eecs.berkeley.edu, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 20:57:26 PDT (-0700), anup@brainfault.org wrote:
> On Thu, May 28, 2020 at 12:17 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> On Thu, 21 May 2020 06:32:55 PDT (-0700), Anup Patel wrote:
>> > This patchset provides a new RISC-V Local Interrupt Controller Driver
>> > for managing per-CPU local interrupts. The overall approach is inspired
>> > from the way per-CPU local interrupts are handled by Linux ARM64 and
>> > ARM GICv3 driver.
>> >
>> > Few advantages of this new driver over previous one are:
>> > 1. All local interrupts are registered as per-CPU interrupts
>> > 2. The RISC-V timer driver can register timer interrupt handler
>> >    using kernel irq subsystem without relying on arch/riscv to
>> >    explicitly call it's interrupt handler
>> > 3. The KVM RISC-V can use this driver to implement interrupt
>> >    handler for per-HART guest external interrupt defined by
>> >    the RISC-V H-Extension
>> > 4. In future, we can develop drivers for devices with per-HART
>> >    interrupts without changing arch code or this driver (example,
>> >    CLINT timer driver for RISC-V M-mode kernel)
>> >
>> > With this patchset, output of "cat /proc/interrupts" looks as follows:
>> >            CPU0       CPU1       CPU2       CPU3
>> >   2:        379          0          0          0  SiFive PLIC  10  ttyS0
>> >   3:        591          0          0          0  SiFive PLIC   8  virtio0
>> >   5:       5079      10821       8435      12984  RISC-V INTC   5  riscv-timer
>> > IPI0:      2045       2537        891        870  Rescheduling interrupts
>> > IPI1:         9        269         91        168  Function call interrupts
>> > IPI2:         0          0          0          0  CPU stop interrupts
>> >
>> > The patchset is based up Linux-5.7-rc6 and can be found at riscv_intc_v5
>> > branch of: https://github.com/avpatel/linux.git
>> >
>> > This series is tested on:
>> >  1. QEMU RV64 virt machine using Linux RISC-V S-mode
>> >  2. QEMU RV32 virt machine using Linux RISC-V S-mode
>> >  3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)
>> >
>> > Changes since v4:
>> >  - Rebased to Linux-5.7-rc6 and multi-PLIC improvement patches
>> >  - Added separate patch to force select RISCV_INTC for CONFIG_RISCV
>> >  - Fixed the driver for Linux RISC-V NoMMU
>> >
>> > Changes since v3:
>> >  - Rebased to Linux-5.6-rc5 and Atish's PLIC patches
>> >  - Added separate patch to rename and move plic_find_hart_id()
>> >    to arch directory
>> >  - Use riscv_of_parent_hartid() in riscv_intc_init() instead of
>> >    atomic counter
>> >
>> > Changes since v2:
>> >  - Dropped PATCH2 since it was merged long-time back
>> >  - Rebased series from Linux-4.19-rc2 to Linux-5.6-rc2
>> >
>> > Changes since v1:
>> >  - Removed changes related to puggable IPI triggering
>> >  - Separate patch for self-contained IPI handling routine
>> >  - Removed patch for GENERIC_IRQ kconfig options
>> >  - Added patch to remove do_IRQ() function
>> >  - Rebased upon Atish's SMP patches
>> >
>> > Anup Patel (6):
>> >   RISC-V: self-contained IPI handling routine
>> >   RISC-V: Rename and move plic_find_hart_id() to arch directory
>> >   irqchip: RISC-V per-HART local interrupt controller driver
>> >   clocksource/drivers/timer-riscv: Use per-CPU timer interrupt
>> >   RISC-V: Remove do_IRQ() function
>> >   RISC-V: Force select RISCV_INTC for CONFIG_RISCV
>> >
>> >  arch/riscv/Kconfig                     |   2 +
>> >  arch/riscv/include/asm/irq.h           |   5 -
>> >  arch/riscv/include/asm/processor.h     |   1 +
>> >  arch/riscv/include/asm/smp.h           |   3 +
>> >  arch/riscv/kernel/cpu.c                |  16 +++
>> >  arch/riscv/kernel/entry.S              |   4 +-
>> >  arch/riscv/kernel/irq.c                |  33 +-----
>> >  arch/riscv/kernel/smp.c                |  11 +-
>> >  arch/riscv/kernel/traps.c              |   2 -
>> >  drivers/clocksource/timer-riscv.c      |  30 ++++-
>> >  drivers/irqchip/Kconfig                |  13 +++
>> >  drivers/irqchip/Makefile               |   1 +
>> >  drivers/irqchip/irq-riscv-intc.c       | 150 +++++++++++++++++++++++++
>> >  drivers/irqchip/irq-sifive-plic.c      |  52 +++++----
>> >  include/linux/cpuhotplug.h             |   1 +
>> >  include/linux/irqchip/irq-riscv-intc.h |  20 ++++
>> >  16 files changed, 280 insertions(+), 64 deletions(-)
>> >  create mode 100644 drivers/irqchip/irq-riscv-intc.c
>> >  create mode 100644 include/linux/irqchip/irq-riscv-intc.h
>>
>> So I read through this a bit, and while I haven't gone through every line of
>> code I'm somewhat inclined toward taking it.
>>
>> During the original RISC-V port submission we went back and forth between
>> having this first-level interrupt controller in arch/riscv/ vs
>> drivers/irqchip/.  The original deciding factor was that the ISA mandated the
>> interrupt controller, but as that's proving to be less and less the case every
>> day (with the CLIC and M-mode Linux) it certainly seem sane to move all our
>> interrupt controller drivers out of arch/riscv/.
>>
>> This is certainly a step in the right direction, and it handles some of the
>> more glaring issues (iscv_timer_interrupt and lacking IRQs for the CLINT).  I
>> think we should just go ahead and merge it, even though there might be some
>> more refactoring to do when we eventually end up with another interrupt
>> controller.
>>
>> I think it's best if this all goes in through a single tree, as it seems more
>> work than it's worth to split it up.  I'm happy to take it through my tree if
>> that's OK with the irqchip folks?
>
> A small heads up...
>
> Marc has queued a few PLIC improvement patches for Linux-next.
> (https://patchwork.kernel.org/cover/11555051/)
>
> This series (particularly PATCH3) is based upon above mentioned
> PLIC patches.
>
> Apart from above, I don't see any potential merge conflicts.

Thanks.  I hit some merge issues when pulling it into a staging branch, but
nothing seemed interesting.  I think the best bet here is to just pull it in
through the RISC-V tree.

Aside from this, I'm ready to send out my first 5.8 PR.  I'm going to put this
on a staging branch and send it up as a second 5.8 merge window PR once
everything else settles.  IIRC our other irqchip changes have been around for a
while, so they should be going up early in the merge window.

LMK if anyone has issues with that.

>
> Regards,
> Anup

