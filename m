Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885218C9F4
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 05:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yAir+gMWxZzp1rKdBjOKEkdtDbau8e1s/o5tt1FPn8=; b=gP/Ztk1ewkpFdi
	R2lY0pmyUZ8jmn3xIs38XdD1ESwd9CcBaa+5R6ml7ZR6Yt8OiD+UIClWl1T5pCMFY5UKZ9ZfxuKuf
	fv0ztM98mXDAtVDnWWEqUpAUwf3jMLSW9ZBpbi/KEaXjY447Yx7dpByrY4JGsuJVJt2sbwsV1Lx3Z
	eFpEK2bXazBc1YjB3L3kV3bL2vmIGieSKNI4WdsAFE+REg20et8ZSEVXfHf5c5ICbCYVxT+RhGRs5
	wgdfXzup1gVTch/MSDMJQ9zoHjijni5ByqCGb55vUBcOlowLbuCIr9WMDEm0+R7Wp60+81BA9C1jP
	VKFR5S5Z2dKOuqPYFNng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxkKe-0003HU-Hk; Wed, 14 Aug 2019 03:52:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxkKb-0003GU-7U
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 03:52:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so1433293wrd.7
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 20:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=++nUJKgOGfOdCIF5m2zpPrP5+AC7n3dwa/EWdf1OwMc=;
 b=HFCBcW46Up/t7+Wpl1cQtJ2Z0MWWKq6hkQvKXb3ym5uKoaplfmgQwory4qEbWfO4jw
 tk4sWyGPPvxTFuwmNH0szfExit3F3tjHFyEC17hzd/O+B26qqXulmiGX4YwMuKHgHizU
 8TgYxnzBNDEmjCDzCQh4mAmIHvEmxajyieBp+Q3VHuVWOUchIrYDojdBEU5R7S+xICm2
 J5V2EQAPVtzexPzWD9BnIpG5lPctZMUORM4Avsyg6roeqpB1C8xkvivNLmXQmGdckM87
 PwnQyfM05C3qbnxKCnsyx57TASNa2KqJY4CbFeyk5lrZMRDLbodZIOcFwe0hZQsw2HiQ
 c/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=++nUJKgOGfOdCIF5m2zpPrP5+AC7n3dwa/EWdf1OwMc=;
 b=tF96nyzWqqJmBYugtV3Bw49d/MRh51tqzsRVcYdemAliQrS34oFRf/fFIgNqPWbBkP
 4Y0SEd7T/oJThPTqYVp52vRXX1YIttKYiBdMYqkqh/aW58j6IimvK5Svgem1kVuhxvp+
 hqheRaSCWecaIdl/TqcI2CekVHaD7dKcfFWR8m3dwVkE1l3pQvPpxcf8UsfhBF3oKxDQ
 VsSJm8viF32AqfBrry1gWqUvG9TvqhHV61XK22muuImdntvEvcyeZx4t1iXxP3ittCZh
 EA27yu3sws/GKck1XPM8D34IMmBcfWexR7/bMKa6TpLOWtX4JPgknqLh5+ZOb2OMrYUl
 9kkw==
X-Gm-Message-State: APjAAAULw7lCKo6dSiLgkOdWOsV0X1lNe6UWohQc46xbWTQVhsj5r98T
 CCgC8SVoH0L0wjWIGHx4Py8oM1SacERS2wl4/0VWGw==
X-Google-Smtp-Source: APXvYqyKhu6lwNRBKi6qoG6yfgcV2346iuvFcAyShI7YY1Od8sKPmm/Nn1gLTd8DaJxE6ZEhmmIXoQqWi/pM+l6tNl0=
X-Received: by 2002:adf:f641:: with SMTP id x1mr6622878wrp.179.1565754728415; 
 Tue, 13 Aug 2019 20:52:08 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
 <CAAhSdy0BNN4G270WJ+OqrFAv3-z9o2iE+QDHHo-FY0fqh5wGqg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908080846220.21111@viisi.sifive.com>
 <CABvJ_xgHVT4QKAxRPdLQp3Q5bTmjQ5QfTo6R49Z0Qwatuc_b+A@mail.gmail.com>
In-Reply-To: <CABvJ_xgHVT4QKAxRPdLQp3Q5bTmjQ5QfTo6R49Z0Qwatuc_b+A@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 14 Aug 2019 09:21:57 +0530
Message-ID: <CAAhSdy0mOspKF7Z7H9MsbdrYYF3M_XGfm+F-dAt2wZSW_90PFg@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: Correct the initialized flow of FP register
To: Vincent Chen <vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_205213_296939_730C2926 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 7:15 AM Vincent Chen <vincent.chen@sifive.com> wrote:
>
> On Thu, Aug 8, 2019 at 11:50 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Thu, 8 Aug 2019, Anup Patel wrote:
> >
> > > On Thu, Aug 8, 2019 at 1:30 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> > > >
> > > > +static inline void fstate_off(struct task_struct *task,
> > > > +                              struct pt_regs *regs)
> > > > +{
> > > > +       regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_OFF;
> > >
> > > The SR_FS_OFF is 0x0 so no need for ORing it.
> >
> > That one looks OK to me, since it makes it more obvious to humans what's
> > happening here - reviewers won't need to know that "off" is 0x0.  The
> > compiler should drop it internally, so it won't affect the generated
> > code.
> >
> Thanks for Paul's comment
> My thought is the same as Paul.
>
>
> > > Apart from above minor comment, looks good to me.
> > >
> > > Reviewed-by: Anup Patel <anup@brainfault.org>
> >
> > Will add your Reviewed-by: tag - let us know if you want me to drop it or
> > caveat it.
> >
> >
> > - Paul
>
> Dear Anup,
> I suppose you can accept our thought about using the SR_FS_OFF flag
> because I didn't receive any reply from you.
> Thanks for your review and comments.

No problem, go ahead without dropping SR_FS_OFF flag.

You can include my Reviewed-by.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
