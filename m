Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CF185F59
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 12:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEuSn7/4xrFEe4R8wInDZiPCBgJM3s25iXklZ+z+8lA=; b=nN5ljzQTQx0bpA
	G37zuta2NDJ6BcVP6fxTxDMgLjvxsE37eUoK0CcQzKv+trXemq/LU/IdPpjY87efIsQnGwRLal9nG
	QfdwFD5IyrqpoSVfxK+y6FOOD7Gx0p5LEjdLhy/aDjcSEy1t/oVrdtW1aWwYO/aBG6pUJjRSGU4m2
	IbLEabU3DG0Qt3Efny9vPG/3L0JETDDH4b2nnCEgs/rWRUcth42InITZeHYLlg10AIMXeO+h9TfuZ
	g8yjEKX7krJbGpyOJvwG4ptHajzHToNOP7NVjKA10hrKykcCXH7mIq6mKLHt6Dmi5GQgZkfaHHUPn
	KG15WkGQs/233y/BSWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfS3-0005Oa-T4; Thu, 08 Aug 2019 10:15:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfRy-0005OE-8k
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 10:15:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id p74so1819845wme.4
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 03:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v+UYL1lJMEimsIxPQMAwClByr6W4+EzjyE/vwfvpU4E=;
 b=oWQVQFExEkqD49HHdq86d/5EnT0D3srhgWm5H7g9sSxBiejIOwa876X7+OWoIkqhjO
 D7lefyGhoJayobHcSloaoBuihf/zvTN9aDM+66dCHu1k6yFDNlwPE3I9BifwnQZuOeFK
 3WT8xLSk5EH09smVEig6QEAhfXxAgnGrP/QyzT2VZosDzdycqOkjoDHTKUVLB0IhDnT7
 yGykATt9nh56o683vCj8TKfu6x9LxmARAvq3dRApE/q3QowYCEB8UFu4RLS39SodB8CA
 FWcPm0bEoBPpAnqYLRzTl6GF4HHuGSVa3IYu1rvKyfj851VYyJe2qADdyRT3B9WntHQt
 Kj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v+UYL1lJMEimsIxPQMAwClByr6W4+EzjyE/vwfvpU4E=;
 b=ew3EFPNQCF3LO/M6TfjwsJ3+nWVQ1zu6m5lo70sd55nY46bsoyKB+zjfSNzHSp2aOH
 uMo2n1hN3czEqk1Wg8NYaOn4//pdbExiUvyv1LTC8Uc0AKD2BqdQndGuMMVD7gaKeYof
 S9FZjwalCXRBmdyFM9uOno5OOnMEqLU7MrM+AF42Eya3L+OxMi4/alVgNSYJIMUybeBf
 OaCt/3myjdLVvDu4VBlGXwyX2Bk7TVDcYWBxdKK8pHMW9+tHf84uBSZJorXfYX5fkKE5
 8mEr5Mni9LfIvx69Ai71UAsD/z8lm1/cc6leHJXR/UQRXN5+TwBVc9VZc/LIEVqS44ww
 edWg==
X-Gm-Message-State: APjAAAW3A+riIQVCztm7yMxCwS5thMk7QNTnHD7T3N6aZFORQwU7wt3Z
 3TSUl9ODgVRn9qO8zHOgpXtk9THAdz9t3/N+1RBoqpvw
X-Google-Smtp-Source: APXvYqy0QPTJxlaTBbkJSS+701e1FKbCCCoXMDsYqh5lcfzvyuvc5yqBqQonOV+TOXmh21HonrzIqoc5iJ1K4S910w0=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr3224593wma.24.1565259312766; 
 Thu, 08 Aug 2019 03:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 8 Aug 2019 15:45:00 +0530
Message-ID: <CAAhSdy0BNN4G270WJ+OqrFAv3-z9o2iE+QDHHo-FY0fqh5wGqg@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: Correct the initialized flow of FP register
To: Vincent Chen <vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_031514_832524_89E6751A 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 1:30 PM Vincent Chen <vincent.chen@sifive.com> wrote:
>
>   The following two reasons cause FP registers are sometimes not
> initialized before starting the user program.
> 1. Currently, the FP context is initialized in flush_thread() function
>    and we expect these initial values to be restored to FP register when
>    doing FP context switch. However, the FP context switch only occurs in
>    switch_to function. Hence, if this process does not be scheduled out
>    and scheduled in before entering the user space, the FP registers
>    have no chance to initialize.
> 2. In flush_thread(), the state of reg->sstatus.FS inherits from the
>    parent. Hence, the state of reg->sstatus.FS may be dirty. If this
>    process is scheduled out during flush_thread() and initializing the
>    FP register, the fstate_save() in switch_to will corrupt the FP context
>    which has been initialized until flush_thread().
>
>   To solve the 1st case, the initialization of the FP register will be
> completed in start_thread(). It makes sure all FP registers are initialized
> before starting the user program. For the 2nd case, the state of
> reg->sstatus.FS in start_thread will be set to SR_FS_OFF to prevent this
> process from corrupting FP context in doing context save. The FP state is
> set to SR_FS_INITIAL in start_trhead().
>
> Tested on both QEMU and HiFive Unleashed using BBL + Linux.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  arch/riscv/include/asm/switch_to.h |  6 ++++++
>  arch/riscv/kernel/process.c        | 13 +++++++++++--
>  2 files changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index 853b65e..d5fe573 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -19,6 +19,12 @@ static inline void __fstate_clean(struct pt_regs *regs)
>         regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
>  }
>
> +static inline void fstate_off(struct task_struct *task,
> +                              struct pt_regs *regs)
> +{
> +       regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_OFF;

The SR_FS_OFF is 0x0 so no need for ORing it.

> +}
> +
>  static inline void fstate_save(struct task_struct *task,
>                                struct pt_regs *regs)
>  {
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index f23794b..e3077ee 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -64,8 +64,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
>         unsigned long sp)
>  {
>         regs->sstatus = SR_SPIE;
> -       if (has_fpu)
> +       if (has_fpu) {
>                 regs->sstatus |= SR_FS_INITIAL;
> +#ifdef CONFIG_FPU
> +               /*
> +                * Restore the initial value to the FP register
> +                * before starting the user program.
> +                */
> +               fstate_restore(current, regs);
> +#endif
> +       }
>         regs->sepc = pc;
>         regs->sp = sp;
>         set_fs(USER_DS);
> @@ -75,10 +83,11 @@ void flush_thread(void)
>  {
>  #ifdef CONFIG_FPU
>         /*
> -        * Reset FPU context
> +        * Reset FPU state and context
>          *      frm: round to nearest, ties to even (IEEE default)
>          *      fflags: accrued exceptions cleared
>          */
> +       fstate_off(current, task_pt_regs(current));
>         memset(&current->thread.fstate, 0, sizeof(current->thread.fstate));
>  #endif
>  }
> --
> 2.7.4
>

Apart from above minor comment, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
