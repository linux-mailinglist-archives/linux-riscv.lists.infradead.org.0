Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D769415322
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 19:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWK9essWnpQUlT1AKwyOER7IwUmGo5bqIq1M2YRKQPU=; b=JGfeQ2Uz+d8/aX
	BNFDFDPyYVKg/QM1IRtRQaIzuxn6/A6DdgI+p8tZshXTioXv/7gAfFkfplP1k5Af4HwY6EJ7QzlBZ
	osryqu8cYGyZf/m9PhA9S0QJDem3hYQVR3mxUzNAXyiX6LnmZmDujd1qQqGcyEn9LjgsP7493Jh8E
	AIXXuTnsI71QpjAmdy1XY3Q5gY/REcZTil1CRbRS9apQYPflKnsnt5U9pdztn55uFVgH9xuTfDJ4Q
	SHEl3EX5KKuF8pfI66QnGv94cnmxZa52iEQRiTq3ra7M3vPxHad2xWNF+yW6UltwRNTkp2b9QNaMH
	rLOLqPRenafOO3OrQIOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhpA-0000NC-Nm; Mon, 06 May 2019 17:54:48 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhp6-0000Mo-RO
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 17:54:46 +0000
Received: by mail-ua1-x944.google.com with SMTP id 49so1582267uas.0
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 10:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t/hieHfzO8noPDNoAxk691xfv/UVSgo8EHet25ThOxA=;
 b=K3dHADv+pUO4Jys+GSog3efxohLaI5rNKm0Cz5eSJUzFXyet2diAyz+f0fLjUL3yZt
 +F6kBpL4uL+xYYvw0UOhc9tMAnwBCXjgnB4hThOFCaQL9EAXB+5ZyIyq3GQGq3JYWO+Z
 qEGlLm5H0EC7fbXNGXns50+HIKOtDbofkoRLRK17tgePEaynXSsLUHxR0IqVP6XL4Gu3
 9ho0A+xv6gzjOG8zWMbCIS5Zn1HMiJeVZrHGX++a+fs1RRBpzBmy47AVao48DaPn7ZdC
 yLPLfxfvlt/OdI/0m8QX68HyJxuyQJ6g9z6+yMag8L4LUDO1Y1aBi16/CVEnli5U7hnX
 00jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t/hieHfzO8noPDNoAxk691xfv/UVSgo8EHet25ThOxA=;
 b=SPRWWfJIBtSVojMcTOUeWJkOPWHFFjmtMvV2lnY4F8TfMCDfIcyYXueHdTVkg0sGS5
 NYI5VCqG/1uRRGsSh5cex7uRRO6MSXo5nhEhRUiR+7etoMjCExBOqVO5qrxmuzOB35qL
 zbwZNUCgqFQvg6l0rVnxYGQpfwvlYo0RxBaXgUZizdC7Kr/HcaXzXuhMH8ZmdIYoH3fA
 adKJzmB2b35SG6pIt2yidhrEH6+1Fk1I9EtiE1gJSQOm6EdVtKBHy7iQFYvgCi4bGNBE
 y8RHCfL+Q5lSkFt1n3PUrN9hpAZxhJHJ3k2aGi+0RzypbT/p30//cA6Y2CsPTVUr5Eh6
 7HiA==
X-Gm-Message-State: APjAAAVvmKeSwTN42o2fydZW+ryAiTqXXzx7wBnXlOaQcohy6T5/fb42
 9TAU92X5Ha126Qf8VE9bRZq8QEWYZ0dTUDaM0FUqSw==
X-Google-Smtp-Source: APXvYqwqwTUCzjDWfH3EHzsu393rI6tVpwgwXSK391tnxObsqcMP1lfqzmFm+qWPa/9uzA+kfrKWqWPRe+HKZXMG/uo=
X-Received: by 2002:ab0:59aa:: with SMTP id g39mr4867600uad.124.1557165283581; 
 Mon, 06 May 2019 10:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
 <1557147240-29551-4-git-send-email-sagar.kadam@sifive.com>
 <20190506132924.GD15291@lunn.ch>
