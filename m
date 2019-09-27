Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CB6C0E1D
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adpdpb1/tY2xY+zXwdhXhonyM3qfuUPQRYh3eJt/RHY=; b=I0acWiKfg99zl/
	KV422NJ6iiyPT56v6My0zsJhYSMGcuRCo3T5viHnxqWUATVloya6Caw/iumcRGEe5GsUM7Aa/QUwW
	DyAPZNa4tau8cUpHc8N30mz6LiCknmWVe6aEjXBltSLTAIYsxxbv37RtHZL0LL4EkySC3cVoQ3Vji
	AgMRZGwf1AAtF2EhSWiBG7mbt9pNSp3FwUaTnGNWDLUFsLXoCtiv+D/PhXlk4pD0t+PN07b/Jhw+w
	5SRgYgmmak9nU/mfkt2mqTcUrcG/I2J/TFj/aAH42MKwtM/nK3TTGX3zE8jI0vbC7ZhRPyQGsL7my
	LQ/ZPbwg0ZrJQ3UhcuEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDz16-00035H-Ne; Fri, 27 Sep 2019 22:47:12 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDz15-00034z-CV; Fri, 27 Sep 2019 22:47:11 +0000
Date: Fri, 27 Sep 2019 15:47:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 4/4] riscv: remove the switch statement in do_trap_break()
Message-ID: <20190927224711.GI4700@infradead.org>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-5-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569199517-5884-5-git-send-email-vincent.chen@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 08:45:17AM +0800, Vincent Chen wrote:
> To make the code more straightforward, replacing the switch statement
> with if statement.
> 
> Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  arch/riscv/kernel/traps.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index dd13bc90aeb6..1ac75f7d0bff 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -124,23 +124,24 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
>  
>  asmlinkage void do_trap_break(struct pt_regs *regs)
>  {
> +	if (user_mode(regs)) {
> +		force_sig_fault(SIGTRAP, TRAP_BRKPT,
> +				(void __user *)(regs->sepc));
> +		return;
> +	}
> +#ifdef CONFIG_GENERIC_BUG
> +	{
>  		enum bug_trap_type type;
>  
>  		type = report_bug(regs->sepc, regs);
> +		if (type == BUG_TRAP_TYPE_WARN) {
>  			regs->sepc += get_break_insn_length(regs->sepc);
>  			return;
>  		}
> +#endif /* CONFIG_GENERIC_BUG */
> +
> +	die(regs, "Kernel BUG");

I like where this is going, but I think this can be improved further
given that fact that report_bug has a nice stub for the
!CONFIG_GENERIC_BUG case.

How about:

	if (user_mode(regs))
		force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->sepc);
	else if (report_bug(regs->sepc, regs) == BUG_TRAP_TYPE_WARN)
		regs->sepc += get_break_insn_length(regs->sepc);
	else
		die(regs, "Kernel BUG");

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
