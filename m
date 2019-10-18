Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73140DBB80
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 04:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nykyLpAiFvHe5CMRmLxeMP7fVUXN5edPnRVWRdxChj0=; b=Zo3RUvD9PzyTat
	oQ1qc3oFu7B4yF6+B+21OAmpp/0m7VfyzzZ0+m294ZBAC3jnTOXX7H1txB4JAbes3hu3OO0oX0HuX
	XsAMHQrM0pbQtHsstsimV90Naw8hSpBZI6gxNxC+TBBaPx/w/kcXhBjNuzl54LAREsTdYN2XaGTTe
	JGZrYh6IYdz85DRdpxLVMiI4Cthe3NIULklfXKgg5Nsy2KH1wiPCy5r5+MGnHP2ozNmF6UQJCdE3r
	unQFBmVTdeHtBsqwbDzidwvHvGxuGjW0qE5Hep9Dc5DmQfebjkWXnPluvJt6zzAMwnOlEDLpaC4yv
	brOqBRIn+zu9OqnRS+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIMR-00005d-6u; Fri, 18 Oct 2019 02:51:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIML-000056-5n
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 02:51:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id b9so4524716wrs.0
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 19:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b9R5y98NMKaH6jPS3dt8xcB/piVcBix4tD337dUVV+U=;
 b=lr3v4oXMaRG5gAZxgoVM3k6FFXgrbPR30EKD0XeOzoTPooPshQgi/yBeZU9Fddzbk0
 s6eQnTxY+kbK4MsX0PYmszVhgXYLC+DCYcUnrqoolsWhpgNywn7Fq30K70sVNdw91KFk
 TzaG076OeZ5IpoWli4BM2pL6chZGiBpYUuZyaBgLzmK1BIQu/2+7ifsZCooc8xO/G3WC
 HUIkK1Ijgg7FL3FTDhnof/SnW+LCZkqMCr433uM3yHy0EC+kGV46R+88Ss4W64/2e9tF
 KIPKJ4FQWeK3t4KCOZXPCgpnGY7s7MGgGHWdvkCHrHS94RLVUlLFl0L9mZ2QiRFcAf0w
 ZKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b9R5y98NMKaH6jPS3dt8xcB/piVcBix4tD337dUVV+U=;
 b=V0O6VAqFXIGvfTtbdylpbZ7FC6GX7V/ynPLQ4Ee19iAEnnbmHBUJPxNEK6ZuWiYaRM
 O4ONFHmW48cSwIGuaxSMoLuJUafCUmKGhK3VrGzOKZYTLLrAUcfv4ayKltTnuQ+FHCis
 VfLow9TAKBlFF7j9puMditlX9RewJWTsU8HIC8CxMdfSkrMY8GIUpLJEtnMUgTI0PAju
 lz+TZ3RkrvlUUJho+dslATp92wCsod9U0+CbCsMjk70n4E3X+ZSOsl35PghNRmFYYwYj
 iC6NcoXN2zSb70I5gtGICTLkfrLrSGncHyzg9/kZ38khHpQT6omUvlfBowbsOaE9XqHE
 ZWvA==
X-Gm-Message-State: APjAAAU0+mmKYW47H7l/1SGlLCIA9IfYrAOyh8z4wDpoaMbKkZDDe3yo
 LCQSezF793ie13FE/xfB50hSlcduPwy0QA3fma5jgWCmALU=
X-Google-Smtp-Source: APXvYqyTYzEZUIKg7RKPL0BwgYt3EvlXgVLixIK52nT6nnsRms//UwXq52SaF5H9Wk4WR3zS92oAobPbRNX/hWyfNjE=
X-Received: by 2002:a5d:42c2:: with SMTP id t2mr5328686wrr.251.1571367079285; 
 Thu, 17 Oct 2019 19:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-3-hch@lst.de>
In-Reply-To: <20191017173743.5430-3-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:21:08 +0530
Message-ID: <CAAhSdy27==MERM6H1dL4L_vndgSQcwyise=+_ER3kXHxEh9PYw@mail.gmail.com>
Subject: Re: [PATCH 02/15] riscv: cleanup do_trap_break
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195122_377236_DFD1CB95 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:07 PM Christoph Hellwig <hch@lst.de> wrote:
>
> If we always compile the get_break_insn_length inline function we can
> remove the ifdefs and let dead code elimination take care of the warn
> branch that is now unreadable because the report_bug stub always
> returns BUG_TRAP_TYPE_BUG.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/traps.c | 26 ++++++--------------------
>  1 file changed, 6 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 1ac75f7d0bff..10a17e545f43 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -111,7 +111,6 @@ DO_ERROR_INFO(do_trap_ecall_s,
>  DO_ERROR_INFO(do_trap_ecall_m,
>         SIGILL, ILL_ILLTRP, "environment call from M-mode");
>
> -#ifdef CONFIG_GENERIC_BUG
>  static inline unsigned long get_break_insn_length(unsigned long pc)
>  {
>         bug_insn_t insn;
> @@ -120,28 +119,15 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
>                 return 0;
>         return (((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ? 4UL : 2UL);
>  }
> -#endif /* CONFIG_GENERIC_BUG */
>
>  asmlinkage void do_trap_break(struct pt_regs *regs)
>  {
> -       if (user_mode(regs)) {
> -               force_sig_fault(SIGTRAP, TRAP_BRKPT,
> -                               (void __user *)(regs->sepc));
> -               return;
> -       }
> -#ifdef CONFIG_GENERIC_BUG
> -       {
> -               enum bug_trap_type type;
> -
> -               type = report_bug(regs->sepc, regs);
> -               if (type == BUG_TRAP_TYPE_WARN) {
> -                       regs->sepc += get_break_insn_length(regs->sepc);
> -                       return;
> -               }
> -       }
> -#endif /* CONFIG_GENERIC_BUG */
> -
> -       die(regs, "Kernel BUG");
> +       if (user_mode(regs))
> +               force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->sepc);
> +       else if (report_bug(regs->sepc, regs) == BUG_TRAP_TYPE_WARN)
> +               regs->sepc += get_break_insn_length(regs->sepc);
> +       else
> +               die(regs, "Kernel BUG");
>  }
>
>  #ifdef CONFIG_GENERIC_BUG
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
