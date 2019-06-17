Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABCC48796
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 17:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daP3qvCi6wsPbW5Ve6VQ1jfUSIKUM0x2Ixv6Zqe0wUY=; b=LtomkLeATX0JmP
	2xAaejO9sXMEhWAOx/8BNxq97WzjZTuVHAJp9FVJatVb7EcdG3iyWumRJxmufvOnybeXXphZyTQWV
	frokLpso8vwagd7/23MeMEt7l07MVvFD3NrrOWW/HOb7dyB+rM4vNiTNvVUI3KcDKTnQBKtzdbdP3
	zQGGZw/INjNmezO7OAe3VUFgk8AwEbYYPz9/TuuLsSOZ04WL2QJx0zyLPcracLnE+stFlw1k8oGGP
	RtJ3BngliDsW3JmKt+JImxXDu6BNBgHaVl3cFfTinBic89E+bXZ8x+euCGT2MucunAZsxF8oUXss3
	1G+i/5+NkUK74xsdEgTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctkM-0001Ij-G9; Mon, 17 Jun 2019 15:40:38 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctjz-000113-Re
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 15:40:20 +0000
Received: by mail-ua1-x943.google.com with SMTP id f20so3661797ual.0
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 08:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+xHCh/5/rajrFwBWcxrYmQ2rJ/d9uDBLferqy5gsc5o=;
 b=iNjxUkk6tKL7h6GWxxpTadhgfrjy1TgdbpkEPYvg7MY3UCHkHrHKVVBONZzW2DJsEl
 PJeI7wx8pSQBvfDtvV4HFTfxw4CWQaDaOrLLrDFGbJdSMV5KFzpqtYE/B+X30PUMXxC8
 D2ZAkv11pMF7tFbT8OyYfRdc1HnL51qEfe+k/LE37uxWrWFoO6zluyjaOjmarrwb4Lr0
 M0zwGvulTwtpjlCdgF0cmoOiX26RFl1h/FgeDm985WZoQCKIIxAdqXhBmSWY+B5wu7t3
 c+BCjr8pBnq9sHU41D96E/3t2YKceWbrK163rl59O/mU6PSzISc384X2FidLxQ8DprF1
 +eyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+xHCh/5/rajrFwBWcxrYmQ2rJ/d9uDBLferqy5gsc5o=;
 b=s7Be1u5KOLxSKQlKJ2U0sfOQFXaz6b+NrjktKSR+mmG5NON4m4ktJX5k6ir9i+nEgG
 EoDBeNti/C4g4vpDiyBrRd86whIjY6/+JKiF/33fOiKJt6cLL5T3ITPal6JDoNmETlr/
 olZEjLcd0uU32KvWCI6pM+kWF/yYAxnWWxo7Gy2TuJgAL1996wOc8z3ntuUZITUDCs+j
 X3dKZSdbjtUBotlNtfsCT3H96xE/VIueEhP0+keBM4+gNyDenJC7hySKZwTkAvsgqph3
 DT73zam3DRZ1olTysmkJV1ELUI7rdKuj8igmFga1i5VpDGrNH4Of2ai9VljwvJ5SNMuV
 SpHg==
X-Gm-Message-State: APjAAAW+LAdydpOjwbHLEqJ1CrrCDiNhyF50HsnEIBm7Ya4iDgeZZ2Tc
 hlflw0hwc9v1AjdVV59tnd5Xvrwoyv4OaCuIqendhA==
X-Google-Smtp-Source: APXvYqwcs6MIyZsucbjzRDDsDgKyPNBaK5l7jkhpkBXUGYaRrgzJjV8YqNDp7nbsnUgIo3NsZ+/PB4mrET6IlwpvVeI=
X-Received: by 2002:ab0:30c7:: with SMTP id c7mr7769825uam.143.1560786014401; 
 Mon, 17 Jun 2019 08:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-3-git-send-email-sagar.kadam@sifive.com>
 <70732c8e-111f-7c46-9e93-11894d944a1d@ti.com>
In-Reply-To: <70732c8e-111f-7c46-9e93-11894d944a1d@ti.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 17 Jun 2019 21:10:02 +0530
Message-ID: <CAARK3HmFg=v+cMGAykPPpwxDGaSKk5k+Gz4fSHQPQmg-rCjPhQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] mtd: spi-nor: add support to unlock flash device
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_084016_727357_65DE6C32 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, tudor.ambarus@microchip.com,
 Wesley Terpstra <wesley@sifive.com>, richard@nod.at,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Vignesh,

