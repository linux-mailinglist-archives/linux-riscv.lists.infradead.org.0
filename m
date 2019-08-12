Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57E78A1BF
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 16:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+vIBmubStGmm2HWUQxCLUsf8tUA/DkSdbxFlLzbEsQ=; b=bpPupMnR/5mPn9
	UsPPH+CRFI+wrZkCeWVrJ0uBn0zV+tows5KgaOqCF+Dqpef0HiAQ7zO+oyI5N2Za99GkE5A+nwEMU
	yoxPtNi07/HyaKX9GpFjzO77cplY1bvfJEEkRRyJYRKCtTfZuEuZeJ9eMFe4a63JX6vNQAvtAyLEX
	VKee83xrSGLiL++Z8uO3tRa9vSdKsz8vrs/WX2VDaOg73HidNN2+t2Ou4qJIkztgVPxH2qWEq+gfb
	2r9TTektutTUtTKDGDQ3VxUi6hOlpHAqf2niBi8rq3IBa74314FFW5ie9UVXY+l92YnaK7jpBeDWo
	tcjYXlw014PCekg69Q/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBm6-0003i9-FC; Mon, 12 Aug 2019 14:58:18 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxBm4-0003i0-CB; Mon, 12 Aug 2019 14:58:16 +0000
Date: Mon, 12 Aug 2019 07:58:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 1/2] riscv: Correct the initialized flow of FP register
Message-ID: <20190812145816.GD26897@infradead.org>
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

> +static inline void fstate_off(struct task_struct *task,
> +			       struct pt_regs *regs)
> +{
> +	regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_OFF;

No need for the inner braces here.

> +}
> +
>  static inline void fstate_save(struct task_struct *task,
>  			       struct pt_regs *regs)
>  {
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index f23794b..e3077ee 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -64,8 +64,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
>  	unsigned long sp)
>  {
>  	regs->sstatus = SR_SPIE;
> -	if (has_fpu)
> +	if (has_fpu) {
>  		regs->sstatus |= SR_FS_INITIAL;
> +#ifdef CONFIG_FPU
> +		/*
> +		 * Restore the initial value to the FP register
> +		 * before starting the user program.
> +		 */
> +		fstate_restore(current, regs);
> +#endif

fstate_restore has a no-op stub for the !CONFIG_FPU case, so the ifdef
here is not needed.

Otherwise this looks good to me:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