In-Reply-To: <20190506132924.GD15291@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 6 May 2019 23:24:28 +0530
Message-ID: <CAARK3H=9frKMTB6aWBwEmCxXxQuZgjAij_Uam+U8of48hjq=bA@mail.gmail.com>
Subject: Re: [PATCH v1 v1 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_105445_382016_311C5153 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, May 6, 2019 at 6:59 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> >  /*
> >   * 'process_lock' exists because ocores_process() and ocores_process_timeout()
> > @@ -239,8 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
> >       struct ocores_i2c *i2c = dev_id;
> >       u8 stat = oc_getreg(i2c, OCI2C_STATUS);
> >
> > -     if (!(stat & OCI2C_STAT_IF))
> > +     if (i2c->flags && SIFIVE_FLAG_POLL) {
>
> Do you really want && here?
>
> > +             if (stat & OCI2C_STAT_IF)
> > +                     if (!(stat & OCI2C_STAT_BUSY))
> > +                             return IRQ_NONE;
> > +     } else if (!(stat & OCI2C_STAT_IF)) {
> >               return IRQ_NONE;
> > +     }
> >
> >       ocores_process(i2c, stat);
> >
> > @@ -356,6 +362,11 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
> >               ret = ocores_isr(-1, i2c);
> >               if (ret == IRQ_NONE)
> >                       break; /* all messages have been transferred */
> > +             else {
> > +                     if (i2c->flags && SIFIVE_FLAG_POLL)
>
> And here?
>
> > +                             if (i2c->state == STATE_DONE)
> > +                                     break;
> > +             }
> >       }
> >  }
> >
> > @@ -406,7 +417,7 @@ static int ocores_xfer(struct i2c_adapter *adap,
> >  {
> >       struct ocores_i2c *i2c = i2c_get_adapdata(adap);
> >
> > -     if (i2c->flags & OCORES_FLAG_POLL)
> > +     if ((i2c->flags & OCORES_FLAG_POLL) || (i2c->flags & SIFIVE_FLAG_POLL))
>
> You can combine this

Thanks for your suggestion's Andrew.
Yes, I will optimize this.
>
> if ((i2c->flags & (OCORES_FLAG_POLL | SIFIVE_FLAG_POLL))
>
> >               return ocores_xfer_polling(adap, msgs, num);
> >       return ocores_xfer_core(i2c, msgs, num, false);
> >  }
> > @@ -597,6 +608,7 @@ static int ocores_i2c_probe(struct platform_device *pdev)
> >  {
> >       struct ocores_i2c *i2c;
> >       struct ocores_i2c_platform_data *pdata;
> > +     const struct of_device_id *match;
> >       struct resource *res;
> >       int irq;
> >       int ret;
> > @@ -678,13 +690,21 @@ static int ocores_i2c_probe(struct platform_device *pdev)
> >
> >       irq = platform_get_irq(pdev, 0);
> >       if (irq == -ENXIO) {
> > -             i2c->flags |= OCORES_FLAG_POLL;
> > +             /*
> > +              * Set a SIFIVE_FLAG_POLL to enable workaround for FU540
> > +              * in polling mode interface of i2c-ocore driver.
> > +              */
> > +             match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
> > +             if (match && (long)match->data == TYPE_SIFIVE_REV0)
> > +                     i2c->flags |= SIFIVE_FLAG_POLL;
> > +             else
> > +                     i2c->flags |= OCORES_FLAG_POLL;
>
> Please take a look at the whole code, and consider if it is better to
> set both SIFIVE_FLAG_POLL and OCORES_FLAG_POLL. Maybe rename
> SIFIVE_FLAG_POLL to OCORES_FLAG_BROKEN_IRQ_BIT?
>
The intent of this patch is to add a workaround for hardware errratum
of FU540 a SiFive Device,
hence I had named the flag accordingly. Yes,
OCORES_FLAG_BROKEN_IRQ_BIT is a better and generic term,
I will rename and resubmit this patch

-Thanks
Sagar

> Thanks
>         Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
