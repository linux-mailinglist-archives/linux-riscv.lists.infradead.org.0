Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E0C8C5B1
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkC1QKMqsjRUyn5WKJl55ylFO4HLz4lcqREM4tx3HnY=; b=O5I8GvQwo498zy
	syOhJzOHL95Grcbsxn6Vykri/yxIm1V9mWWPP4MslXLjHJnsBfvkjeMdh4IW82uwCRgreXvIrsC+H
	dtl0/zV5OJY1TLPd5PKYoyRLLoQ/bR5F1QXWQekAu8Ebhquth+z/djc3Zi9swHMEs8LevE0DAUyG6
	P9xbSSISl4HG9BwFYkObsztTo/ka2rMO96M5bD1RRbylP59LeVrJVA0fjEDvmz6iXaRUnzcLiULPX
	SQVz0ILuU2qaWZYhdVisZXVIU8uvbsrtvrmIZEfzpNlQ5ywqCQYFLSZps1Je577OT0xBHLXYD8mhD
	RihU8tvXp3vAqMqlaLLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxiSg-00010s-Sh; Wed, 14 Aug 2019 01:52:26 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiSc-000107-Gb
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:52:23 +0000
Received: by mail-ot1-x341.google.com with SMTP id f17so43386949otq.4
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 18:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ug4XyDfcmMOuMpWVbRrmxyBe79U3+07+R7DrPjFhFk=;
 b=H3Qpl43zHubnuxu9OeDUV6gNsk9ptFFpiS3tjk+JhDbkCzO5OTUNJ+x6iHMyC3vCEx
 VbkQ8BjdNO+ZzE6JvWHFDZXdAAfL3wlIr74iP1WMr+un9rdwPj2rr1/qt/eZ9eWhECwm
 Q9/6UM3j2Rmcy8meLn/KdQjrKCmP10rnnRpjK5vipv8V0+azE4ZI8y+vHThYi4fV3lcr
 kmcSGolb6s6Rse18SFBm8A0G0B6iZuhypyyrhygGMEcW+/JxYBA99AZjSQ4xHiZMvDBJ
 c8CYz9uU4zagJrwSkP+YnoM0kakAgjJN0+LJauBeDSyNAA6mfx27pxnGrbWr0f0x2B07
 O4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ug4XyDfcmMOuMpWVbRrmxyBe79U3+07+R7DrPjFhFk=;
 b=KmFNE/ejt1F/uRvuwlXqzNKVy/yxBVE6wn2Sz9sFVyJvwTgk21B80sf4h602VOeRGV
 7TbnDoKPg2xuxKrVYquZC82/ZjtLprsBNknS1h1T5gABBWaDqkyg90DMQPCASxo+qwhI
 X3X5Df4DLsHE20bISt0vrzq7dnAAEO3Pv5w67YSaLhBlLFVrjtovl6JcbY1B2mQYSKNs
 9rwZsNHeG5FcWauncnQCKhwtDIFv+r2fZW+WTkAegvXe6fSAnlImxawVWE7LP9ezaNmy
 EmtDxeCozEIXf139ngMZn2YWzOFUXLNEi7CE/yVc65xic1uUiJAQ46UAYH+Zqr1113ar
 Bvyg==
X-Gm-Message-State: APjAAAXk28CmTZbFfAsuQZ0xjRpQ35psyFg8QXsuDpkRLR5V1VD/4xe1
 D3PyUjcB7cEF21R8Aqnjep+wQhPiFMzQCjsZcoCdQw==
X-Google-Smtp-Source: APXvYqzWeCKpEUmkGDS8DBay+V92sEA+A3njpbTvqLWlVAz5mO3zMFf1YbawLtL2Mhs9gzmNr1ooW6c52hDsZtykv70=
X-Received: by 2002:a5d:8550:: with SMTP id b16mr20860458ios.11.1565747541406; 
 Tue, 13 Aug 2019 18:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
 <20190812145816.GD26897@infradead.org>
In-Reply-To: <20190812145816.GD26897@infradead.org>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 14 Aug 2019 09:52:10 +0800
Message-ID: <CABvJ_xiPJnAOuU95jqNJx4hBGP0fFqD4suYFz_TY5F+aP9ni2Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: Correct the initialized flow of FP register
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_185222_599415_4ABAB139 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Aug 12, 2019 at 10:58 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> > +static inline void fstate_off(struct task_struct *task,
> > +                            struct pt_regs *regs)
> > +{
> > +     regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_OFF;
>
> No need for the inner braces here.

Ok.

>
> > +}
> > +
> >  static inline void fstate_save(struct task_struct *task,
> >                              struct pt_regs *regs)
> >  {
> > diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> > index f23794b..e3077ee 100644
> > --- a/arch/riscv/kernel/process.c
> > +++ b/arch/riscv/kernel/process.c
> > @@ -64,8 +64,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
> >       unsigned long sp)
> >  {
> >       regs->sstatus = SR_SPIE;
> > -     if (has_fpu)
> > +     if (has_fpu) {
> >               regs->sstatus |= SR_FS_INITIAL;
> > +#ifdef CONFIG_FPU
> > +             /*
> > +              * Restore the initial value to the FP register
> > +              * before starting the user program.
> > +              */
> > +             fstate_restore(current, regs);
> > +#endif
>
> fstate_restore has a no-op stub for the !CONFIG_FPU case, so the ifdef
> here is not needed.
>
You are right. I will remove the Ifdef condition.

> Otherwise this looks good to me:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks for your comments.

Regards,
Vincent Chen

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
