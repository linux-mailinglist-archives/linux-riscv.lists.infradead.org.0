Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CFA1A6374
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 09:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6bpjMW+GzYcPR9daW21i+rWw6xTJ7uzEt7yYYDWZye8=; b=NMnE/9294aHGYaFC0zABtmo+G
	4LREvAVacfnFEdH+ovQKWq8c130+Qmj8/Rfkv9osBe3rPzYpHBUpL16dNCC/DKjfAWIvDo2UIszHq
	aJ+Mo6QddGVi4O6sQe6rJQDadmEGTaAIlm3ekoDTwK3rzCa4pujTr5oKISYGpNm0GXU9X2DSmaAAU
	sX/SgTOLwzZkd/b1oHSeZJ60V5WZX5JtqkK592GIg918X5UKOSe1kSHQsg7RYBWrnJnkc/QAtmIue
	L2TjWrbNHgGu7+bp9zhEG9kwOq16ckcUSbOODkZzZI9YbnBKAECr/AihQgq1cFQP4eQCcT9tx+S9r
	sOjVAjt/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNtLB-0002Xr-J9; Mon, 13 Apr 2020 07:17:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtL8-0002XL-Ad
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 07:17:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id x25so8547121wmc.0
 for <linux-riscv@lists.infradead.org>; Mon, 13 Apr 2020 00:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6bpjMW+GzYcPR9daW21i+rWw6xTJ7uzEt7yYYDWZye8=;
 b=d+Yd08MhDy3n8uPAj61nMpr6ym0sQVpFn9ynW2A0zRLpEMdwd/dsjtXGr3CvZmqP8x
 c/a6V17JRXiNYECZoGXbC4MAz73FGaWzN85B2hCki5r7INf5tJhtDs1r/ylqQAplwnob
 Gepqu5Eexv/gu+4QyOV6VbGL6spp+v/OC94z7OdhM8a2vqrnHphuzIKEBrg+ncZk7U0Q
 UeADtyYBuxTAURI5pSSYJMxyjJ5Ett033nAdFiZ4JAK8EoPAg6w29GeWBFMq+//HuOSp
 wGiOLsNGAuwxERm8Vx8kakGYf+UYJ91V71tqR8k1egAGH0foE/BXeOBpTurqvQv23lob
 1Deg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6bpjMW+GzYcPR9daW21i+rWw6xTJ7uzEt7yYYDWZye8=;
 b=jUv22iiiEAOfQKzwXiJSuMnihrfOWnqHv/zdn3JbtHLI8zsgy6xv7DNlGTijoTKdEk
 eecONHq1uxT3lPvGXqzX/vPZZmIxLEK3gCpqPm/XtNoV8VDq0CaP/8YPdjB3qVGMtGvE
 a5fly0w8I7o9TTZkjzStko30EEe7xpMP7B2p8/QxWsr1DMQ85Rj0RRkXElxmVY9jTYj5
 mvUuWer7N84sRItX0yB7cptGMSl0oIC/x/u+DFmN3SJ0JP6mN2f8Uv65vxIGPWtYms1v
 sLp63x/W2RlUfL68KbkaY6weXe5ZrBOX1Iy5HE5/5kgh+yN5bwHA4qVChJarpiMbTbZa
 k/Aw==
X-Gm-Message-State: AGi0PuYCc43FaNdpa0frMMQSX8ZSpv6YS3FEsyQhVvKTHwOthLADHydQ
 RuExD3F8Hq7wfUpvuEL1NTCruiCSy89eNrTKvRTY
X-Google-Smtp-Source: APiQypI9nvk1IhbIpRM+ZnkxURJZCjtr6zR4g2ZnYcmJZqyKuoof/HH794rUfdXRFaYSW06NnIFLJmnuzBYyoAvb3mU=
X-Received: by 2002:a7b:c10d:: with SMTP id w13mr16952860wmi.78.1586762223184; 
 Mon, 13 Apr 2020 00:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200403014609.71831-1-atish.patra@wdc.com>
 <20200411115919.32fc0455@why>
In-Reply-To: <20200411115919.32fc0455@why>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 13 Apr 2020 00:16:51 -0700
Message-ID: <CAOnJCUK=mvru3J_KrE0viazGTintbBJEPDT=kcUgpktKb5X3tQ@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: Fix maximum priority threshold value
To: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_001706_568508_266060BA 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Apr 11, 2020 at 3:59 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Thu,  2 Apr 2020 18:46:09 -0700
> Atish Patra <atish.patra@wdc.com> wrote:
>
> > As per the PLIC specification, maximum priority threshold value is 0x7
> > not 0xF. Even though it doesn't cause any error in qemu/hifive unleashed,
> > there may be some implementation which checks the upper bound resulting in
> > an illegal access.
> >
> > Fixes: ccbe80bad571 (irqchip/sifive-plic: Enable/Disable external
> >                    interrupts upon cpu online/offline)
>
> Small nit: please write the "Fixes:" tag as documented in
> process/submitting-patches.rst:
>
> Fixes: ccbe80bad571 ("irqchip/sifive-plic: Enable/Disable external interrupts upon cpu online/offline")
>
> (with quotes, and on a single line), as it otherwise breaks with the
> lore-scrapping tooling which a bunch of us are now using.
>

Ahh Sorry for that. I will keep that in mind. I broke it into two
lines fearing a checkpatch warning.
But I guess I unleashed a bigger monster unknowingly ;)

> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > index c34fb3ae0ff8..d0a71febdadc 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -56,7 +56,7 @@
> >  #define     CONTEXT_THRESHOLD                0x00
> >  #define     CONTEXT_CLAIM            0x04
> >
> > -#define      PLIC_DISABLE_THRESHOLD          0xf
> > +#define      PLIC_DISABLE_THRESHOLD          0x7
> >  #define      PLIC_ENABLE_THRESHOLD           0
> >
> >  struct plic_priv {
>
> Queued for post -rc1.
>
> Thanks,
>
>         M.
> --
> Jazz is not dead. It just smells funny...
>


-- 
Regards,
Atish

