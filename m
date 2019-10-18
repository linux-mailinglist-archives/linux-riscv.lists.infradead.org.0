Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C19DC9F5
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 17:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX78KgJlunkQgpRWEGkLjwBEdWTzEh5HzClXclJWeNo=; b=Uggp5H8SNNZgDT
	50b24YGG61v4WywvP4YC1gsq2bfUaicxCUrua1B/clw9xwBPrIzHODIynLRhHRqsyL1qHyWNsb4wg
	Cr0nhTb2uYdTdpIct9q37OwN18XCx5foWP13LwuaRGu8QNNm8J07Y7NE1t+bgQfGM2PVwtWOgbMTI
	puU9v4GKd3kJsWMf6QXTp/fafeNj1rafKVtlt8qK19n6Lk6tMMWL1bxd20miHFAVweMd8QpEAr9Jo
	KrW7FD8rSrMBNa7xcsFQ6RXT8DbZdAnm06tZg6u/O6cb5MwhOGaPzHzWPAbXIjOMWffRMJE2p0lHk
	xVz5jOAhA7T8qE5hzEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUbp-0006fh-8i; Fri, 18 Oct 2019 15:56:09 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUVH-0006ZL-Dn; Fri, 18 Oct 2019 15:49:23 +0000
Date: Fri, 18 Oct 2019 08:49:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 1/8] riscv: add prototypes for assembly language
 functions from entry.S
Message-ID: <20191018154923.GA23279@infradead.org>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-2-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018080841.26712-2-paul.walmsley@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 01:08:34AM -0700, Paul Walmsley wrote:
> Add prototypes for assembly language functions defined in entry.S,
> and include these prototypes into C source files that call those
> functions.
> 
> This patch resolves the following warnings from sparse:
> 
> arch/riscv/kernel/signal.c:32:53: warning: incorrect type in initializer (different address spaces)

I don't see how adding prototypes will fix an address space warning.

> +asmlinkage void do_trap_unknown(struct pt_regs *regs);
> +asmlinkage void do_trap_insn_misaligned(struct pt_regs *regs);
> +asmlinkage void do_trap_insn_fault(struct pt_regs *regs);
> +asmlinkage void do_trap_insn_illegal(struct pt_regs *regs);
> +asmlinkage void do_trap_load_misaligned(struct pt_regs *regs);
> +asmlinkage void do_trap_load_fault(struct pt_regs *regs);
> +asmlinkage void do_trap_store_misaligned(struct pt_regs *regs);
> +asmlinkage void do_trap_store_fault(struct pt_regs *regs);
> +asmlinkage void do_trap_ecall_u(struct pt_regs *regs);
> +asmlinkage void do_trap_ecall_s(struct pt_regs *regs);
> +asmlinkage void do_trap_ecall_m(struct pt_regs *regs);
> +asmlinkage void do_trap_break(struct pt_regs *regs);

All these are not defined in entry.S, but called from entry.S.

And as Luc pointed out last time the easiest way to fix the sparse
warnings is to add __visible to the definitions of those functions.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
