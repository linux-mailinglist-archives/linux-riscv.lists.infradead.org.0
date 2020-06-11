Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FF41F6D0B
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 19:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8+o9YdUy1R3iGSXvhBrlmrEImQIeD4lan+/ShhbGSCU=; b=rhxvek03C2aAKQ
	5XWi/diZGNb945OQkfibDHtIiovyqYBXwxjIOk/dFtoLYmDqIBTB1ba5B3vSkyEgrCmMRtrkWA4BO
	6rMNjYj1VfiQBUMmg/fpNM/XcMcsk+3FP54bL+YOLOMqQvu+MJuPZeGLspHBr01xUSn9q1dtamewQ
	dJeYMRwne96uYh7hVLkRKmfH/lqjh2LxQJhY0kWQApBjJhFL1Zyb3o4KJAO9bM4ocVdy60yDuvQXZ
	6hPhZWCNKtvItVqQyu+7XnQTu2pAqcsRzWqQxhPfnBdpGp15h6qOjgs00VO72hksW3ikEWA+JdJbd
	cwmDQ3tU5sDZ7W+0IyfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjRP1-0007L1-Dc; Thu, 11 Jun 2020 17:54:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjROu-0007FE-OQ
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 17:54:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id 23so2977519pfw.10
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 10:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=8+o9YdUy1R3iGSXvhBrlmrEImQIeD4lan+/ShhbGSCU=;
 b=XYmWm9CQ1xjUBY6mMcgBCGNdhwi1oLpwDJXaiw/I9Y63S+L4+OwbnmHzI2FTk3gJdk
 OOVdZ/LjZi1tg9kUvSPcrAyIMFQ8nBsGoXiLX+v6ENyyEYdqH5+qOleChI+xeVclXSj9
 nXmz/tNy1XGvhuOXf98IioiGRyWYe+qqVyB9f4BvlqlI5nWtlMOMdT8B12YlIE5QKlIu
 fVJANzM88Q39QOLLHp18q70G9i0AxvyoAIuazqFgkuGMycKwl8qH0oNw4r1659IniAYJ
 UPJOjDfCtFHWIrTonR5wUXxjQEkbD2XNq2QzPdFD7BiWN9MRt2aSl1whU7RNSrvFX0dF
 4iAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=8+o9YdUy1R3iGSXvhBrlmrEImQIeD4lan+/ShhbGSCU=;
 b=NDjYlcv5Rrwzy/DxsAP3Bx/5GtNYKT+Q8gTBwMzdRW0hwwArUZ5R8O8/amP9iIEeg+
 gOIHsjEGW36/U6HwWCz9QnBaqNWINu8gVpfTldY30iFDMqf584xgdtqlx/lu8FgrofbE
 VtK6/lwepgLnRMr+5ZRnHtWZM5fe1R7i/Kr4ObBEChcWvjvW3/1QO6+mPxyL2K5NHFfo
 m8qQwa2OA9NjApHhIX/cdh8Kv4s5Kf4s8YLwu6tbOndy+s5cD9LQRquz+8kow/T3aNSZ
 +EZs4Fodz1OF7Cm+aomqmJaRXdye5vwute8LZbZPrVEQmDEt3KNq8/x2DtWH/4PjUCr0
 uiew==
X-Gm-Message-State: AOAM531VOWm5xFBp8rJM1y7y4OFEYYiyqBGe7LCmGiOK56ybhdzJpvLO
 AbnGenw3mIBAlGWh+mnzmBKVmA==
X-Google-Smtp-Source: ABdhPJyp4yQTpDezyVJ9iCZdYTisudhAEoGsZdHysnNs+sDyltgcq02GQmvi7JwQ5WX3APidRZZjpA==
X-Received: by 2002:a63:e707:: with SMTP id b7mr1741074pgi.35.1591898041804;
 Thu, 11 Jun 2020 10:54:01 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id m10sm3234324pjs.27.2020.06.11.10.54.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 10:54:00 -0700 (PDT)
Date: Thu, 11 Jun 2020 10:54:00 -0700 (PDT)
X-Google-Original-Date: Thu, 11 Jun 2020 10:49:50 PDT (-0700)
Subject: Re: [PATCH v8 0/6] New RISC-V Local Interrupt Controller Driver
In-Reply-To: <20200611061350.434293-1-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-dd6e3d07-ef2d-4338-863a-84e83dc9be7e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_105404_790452_9C1FA672 
X-CRM114-Status: GOOD (  21.87  )
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
Cc: aou@eecs.berkeley.edu, jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>,
 anup@brainfault.org, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 23:13:44 PDT (-0700), Anup Patel wrote:
> This patchset provides a new RISC-V Local Interrupt Controller Driver
> for managing per-CPU local interrupts. The overall approach is inspired
> from the way per-CPU local interrupts are handled by Linux ARM64 and
> ARM GICv3 driver.
>
> It is a major re-write over perviously submitted version.
> (Refer, https://www.spinics.net/lists/devicetree/msg241230.html)
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
> The patchset is based upon Linux-5.7 and can be found at riscv_intc_v7
> branch of: https://github.com/avpatel/linux.git
>
> This series is tested on:
>  1. QEMU RV64 virt machine using Linux RISC-V S-mode
>  2. QEMU RV32 virt machine using Linux RISC-V S-mode
>  3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)
>
> Changes since v7:
>  - Rebased on Linux-5.7 release
>  - Minor typo-fix in pr_warn() of PATCH3

My PR was tagged before v8 was sent out, and while I haven't sent it yet (I
like to give the autobuilders at least a day to chew on it) I don't want to
re-spin everything this late in the merge window for a spelling issue in a
warning message.  I'll split the fix out as its own patch.

Thanks for fixing it, though!

> Changes since v6:
>  - Rebased patches on Linux-5.7 and tested with runtime CPU hotplug
>  - Minor changes in PATCH3 as suggested by Marc Z
>  - Don't programm PLIC threshold for CPU_OFF in PATCH3
>  - Simplified finding IRQ domain in riscv_timer_init_dt() of PATCH4
>
> Changes since v5:
>  - Rebased to Linux-5.7-rc7 with PLIC improvement patches
>  - Removed riscv_of_parent_hartid() from PATCH3
>  - Addressed other minor comments from Palmer and Marc Z
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
>  arch/riscv/Kconfig                 |   2 +
>  arch/riscv/include/asm/irq.h       |   5 --
>  arch/riscv/include/asm/processor.h |   1 +
>  arch/riscv/include/asm/smp.h       |   3 +
>  arch/riscv/kernel/cpu.c            |  16 ++++
>  arch/riscv/kernel/entry.S          |   4 +-
>  arch/riscv/kernel/irq.c            |  33 +------
>  arch/riscv/kernel/smp.c            |  11 ++-
>  arch/riscv/kernel/traps.c          |   2 -
>  drivers/clocksource/timer-riscv.c  |  43 ++++++++-
>  drivers/irqchip/Kconfig            |  13 +++
>  drivers/irqchip/Makefile           |   1 +
>  drivers/irqchip/irq-riscv-intc.c   | 138 +++++++++++++++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c  |  44 ++++-----
>  include/linux/cpuhotplug.h         |   1 +
>  15 files changed, 252 insertions(+), 65 deletions(-)
>  create mode 100644 drivers/irqchip/irq-riscv-intc.c

