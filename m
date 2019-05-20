Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFD4237FE
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 15:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcekP0lzQEd/VITp+5331+qZuTvliD6DynyKRraXyjU=; b=nNH3gGaYjCcwdp
	OiEsMT6H1DgMAoGBQF0mqiiPC2gdzYszm5Oq+cwyYyLioUHl19mKotd66s1+tThqGKSBzaAbwxK9u
	m4AEO6v/HE+eoB0J3nd/kX1OcPL/8N2lfC4WlXfyoHBMhf80nMkmjmG4RISpdvVPDvrsNM0FKmmFH
	EFmpmNPyG54GKyAeRVJU6yZWKSsN8TaX4rSbpDgLr0hfHbF4ne6g8cTbW8J5utyHYoFvTRu/VWy/j
	7Vtlp3KaxmrRl8/H3KsOueAM3F6q1aiDxrDmvy8R1Ks5a/fKudWSjp8RgoGsufKAuCVkBu/MSS75X
	RKjonwChHBYhaHhcJ/Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiKm-0001cf-4J; Mon, 20 May 2019 13:28:08 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiKj-0001bu-73
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 13:28:06 +0000
Received: by mail-ua1-x942.google.com with SMTP id e9so5240192uar.9
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 06:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=22AYQZzoG7Oe1jq6WNzXvotDPxdHztrQDTFuuJjGD78=;
 b=KB+CPJT2B2gTqpChkgYubBcoMAaSKKmohJm72ITD+9kxXbGDON4+fMeDfrWYISfepH
 3cdJhye8mj133t2xqh0X9RMCvkPiAnrPoRJjuScuMAxc9WbC6k1Oh4Z+Cccbqz9zUZjf
 d+vQYSR+sBkLz3ophnJIc1lEdzR5dJ4ZOcmMfy12tpgUEmf5E/aA/DV63qZeia8NLmxw
 lJ4Z6/PL+AhCYV3slJcRe4PvUQmjlONdMFsOzqlWOAkyOn93lkGcsz2onkvWAbyNEfU/
 RAgibC9WAm2cMFTFDj5XdoU/fxAwLyIYsH6IUUZjkok2lZX8X1InymPma68VtyeaUuIT
 OVfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=22AYQZzoG7Oe1jq6WNzXvotDPxdHztrQDTFuuJjGD78=;
 b=DgqGBMW1UwGCRMmEtGRRy9qOFBlKd0zbHFsCaMICvyKKnRwUFUA5SnecjgIZC4kPJl
 CsWDJ+nrfp8Lgy3sIc7G4BBdvVGqDNzOwFo6jfoZL3u2j4c+jPhB/0CSEdPGi0rpGXgl
 5EAcFUmCBpeg9pUrWE5zj0dX4gIzDNOxxBlxIDG7iQFqj/GlELmcT4HBgS+1fhto4HUz
 vvxoRg2zn1WvimjxhcS2oNQk3QwV9o/wzJTxScoaB/A4ymk64TBtXFkDzzWDs58Aj/hu
 lcqNs/3fUJ7i72efSrAL9jQkAQDEqEsvRjRxx5Sjruey96PykpCWNavtRO9Phcyf+yps
 y4Dw==
X-Gm-Message-State: APjAAAUvINSi8LEauKoT+A73pVfNt/O+mRSS08iUTRRdnqRIPS1FSq8e
 a0y+bJCNlKkZYenYtwQ1S+/xcRns2tnvwuRR8PMueg==
X-Google-Smtp-Source: APXvYqwapFA3zJOmbxCEv+ksueO2t69F5DHKCwH1G0GdQycduLQrNvaH4w0zK9X8JYEmpaBjLAgnC2yANMyJKTOmNRA=
X-Received: by 2002:ab0:5ad0:: with SMTP id x16mr14383639uae.124.1558358884007; 
 Mon, 20 May 2019 06:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <1558354817-12034-1-git-send-email-sagar.kadam@sifive.com>
 <1558354817-12034-4-git-send-email-sagar.kadam@sifive.com>
 <20190520124107.GA25785@lunn.ch>
In-Reply-To: <20190520124107.GA25785@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 20 May 2019 18:57:52 +0530
Message-ID: <CAARK3HnZgiUOE3S7BOk9uC-MfmB4wO5zWFbuGGRFqKauYaX8yg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_062805_318002_C08049AF 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrew,

On Mon, May 20, 2019 at 6:11 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > @@ -406,7 +416,7 @@ static int ocores_xfer(struct i2c_adapter *adap,
> >  {
> >       struct ocores_i2c *i2c = i2c_get_adapdata(adap);
> >
> > -     if (i2c->flags & OCORES_FLAG_POLL)
> > +     if ((i2c->flags & (OCORES_FLAG_POLL | OCORES_FLAG_BROKEN_IRQ)))
> >               return ocores_xfer_polling(adap, msgs, num);
> >       return ocores_xfer_core(i2c, msgs, num, false);
> >  }
>
> You are not listening to what i said. All you need to know here is
> that you must poll. It does not matter if the IRQ is broken or not.
>

Apologies for my miss-understanding. I will rectify this and submit a v5.

> >       irq = platform_get_irq(pdev, 0);
> >       if (irq == -ENXIO) {
> > -             i2c->flags |= OCORES_FLAG_POLL;
>
> If there is no interrupt, you need to poll. So keep this line.

Will retain this.

> > +             /*
> > +              * Set a OCORES_FLAG_BROKEN_IRQ to enable workaround for
> > +              * FU540-C000 SoC in polling mode interface of i2c-ocore driver.
> > +              * Else enable default polling mode interface for SIFIVE/OCORE
> > +              * device types.
> > +              */
> > +             match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
> > +             if (match && (long)match->data == TYPE_SIFIVE_REV0)
> > +                     i2c->flags |= OCORES_FLAG_BROKEN_IRQ;
>
> If it is a OCORE, IRQ is broken, so OR in OCORES_FLAG_BROKEN_IRQ.

Got it, as device type SIFIVE is based on OCORE's re-implementation,
will OR in the broken IRQ flag and submit a v5.

> >
> > -     if (!(i2c->flags & OCORES_FLAG_POLL)) {
> > +     if (!(i2c->flags & (OCORES_FLAG_POLL | OCORES_FLAG_BROKEN_IRQ))) {
> >               ret = devm_request_irq(&pdev->dev, irq, ocores_isr, 0,
> >                                      pdev->name, i2c);
>
> Here you just need to know if you are polling. Broken IRQ does not
> matter.
>
>         Andrew

Thanks & Regards,
Sagar

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
