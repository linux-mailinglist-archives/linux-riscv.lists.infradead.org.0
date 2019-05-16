Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BFB2075D
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 14:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clcMUyhcEQ25GGUV/wMVpsoRP74y7EEmw32km7b+X1o=; b=WquziSUC0Fy9iE
	WPrpd6paXdxiFP7y9aZXJq2XkHrbSHwORDxA43K5ZAFNhm7VrXnVx0ixOvys6jDrY8/QVDgx8K3cs
	iMRvDbjrCFZWh7Ai5fJAkjOp5deEKf9qnY3GNZD33c8mI+ruHmdm1+7tUHXNyJEsFU2Bpw1/6XR9y
	OUI7ySbIYWszmw+gZO022GiY8zvSIiqltKaQsV+qZS3cfjbngrUHVOhVE1UlbPw4ymOXDodR69/VW
	VTlB7EkFOt4nQMb8OJqpdlgsrKdkxU5pDywUpL0+CFu8YDVp2PyfzKNpYlL1bZOznNy6onDkisZlq
	w65k2A6HxBdANYRs2+qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFuK-000432-AP; Thu, 16 May 2019 12:54:48 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFuG-00042J-FR
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 12:54:45 +0000
Received: by mail-vs1-xe41.google.com with SMTP id c24so2224329vsp.7
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 05:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5JFKFzEG0xBUwD7HIYkZnnh9dqUah7E+Ib/gYxU2vLc=;
 b=VYoxyClJ3IjCVsog1UOHY1j+te4vzK7Zn2KD34QyuMIWoFuDNp2DKcFQsGF7V5m1+7
 9TjRCmfp8zPch4KoXHkfiEsy94k9AIuh7YLakWy4P/y4oXwuJlYONSjl0JX9V0ajbr6v
 +0DcWGGJ63IhmWOGKLnbLaXwZa6K0t2YEfKHqwyZrkAIlahHSxIvEmiv8NjKLjsb/Z/s
 BwwGWbUZWgcHXmcdk1Y858SQGg5Fa9I9UqDHVf2ZLb5pjWASAuLCnZazpDqjQUtKNmww
 QdbHS9uJTFRRPv2+3ogrqq5IM09zMxLdUcwvpGgFIT/9DjcNWIAGPbYTEiMhAUhA9X4h
 JNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5JFKFzEG0xBUwD7HIYkZnnh9dqUah7E+Ib/gYxU2vLc=;
 b=D+ZHpmRITN9tBQUzWr2iwkBJ/s1LH6zA+1vqzmBNpMn4I6GtjHZy68R+vrb9NcSyDM
 S78+m9WdqLjioccYzfJn20UpbkR/5n1SK6vGSi2CMC9v4WBVyK6TF42OJ+y4PNiBqNm1
 5qqEbWDEsp24MLnCsA4nx0+wODJG0Py95vQI5nlKcI8yty6dgs9L6vm5VS0x8VrRTPYR
 oQUYyaEsNv8sFW5gLNp44aoHCgJpA/SyRX6jfCI5owawPC/6+Y3ziNxj2U4FjbShKgMC
 gHsQmY0aM7cmHEXpFGyggBQ8HOGSkJQpyQ2zk7ZUPTNe3F1ONDesrDT+q+mglqooQLJM
 lzuQ==
X-Gm-Message-State: APjAAAWvVaN/BL+Kx8AL2t3RXiVxMOK6cD1ELSXn8FRSFpt03eTDiJ6I
 9HiNZnpkxZVcsvhogbqZSSFeIOQpgGknW8qeFtwwhQ==
X-Google-Smtp-Source: APXvYqzDDDWdu9fo9iPHY+ysVVykXsJWlZRil28ig+PCzrEXYHeHo4q5f7yXfu68QdSmpPfaBGotMnL52M7tvXUqMI4=
X-Received: by 2002:a67:c84:: with SMTP id 126mr8581637vsm.178.1558011283233; 
 Thu, 16 May 2019 05:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
 <1557983320-14461-4-git-send-email-sagar.kadam@sifive.com>
 <20190516123120.GB14298@lunn.ch>
In-Reply-To: <20190516123120.GB14298@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Thu, 16 May 2019 18:24:32 +0530
Message-ID: <CAARK3H=L2AFtog6wdJGU7rKi7yk-AzDgFdjcjktZgkqdDwnOZQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_055444_540695_4334B9D7 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hello Andrew,

On Thu, May 16, 2019 at 6:01 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > @@ -682,13 +693,24 @@ static int ocores_i2c_probe(struct platform_device *pdev)
> >
> >       irq = platform_get_irq(pdev, 0);
> >       if (irq == -ENXIO) {
> > -             i2c->flags |= OCORES_FLAG_POLL;
> > +             /*
> > +              * Set a OCORES_FLAG_BROKEN_IRQ to enable workaround for
> > +              * FU540-C000 SoC in polling mode interface of i2c-ocore driver.
> > +              * Else enable default polling mode interface for SIFIVE/OCORE
> > +              * device types.
> > +              */
> > +             match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
> > +             if (match && (long)match->data ==
> > +                             (TYPE_SIFIVE_REV0 | OCORES_FLAG_BROKEN_IRQ))
>
> This looks wrong. You added:
>
> +       {
> +               .compatible = "sifive,fu540-c000-i2c",
> +               .data = (void *)TYPE_SIFIVE_REV0,
> +       },
> +       {
> +               .compatible = "sifive,i2c0",
> +               .data = (void *)TYPE_SIFIVE_REV0,
> +       },
>
> So match->data just has TYPE_SIFIVE_REV0.
I updated the device_id table into two logically separated patches as follows:-

1. Update device id table for Sifive devices
    [PATCH v3 2/3] i2c-ocore:
                  .data for sifive,fu540-540-c000 and sifive,i2c0 both
are for sifive devices hence TYPE_SIFIVE_REV0
2. Add polling mode workaround fix for fu540-c000 SoC
    [PATCH v3 3/3] i2c-ocores:
                  .data for sifive,fu540-540-c000 is of
TYPE_SIFIVE_REV0 and has a broken IRQ so the flag
OCORES_FLAG_BROKEN_IRQ is OR'd to data into device id table.

Please let me know if you feel patch 2 and patch 3 need to be squashed
together into a single patch.

>
> > +                     i2c->flags |= OCORES_FLAG_BROKEN_IRQ;
> > +             else
> > +                     i2c->flags |= OCORES_FLAG_POLL;
>
> These two don't need to be exclusive. It makes more sense to say
> SIFIVE needs to poll and it its IRQ is broken. A lot of your other
> changes then go away.
>
Other SiFive chip's with Ocore based I2C re-implementation might not
need the broken IRQ workaround.
and can use the the existing mainline polling mode interface, using
OCORES_FLAG_POLL.

Thanks & BR,
Sagar Kadam
>        Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
