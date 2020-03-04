Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D563179908
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=LIOktSYmzidhGIcMAEhQheRs5jfOfCA/A6SZuhbSAo4=; b=N4zAa3hBTuy+6t
	44nzpwv+37qox/HlQyuYTLD++3RAFD23Nux34X5ikkoZenWmppVmBYUehKhtKzpJ1mkFXwaBNzW9K
	zumFcLr2YFD75SZ3Eh5aU0+/SAKYK8ZVH8af71ICQDU8zueYh3HXbg3igMK+dAtOx1vWTCigU7+UX
	z2tIdbTGdfkDktnAILdDA0S/bxgj6nW2LOSdGfsJDoRprP4jG2OQR0+45uPCLzSxyfbfnHYw/Xct/
	xso2vYPr+XIGVcaSiUmlEuMCCJKdUst5/j2pNz0DNvbm/luvPycKxlXwmhyPwSIYs7VRDlnoisVXr
	e8aDD/GsNL0bO+WDLXPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ZhW-0004NA-OX; Wed, 04 Mar 2020 19:29:02 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ZhR-0004LV-7a
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:28:59 +0000
Received: by mail-pj1-x1044.google.com with SMTP id k36so1353814pje.5
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=LIOktSYmzidhGIcMAEhQheRs5jfOfCA/A6SZuhbSAo4=;
 b=rCt1MScYuDRLZpHyGdE0JUD9l67MwAWTEXtIGeLUQO9mezkYGp7RpjYQCr5NvSEGqS
 I7H07dYTe1kfFvh8J8YJXrtioHNmNfbjX2J3Y6UomuqG6b7wYo+Dbex/rn4gKvtqXrcr
 hcoSjCV3jYaxDFpL91R0DC8vXsggTaFAl0rNRHIDAHtVAeOjzxugmQhJldhZOlAG0RDb
 dBrMwWLdzfFq4rgchCe2WlJHFKVaOX3JyBEOW8vhpd6wvz+4r/Q4Ot51KmVJim0tQ1xq
 35Zs3eOoPffx3RS0jb+th8G9pvD9Ua7cBHuBtDYls7nLqkIpRllqE2Rgl4KmdjdoykU9
 Z/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=LIOktSYmzidhGIcMAEhQheRs5jfOfCA/A6SZuhbSAo4=;
 b=piN6VH3c+VRhIt6ii154UQ4c3CXPKExjR3iUllGG4BPrkWXzEu//hm88+WFQGu2uyW
 n9J05gN8G7Nsf818C0//vUaBTar0Mks8ET3bCjlqOtpmBgy2bDy2q200IG8iIjlVzs8j
 UcKX/qS+hW8V45A7GAE5M5fB1S+2u4lDg4ZMVXlNDf0xtM5WQ2v2xMzMisBQ1ZmrAJKI
 GD3ImX173UDlotRevPNzhUbScmei9/s8smCuclukIRCwIX8jsp2bDd+xc7O7NJYhTmnB
 a0fjjMKizOh9SowYGPfPoeSOUwNoFEL000ClqQveNP0RS3PpRThYZnKLrZ6AV0SNA+to
 hiwQ==
X-Gm-Message-State: ANhLgQ3RXvRzT3pK46VSpi0PyOyQc6zMB5dWajnnMEkn0Q6rxBViyvVa
 uwg1jGWhu7Rq/OlA7Te/aC2KoMsGSbA=
X-Google-Smtp-Source: ADFU+vtPG7nXLleanCW8gHTqVRTP9Oqt0DwduN9nqxBKBeLiVOazQM6LTxSovSIYJuJfqC7fSV8qZg==
X-Received: by 2002:a17:902:aa98:: with SMTP id
 d24mr4463607plr.106.1583350134422; 
 Wed, 04 Mar 2020 11:28:54 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id cm2sm3615325pjb.23.2020.03.04.11.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:28:53 -0800 (PST)
