Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF831E4D40
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 20:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xlHCAxvXvnuDbx0LkafhQpSZagEzXc+hc5LOPcq5Huw=; b=sB9g3iuhJwOpVF
	NMl7qJbAQt4tVbeF0fDkkQC0oJND5mJxSOssQ2b4+mx9B2f9LvpSYPFUW9C1RNXhK/FJkE3i7eoAV
	blyJ8qduZGgWVtkQQ1UitkXJwWMTINfbSzhSaal5oHE06RYFs5myFr3ZSMAa8Sx2+9WTN5bkOL4Sq
	4bpItsGZy9ZAfOxY0/OI+AmWa2L9CzdbTm1F49iX65w4p4SM23J3VL2Do0SkqIL3UuHPjoHBYU3DA
	zIljD/jrIVa6DhOlfTxIF7+LjWQez4OtHb0+I0AjP2vNUwpLUUpEBuCq55sabVF7vlwpI0AaU3udX
	etGeSVpjBH8mCPV3ayZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je159-0000qn-Q2; Wed, 27 May 2020 18:47:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je155-0000q0-E0
 for linux-riscv@lists.infradead.org; Wed, 27 May 2020 18:47:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id j21so12230335pgb.7
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 11:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=xlHCAxvXvnuDbx0LkafhQpSZagEzXc+hc5LOPcq5Huw=;
 b=BD08Vr27SDUI759X2/UqI1hW2/32hH0/i8frIg+EhBZ/AevuWNbGas3DT56FFR6Flz
 2W0hGsXHAq7NDZWE9C5YDABXpA2HBtcO7W+BEB3fV51ryWTU4J976+wC4/A0iXB6HPo6
 CKbDaFDF4Nkzc6j1uGIfnj8HNKXwjkl9eBdWnwY87w9w+HKjbu5JiQPEcVIea9xqc2B7
 as3YqS/wuTL+IiCnoYcoimaAhuckWqh9eOJAHsAZN5c6OeePPU8qvt+wSN8o65JsRada
 BqeRDUYhOuoODA+IdrzkmfSz3wgzh+vK51WHKs8F8gLWvuNThFdJexkr+mWABOJjhqdI
 G3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=xlHCAxvXvnuDbx0LkafhQpSZagEzXc+hc5LOPcq5Huw=;
 b=iGSilaHny2mcUfC/VWssDH9NonZNql38q34bnLp887rB3O6iJk/XcdlMAbCb7xWy+s
 AR/l1+nK2Eam+hvoyY/SgxCOZyo7XHgR3YcaQXODG0zTNBUGRY2PnX/zM/BznJ/YYcO4
 sod5YVjFhhFF1ojB4hkcddIF+OGM92vu2QlX2yRAQqAKPQQggRVKyMcRp2yqRNGYmfPV
 1oJAMT0CxtBqEK3nqnkvGP9nwyovTv0U72IjA6A/sSpcldVOAZOgD4CSPR0HEe1jOS3E
 jOTE0BfZVaI/utYy7YlkKcmSjAe6AMDB0UPFoGx6u2NZ1tyzWxwhpyFFPWrU3rireZ6X
 kPNQ==
X-Gm-Message-State: AOAM533yekELvPYOmNrMs6R3dHLFhuz3MvlPBD5DlvY/ML2EkataOM6Y
 MVy7zlJC6BYEPFisdr5TWE7KZg==
X-Google-Smtp-Source: ABdhPJzj7M85gwVANBohrhiJQMHP/qpccC0sSzvYrm6/sSpUBXen3o0geu4j+W4sR1NwhKqWavykzA==
X-Received: by 2002:a05:6a00:a:: with SMTP id
 h10mr5467299pfk.310.1590605229930; 
 Wed, 27 May 2020 11:47:09 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id i8sm2578841pgr.82.2020.05.27.11.47.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 11:47:08 -0700 (PDT)
