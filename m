Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00B314C468
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Jan 2020 02:28:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6B1VhRQwgQQGh2ESABiP5pnpxVqXMTnf0pfde8jgU5c=; b=MJ5vOJLdb3uVJ0q+Ach2x/LdL
	QD7LBu1h0DpOOTGhQ42TgC0l4AsUujxXmLzO+wZpR+CV1JLu90rNhE93+lHk6b7GbQbQEWIxjUgtG
	QodpYrSSljJRnYe5MbvjLwe8wUQuR/kIwdH2pVeGboEriBK/umxVXcOUzRm9wVoDMgJ6FVOmipAiY
	mqZMuYpyy3wjA5+uusUVl533edFupS8TU1k98ZPqEnjv9dMmsdSwKksheQflJ7qfZbtyMqm6KK/Pv
	zSVI9ud4bU/1wtKoal9FP4YWZMc1J/MDioJBWv89tdKW6i2mTYdL+dNbg+b4CtTxIOcc5jIxTI1+v
	Dpv6QIigg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwc9G-0006z7-JN; Wed, 29 Jan 2020 01:28:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwc9B-0006yk-Ud
 for linux-riscv@lists.infradead.org; Wed, 29 Jan 2020 01:28:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so7595649pfc.5
 for <linux-riscv@lists.infradead.org>; Tue, 28 Jan 2020 17:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6B1VhRQwgQQGh2ESABiP5pnpxVqXMTnf0pfde8jgU5c=;
 b=kMbL6DRcPopPriLil1q2cF2S0RTqtzattA8RUgMO00342T7nMhfwjfAxqur9SZ18BJ
 OaoOfVUck8Q5588qfLfhbP6qPlDy2FDGEUcf/ti2ph0e1M+IiF7JezuvlngZkDu2+QQl
 qD0s4yptkrqbqS+rj5RMPx+/8sll0v6fts+KN/R2epMJ7PhBe88FFmB3KgnWOUi206uj
 QZVSRrdIkfIKMKTW+hiblnFsxZDv7IOfFiSB1Be9Ej/x2Dgi0Z/rlZtKS0zizrjw/1pC
 v2FHPKGxwHva5KtYnGFKIMOWSYAUBWTrfQ9Rpg0jdOit7foTnNE61SLwkdqtm4CpizYy
 4/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6B1VhRQwgQQGh2ESABiP5pnpxVqXMTnf0pfde8jgU5c=;
 b=TKJiFPjVr2lsZ+Iu6sYa51serYlNyERHIQwgztYJylJUbFSghtjQnN4yADX1/B2hmp
 bYxCbJHwoBFEzBBzosTSWxnEjY8TW4DsBuM/hkOxqOeVoq71Qq1cKChThMWwCjlGmPwp
 mx2ibysVWOCh8WJO1ihy2U6g4OIjtStsVnoE68ySAz8IV+q5XjSYzYbFTnfSJbbWSH7K
 R4fCoIQXmejvmSSb74FdB0yvLGntiYYcsYPx0E51qSq2qkAJp1AkgOA2XcDVUobWtWbi
 b4MaXlNBTGVpw+KGfx2KlhxxY0GFqbpWwQJ5vUS+F8Pqxgoge4wKBOCQpkpK33+WH1kh
 nlDw==
X-Gm-Message-State: APjAAAUOZqyeVtOxaU7SEry8jgq6/kqT0NkkBvwBK170tUCspomnAOzB
 EBkkimchJ9uGkA1DbyqnEWKsH0e5yovDNQUABD4=
X-Google-Smtp-Source: APXvYqyPNyObzxGCszpMTR3wCIqeot/ONserksfYMvP/rvSOUlflaIV+vQ7wclyDj7cajseQxqH94Z+A90dnUyOQZjc=
X-Received: by 2002:a63:c748:: with SMTP id v8mr19346399pgg.143.1580261280721; 
 Tue, 28 Jan 2020 17:28:00 -0800 (PST)
MIME-Version: 1.0
References: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
 <ecb0e9404a3f6256a7ba1fe48b5a1471@kernel.org>
In-Reply-To: <ecb0e9404a3f6256a7ba1fe48b5a1471@kernel.org>
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Wed, 29 Jan 2020 10:27:49 +0900
Message-ID: <CAHOvCC5A4usY0k4+0Y13N_zbAG8PD4H++fngAu+yJsVba9+6Ng@mail.gmail.com>
Subject: Re: [PATCH] gpio/sifive: fix static checker warning
To: Marc Zyngier <maz@kernel.org>
Content-Type: multipart/mixed; boundary="0000000000004a46f3059d3d40cb"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_172802_019724_C62821E5 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bgolaszewski@baylibre.com, wesley@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, atish.patra@wdc.com,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 sachin.ghadi@sifive.com, linux-gpio@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--0000000000004a46f3059d3d40cb
Content-Type: text/plain; charset="UTF-8"

Because SiFive FU540 GPIO Registers are aligned 32-bit,
I think that irq_state is good "unsigned int" than "unsigned long".

I refer to SiFive FU540-C000 Manual v1p0 (GPIO Register Table 103)
as "Only naturally aligned 32-bit memory accesses are supported"

when you use assign_bit(offset, &chip->irq_state, 1),
offset is 32-bit.

I prefer to use bit operation instead of assign_bit().

u32 bit = BIT(offset);
chip->irq_state |= bit;

If you use this code, you do not use the assign_bit() and
need not change irq_state data type.

There are many improvements in my works for drivers/gpio/gpio-sifive.c.
I hope to check my attached source file.