On Sun, Jun 16, 2019 at 6:35 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
>
>
> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> > Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
> > have memory blocks guarded by block protection bits BP[0,1,2,3].
> >
> > Clearing block protection bits,unlocks the flash memory regions
> > The unlock scheme is registered during nor scans.
> >
> > Based on code developed by Wesley Terpstra <wesley@sifive.com>
> > and/or Palmer Dabbelt <palmer@sifive.com>.
> > https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 51 ++++++++++++++++++++++++++++++++++++++++++-
> >  include/linux/mtd/spi-nor.h   |  1 +
> >  2 files changed, 51 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 2d5a925..b7c6261 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -1461,6 +1461,49 @@ static int macronix_quad_enable(struct spi_nor *nor)
> >  }
> >
> >  /**
> > + * issi_unlock() - clear BP[0123] write-protection.
> > + * @nor: pointer to a 'struct spi_nor'.
> > + * @ofs: offset from which to unlock memory.
> > + * @len: number of bytes to unlock.
> > + *
> > + * Bits [2345] of the Status Register are BP[0123].
> > + * ISSI chips use a different block protection scheme than other chips.
> > + * Just disable the write-protect unilaterally.
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> > +{
> > +     int ret, val;
> > +     u8 mask = SR_BP0 | SR_BP1 | SR_BP2 | SR_BP3;
> > +
> > +     val = read_sr(nor);
> > +     if (val < 0)
> > +             return val;
> > +     if (!(val & mask))
> > +             return 0;
> > +
> > +     write_enable(nor);
> > +
> > +     write_sr(nor, val & ~mask);
> > +
> > +     ret = spi_nor_wait_till_ready(nor);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = read_sr(nor);
> > +     if (ret > 0 && !(ret & mask)) {
> > +             dev_info(nor->dev,
> > +                     "ISSI Block Protection Bits cleared SR=0x%x", ret);
> > +             ret = 0;
> > +     } else {
> > +             dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
> > +             ret = -EINVAL;
> > +     }
> > +     return ret;
> > +}
> > +
> > +/**
> >   * spansion_quad_enable() - set QE bit in Configuraiton Register.
> >   * @nor:     pointer to a 'struct spi_nor'
> >   *
> > @@ -1836,7 +1879,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >       { "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> > -                     SPI_NOR_4B_OPCODES)
> > +                     SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
> >       },
> >
> >       /* Macronix */
> > @@ -4080,6 +4123,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >               nor->flash_is_locked = stm_is_locked;
> >       }
> >
> > +     /* NOR protection support for ISSI chips */
> > +     if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
> > +         info->flags & SPI_NOR_HAS_LOCK) {
>
> This should be:
>
>         if (JEDEC_MFR(info) == SNOR_MFR_ISSI &&
>             info->flags & SPI_NOR_HAS_LOCK) {
>
> Otherwise you would end up overriding nor->flash_unlock function for
> other vendors too, right?
>
Yes, right. I will submit a v6 for this.

> > +             nor->flash_unlock = issi_unlock;
> > +
>
> No need for blank line here.
> Please run ./scripts/checkpatch.pl --strict on all patches and address
> all the issues reported by it.
>
>
Ok. The plain checkpatch.pl run didn't catch this.
I will fix this and provide a v6 for this.
>
> > +     }
> >       if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
> >               mtd->_lock = spi_nor_lock;
> >               mtd->_unlock = spi_nor_unlock;
> > diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> > index ff13297..9a7d719 100644
> > --- a/include/linux/mtd/spi-nor.h
> > +++ b/include/linux/mtd/spi-nor.h
> > @@ -127,6 +127,7 @@
> >  #define SR_BP0                       BIT(2)  /* Block protect 0 */
> >  #define SR_BP1                       BIT(3)  /* Block protect 1 */
> >  #define SR_BP2                       BIT(4)  /* Block protect 2 */
> > +#define SR_BP3                       BIT(5)  /* Block protect 3 for ISSI device*/
>
> No need to mention ISSI here. I am sure there are devices from other
> vendors with BP3
>
Ok, I will drop this in V6 and submit.

> >  #define SR_TB                        BIT(5)  /* Top/Bottom protect */
> >  #define SR_SRWD                      BIT(7)  /* SR write protect */
> >  /* Spansion/Cypress specific status bits */
> >
>
> Regards
> Vignesh

Thanks & BR,
Sagar Kadam

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