Date: Wed, 27 May 2020 11:47:08 -0700 (PDT)
X-Google-Original-Date: Wed, 27 May 2020 11:47:01 PDT (-0700)
Subject: Re: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
In-Reply-To: <20200521133301.816665-1-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>, Marc Zyngier <maz@kernel.org>
Message-ID: <mhng-72b70f0c-28d7-425b-b45a-a132cf27e894@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_114711_513307_7CF15599 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: aou@eecs.berkeley.edu, jason@lakedaemon.net, anup@brainfault.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 06:32:55 PDT (-0700), Anup Patel wrote:
> This patchset provides a new RISC-V Local Interrupt Controller Driver
> for managing per-CPU local interrupts. The overall approach is inspired
> from the way per-CPU local interrupts are handled by Linux ARM64 and
> ARM GICv3 driver.
>
> Few advantages of this new driver over previous one are:
> 1. All local interrupts are registered as per-CPU interrupts
> 2. The RISC-V timer driver can register timer interrupt handler
>    using kernel irq subsystem without relying on arch/riscv to
>    explicitly call it's interrupt handler
> 3. The KVM RISC-V can use this driver to implement interrupt
>    handler for per-HART guest external interrupt defined by
>    the RISC-V H-Extension
> 4. In future, we can develop drivers for devices with per-HART
>    interrupts without changing arch code or this driver (example,
>    CLINT timer driver for RISC-V M-mode kernel)
>
> With this patchset, output of "cat /proc/interrupts" looks as follows:
>            CPU0       CPU1       CPU2       CPU3
>   2:        379          0          0          0  SiFive PLIC  10  ttyS0
>   3:        591          0          0          0  SiFive PLIC   8  virtio0
>   5:       5079      10821       8435      12984  RISC-V INTC   5  riscv-timer
> IPI0:      2045       2537        891        870  Rescheduling interrupts
> IPI1:         9        269         91        168  Function call interrupts
> IPI2:         0          0          0          0  CPU stop interrupts
>
> The patchset is based up Linux-5.7-rc6 and can be found at riscv_intc_v5
> branch of: https://github.com/avpatel/linux.git
>
> This series is tested on:
>  1. QEMU RV64 virt machine using Linux RISC-V S-mode
>  2. QEMU RV32 virt machine using Linux RISC-V S-mode
>  3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)
>
> Changes since v4:
>  - Rebased to Linux-5.7-rc6 and multi-PLIC improvement patches
>  - Added separate patch to force select RISCV_INTC for CONFIG_RISCV
>  - Fixed the driver for Linux RISC-V NoMMU
>
> Changes since v3:
>  - Rebased to Linux-5.6-rc5 and Atish's PLIC patches
>  - Added separate patch to rename and move plic_find_hart_id()
>    to arch directory
>  - Use riscv_of_parent_hartid() in riscv_intc_init() instead of
>    atomic counter
>
> Changes since v2:
>  - Dropped PATCH2 since it was merged long-time back
>  - Rebased series from Linux-4.19-rc2 to Linux-5.6-rc2
>
> Changes since v1:
>  - Removed changes related to puggable IPI triggering
>  - Separate patch for self-contained IPI handling routine
>  - Removed patch for GENERIC_IRQ kconfig options
>  - Added patch to remove do_IRQ() function
>  - Rebased upon Atish's SMP patches
>
> Anup Patel (6):
>   RISC-V: self-contained IPI handling routine
>   RISC-V: Rename and move plic_find_hart_id() to arch directory
>   irqchip: RISC-V per-HART local interrupt controller driver
>   clocksource/drivers/timer-riscv: Use per-CPU timer interrupt
>   RISC-V: Remove do_IRQ() function
>   RISC-V: Force select RISCV_INTC for CONFIG_RISCV
>
>  arch/riscv/Kconfig                     |   2 +
>  arch/riscv/include/asm/irq.h           |   5 -
>  arch/riscv/include/asm/processor.h     |   1 +
>  arch/riscv/include/asm/smp.h           |   3 +
>  arch/riscv/kernel/cpu.c                |  16 +++
>  arch/riscv/kernel/entry.S              |   4 +-
>  arch/riscv/kernel/irq.c                |  33 +-----
>  arch/riscv/kernel/smp.c                |  11 +-
>  arch/riscv/kernel/traps.c              |   2 -
>  drivers/clocksource/timer-riscv.c      |  30 ++++-
>  drivers/irqchip/Kconfig                |  13 +++
>  drivers/irqchip/Makefile               |   1 +
>  drivers/irqchip/irq-riscv-intc.c       | 150 +++++++++++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c      |  52 +++++----
>  include/linux/cpuhotplug.h             |   1 +
>  include/linux/irqchip/irq-riscv-intc.h |  20 ++++
>  16 files changed, 280 insertions(+), 64 deletions(-)
>  create mode 100644 drivers/irqchip/irq-riscv-intc.c
>  create mode 100644 include/linux/irqchip/irq-riscv-intc.h

So I read through this a bit, and while I haven't gone through every line of
code I'm somewhat inclined toward taking it.

During the original RISC-V port submission we went back and forth between
having this first-level interrupt controller in arch/riscv/ vs
drivers/irqchip/.  The original deciding factor was that the ISA mandated the
interrupt controller, but as that's proving to be less and less the case every
day (with the CLIC and M-mode Linux) it certainly seem sane to move all our
interrupt controller drivers out of arch/riscv/.

This is certainly a step in the right direction, and it handles some of the
more glaring issues (iscv_timer_interrupt and lacking IRQs for the CLINT).  I
think we should just go ahead and merge it, even though there might be some
more refactoring to do when we eventually end up with another interrupt
controller.

I think it's best if this all goes in through a single tree, as it seems more
work than it's worth to split it up.  I'm happy to take it through my tree if
that's OK with the irqchip folks?

