Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F99FDCA1E
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 18:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnOqo+EFcytJywMslEAxgfCdm8RSzP0/iEkc2QpLDoc=; b=L4qTrfWWSzuro3
	SzvflB6EfMmEyjY3WeuDIx/X+3DpuLUWCrOQBln1pbtMphkye1P0rE4pAyT2wNko7LdtcVHJkqtpK
	TCYOjI4LuCOIYaflAnkg2PXDyyBQ8NiL8MZA8Hv7cEa/HP3ot0xLMGhLKIxEHosvmIg6nUOywiMj0
	I/6SZNl0CHZ8nFodg+fSBR46l4nOEcOsqPjWi5jefNtZJAEsxMaDmWeXRpEiMD9o9+XSCEfDuwDmD
	77KbBlHHE/KrXRX+Ql5HkP8Y9AuTv/tUEYMo+VUwkX4M/9WFBOD4CvRH+pKF4z75/u7OrsRmau42A
	n6bSYOs6yeHCeza46maA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUfa-0001eF-T4; Fri, 18 Oct 2019 16:00:02 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUcN-00079R-Og; Fri, 18 Oct 2019 15:56:43 +0000
Date: Fri, 18 Oct 2019 08:56:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 8/8] riscv: for C functions called only from assembly, 
 mark with __visible
Message-ID: <20191018155643.GF25386@infradead.org>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-9-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018080841.26712-9-paul.walmsley@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 01:08:41AM -0700, Paul Walmsley wrote:
> Rather than adding prototypes for C functions called only by assembly
> code, mark them as __visible.  This avoids adding prototypes that will
> never be used by the callers.  Resolves the following sparse warnings:
> 
> arch/riscv/kernel/ptrace.c:151:6: warning: symbol 'do_syscall_trace_enter' was not declared. Should it be static?
> arch/riscv/kernel/ptrace.c:175:6: warning: symbol 'do_syscall_trace_exit' was not declared. Should it be static?
> 
> Based on a suggestion from Luc Van Oostenryck.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