Date: Wed, 04 Mar 2020 11:28:53 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:03:42 PST (-0800)
Subject: Re: [PATCH 03/10] riscv: Unaligned load/store handling for M_MODE
In-Reply-To: <20200212103432.660256-4-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-1d447191-d9ba-4949-9173-e1c87fdf852e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_112857_280686_3F5EF1A4 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:25 PST (-0800), Damien Le Moal wrote:
> Add handlers for unaligned load and stroe traps that may be generated
> by applications. Code heavily inspired from the OpenSBI project.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/kernel/Makefile           |   2 +-
>  arch/riscv/kernel/traps.c            |  27 +-
>  arch/riscv/kernel/traps_misaligned.c | 371 +++++++++++++++++++++++++++
>  3 files changed, 396 insertions(+), 4 deletions(-)
>  create mode 100644 arch/riscv/kernel/traps_misaligned.c
>
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f40205cb9a22..97d0c35f8b37 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -28,7 +28,7 @@ obj-y	+= stacktrace.o
>  obj-y	+= cacheinfo.o
>  obj-$(CONFIG_MMU) += vdso.o vdso/
>
> -obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
> +obj-$(CONFIG_RISCV_M_MODE)	+= clint.o traps_misaligned.o
>  obj-$(CONFIG_FPU)		+= fpu.o
>  obj-$(CONFIG_SMP)		+= smpboot.o
>  obj-$(CONFIG_SMP)		+= smp.o
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index ffb3d94bf0cc..13e55459d7b0 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -97,12 +97,33 @@ DO_ERROR_INFO(do_trap_insn_fault,
>  	SIGSEGV, SEGV_ACCERR, "instruction access fault");
>  DO_ERROR_INFO(do_trap_insn_illegal,
>  	SIGILL, ILL_ILLOPC, "illegal instruction");
> -DO_ERROR_INFO(do_trap_load_misaligned,
> -	SIGBUS, BUS_ADRALN, "load address misaligned");
>  DO_ERROR_INFO(do_trap_load_fault,
>  	SIGSEGV, SEGV_ACCERR, "load access fault");
> +#ifndef CONFIG_RISCV_M_MODE
> +DO_ERROR_INFO(do_trap_load_misaligned,
> +	SIGBUS, BUS_ADRALN, "Oops - load address misaligned");
>  DO_ERROR_INFO(do_trap_store_misaligned,
> -	SIGBUS, BUS_ADRALN, "store (or AMO) address misaligned");
> +	SIGBUS, BUS_ADRALN, "Oops - store (or AMO) address misaligned");
> +#else
> +int handle_misaligned_load(struct pt_regs *regs);
> +int handle_misaligned_store(struct pt_regs *regs);
> +
> +asmlinkage void do_trap_load_misaligned(struct pt_regs *regs)
> +{
> +	if (!handle_misaligned_load(regs))
> +		return;
> +	do_trap_error(regs, SIGBUS, BUS_ADRALN, regs->epc,
> +		      "Oops - load address misaligned");
> +}
> +
> +asmlinkage void do_trap_store_misaligned(struct pt_regs *regs)
> +{
> +	if (!handle_misaligned_store(regs))
> +		return;
> +	do_trap_error(regs, SIGBUS, BUS_ADRALN, regs->epc,
> +		      "Oops - store (or AMO) address misaligned");
> +}
> +#endif
>  DO_ERROR_INFO(do_trap_store_fault,
>  	SIGSEGV, SEGV_ACCERR, "store (or AMO) access fault");
>  DO_ERROR_INFO(do_trap_ecall_u,
> diff --git a/arch/riscv/kernel/traps_misaligned.c b/arch/riscv/kernel/traps_misaligned.c
> new file mode 100644
> index 000000000000..a6105ee0150f
> --- /dev/null
> +++ b/arch/riscv/kernel/traps_misaligned.c
> @@ -0,0 +1,371 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +#include <linux/kernel.h>
> +#include <linux/init.h>
> +#include <linux/mm.h>
> +#include <linux/module.h>
> +#include <linux/irq.h>
> +
> +#include <asm/processor.h>
> +#include <asm/ptrace.h>
> +#include <asm/csr.h>
> +
> +#define INSN_MATCH_LB			0x3
> +#define INSN_MASK_LB			0x707f
> +#define INSN_MATCH_LH			0x1003
> +#define INSN_MASK_LH			0x707f
> +#define INSN_MATCH_LW			0x2003
> +#define INSN_MASK_LW			0x707f
> +#define INSN_MATCH_LD			0x3003
> +#define INSN_MASK_LD			0x707f
> +#define INSN_MATCH_LBU			0x4003
> +#define INSN_MASK_LBU			0x707f
> +#define INSN_MATCH_LHU			0x5003
> +#define INSN_MASK_LHU			0x707f
> +#define INSN_MATCH_LWU			0x6003
> +#define INSN_MASK_LWU			0x707f
> +#define INSN_MATCH_SB			0x23
> +#define INSN_MASK_SB			0x707f
> +#define INSN_MATCH_SH			0x1023
> +#define INSN_MASK_SH			0x707f
> +#define INSN_MATCH_SW			0x2023
> +#define INSN_MASK_SW			0x707f
> +#define INSN_MATCH_SD			0x3023
> +#define INSN_MASK_SD			0x707f
> +
> +#define INSN_MATCH_FLW			0x2007
> +#define INSN_MASK_FLW			0x707f
> +#define INSN_MATCH_FLD			0x3007
> +#define INSN_MASK_FLD			0x707f
> +#define INSN_MATCH_FLQ			0x4007
> +#define INSN_MASK_FLQ			0x707f
> +#define INSN_MATCH_FSW			0x2027
> +#define INSN_MASK_FSW			0x707f
> +#define INSN_MATCH_FSD			0x3027
> +#define INSN_MASK_FSD			0x707f
> +#define INSN_MATCH_FSQ			0x4027
> +#define INSN_MASK_FSQ			0x707f
> +
> +#define INSN_MATCH_C_LD			0x6000
> +#define INSN_MASK_C_LD			0xe003
> +#define INSN_MATCH_C_SD			0xe000
> +#define INSN_MASK_C_SD			0xe003
> +#define INSN_MATCH_C_LW			0x4000
> +#define INSN_MASK_C_LW			0xe003
> +#define INSN_MATCH_C_SW			0xc000
> +#define INSN_MASK_C_SW			0xe003
> +#define INSN_MATCH_C_LDSP		0x6002
> +#define INSN_MASK_C_LDSP		0xe003
> +#define INSN_MATCH_C_SDSP		0xe002
> +#define INSN_MASK_C_SDSP		0xe003
> +#define INSN_MATCH_C_LWSP		0x4002
> +#define INSN_MASK_C_LWSP		0xe003
> +#define INSN_MATCH_C_SWSP		0xc002
> +#define INSN_MASK_C_SWSP		0xe003
> +
> +#define INSN_MATCH_C_FLD		0x2000
> +#define INSN_MASK_C_FLD			0xe003
> +#define INSN_MATCH_C_FLW		0x6000
> +#define INSN_MASK_C_FLW			0xe003
> +#define INSN_MATCH_C_FSD		0xa000
> +#define INSN_MASK_C_FSD			0xe003
> +#define INSN_MATCH_C_FSW		0xe000
> +#define INSN_MASK_C_FSW			0xe003
> +#define INSN_MATCH_C_FLDSP		0x2002
> +#define INSN_MASK_C_FLDSP		0xe003
> +#define INSN_MATCH_C_FSDSP		0xa002
> +#define INSN_MASK_C_FSDSP		0xe003
> +#define INSN_MATCH_C_FLWSP		0x6002
> +#define INSN_MASK_C_FLWSP		0xe003
> +#define INSN_MATCH_C_FSWSP		0xe002
> +#define INSN_MASK_C_FSWSP		0xe003
> +
> +#define INSN_LEN(insn)			((((insn) & 0x3) < 0x3) ? 2 : 4)
> +
> +#if __riscv_xlen == 64
> +#define LOG_REGBYTES			3
> +#else
> +#define LOG_REGBYTES			2
> +#endif
> +#define REGBYTES			(1 << LOG_REGBYTES)
> +
> +#define SH_RD				7
> +#define SH_RS1				15
> +#define SH_RS2				20
> +#define SH_RS2C				2
> +
> +#define RV_X(x, s, n)			(((x) >> (s)) & ((1 << (n)) - 1))
> +#define RVC_LW_IMM(x)			((RV_X(x, 6, 1) << 2) | \
> +					 (RV_X(x, 10, 3) << 3) | \
> +					 (RV_X(x, 5, 1) << 6))
> +#define RVC_LD_IMM(x)			((RV_X(x, 10, 3) << 3) | \
> +					 (RV_X(x, 5, 2) << 6))
> +#define RVC_LWSP_IMM(x)			((RV_X(x, 4, 3) << 2) | \
> +					 (RV_X(x, 12, 1) << 5) | \
> +					 (RV_X(x, 2, 2) << 6))
> +#define RVC_LDSP_IMM(x)			((RV_X(x, 5, 2) << 3) | \
> +					 (RV_X(x, 12, 1) << 5) | \
> +					 (RV_X(x, 2, 3) << 6))
> +#define RVC_SWSP_IMM(x)			((RV_X(x, 9, 4) << 2) | \
> +					 (RV_X(x, 7, 2) << 6))
> +#define RVC_SDSP_IMM(x)			((RV_X(x, 10, 3) << 3) | \
> +					 (RV_X(x, 7, 3) << 6))
> +#define RVC_RS1S(insn)			(8 + RV_X(insn, SH_RD, 3))
> +#define RVC_RS2S(insn)			(8 + RV_X(insn, SH_RS2C, 3))
> +#define RVC_RS2(insn)			RV_X(insn, SH_RS2C, 5)
> +
> +#define SHIFT_RIGHT(x, y)		\
> +	((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
> +
> +#define REG_MASK			\
> +	((1 << (5 + LOG_REGBYTES)) - (1 << LOG_REGBYTES))
> +
> +#define REG_OFFSET(insn, pos)		\
> +	(SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
> +
> +#define REG_PTR(insn, pos, regs)	\
> +	(ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
> +
> +#define GET_RM(insn)			(((insn) >> 12) & 7)
> +
> +#define GET_RS1(insn, regs)		(*REG_PTR(insn, SH_RS1, regs))
> +#define GET_RS2(insn, regs)		(*REG_PTR(insn, SH_RS2, regs))
> +#define GET_RS1S(insn, regs)		(*REG_PTR(RVC_RS1S(insn), 0, regs))
> +#define GET_RS2S(insn, regs)		(*REG_PTR(RVC_RS2S(insn), 0, regs))
> +#define GET_RS2C(insn, regs)		(*REG_PTR(insn, SH_RS2C, regs))
> +#define GET_SP(regs)			(*REG_PTR(2, 0, regs))
> +#define SET_RD(insn, regs, val)		(*REG_PTR(insn, SH_RD, regs) = (val))
> +#define IMM_I(insn)			((s32)(insn) >> 20)
> +#define IMM_S(insn)			(((s32)(insn) >> 25 << 5) | \
> +					 (s32)(((insn) >> 7) & 0x1f))
> +#define MASK_FUNCT3			0x7000
> +
> +#define GET_PRECISION(insn) (((insn) >> 25) & 3)
> +#define GET_RM(insn) (((insn) >> 12) & 7)
> +#define PRECISION_S 0
> +#define PRECISION_D 1
> +
> +#define STR(x) XSTR(x)
> +#define XSTR(x) #x
> +
> +#define DECLARE_UNPRIVILEGED_LOAD_FUNCTION(type, insn)			\
> +static inline type load_##type(const type *addr)			\
> +{									\
> +	type val;							\
> +	asm (#insn " %0, %1"						\
> +	: "=&r" (val) : "m" (*addr));					\
> +	return val;							\
> +}
> +
> +#define DECLARE_UNPRIVILEGED_STORE_FUNCTION(type, insn)			\
> +static inline void store_##type(type *addr, type val)			\
> +{									\
> +	asm volatile (#insn " %0, %1\n"					\
> +	: : "r" (val), "m" (*addr));					\
> +}
> +
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u8, lbu)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u16, lhu)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(s8, lb)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(s16, lh)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(s32, lw)
> +DECLARE_UNPRIVILEGED_STORE_FUNCTION(u8, sb)
> +DECLARE_UNPRIVILEGED_STORE_FUNCTION(u16, sh)
> +DECLARE_UNPRIVILEGED_STORE_FUNCTION(u32, sw)
> +#if __riscv_xlen == 64
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u32, lwu)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u64, ld)
> +DECLARE_UNPRIVILEGED_STORE_FUNCTION(u64, sd)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(ulong, ld)
> +#else
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u32, lw)
> +DECLARE_UNPRIVILEGED_LOAD_FUNCTION(ulong, lw)
> +
> +static inline u64 load_u64(const u64 *addr)
> +{
> +	return load_u32((u32 *)addr)
> +		+ ((u64)load_u32((u32 *)addr + 1) << 32);
> +}
> +
> +static inline void store_u64(u64 *addr, u64 val)
> +{
> +	store_u32((u32 *)addr, val);
> +	store_u32((u32 *)addr + 1, val >> 32);
> +}
> +#endif
> +
> +static inline ulong get_insn(ulong mepc)
> +{
> +	register ulong __mepc asm ("a2") = mepc;
> +	ulong val, rvc_mask = 3, tmp;
> +
> +	asm ("and %[tmp], %[addr], 2\n"
> +		"bnez %[tmp], 1f\n"
> +#if __riscv_xlen == 64
> +		STR(LWU) " %[insn], (%[addr])\n"
> +#else
> +		STR(LW) " %[insn], (%[addr])\n"
> +#endif
> +		"and %[tmp], %[insn], %[rvc_mask]\n"
> +		"beq %[tmp], %[rvc_mask], 2f\n"
> +		"sll %[insn], %[insn], %[xlen_minus_16]\n"
> +		"srl %[insn], %[insn], %[xlen_minus_16]\n"
> +		"j 2f\n"
> +		"1:\n"
> +		"lhu %[insn], (%[addr])\n"
> +		"and %[tmp], %[insn], %[rvc_mask]\n"
> +		"bne %[tmp], %[rvc_mask], 2f\n"
> +		"lhu %[tmp], 2(%[addr])\n"
> +		"sll %[tmp], %[tmp], 16\n"
> +		"add %[insn], %[insn], %[tmp]\n"
> +		"2:"
> +	: [insn] "=&r" (val), [tmp] "=&r" (tmp)
> +	: [addr] "r" (__mepc), [rvc_mask] "r" (rvc_mask),
> +	  [xlen_minus_16] "i" (__riscv_xlen - 16));
> +
> +	return val;
> +}
> +
> +union reg_data {
> +	u8 data_bytes[8];
> +	ulong data_ulong;
> +	u64 data_u64;
> +};
> +
> +int handle_misaligned_load(struct pt_regs *regs)
> +{
> +	union reg_data val;
> +	unsigned long epc = regs->epc;
> +	unsigned long insn = get_insn(epc);
> +	unsigned long addr = csr_read(mtval);
> +	int i, fp = 0, shift = 0, len = 0;
> +
> +	regs->epc = 0;
> +
> +	if ((insn & INSN_MASK_LW) == INSN_MATCH_LW) {
> +		len = 4;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +#if __riscv_xlen == 64
> +	} else if ((insn & INSN_MASK_LD) == INSN_MATCH_LD) {
> +		len = 8;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +	} else if ((insn & INSN_MASK_LWU) == INSN_MATCH_LWU) {
> +		len = 4;
> +#endif
> +	} else if ((insn & INSN_MASK_FLD) == INSN_MATCH_FLD) {
> +		fp = 1;
> +		len = 8;
> +	} else if ((insn & INSN_MASK_FLW) == INSN_MATCH_FLW) {
> +		fp = 1;
> +		len = 4;
> +	} else if ((insn & INSN_MASK_LH) == INSN_MATCH_LH) {
> +		len = 2;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +	} else if ((insn & INSN_MASK_LHU) == INSN_MATCH_LHU) {
> +		len = 2;
> +#ifdef __riscv_compressed
> +#if __riscv_xlen >= 64
> +	} else if ((insn & INSN_MASK_C_LD) == INSN_MATCH_C_LD) {
> +		len = 8;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +		insn = RVC_RS2S(insn) << SH_RD;
> +	} else if ((insn & INSN_MASK_C_LDSP) == INSN_MATCH_C_LDSP &&
> +		   ((insn >> SH_RD) & 0x1f)) {
> +		len = 8;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +#endif
> +	} else if ((insn & INSN_MASK_C_LW) == INSN_MATCH_C_LW) {
> +		len = 4;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +		insn = RVC_RS2S(insn) << SH_RD;
> +	} else if ((insn & INSN_MASK_C_LWSP) == INSN_MATCH_C_LWSP &&
> +		   ((insn >> SH_RD) & 0x1f)) {
> +		len = 4;
> +		shift = 8 * (sizeof(unsigned long) - len);
> +	} else if ((insn & INSN_MASK_C_FLD) == INSN_MATCH_C_FLD) {
> +		fp = 1;
> +		len = 8;
> +		insn = RVC_RS2S(insn) << SH_RD;
> +	} else if ((insn & INSN_MASK_C_FLDSP) == INSN_MATCH_C_FLDSP) {
> +		fp = 1;
> +		len = 8;
> +#if __riscv_xlen == 32
> +	} else if ((insn & INSN_MASK_C_FLW) == INSN_MATCH_C_FLW) {
> +		fp = 1;
> +		len = 4;
> +		insn = RVC_RS2S(insn) << SH_RD;
> +	} else if ((insn & INSN_MASK_C_FLWSP) == INSN_MATCH_C_FLWSP) {
> +		fp = 1;
> +		len = 4;
> +#endif
> +#endif
> +	} else {
> +		regs->epc = epc;
> +		return -1;
> +	}
> +
> +	val.data_u64 = 0;
> +	for (i = 0; i < len; i++)
> +		val.data_bytes[i] = load_u8((void *)(addr + i));
> +
> +	if (fp)
> +		return -1;
> +	SET_RD(insn, regs, val.data_ulong << shift >> shift);
> +
> +	regs->epc = epc + INSN_LEN(insn);
> +
> +	return 0;
> +}
> +
> +int handle_misaligned_store(struct pt_regs *regs)
> +{
> +	union reg_data val;
> +	unsigned long epc = regs->epc;
> +	unsigned long insn = get_insn(epc);
> +	unsigned long addr = csr_read(mtval);
> +	int i, len = 0;
> +
> +	regs->epc = 0;
> +
> +	val.data_ulong = GET_RS2(insn, regs);
> +
> +	if ((insn & INSN_MASK_SW) == INSN_MATCH_SW) {
> +		len = 4;
> +#if __riscv_xlen == 64
> +	} else if ((insn & INSN_MASK_SD) == INSN_MATCH_SD) {
> +		len = 8;
> +#endif
> +	} else if ((insn & INSN_MASK_SH) == INSN_MATCH_SH) {
> +		len = 2;
> +#ifdef __riscv_compressed

CONFIG_RISCV_ISA_C (which sets __riscv_compressed) selects the ISA that the
kernel is compiled for, not the ISA userspace is compiled for.  As such it is
expected that !CONFIG_RISCV_ISA_C kernels can run C userspace, and breaking
that assumption in such a subtle way seems like a bad idea.

Having some sort of "block C from userspace" sort of Kconfig seems reasonable,
but that should be some different option.  We could fake this now by filtering
the ELF auxvec, and we should probably add an SBI call that attempts to disable
an ISA extension for a hart sooner rather than later.

I know it's a bit pedantic as M-mode kernels mean NOMMU kernels, but I'm still
hoping to break that coupling.

> +#if __riscv_xlen >= 64
> +	} else if ((insn & INSN_MASK_C_SD) == INSN_MATCH_C_SD) {
> +		len = 8;
> +		val.data_ulong = GET_RS2S(insn, regs);
> +	} else if ((insn & INSN_MASK_C_SDSP) == INSN_MATCH_C_SDSP &&
> +		   ((insn >> SH_RD) & 0x1f)) {
> +		len = 8;
> +		val.data_ulong = GET_RS2C(insn, regs);
> +#endif
> +	} else if ((insn & INSN_MASK_C_SW) == INSN_MATCH_C_SW) {
> +		len = 4;
> +		val.data_ulong = GET_RS2S(insn, regs);
> +	} else if ((insn & INSN_MASK_C_SWSP) == INSN_MATCH_C_SWSP &&
> +		   ((insn >> SH_RD) & 0x1f)) {
> +		len = 4;
> +		val.data_ulong = GET_RS2C(insn, regs);
> +#endif
> +	} else {
> +		regs->epc = epc;
> +		return -1;
> +	}
> +
> +	for (i = 0; i < len; i++)
> +		store_u8((void *)(addr + i), val.data_bytes[i]);
> +
> +	regs->epc = epc + INSN_LEN(insn);
> +
> +	return 0;
> +}

