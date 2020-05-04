Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0E31C4853
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 22:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=F1uvQ9bGhdQ/yhUUa3roSZ+Z4IuJcwG0ORfg/lzKzBM=; b=KAnXhXt/NVbj2G
	HEtJMneD4ciwKDHnzk+QvTAM8w3yPb0siZfwQoC5oTO5+UTAucFc8l4h/79Uj/ah7mpMnUYzCWaTC
	k5sKGrWcA3doPJ0LEM6KnYF/cda7DRXC+r1TVafueBwcQY4texhLq/Yxxh9Ac1FgUIt+RVBWsYz9t
	4YzT2olLbrPf4K1j06ynUvdqsnFbfcrcWcwhPZZY/Q5nAEG7H4X6T56NTuCpNYyx/UB7TyA7NFvQN
	2bb7wrpGzMQLBSMzbciquYxydQwbUmdozCzGCJFYiLmEr/RxYGPP4R8Lvb/qcXeWCjL+qlp9OgJtN
	Z22LaXzp2yS4EAmB2QRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhkq-0002yE-6W; Mon, 04 May 2020 20:31:56 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhkl-0002uL-VN
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 20:31:53 +0000
Received: by mail-pj1-x1044.google.com with SMTP id y6so476992pjc.4
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 13:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=F1uvQ9bGhdQ/yhUUa3roSZ+Z4IuJcwG0ORfg/lzKzBM=;
 b=bBb5YMjzjOanLzUbjMbgfPWgiSEFZPAA8SwX81aRcKaywvq65px4bVleXJRvKp0taN
 X3UsoANhs5dpvuTVsrZwbVGnez4l03fZOtDeo1fA2GTRjx1vbQ8kzUsjBQ6L+y5RC1Rd
 fwMbHfsFfg6yfAls3pYS8uuiUCcaTU0UzxYNpqo1gPnGEHhl3jLn8PFcchSlkToJ8Hne
 tsyhA/de59tCHKJ+HLCX7hPiyxF0XEJNh+MMoUcMVoBVP50ZQifz9WOyINzfY525symt
 vJjxvgMJwLfbKZkdWmDSu1YLCOOaCdVV8NNKMGsvCktK+OFeGqep0HhQLSGwtRtLL3AG
 9APg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=F1uvQ9bGhdQ/yhUUa3roSZ+Z4IuJcwG0ORfg/lzKzBM=;
 b=Ari/godku8eGplnIHHTal51RDI6ZBLvl58MUR9AYHeEPiRkbO33qP0JVXTg9pifeoO
 wECdvfWN/CQzsqj1jj7M1papdPv/Oc4w9dZzmw35GUgNVSZEeBUkOdUxYx3bT+0KAuQ2
 waX4v9qC9tMydCVBULrRjMceEp8em72ozOBH/gx8ZssMnOLGfOxlK7EJvJmPPJ5yYBx5
 uCdAmkSzbFOYE61TZfQDdsFyqBNMLMjvNNftlj1Au2LzxbFQcO+6EFIF/2zF+yi5YimV
 YpF84bF3czPEu3LDdc7dfEYPIsVynIaGcZGjOEHtk29qY7E47AFbbVv2ph+OvvgWEtP1
 3jAQ==
X-Gm-Message-State: AGi0PuaIBUzFNpSjiStoAcFL+Mw0yMYUlRiGg+XAsl52e/Jm0/YfJ74o
 l5cn6detTDbZzXyRJJP5pO6hQyrJnYwB0w==
X-Google-Smtp-Source: APiQypJ6dTh/VMp8DDNJ3qH+LjiBjMlqg/l3N//7lUwhB1g0gPuun3ZxcMchQI9sJEZfuIPyOJfBVg==
X-Received: by 2002:a17:90a:c385:: with SMTP id h5mr29140pjt.52.1588624310669; 
 Mon, 04 May 2020 13:31:50 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id y16sm9806456pfp.45.2020.05.04.13.31.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 13:31:49 -0700 (PDT)
