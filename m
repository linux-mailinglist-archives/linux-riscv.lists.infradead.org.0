Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6015C116C6
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 11:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWy39Dh3NQcs4CsTf5bILYSHCaIFClvNaW2vOeWrts0=; b=qubHMgRk9ECwxJ
	2vrM6WZWOlKgzPND2avEm/PVPTqPkJIfOPi/GjmiROBOy24Kb30i6D8RzAD4QDpkMuiBmmgrXjUTf
	7IK0OPGnXgnHJbhfRFmckx2BnjhdXYKt2tD4nwL1JfR5QoDF9A+QH71iKIP1w1YU2MHVnGQ2S6Xi3
	4+vhyWS23Z11UUwWgHxk8DJE4Buugso1JRyfokYg3g7HaxXGCtBO4y2ByNSHVVkvJ/JKX+SVSqzm4
	e5pLGx1BI54blH9HNZ6RG48ammMhIySnIQyfG891Au9d6Ba0zTSw/8a3IiTMH5s7C8U9oFihDtlk1
	ENCBfmW1OEy+R5nBaKvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8Sf-00012Y-FM; Thu, 02 May 2019 09:57:05 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8SU-0000ta-Vj
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 09:56:56 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y196so990246vsc.10
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 02:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YTKXG2BvapVjfHjBieKgNIDpAb1iozjfKpPYlJpJCFY=;
 b=dwHn/TwmEZtLalAjTJaZ3KIcPdZ9rZYVCzoASmcBLCQ2HZz+JrS8iAHfSMi03PVOlX
 jhQJRblKhXQte3p8Dps8571Kx2Pm4z1iWhEdMaUSI3abVmfoUcnOZIU7f8HmmAorvpZT
 N4ReNlAJZyVfyPyNBN0iox/p+5gU8/icOBDPUqW0CCMcy8o6sSB1m8SQHRyRAXGn63YB
 0sQcy7iQrHetWP89TrhaBNg0n90VomGRDsDNsRjxtqAWyS8aFNdg9Gjck0mhE9McG1rN
 ah7Ik2b0DBjcwiGSizHzzAa4obeoj7CpVfh7L1vdlFvow8Id7IiUeDYh7ftUDN5RuvdO
 g89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YTKXG2BvapVjfHjBieKgNIDpAb1iozjfKpPYlJpJCFY=;
 b=WbM05xgAaLHSBrAKbT17q+5TRGvYeRHg0ZKLhP3/OkTwp23c7nAbxcQ1XV4SMnzcVK
 m59By8HzGAldxhlSO7jWPsZnxZP6rXnf77xrt/k7m8EYw6VV++qK6EyRq8lyGNF3LJvj
 Q0R5DkZXGwXXMGK65AUaDFDls4r51WGNW7DoLpoZ0F3cdDil8Lx6j7fPfeWsJswoxc8v
 wLS4qUJxljAWoy8mKsCtiL3eU7tkXG0i3sxgkTEsGBzRDo8o3nPV28cj4RIc4BqCAeUP
 NUmYzZ070nxbpWDt4i37OuSNNqy9qgjfGpjLfr8kFuXwbTAaFBVoU5IyXpKSUr7+zYub
 vv+g==
X-Gm-Message-State: APjAAAUOz63f7hZ8FG1lmmIjxYCVWKDY1tr7Pue7fAMMFH42olycuS+M
 J9XNE+XChxadogBEFht9pAGGYrL4LsR0A8IJ1+hOQw==
X-Google-Smtp-Source: APXvYqzna4Ba9px66ruZmRjnBEj2xyZLRILQtXV8Oiu172P7DHpQmbk1B3YbTZWyFveVlgVkmqJjC9k4n8Us7sC2mlY=
X-Received: by 2002:a67:7286:: with SMTP id n128mr1437892vsc.116.1556791013544; 
 Thu, 02 May 2019 02:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
 <1556474956-27786-3-git-send-email-sagar.kadam@sifive.com>
 <alpine.DEB.2.21.9999.1904301016400.7063@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1904301016400.7063@viisi.sifive.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Thu, 2 May 2019 15:26:42 +0530
Message-ID: <CAARK3HmzH8cNb1rTtWGwg3g8cOkGFx52v=eomZWcBkeLcx4+-Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mtd: spi-nor: add support to unlock flash device.
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_025655_020241_E2068D82 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, bbrezillon@kernel.org, richard@nod.at,
 tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 10:49 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sun, 28 Apr 2019, Sagar Shrikant Kadam wrote:
>
> > Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
> > have memory blocks guarded by block protection bits BP[0,1,2,3].
> >
> > Clearing block protection bits,unlocks the flash memory regions
> > The unlock scheme is registered during nor scans.
>
> This also looks like it's partially based on Wes or Palmer's patch from
>
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
>
> Please note that in the patch message.
Thank you Paul for pointing this out.
Yes,  I missed to add it to commit message and will submit a V3
version of the patch.

> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 48 ++++++++++++++++++++++++++++++++++++++++++-
> >  include/linux/mtd/spi-nor.h   |  1 +
> >  2 files changed, 48 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index c5408ed..81c7b3e 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -1461,6 +1461,46 @@ static int macronix_quad_enable(struct spi_nor *nor)
> >  }
> >
> >  /**
> > + * issi_unlock() - clear BP[0123] write-protection.
> > + * @nor: pointer to a 'struct spi_nor'
> > + * @ofs: offset from which to unlock memory
> > + * @len: number of bytes to unlock
> > + * Bits [2345] of the Status Register are BP[0123].
> > + * ISSI chips use a different block protection scheme than other chips.
> > + * Just disable the write-protect unilaterally.
> > + * Return: 0 on success, -errno otherwise.
>
> This is closer to kernel-doc format, but not quite.  Please update this to
> align to
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/doc-guide/kernel-doc.rst#n57
>
This is a good pointer. I will align the function description
according to kernel-doc format.

>
> - Paul
>
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
> > +             return 0;
> > +     } else {
> > +             dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
> > +             return -EINVAL;
> > +     }
> > +}
> > +
> > +/**
> >   * spansion_quad_enable() - set QE bit in Configuraiton Register.
> >   * @nor:     pointer to a 'struct spi_nor'
> >   *
> > @@ -1836,7 +1876,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >       { "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> > -                     SPI_NOR_4B_OPCODES)
> > +                     SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
> >       },
> >
> >       /* Macronix */
> > @@ -4078,6 +4118,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >               nor->flash_is_locked = stm_is_locked;
> >       }
> >
> > +     /* NOR protection support for ISSI chips */
> > +     if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
> > +         info->flags & SPI_NOR_HAS_LOCK) {
> > +             nor->flash_unlock = issi_unlock;
> > +
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
> >  #define SR_TB                        BIT(5)  /* Top/Bottom protect */
> >  #define SR_SRWD                      BIT(7)  /* SR write protect */
> >  /* Spansion/Cypress specific status bits */
> > --
> > 1.9.1
> >
> >

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
