Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA0B2C9A
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 21:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=t6Nb6CWoTSFaIrkXjzMIp8EK6QARwags0y/f8KB3WOY=; b=d2JHFsfIHhF5JXGaCpPK8cseT
	U44Xd8WPkoOiJiKswE2QjGnYjCUYMo+i4ROulNdS556iizF+k46KHclTyH2RyALjYlMOJVtmbBQKu
	IImra7GjTFrAc/QlG7+nkir9x78DYD23cYSbtmLxIDG6XSkqsV0/bcZd9rmzPuqdp7UoSggpkmLVx
	UyIpHbN7guJ0aCOX1VT4tBfEPqJcs65vOxAq6+S8xKTyKyU/R8thFOGt2Ho1CgmaaO/K/MddI00dc
	u7xO9Vr1neMFzvA2HAzi97KuKgdVyliG48AHc7TIaBSDDblE2hOfWIvb1rlveeIaHMlL/cxrOpygp
	DJQcP1enA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9DHP-0005cY-OM; Sat, 14 Sep 2019 19:00:19 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9DHL-0005YG-1L
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 19:00:16 +0000
Received: by mail-pl1-f193.google.com with SMTP id y10so14699004pll.7
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 12:00:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=OFiiJYwXSRXINvUze1d4KfmURKJMOMB0TZAHUxFChKg=;
 b=BpFhFtS/tvSWLrtm48h1WV9lTwOGgney13qr0c4/PUY3q62EhG+ehzE0m38MXFlyx1
 15JeYfzpTk0qY0p3wjWPaa0rJAfrFVL7GFzMdePApe2EilT/hrqlFrS422vlHh7hXIr5
 MPNZmad66wV/cc2Wuq/lk2WN0PgXjQHNZ01Azhzahd5xfXWrXQaKsGLAIVIRbqKEG+YC
 EX7h+aVm6GlPvbp2Z+HBCKVPkIhUJXXA2OURjF/eOAiVcKt1rL96W5AiZSjonTBHLebP
 KwE4JqV8YWty58xhhveFjhLPwRb1AfeigCg3yeLDw+SYdqoI+s9WyJgAbBvNssG9uh7r
 +PKA==
X-Gm-Message-State: APjAAAUIHmA/yWOZUpRKVwGbwCspncSptOMkeIV5H7VTIl13tCDg9AAs
 rcmcGdpfpZiViADcJ+fZm3+WnbpnPOAzCaSQ
X-Google-Smtp-Source: APXvYqwCAZIGEJCOA0b/9T/YR7nXDut4D/Hkv2inKbJ3jCXen5H++uow94dW28QTx1kGUiJX/cXH7Q==
X-Received: by 2002:a17:902:8488:: with SMTP id
 c8mr52750200plo.164.1568487613263; 
 Sat, 14 Sep 2019 12:00:13 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id u24sm41073974pgk.31.2019.09.14.12.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 12:00:12 -0700 (PDT)
Date: Sat, 14 Sep 2019 12:00:12 -0700 (PDT)
X-Google-Original-Date: Sat, 14 Sep 2019 11:50:32 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <529ec882-734f-17ae-e4cb-3aeb563ad1d5@bluespec.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Darius Rad <darius@bluespec.com>
Message-ID: <mhng-c06cc89b-42d9-4f95-b090-2db96628d5fb@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_120015_099332_769C2691 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jason@lakedaemon.net, maz@kernel.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 12 Sep 2019 14:40:34 PDT (-0700), Darius Rad wrote:
> As per the existing comment, irq_mask and irq_unmask do not need
> to do anything for the PLIC.  However, the functions must exist
> (the pointers cannot be NULL) as they are not optional, based on
> the documentation (Documentation/core-api/genericirq.rst) as well
> as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>
> Signed-off-by: Darius Rad <darius@bluespec.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index cf755964f2f8..52d5169f924f 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>  }
>
> +/*
> + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
> + * by reading claim and "unmasked" when writing it back.
> + */
> +static void plic_irq_mask(struct irq_data *d) { }
> +static void plic_irq_unmask(struct irq_data *d) { }
> +
>  #ifdef CONFIG_SMP
>  static int plic_set_affinity(struct irq_data *d,
>  			     const struct cpumask *mask_val, bool force)
> @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>
>  static struct irq_chip plic_chip = {
>  	.name		= "SiFive PLIC",
> -	/*
> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
> -	 * by reading claim and "unmasked" when writing it back.
> -	 */
>  	.irq_enable	= plic_irq_enable,
>  	.irq_disable	= plic_irq_disable,
> +	.irq_mask	= plic_irq_mask,
> +	.irq_unmask	= plic_irq_unmask,
>  #ifdef CONFIG_SMP
>  	.irq_set_affinity = plic_set_affinity,
>  #endif

I can't find any other drivers in irqchip with empty irq_mask/irq_unmask.  I'm 
not well versed in irqchip stuff, so I'll leave it up to the irqchip 
maintainers to comment on if this is the right way to do this.  Either way, I'm 
assuming it'll go in through some the irqchip tree so

Acked-by: Palmer Dabbelt <palmer@sifive.com>

just to make sure I don't get in the way if it is the right way to do it :).

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
