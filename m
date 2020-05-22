Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64D81DE011
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 08:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=srP7ViQWuk8gYrSzlJDDpsMNMVGdXtKx3PJIsQqVsew=; b=d3V2SwUPzpNMNXjXDvVeenCrV
	Z+nHPTW1Iztu3Nw5aa9OGFdeJ0W8L4eVDsJIrj7rOQw1s2Kv45byzy8XbdRkm5jtLW9ToMvO6S0B0
	zf4q9rFqK5SYgt3iDJ/IWgex4c3s4QOOipY9OgQlii9V8zCpbQD5qyv8P4wqi6OqAHkaeK4aHrn40
	z0ZeiejoafrOVUIN4sul8EK0d9r3NmspBOkESEUpUP9kOYtOCxMtdVqTplvq7uymHodbk/iHK51hk
	Vki14l3fx138AiaaQn4lgPHC79z3xs605RvZMual8ZwG1RYvQ+TfWdac3PEgKMGyK67t3C8G/2K5S
	ZyacdOLlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1Po-0004pE-Bh; Fri, 22 May 2020 06:44:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1Pk-0004oL-Dy
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 06:44:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id h4so7627895wmb.4
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 23:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=srP7ViQWuk8gYrSzlJDDpsMNMVGdXtKx3PJIsQqVsew=;
 b=nbAF/radFKg0JTqXnE60JqYHZmDYODGWY9hlBRKa3BF61ZyleZAkXggKz+J7ogsZpD
 e+AtBBBKCPDKG+LWj7WK3f9WcMpXJ1zYT6YLanVLiXHPqLELMDgeWoMqdvMc8Fo8SFHl
 EcMKDH1XlCBUMJgHg0GVbc8NOd4TC60Nw1lTWRjI4mW5cF0l+GTUxmpyKuY2/lN2atWH
 thSjwkNjqjgBRwlUxwB0U+CZzwJZhloDed2QvumgFwdufRUbRU3MPDZBC30vqiHrBHhc
 cDZZwgBUp0gHGpwEuDa5KQO09URDpsxTBs9CPIE4XV7VUYAbl4B8huYRUKuLvr10QlSH
 90ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=srP7ViQWuk8gYrSzlJDDpsMNMVGdXtKx3PJIsQqVsew=;
 b=gbW1ztbgxpwqSurpzIBrP45dfho+0xiPLOQQ7vIWO34KJqkYJHi3nPyUKvhUK0xjNr
 OZ96J2GiXt6VU6hJ/3xmrPlWtpC2495wm35AjsMMMeAUx0419Vh+pfv7+X57R14YDBx/
 mtQZYk8npTt1+AIJB2peZw279F+P+XA733w97rzRuSN+xnkq8pWtxraSaj/S3NurBq7P
 PZR/QBaL7H+jRaLMl+TfM/7NsJC5ugNVuBa2cbdj44zxu1O08C8ACF/YOtAqdzPkUPcW
 T/Ic807nJL+3rXqo9054d1YPeyATfUa7AnPdw6RP2BRbziRJ5HjOw0Ni9128KQupcJmq
 QB1g==
X-Gm-Message-State: AOAM5339ncWGpgVmyFOpIg8NbR+919PSnTgCpBAgVkCXdh5dj3x3CzB1
 3BEcV2d/juqhHmzBskMeJAMlpCaYpKKAH2IjbQzZgw==
X-Google-Smtp-Source: ABdhPJwYvmQAKNAdEtDF2lkuLPxuXrswdEf7MIonLNzRUZnJkpxeElIXQrYUopv0xM1XZE6wayG1r0Tgl/UL0dMyLlY=
X-Received: by 2002:a1c:7410:: with SMTP id p16mr12607532wmc.134.1590129852604; 
 Thu, 21 May 2020 23:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091441.94843-2-anup.patel@wdc.com>
 <mhng-724b2ebd-3b41-4b3e-8685-26860402e663@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-724b2ebd-3b41-4b3e-8685-26860402e663@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 22 May 2020 12:14:00 +0530
Message-ID: <CAAhSdy1X=4veB_3XDbrtVMc2KkZip-7bdaet9JqO3fGik4Oo1g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] irqchip/sifive-plic: Set default irq affinity in
 plic_irqdomain_map()
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_234416_469093_0BCFC4DE 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:36 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Mon, 18 May 2020 02:14:39 PDT (-0700), Anup Patel wrote:
> > For multiple PLIC instances, each PLIC can only target a subset of
> > CPUs which is represented by "lmask" in the "struct plic_priv".
> >
> > Currently, the default irq affinity for each PLIC interrupt is all
> > online CPUs which is illegal value for default irq affinity when we
> > have multiple PLIC instances. To fix this, we now set "lmask" as the
> > default irq affinity in for each interrupt in plic_irqdomain_map().
> >
> > Fixes: f1ad1133b18f ("irqchip/sifive-plic: Add support for multiple PLICs")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > index 822e074c0600..9f7f8ce88c00 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -176,9 +176,12 @@ static struct irq_chip plic_chip = {
> >  static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
> >                             irq_hw_number_t hwirq)
> >  {
> > +     struct plic_priv *priv = d->host_data;
> > +
> >       irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
> >                           handle_fasteoi_irq, NULL, NULL);
>
> If you're going to re-spin this, d->host_data could be priv here.

The controller's private data is named "host_data" for "struct irq_domain"
in Linux irq subsystem hence the usage.

>
> >       irq_set_noprobe(irq);
> > +     irq_set_affinity(irq, &priv->lmask);
> >       return 0;
> >  }
>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks,
Anup