Date: Mon, 04 May 2020 13:31:49 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 13:31:47 PDT (-0700)
Subject: Re: spinlock bad magic on SiFive uart driver
In-Reply-To: <b9fe49483a903f404e7acc15a6efbef756db28ae.camel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-6781ccaa-0d59-4c80-9cd1-5d686399d4de@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_133152_015019_92D2CD87 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 23:40:58 PDT (-0700), Atish Patra wrote:
> Hi,
> I am seeing following spinlock bad magic error with 5.7-rc1+ kernels
> on HiFive Unleashed board. But it continues to boot without any other
> issue.
> 
> Here is the relevant boot log:
> -----------------------------------------------------------------------
> [    0.346494] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    0.353268] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 1,
> base_baud = 0) is a SiFive UART v0
> [    0.361720] BUG: spinlock bad magic on CPU#1, swapper/0/1
> [    0.367179]  lock: 0xffffffe1f6f56018, .magic: 00000000, .owner:
> <none>/-1, .owner_cpu: 0
> [    0.375425] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc2-
> 00004-g47dfd752cad3 #142
> [    0.383580] Call Trace:
> [    0.386109] [<ffffffe0002024c6>] walk_stackframe+0x0/0xa4
> [    0.391572] [<ffffffe0002026ac>] show_stack+0x2a/0x34
> [    0.396703] [<ffffffe00046a09e>] dump_stack+0x6a/0x84
> [    0.401818] [<ffffffe00024306a>] spin_dump+0x68/0x74
> [    0.406853] [<ffffffe000242c8a>] do_raw_spin_lock+0xb0/0xcc
> [    0.412499] [<ffffffe000841700>] _raw_spin_lock_irqsave+0x20/0x2c
> [    0.418664] [<ffffffe0004d9c0c>] uart_add_one_port+0x2f6/0x406
> [    0.424567] [<ffffffe0004e3a94>] sifive_serial_probe+0x184/0x270
> [    0.430644] [<ffffffe00061337c>] platform_drv_probe+0x32/0x5e
> [    0.436465] [<ffffffe000611b6e>] really_probe+0x9a/0x21e
> [    0.441843] [<ffffffe000611df4>] driver_probe_device+0x2e/0x88
> [    0.447747] [<ffffffe000611fc6>] device_driver_attach+0x4c/0x50
> [    0.453738] [<ffffffe000612004>] __driver_attach+0x3a/0xac
> [    0.459294] [<ffffffe00061016a>] bus_for_each_dev+0x4a/0x72
> [    0.464937] [<ffffffe00061167a>] driver_attach+0x1a/0x22
> [    0.470320] [<ffffffe0006111ac>] bus_add_driver+0x192/0x198
> [    0.475964] [<ffffffe0006124f2>] driver_register+0x3a/0xd0
> [    0.481520] [<ffffffe000613342>]
> __platform_driver_register+0x3a/0x42
> [    0.488035] [<ffffffe00001ff70>] sifive_serial_init+0x30/0x50
> [    0.493856] [<ffffffe0002000d0>] do_one_initcall+0x50/0x15a
> [    0.499494] [<ffffffe000002c80>] kernel_init_freeable+0x16a/0x1de
> [    0.505662] [<ffffffe00083cd5c>] kernel_init+0x12/0x118
> [    0.510955] [<ffffffe00020120a>] ret_from_exception+0x0/0xc
> [    0.516647] printk: console [ttySIF0] enabled
> [    0.516647] printk: console [ttySIF0] enabled
> [    0.525382] printk: bootconsole [sbi0] disabled
> [    0.525382] printk: bootconsole [sbi0] disabled
> [    0.534799] 10011000.serial: ttySIF1 at MMIO 0x10011000 (irq = 2,
> base_baud = 0) is a SiFive UART v0
> -----------------------------------------------------------------------
> 
> I have not debugged further. Just wanted to check if anybody else also
> has seen this error.

Any news?  I don't have a HiFive Unleashed so I don't test on it, but I'm going
to go try and run with a SiFive UART in QEMU now...

