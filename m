Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506FDB2CC2
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 21:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITnmJIK99gNXk4oQrkx0qMtux6HgXLikPUoDFKgcls8=; b=iXqwLXGiTYAJaP
	CmpA9VheaSYHAF7nLwUj9N0H3m0OiKMpuOlxXOrX4qkWIM6gwBYFKqdfEO/RA5LkindQaafcIQUVl
	h1+xiS4wwhRZnznyYmLx2l5ZRKUQeWz0Z8cKvYnDzaYbcGM1OVdYxgUWIvBy+6L35SUydM0tf8HXO
	uwlgGg+rk747xU+re7xQXA6P+jQimLnfalNeNYuCCvJorFXdlg2LpEcU70ITJ1FHjOxFMOx/wVrT3
	4cKVeyEjKBE40uerxNsWF+BqIcM2eNJQmrx3QUGR5ZVThlrfaUAzWDaXBLeFbTel+8aTl+3gZDh93
	aF7fqNOlN2/qdgGPvq4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9DwY-00011a-MB; Sat, 14 Sep 2019 19:42:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9DwU-00010q-Vk
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 19:42:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id h2so23634439ljk.1
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 12:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qEuJqEba5wd0EP42PfWTuZEN2nNByfuuSJHMeH7V5js=;
 b=aWbri8oFWimFKwzNLl8dD8A6uR8s9aQvkud0KLHl+/Mp6+B2kuy58ZTBrhHHdUKjH+
 tovVX+rYex0P9grYA2a2NmrGbZR1eWcimwHjPO1xq9VOhMfhiLrOSOUQPwKi0xG6pEtE
 JHkbbcJ0tXIna0YENdEvm+7q19wmgvTL99xjxxzAcWy9GA3LDorOp5Ac84lNJGCb8q6v
 Hse+RYCFyYDUvmo5CR+Vy2EIrfvqu2mAyzL7WqXHigJFjEZDA4oQGIoSoV1kMftxGiN1
 //HkC2b8mhyHwmrk/ufRQU165MsmG9sgL9y5gMjZgS+x1doMBIjMuKGVB0cbnAUrs7SB
 gL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qEuJqEba5wd0EP42PfWTuZEN2nNByfuuSJHMeH7V5js=;
 b=YjjXocraFua8yJo7phPsr9/f88btdAMJkRRvcFa5tUhTjqE/Sg4PtpITgCiIDsupiv
 zx9l3hFJrByb4sceL9oD0sIfwFENwhCPKQrT0ScOgGxhdMOX0TQ/jXeAkkQxmZxXgx64
 mM/ueu9h/PzcnlFNJJM7y9ntzR1ENIHn48pAvdqFoG4drV9eX3OElua16m/gcxlX5jxo
 M9QxbGVkYBaYcwKkyecaJCVQQcBzAqxYNVr1aeegN/1sZgZjqXJ4U97xKSrU6Ih897Ky
 gj1m+mKhdnjtHeRMkr6cJirDU5rqXXY3EXLJ6XaqUmnpCASBN6W5IDZGvsipLXi/ZDfB
 EbOQ==
X-Gm-Message-State: APjAAAVStRQM62KUK/O5XfbAXDptjOQ5hJFLzRY1/jGMfrcfeL1dJ4Yw
 3oaO0LPVEjtuOEYsh3+U9/DJFnliW3hfpXFkzSQ=
X-Google-Smtp-Source: APXvYqynUVQ3mZD5qF/lIExEGnZb6E8RMFLC7y4Jg8vqFfQuMna5mylWQmzi2IwdYnXfInoF5GDMRhpiYjnxPw8Ug3M=
X-Received: by 2002:a2e:5d98:: with SMTP id v24mr34390435lje.56.1568490163906; 
 Sat, 14 Sep 2019 12:42:43 -0700 (PDT)
MIME-Version: 1.0
References: <529ec882-734f-17ae-e4cb-3aeb563ad1d5@bluespec.com>
 <mhng-c06cc89b-42d9-4f95-b090-2db96628d5fb@palmer-si-x1e>
In-Reply-To: <mhng-c06cc89b-42d9-4f95-b090-2db96628d5fb@palmer-si-x1e>
From: Charles Papon <charles.papon.90@gmail.com>
Date: Sat, 14 Sep 2019 21:42:32 +0200
Message-ID: <CAMabmMJ=QcH-529O6ORWbFwOrAnMKeWTvQ=WGYgnOoihqj9uFA@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_124247_048570_15C14EFD 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (charles.papon.90[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (charles.papon.90[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: maz@kernel.org, jason@lakedaemon.net, Darius Rad <darius@bluespec.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I had issues with that plic driver. The current implementation wasn't
usable with driver using level sensitive interrupt together with the
IRQF_ONESHOT flag.

Those null were producing crashes in the chained_irq_enter function.
Filling them with dummy function fixed the issue.

On Sat, Sep 14, 2019 at 9:00 PM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> On Thu, 12 Sep 2019 14:40:34 PDT (-0700), Darius Rad wrote:
> > As per the existing comment, irq_mask and irq_unmask do not need
> > to do anything for the PLIC.  However, the functions must exist
> > (the pointers cannot be NULL) as they are not optional, based on
> > the documentation (Documentation/core-api/genericirq.rst) as well
> > as existing usage (e.g., include/linux/irqchip/chained_irq.h).
> >
> > Signed-off-by: Darius Rad <darius@bluespec.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > index cf755964f2f8..52d5169f924f 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
> >       plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
> >  }
> >
> > +/*
> > + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
> > + * by reading claim and "unmasked" when writing it back.
> > + */
> > +static void plic_irq_mask(struct irq_data *d) { }
> > +static void plic_irq_unmask(struct irq_data *d) { }
> > +
> >  #ifdef CONFIG_SMP
> >  static int plic_set_affinity(struct irq_data *d,
> >                            const struct cpumask *mask_val, bool force)
> > @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
> >
> >  static struct irq_chip plic_chip = {
> >       .name           = "SiFive PLIC",
> > -     /*
> > -      * There is no need to mask/unmask PLIC interrupts.  They are "masked"
> > -      * by reading claim and "unmasked" when writing it back.
> > -      */
> >       .irq_enable     = plic_irq_enable,
> >       .irq_disable    = plic_irq_disable,
> > +     .irq_mask       = plic_irq_mask,
> > +     .irq_unmask     = plic_irq_unmask,
> >  #ifdef CONFIG_SMP
> >       .irq_set_affinity = plic_set_affinity,
> >  #endif
>
> I can't find any other drivers in irqchip with empty irq_mask/irq_unmask.  I'm
> not well versed in irqchip stuff, so I'll leave it up to the irqchip
> maintainers to comment on if this is the right way to do this.  Either way, I'm
> assuming it'll go in through some the irqchip tree so
>
> Acked-by: Palmer Dabbelt <palmer@sifive.com>
>
> just to make sure I don't get in the way if it is the right way to do it :).
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