On Tue, 28 Jan 2020 at 22:21, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-01-28 05:24, Yash Shah wrote:
> > Typcasting "irq_state" leads to the below static checker warning:
> > The fix is to declare "irq_state" as unsigned long instead of u32.
> >
> >       drivers/gpio/gpio-sifive.c:97 sifive_gpio_irq_enable()
> >       warn: passing casted pointer '&chip->irq_state' to
> >       'assign_bit()' 32 vs 64.
> >
> > Fixes: 96868dce644d ("gpio/sifive: Add GPIO driver for SiFive SoCs")
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  drivers/gpio/gpio-sifive.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
> > index 147a1bd..c54dd08 100644
> > --- a/drivers/gpio/gpio-sifive.c
> > +++ b/drivers/gpio/gpio-sifive.c
> > @@ -35,7 +35,7 @@ struct sifive_gpio {
> >       void __iomem            *base;
> >       struct gpio_chip        gc;
> >       struct regmap           *regs;
> > -     u32                     irq_state;
> > +     unsigned long           irq_state;
> >       unsigned int            trigger[SIFIVE_GPIO_MAX];
> >       unsigned int            irq_parent[SIFIVE_GPIO_MAX];
> >  };
> > @@ -94,7 +94,7 @@ static void sifive_gpio_irq_enable(struct irq_data
> > *d)
> >       spin_unlock_irqrestore(&gc->bgpio_lock, flags);
> >
> >       /* Enable interrupts */
> > -     assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
> > +     assign_bit(offset, &chip->irq_state, 1);
> >       sifive_gpio_set_ie(chip, offset);
> >  }
> >
> > @@ -104,7 +104,7 @@ static void sifive_gpio_irq_disable(struct irq_data
> > *d)
> >       struct sifive_gpio *chip = gpiochip_get_data(gc);
> >       int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
> >
> > -     assign_bit(offset, (unsigned long *)&chip->irq_state, 0);
> > +     assign_bit(offset, &chip->irq_state, 0);
> >       sifive_gpio_set_ie(chip, offset);
> >       irq_chip_disable_parent(d);
> >  }
>
> Yup, nice one. Should have spotted it.
>
> Reviewed-by: Marc Zyngier <maz@kernel.org>
>
> Linus, do you want me to queue this via the irqchip tree (given that
> it is where the original bug came from)? Or would you rather take it?
>
>          M.
> --
> Jazz is not dead. It just smells funny...
>

--0000000000004a46f3059d3d40cb
Content-Type: text/x-csrc; charset="US-ASCII"; name="gpio-sifive.c"
Content-Disposition: attachment; filename="gpio-sifive.c"
Content-Transfer-Encoding: base64
Content-ID: <f_k5ymr1ly0>
X-Attachment-Id: f_k5ymr1ly0

LyoKICogU2lGaXZlIEdQSU8gZHJpdmVyCiAqCiAqIENvcHlyaWdodCAoQykgMjAxOCBTaUZpdmUs
IEluYy4KICoKICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0
cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUg
R2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2ZXJzaW9uIDIgYXMKICogcHVibGlzaGVkIGJ5IHRoZSBG
cmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uCiAqIAogKiBSZWZlcmVuY2VzOiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAog
KiAgIFNpRml2ZSBGVTU0MC1DMDAwIG1hbnVhbCB2MXAwLCBDaGFwdGVyIDE3ICJHUElPIgogKiAK
ICogMjAyMCBFZGl0dGVkIGJ5IEphZUpvb24gSnVuZyA8cmdiaTMzMDdAZ21haWwuY29tPgogKgog
Ki8KI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgojaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CiNp
bmNsdWRlIDxsaW51eC9lcnJuby5oPgojaW5jbHVkZSA8bGludXgvZ3Bpby9kcml2ZXIuaD4KI2lu
Y2x1ZGUgPGxpbnV4L2lycWNoaXAvY2hhaW5lZF9pcnEuaD4KI2luY2x1ZGUgPGxpbnV4L2lvLmg+
CiNpbmNsdWRlIDxsaW51eC9vZi5oPgojaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+CiNpbmNs
dWRlIDxsaW51eC9vZl9pcnEuaD4KI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgojaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiNpbmNsdWRl
IDxsaW51eC9zcGlubG9jay5oPgojaW5jbHVkZSA8bGludXgvcmFpZC9wcS5oPgoKI2RlZmluZSBH
UElPX0lOUFVUX1ZBTAkgICAgICAgIDB4MDAKI2RlZmluZSBHUElPX0lOUFVUX0VOCSAgICAgICAg
MHgwNAojZGVmaW5lIEdQSU9fT1VUUFVUX0VOCSAgICAgICAgMHgwOAojZGVmaW5lIEdQSU9fT1VU
UFVUX1ZBTAkgICAgICAgIDB4MEMKI2RlZmluZSBHUElPX1BVTExVUF9FTiAgICAgICAgICAweDEw
CiNkZWZpbmUgR1BJT19QSU5fRFMgICAgICAgICAgICAgMHgxNAojZGVmaW5lIEdQSU9fUklTRV9J
RQkgICAgICAgIDB4MTgKI2RlZmluZSBHUElPX1JJU0VfSVAJICAgICAgICAweDFDCiNkZWZpbmUg
R1BJT19GQUxMX0lFCSAgICAgICAgMHgyMAojZGVmaW5lIEdQSU9fRkFMTF9JUAkgICAgICAgIDB4
MjQKI2RlZmluZSBHUElPX0hJR0hfSUUJICAgICAgICAweDI4CiNkZWZpbmUgR1BJT19ISUdIX0lQ
CSAgICAgICAgMHgyQwojZGVmaW5lIEdQSU9fTE9XX0lFCSAgICAgICAgMHgzMAojZGVmaW5lIEdQ
SU9fTE9XX0lQCSAgICAgICAgMHgzNAojZGVmaW5lIEdQSU9fT1VUUFVUX1hPUgkgICAgICAgIDB4
NDAKCiNkZWZpbmUgR1BJT19NQVhfQ05UCSAgICAgICAgMzIKI2RlZmluZSBHUElPX0VOQUJMRV9C
SVRTICAgICAgICAweDgzRkYKCi8vI2RlZmluZSBHUElPX1NJRklWRV9ERUJVRwojaWZkZWYgR1BJ
T19TSUZJVkVfREVCVUcKICAgICAgICAjZGVmaW5lIGdwaW9fc2lmaXZlX2RlYnVnKC4uLikJcHJp
bnRrKCJHUElPOiAiIF9fVkFfQVJHU19fKQojZWxzZQogICAgICAgICNkZWZpbmUgZ3Bpb19zaWZp
dmVfZGVidWcoLi4uKQojZW5kaWYKCnN0cnVjdCBzaWZpdmVfZ3BpbyB7CglyYXdfc3BpbmxvY2tf
dAkJbG9jazsKCXZvaWQgX19pb21lbQkJKmJhc2U7CglzdHJ1Y3QgZ3Bpb19jaGlwCWdjOwoJdW5z
aWduZWQgaW50CQlpcnFfZW5hYmxlOwoJdW5zaWduZWQgaW50CQlpcnFfdHlwZVtHUElPX01BWF9D
TlRdOwoJdW5zaWduZWQgaW50CQlpcnFfcGFyZW50W0dQSU9fTUFYX0NOVF07CglzdHJ1Y3Qgc2lm
aXZlX2dwaW8JKnNlbGZfcHRyW0dQSU9fTUFYX0NOVF07Cn07CgoKc3RhdGljIHZvaWQgZ3Bpb19z
aWZpdmVfZGVidWdfcmVnKHN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCkKewojaWZkZWYgR1BJT19T
SUZJVkVfREVCVUcKICAgICAgICB1MzIgdmFsdWU7CiAgICAgICAgaW50IHJlZzsKCiAgICAgICAg
aWYgKCFjaGlwLT5iYXNlKSByZXR1cm47CiAgICAgICAgZ3Bpb19zaWZpdmVfZGVidWcoInJlZ2lz
dGVycyB2YWx1ZXMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXG4iKTsKICAgICAgICBmb3Ig
KHJlZz1HUElPX0lOUFVUX1ZBTDsgcmVnPD1HUElPX09VVFBVVF9YT1I7IHJlZys9NCkgewogICAg
ICAgICAgICAgICAgdmFsdWUgPSByZWFkbChjaGlwLT5iYXNlICsgcmVnKTsKICAgICAgICAgICAg
ICAgIGdwaW9fc2lmaXZlX2RlYnVnKCJyZWc9WyUwMlhdLCB2YWx1ZT1bJTA4WF1cbiIsIHJlZywg
dmFsdWUpOwogICAgICAgIH0KICAgICAgICBncGlvX3NpZml2ZV9kZWJ1ZygiaXJxX2VuYWJsZT1b
JTA4WF1cbiIsIGNoaXAtPmlycV9lbmFibGUpOwogICAgICAgIGdwaW9fc2lmaXZlX2RlYnVnKCJp
cnFfdHlwZT0lZFxuIiwgY2hpcC0+aXJxX3R5cGVbMF0pOwogICAgICAgIGdwaW9fc2lmaXZlX2Rl
YnVnKCJpcnFfcGFyZW50PSVkXG4iLCBjaGlwLT5pcnFfcGFyZW50WzBdKTsKICAgICAgICBncGlv
X3NpZml2ZV9kZWJ1ZygiXG4iKTsKI2VuZGlmCn0KCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZlX2Fz
c2lnbl9iaXQodm9pZCBfX2lvbWVtICpwdHIsIGludCBvZmZzZXQsIGludCB2YWx1ZSkKewoJLy8g
SXQncyBmcnVzdHJhdGluZyB0aGF0IHdlIGFyZSBub3QgYWxsb3dlZCB0byB1c2UgdGhlIGRldmlj
ZSBhdG9taWNzCgkvLyB3aGljaCBhcmUgR1VBUkFOVEVFRCB0byBiZSBzdXBwb3J0ZWQgYnkgdGhp
cyBkZXZpY2Ugb24gUklTQy1WCgl1MzIgYml0ID0gQklUKG9mZnNldCk7CiAgICAgICAgdTMyIG9s
ZCA9IHJlYWRsKHB0cik7CgogICAgICAgIGJpdCA9ICh2YWx1ZSkgPyBvbGQgfCBiaXQgOiBvbGQg
JiB+Yml0OwogICAgICAgIHdyaXRlbChiaXQsIHB0cik7Cn0KCnN0YXRpYyBpbnQgZ3Bpb19zaWZp
dmVfZGlyZWN0aW9uX2lucHV0KHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQp
CnsKCXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKCXVu
c2lnbmVkIGxvbmcgZmxhZ3M7CgoJaWYgKG9mZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuIC1F
SU5WQUw7CgoJcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZjaGlwLT5sb2NrLCBmbGFncyk7CglncGlv
X3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX09VVFBVVF9FTiwgb2Zmc2V0LCAw
KTsKCWdwaW9fc2lmaXZlX2Fzc2lnbl9iaXQoY2hpcC0+YmFzZSArIEdQSU9fSU5QVVRfRU4sICBv
ZmZzZXQsIDEpOwoJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNoaXAtPmxvY2ssIGZsYWdz
KTsKCglyZXR1cm4gMDsKfQoKc3RhdGljIGludCBncGlvX3NpZml2ZV9kaXJlY3Rpb25fb3V0cHV0
KHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLCBpbnQgdmFsdWUpCnsK
CXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7CgoJaWYgKG9mZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuIC1FSU5W
QUw7CgoJcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZjaGlwLT5sb2NrLCBmbGFncyk7CglncGlvX3Np
Zml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX0lOUFVUX0VOLCAgIG9mZnNldCwgMCk7
CglncGlvX3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX09VVFBVVF9FTiwgIG9m
ZnNldCwgMSk7CglncGlvX3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX09VVFBV
VF9WQUwsIG9mZnNldCwgdmFsdWUpOwoJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNoaXAt
PmxvY2ssIGZsYWdzKTsKCglyZXR1cm4gMDsKfQoKc3RhdGljIGludCBncGlvX3NpZml2ZV9nZXRf
ZGlyZWN0aW9uKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCnsKCXN0cnVj
dCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKICAgICAgICBpbnQg
dmFsdWU7CgoJaWYgKG9mZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuIC1FSU5WQUw7CgogICAg
ICAgIHZhbHVlID0gcmVhZGwoY2hpcC0+YmFzZSArIEdQSU9fT1VUUFVUX0VOKSAmIEJJVChvZmZz
ZXQpOwogICAgICAgIHJldHVybiAhdmFsdWU7Cn0KCnN0YXRpYyBpbnQgZ3Bpb19zaWZpdmVfZ2V0
X3ZhbHVlKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCnsKCXN0cnVjdCBz
aWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKICAgICAgICBpbnQgaW5k
ZXgsIHZhbHVlOwoKCWlmIChvZmZzZXQgPj0gZ2MtPm5ncGlvKQoJCXJldHVybiAtRUlOVkFMOwoK
ICAgICAgICBpbmRleCA9IGdwaW9fc2lmaXZlX2dldF9kaXJlY3Rpb24oZ2MsIG9mZnNldCkgPyAK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHUElPX0lOUFVUX1ZBTCA6IEdQSU9fT1VU
UFVUX1ZBTDsKICAgICAgICB2YWx1ZSA9IHJlYWRsKGNoaXAtPmJhc2UgKyBpbmRleCkgJiBCSVQo
b2Zmc2V0KTsKICAgICAgICByZXR1cm4gdmFsdWU7ICAgICAgICAKfQoKc3RhdGljIHZvaWQgZ3Bp
b19zaWZpdmVfc2V0X3ZhbHVlKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQs
IGludCB2YWx1ZSkKewoJc3RydWN0IHNpZml2ZV9ncGlvICpjaGlwID0gZ3Bpb2NoaXBfZ2V0X2Rh
dGEoZ2MpOwoJdW5zaWduZWQgbG9uZyBmbGFnczsKICAgICAgICBpbnQgaW5kZXg7CgoJaWYgKG9m
ZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuOwoKICAgICAgICBpbmRleCA9IGdwaW9fc2lmaXZl
X2dldF9kaXJlY3Rpb24oZ2MsIG9mZnNldCkgPyAKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBHUElPX0lOUFVUX1ZBTCA6IEdQSU9fT1VUUFVUX1ZBTDsKCXJhd19zcGluX2xvY2tfaXJx
c2F2ZSgmY2hpcC0+bG9jaywgZmxhZ3MpOwoJZ3Bpb19zaWZpdmVfYXNzaWduX2JpdChjaGlwLT5i
YXNlICsgaW5kZXgsIG9mZnNldCwgdmFsdWUpOwoJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUo
JmNoaXAtPmxvY2ssIGZsYWdzKTsKfQoKc3RhdGljIHZvaWQgZ3Bpb19zaWZpdmVfc2V0X2RlZmF1
bHQoc3RydWN0IHNpZml2ZV9ncGlvICpjaGlwLCB1MzIgYml0cykKewogICAgICAgIGlmIChiaXRz
ID09IEdQSU9fRU5BQkxFX0JJVFMpIHsKICAgICAgICAgICAgICAgIC8vSW5wdXQgRW5hYmxlL0Rp
c2FibGUKICAgICAgICAgICAgICAgIHdyaXRlbChiaXRzLCBjaGlwLT5iYXNlICsgR1BJT19JTlBV
VF9FTik7CiAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgfQogICAgICAgIC8vSW50ZXJy
dXB0cyBFbmFibGUvRGlzYWJsZQogICAgICAgIHdyaXRlbChiaXRzLCBjaGlwLT5iYXNlICsgR1BJ
T19SSVNFX0lFKTsKICAgICAgICB3cml0ZWwoYml0cywgY2hpcC0+YmFzZSArIEdQSU9fRkFMTF9J
RSk7CiAgICAgICAgd3JpdGVsKGJpdHMsIGNoaXAtPmJhc2UgKyBHUElPX0hJR0hfSUUpOwogICAg
ICAgIHdyaXRlbChiaXRzLCBjaGlwLT5iYXNlICsgR1BJT19MT1dfSUUpOwoKICAgICAgICB3cml0
ZWwoYml0cywgY2hpcC0+YmFzZSArIEdQSU9fUklTRV9JUCk7CiAgICAgICAgd3JpdGVsKGJpdHMs
IGNoaXAtPmJhc2UgKyBHUElPX0ZBTExfSVApOwogICAgICAgIHdyaXRlbChiaXRzLCBjaGlwLT5i
YXNlICsgR1BJT19ISUdIX0lQKTsKICAgICAgICB3cml0ZWwoYml0cywgY2hpcC0+YmFzZSArIEdQ
SU9fTE9XX0lQKTsKCiAgICAgICAgY2hpcC0+aXJxX2VuYWJsZSA9IGJpdHM7Cn0KCnN0YXRpYyB2
b2lkIGdwaW9fc2lmaXZlX3NldF9pZShzdHJ1Y3Qgc2lmaXZlX2dwaW8gKmNoaXAsIGludCBvZmZz
ZXQpCnsKCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cgl1bnNpZ25lZCBpcnFfdHlwZTsKCglyYXdfc3Bp
bl9sb2NrX2lycXNhdmUoJmNoaXAtPmxvY2ssIGZsYWdzKTsKCWlycV90eXBlID0gKGNoaXAtPmly
cV9lbmFibGUgJiBCSVQob2Zmc2V0KSkgPyBjaGlwLT5pcnFfdHlwZVtvZmZzZXRdIDogMDsKCWdw
aW9fc2lmaXZlX2Fzc2lnbl9iaXQoY2hpcC0+YmFzZSArIEdQSU9fUklTRV9JRSwgb2Zmc2V0LCBp
cnFfdHlwZSAmIElSUV9UWVBFX0VER0VfUklTSU5HKTsKCWdwaW9fc2lmaXZlX2Fzc2lnbl9iaXQo
Y2hpcC0+YmFzZSArIEdQSU9fRkFMTF9JRSwgb2Zmc2V0LCBpcnFfdHlwZSAmIElSUV9UWVBFX0VE
R0VfRkFMTElORyk7CglncGlvX3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX0hJ
R0hfSUUsIG9mZnNldCwgaXJxX3R5cGUgJiBJUlFfVFlQRV9MRVZFTF9ISUdIKTsKCWdwaW9fc2lm
aXZlX2Fzc2lnbl9iaXQoY2hpcC0+YmFzZSArIEdQSU9fTE9XX0lFLCAgb2Zmc2V0LCBpcnFfdHlw
ZSAmIElSUV9UWVBFX0xFVkVMX0xPVyk7CglyYXdfc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmY2hp
cC0+bG9jaywgZmxhZ3MpOwp9CgpzdGF0aWMgaW50IGdwaW9fc2lmaXZlX2lycV9zZXRfdHlwZShz
dHJ1Y3QgaXJxX2RhdGEgKmQsIHVuc2lnbmVkIGlycV90eXBlKQp7CglzdHJ1Y3QgZ3Bpb19jaGlw
ICpnYyA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGQpOwoJc3RydWN0IHNpZml2ZV9ncGlv
ICpjaGlwID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoZ2MpOwoJaW50IG9mZnNldCA9IGlycWRfdG9faHdp
cnEoZCk7CgoJaWYgKG9mZnNldCA8IDAgfHwgb2Zmc2V0ID49IGdjLT5uZ3BpbykKCQlyZXR1cm4g
LUVJTlZBTDsKCgljaGlwLT5pcnFfdHlwZVtvZmZzZXRdID0gaXJxX3R5cGU7CglncGlvX3NpZml2
ZV9zZXRfaWUoY2hpcCwgb2Zmc2V0KTsKCglyZXR1cm4gMDsKfQoKLyogY2hhaW5lZF9pcnFfe2Vu
dGVyLGV4aXR9IGFscmVhZHkgbWFzayB0aGUgcGFyZW50ICovCnN0YXRpYyB2b2lkIGdwaW9fc2lm
aXZlX2lycV9tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkgeyB9CnN0YXRpYyB2b2lkIGdwaW9fc2lm
aXZlX2lycV91bm1hc2soc3RydWN0IGlycV9kYXRhICpkKSB7IH0KCnN0YXRpYyB2b2lkIGdwaW9f
c2lmaXZlX2lycV9lbmFibGUoc3RydWN0IGlycV9kYXRhICpkKQp7CglzdHJ1Y3QgZ3Bpb19jaGlw
ICpnYyA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGQpOwoJc3RydWN0IHNpZml2ZV9ncGlv
ICpjaGlwID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoZ2MpOwoJaW50IG9mZnNldCA9IGlycWRfdG9faHdp
cnEoZCkgJSBHUElPX01BWF9DTlQ7IC8vIG11c3Qgbm90IGZhaWwKCXUzMiBiaXQgPSBCSVQob2Zm
c2V0KTsKCgkvKiBTd2l0Y2ggdG8gaW5wdXQgKi8KCWdwaW9fc2lmaXZlX2RpcmVjdGlvbl9pbnB1
dChnYywgb2Zmc2V0KTsKCgkvKiBDbGVhciBhbnkgc3RpY2t5IHBlbmRpbmcgaW50ZXJydXB0cyAq
LwoJd3JpdGVsKGJpdCwgY2hpcC0+YmFzZSArIEdQSU9fUklTRV9JUCk7Cgl3cml0ZWwoYml0LCBj
aGlwLT5iYXNlICsgR1BJT19GQUxMX0lQKTsKCXdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElP
X0hJR0hfSVApOwoJd3JpdGVsKGJpdCwgY2hpcC0+YmFzZSArIEdQSU9fTE9XX0lQKTsKCgkvKiBF
bmFibGUgaW50ZXJydXB0cyAqLwogICAgICAgIGNoaXAtPmlycV9lbmFibGUgfD0gYml0OwoJZ3Bp
b19zaWZpdmVfc2V0X2llKGNoaXAsIG9mZnNldCk7Cn0KCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZl
X2lycV9kaXNhYmxlKHN0cnVjdCBpcnFfZGF0YSAqZCkKewoJc3RydWN0IGdwaW9fY2hpcCAqZ2Mg
PSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKCXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hp
cCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKCWludCBvZmZzZXQgPSBpcnFkX3RvX2h3aXJxKGQp
ICUgR1BJT19NQVhfQ05UOyAvLyBtdXN0IG5vdCBmYWlsCgl1MzIgYml0ID0gQklUKG9mZnNldCk7
CgoJLyogRGlzYWJsZSBpbnRlcnJ1cHRzICovCiAgICAgICAgY2hpcC0+aXJxX2VuYWJsZSAmPSB+
Yml0OwoJZ3Bpb19zaWZpdmVfc2V0X2llKGNoaXAsIG9mZnNldCk7Cn0KCnN0YXRpYyBzdHJ1Y3Qg
aXJxX2NoaXAgZ3Bpb19zaWZpdmVfaXJxY2hpcCA9IHsKCS5uYW1lCQk9ICJzaWZpdmUtZ3BpbyIs
CgkuaXJxX3NldF90eXBlCT0gZ3Bpb19zaWZpdmVfaXJxX3NldF90eXBlLAoJLmlycV9tYXNrCT0g
Z3Bpb19zaWZpdmVfaXJxX21hc2ssCgkuaXJxX3VubWFzawk9IGdwaW9fc2lmaXZlX2lycV91bm1h
c2ssCgkuaXJxX2VuYWJsZQk9IGdwaW9fc2lmaXZlX2lycV9lbmFibGUsCgkuaXJxX2Rpc2FibGUJ
PSBncGlvX3NpZml2ZV9pcnFfZGlzYWJsZSwKfTsKCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZlX2ly
cV9oYW5kbGVyKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKewoJc3RydWN0IGlycV9jaGlwICppcnFj
aGlwID0gaXJxX2Rlc2NfZ2V0X2NoaXAoZGVzYyk7CglzdHJ1Y3Qgc2lmaXZlX2dwaW8gKipzZWxm
X3B0ciA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2RhdGEoZGVzYyk7CglzdHJ1Y3Qgc2lmaXZlX2dw
aW8gKmNoaXAgPSAqc2VsZl9wdHI7CglpbnQgb2Zmc2V0ID0gc2VsZl9wdHIgLSAmY2hpcC0+c2Vs
Zl9wdHJbMF07CiAgICAgICAgLy9pbnQgb2Zmc2V0ID0gZGVzYy0+aXJxX2RhdGEuaXJxIC0gY2hp
cC0+aXJxX3BhcmVudFswXTsKCXUzMiBiaXQgPSBCSVQob2Zmc2V0KTsKCgljaGFpbmVkX2lycV9l
bnRlcihpcnFjaGlwLCBkZXNjKTsKCgkvKiBSZS1hcm0gdGhlIGVkZ2UgaXJxX3R5cGVzIHNvIGRv
bid0IG1pc3MgdGhlIG5leHQgb25lICovCgl3cml0ZWwoYml0LCBjaGlwLT5iYXNlICsgR1BJT19S
SVNFX0lQKTsKCXdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX0ZBTExfSVApOwoKCWdlbmVy
aWNfaGFuZGxlX2lycShpcnFfZmluZF9tYXBwaW5nKGNoaXAtPmdjLmlycS5kb21haW4sIG9mZnNl
dCkpOwoKCS8qIFJlLWFybSB0aGUgbGV2ZWwgaXJxX3R5cGVzIGFmdGVyIGhhbmRsaW5nIHRvIHBy
ZXZlbnQgc3B1cmlvdXMgcmVmaXJlICovCgl3cml0ZWwoYml0LCBjaGlwLT5iYXNlICsgR1BJT19I
SUdIX0lQKTsKCXdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX0xPV19JUCk7CgoJY2hhaW5l
ZF9pcnFfZXhpdChpcnFjaGlwLCBkZXNjKTsKCiAgICAgICAgZ3Bpb19zaWZpdmVfZGVidWcoImly
cSBoYW5kbGVyOiBvZmZzZXQ9JWRcbiIsIG9mZnNldCk7Cn0KCiNpZmRlZiBHUElPX1NJRklWRV9E
RUJVRwpzdGF0aWMgdm9pZCBncGlvX3NpZml2ZV9zZXRfaXJxX2VuYWJsZShzdHJ1Y3Qgc2lmaXZl
X2dwaW8gKmNoaXAsIHVuc2lnbmVkIG9mZnNldCkgICAgICAgICAgICAgICAgICAgICAgICAgIAp7
CiAgICAgICAgdTMyIGJpdCA9IEJJVChvZmZzZXQpOwoKICAgICAgICAvKiBTd2l0Y2ggdG8gaW5w
dXQgKi8KICAgICAgICBncGlvX3NpZml2ZV9kaXJlY3Rpb25faW5wdXQoJmNoaXAtPmdjLCBvZmZz
ZXQpOwoKICAgICAgICAvKiBDbGVhciBhbnkgc3RpY2t5IHBlbmRpbmcgaW50ZXJydXB0cyAqLwog
ICAgICAgIHdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX1JJU0VfSVApOwogICAgICAgIHdy
aXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX0ZBTExfSVApOwogICAgICAgIHdyaXRlbChiaXQs
IGNoaXAtPmJhc2UgKyBHUElPX0hJR0hfSVApOwogICAgICAgIHdyaXRlbChiaXQsIGNoaXAtPmJh
c2UgKyBHUElPX0xPV19JUCk7CgogICAgICAgIC8qIEVuYWJsZSBpbnRlcnJ1cHRzICovCiAgICAg
ICAgY2hpcC0+aXJxX2VuYWJsZSB8PSBiaXQ7CiAgICAgICAgZ3Bpb19zaWZpdmVfc2V0X2llKGNo
aXAsIG9mZnNldCk7Cn0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZlX3NldF9pcnFfZGlzYWJsZShzdHJ1Y3Qgc2lmaXZl
X2dwaW8gKmNoaXAsIHVuc2lnbmVkIG9mZnNldCkgICAgICAgICAgICAgICAgICAgICAgICAgIAp7
CiAgICAgICAgdTMyIGJpdCA9IEJJVChvZmZzZXQpOwogICAgICAgIGNoaXAtPmlycV9lbmFibGUg
Jj0gfmJpdDsKICAgICAgICBncGlvX3NpZml2ZV9zZXRfaWUoY2hpcCwgb2Zmc2V0KTsKfQojZW5k
aWYKCnN0YXRpYyBpbnQgZ3Bpb19zaWZpdmVfY2hpcF9zZXR1cChzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAsIHN0cnVj
dCBzaWZpdmVfZ3BpbyAqY2hpcCwgaW50IG5ncGlvKQp7CglzdHJ1Y3QgZGV2aWNlICpkZXYgPSAm
cGRldi0+ZGV2OwoJaW50IGdwaW8sIGlycSwgcmV0OwoKCXJhd19zcGluX2xvY2tfaW5pdCgmY2hp
cC0+bG9jayk7CgljaGlwLT5nYy5kaXJlY3Rpb25faW5wdXQgPSBncGlvX3NpZml2ZV9kaXJlY3Rp
b25faW5wdXQ7CgljaGlwLT5nYy5kaXJlY3Rpb25fb3V0cHV0ID0gZ3Bpb19zaWZpdmVfZGlyZWN0
aW9uX291dHB1dDsKCWNoaXAtPmdjLmdldF9kaXJlY3Rpb24gPSBncGlvX3NpZml2ZV9nZXRfZGly
ZWN0aW9uOwoJY2hpcC0+Z2MuZ2V0ID0gZ3Bpb19zaWZpdmVfZ2V0X3ZhbHVlOwoJY2hpcC0+Z2Mu
c2V0ID0gZ3Bpb19zaWZpdmVfc2V0X3ZhbHVlOwoJY2hpcC0+Z2MuYmFzZSA9IC0xOwoJY2hpcC0+
Z2MubmdwaW8gPSBuZ3BpbzsKCWNoaXAtPmdjLmxhYmVsID0gZGV2X25hbWUoZGV2KTsKCWNoaXAt
PmdjLnBhcmVudCA9IGRldjsKCWNoaXAtPmdjLm93bmVyID0gVEhJU19NT0RVTEU7CgoJcmV0ID0g
Z3Bpb2NoaXBfYWRkX2RhdGEoJmNoaXAtPmdjLCBjaGlwKTsKCWlmIChyZXQpCgkJcmV0dXJuIHJl
dDsKCgkvKiBEaXNhYmxlIGFsbCBHUElPIGludGVycnVwdHMgYmVmb3JlIGVuYWJsaW5nIHBhcmVu
dCBpbnRlcnJ1cHRzICovCiAgICAgICAgZ3Bpb19zaWZpdmVfc2V0X2RlZmF1bHQoY2hpcCwgMCk7
CgoJcmV0ID0gZ3Bpb2NoaXBfaXJxY2hpcF9hZGQoJmNoaXAtPmdjLCAmZ3Bpb19zaWZpdmVfaXJx
Y2hpcCwgMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLCBoYW5kbGVf
c2ltcGxlX2lycSwgSVJRX1RZUEVfTk9ORSk7CglpZiAocmV0KSB7CgkJZGV2X2VycihkZXYsICJH
UElPOiBjb3VsZCBub3QgYWRkIGlycWNoaXBcbiIpOwoJCWdwaW9jaGlwX3JlbW92ZSgmY2hpcC0+
Z2MpOwoJCXJldHVybiByZXQ7Cgl9CgoJY2hpcC0+Z2MuaXJxLm51bV9wYXJlbnRzID0gbmdwaW87
CgljaGlwLT5nYy5pcnEucGFyZW50cyA9ICZjaGlwLT5pcnFfcGFyZW50WzBdOwoJY2hpcC0+Z2Mu
aXJxLm1hcCA9ICZjaGlwLT5pcnFfcGFyZW50WzBdOwoKCWZvciAoZ3BpbyA9IDA7IGdwaW8gPCBu
Z3BpbzsgKytncGlvKSB7CgkJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCBncGlvKTsKCQlp
ZiAoaXJxIDwgMCkgewoJCQlkZXZfZXJyKGRldiwgIkdQSU86IGludmFsaWQgSVJRXG4iKTsKCQkJ
Z3Bpb2NoaXBfcmVtb3ZlKCZjaGlwLT5nYyk7CgkJCXJldHVybiAtRU5PREVWOwoJCX0KCQljaGlw
LT5zZWxmX3B0cltncGlvXSA9IGNoaXA7CgkJY2hpcC0+aXJxX3BhcmVudFtncGlvXSA9IGlycTsK
CQljaGlwLT5pcnFfdHlwZVtncGlvXSA9IElSUV9UWVBFX0xFVkVMX0hJR0g7Cgl9Cglmb3IgKGdw
aW8gPSAwOyBncGlvIDwgbmdwaW87ICsrZ3BpbykgewoJCWlycSA9IGNoaXAtPmlycV9wYXJlbnRb
Z3Bpb107CgkJaXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoaXJxLCBncGlvX3NpZml2
ZV9pcnFfaGFuZGxlcgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAsICZjaGlwLT5zZWxmX3B0cltncGlvXSk7CgkJaXJxX3NldF9wYXJlbnQoaXJxX2ZpbmRf
bWFwcGluZyhjaGlwLT5nYy5pcnEuZG9tYWluLCBncGlvKSwgaXJxKTsKCX0KCiAgICAgICAgLy9F
bmFibGUgR1BJTyBJbnB1dCBmb3IgZGVmYXVsdAogICAgICAgIGdwaW9fc2lmaXZlX3NldF9kZWZh
dWx0KGNoaXAsIEdQSU9fRU5BQkxFX0JJVFMpOwogICAgICAgIHJldHVybiAwOwp9CgpzdGF0aWMg
aW50IGdwaW9fc2lmaXZlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCnsKCXN0
cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CglzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBwZGV2LT5kZXYub2Zfbm9kZTsKCXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcDsKCXN0cnVjdCBy
ZXNvdXJjZSAqcmVzOwoJaW50IG5ncGlvOwoKCWNoaXAgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXpl
b2YoKmNoaXApLCBHRlBfS0VSTkVMKTsKCWlmICghY2hpcCkgewoJCWRldl9lcnIoZGV2LCAib3V0
IG9mIG1lbW9yeVxuIik7CgkJcmV0dXJuIC1FTk9NRU07Cgl9CgoJcmVzID0gcGxhdGZvcm1fZ2V0
X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKCWNoaXAtPmJhc2UgPSBkZXZtX2lv
cmVtYXBfcmVzb3VyY2UoZGV2LCByZXMpOwoJaWYgKElTX0VSUihjaGlwLT5iYXNlKSkgewoJCWRl
dl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFsbG9jYXRlIGRldmljZSBtZW1vcnlcbiIpOwoJCXJldHVy
biBQVFJfRVJSKGNoaXAtPmJhc2UpOwoJfQogICAgICAgIGdwaW9fc2lmaXZlX2RlYnVnX3JlZyhj
aGlwKTsKCglpZihvZl9wcm9wZXJ0eV9yZWFkX3UzMihub2RlLCAibmdwaW9zIiwgJm5ncGlvKSkg
CgkgICAgICAgIG5ncGlvID0gb2ZfaXJxX2NvdW50KG5vZGUpOwoJCglpZiAobmdwaW8gPj0gR1BJ
T19NQVhfQ05UKSB7CgkJZGV2X2VycihkZXYsICJ0b28gbWFueSBuZ3Bpb3MuXG4iKTsKCQlyZXR1
cm4gLUVJTlZBTDsKCX0KCiAgICAgICAgaWYgKGdwaW9fc2lmaXZlX2NoaXBfc2V0dXAocGRldiwg
Y2hpcCwgbmdwaW8pIDwgMCkgewoJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdwaW8gc2lmaXZl
IHNldHVwLlxuIik7CiAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKICAgICAgICB9CgoJ
cGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY2hpcCk7CglkZXZfaW5mbyhkZXYsICJHUElPIFNp
Rml2ZSBkcml2ZXIgcmVnaXN0ZXJlZCAlZCBHUElPc1xuIiwgbmdwaW8pOwoKI2lmZGVmIEdQSU9f
U0lGSVZFX0RFQlVHCiAgICAgICAgZ3Bpb19zaWZpdmVfc2V0X2lycV9lbmFibGUoY2hpcCwgNyk7
ICAgIC8vL0dQSU83IGludGVycnVwdCBlbmFibGVkIGZvciB0ZXN0ICAgICAgICAgICAgICAgICAg
ICAgICAgICAKICAgICAgICBncGlvX3NpZml2ZV9zZXRfaXJxX2Rpc2FibGUoY2hpcCwgOSk7ICAg
Ly8vR1BJTzkgaW50ZXJydXB0IGRpc2FibGVkIGZvciB0ZXN0ICAgICAgICAgICAgICAgICAgICAg
CiNlbmRpZgogICAgICAgIGdwaW9fc2lmaXZlX2RlYnVnX3JlZyhjaGlwKTsKCXJldHVybiAwOwp9
CgpzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBncGlvX3NpZml2ZV9tYXRjaFtdID0g
ewoJewoJCS5jb21wYXRpYmxlID0gInNpZml2ZSxncGlvMCIsCgl9LAoJeyB9LAp9OwpNT0RVTEVf
REVWSUNFX1RBQkxFKG9mLCBncGlvX3NpZml2ZV9tYXRjaCk7CgpzdGF0aWMgc3RydWN0IHBsYXRm
b3JtX2RyaXZlciBncGlvX3NpZml2ZV9kcml2ZXIgPSB7CgkucHJvYmUJCT0gZ3Bpb19zaWZpdmVf
cHJvYmUsCgkuZHJpdmVyID0gewoJCS5uYW1lCT0gImdwaW8tc2lmaXZlIiwKCQkub2ZfbWF0Y2hf
dGFibGUgPSBvZl9tYXRjaF9wdHIoZ3Bpb19zaWZpdmVfbWF0Y2gpLAoJfSwKfTsKbW9kdWxlX3Bs
YXRmb3JtX2RyaXZlcihncGlvX3NpZml2ZV9kcml2ZXIpOwoKTU9EVUxFX0RFU0NSSVBUSU9OKCJT
aUZpdmUgR1BJTyBkcml2ZXIiKTsKTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwo=
--0000000000004a46f3059d3d40cb--

