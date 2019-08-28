Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1FFA0940
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 20:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oHuu2MChCOkbl9Tnll44f0evmrxnf3y11djihhi5+0=; b=izcH9qgyNIK/rD
	DB+e5C/4dP+gcBPD8/Zz3rhv/CXyxRktRm2/A72+8Mi/uELtA33Mu7jIcqgQjaYz5ePMWJWXuYlP+
	Qr7Njm5fD1x8+ffb0YxBVwnSQv3Z2Msqf6P3IWsluAug1xLxRmdkaMMOzLqz2cVy55NLmufTsFQJ1
	OH1M1jL+IDTPs/wm1Hl+iB3XCidmXPfRzMchfmGhFRaHbu3juENbg0eZw1G2mL8spETXx9d7a31oh
	Q5A3+c+O1aN55vZYiNnUAtJVgkYik8jFGvXVKsIaOJcDxmwnLE7lNtKU9knixS+wK8riP66t554g8
	vesRN/zNRduMtr1ygSXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32Ny-0004Xq-IL; Wed, 28 Aug 2019 18:09:34 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32NW-0004Mf-Rb
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 18:09:08 +0000
Received: by mail-vs1-xe44.google.com with SMTP id q16so621763vsm.2
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 11:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FH2NOkI7wNtasjU18y8L32Bmo2nfckBhtCBctsbMnr8=;
 b=T/GkjUuK2wuAJPAqyAxjsz1/mFpPPfWw/Xet/c7ibPqMgsoeq542KzUk+EBhER4BVg
 bkUHNvJ0grvtNI7Eo28Z0qAfQGpsk4IDbys6o5r3BxAQ0kEP8L73kQ39Cpr5ep67UPH6
 uPXzlohMnXIRz6lGViCgJCyVL89cqF/rI7odee9MU3MwmqXfeR+eCCNrhxbyWkFQA/XF
 /S+VAztP+ge/ZlnbyIKUJ9ta37ijdoVQ9q6wxSHzqpM14b40T2BoDHgFiaMQPQ7RJ056
 0VOQPrd/ckrptmi8vcn7lIxH57fUo9x0LDZsk+wjw9LSoVyUESJMhuyvg09mRWASzrTp
 QA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FH2NOkI7wNtasjU18y8L32Bmo2nfckBhtCBctsbMnr8=;
 b=ip5XvN5tF+GJSoU5SdgmX32Z4FjZE6SlTGQPr2/jtJ0PdYg40+fsBaiaj095ofrd2Z
 fmhcnlAu3ZAX2nGv1L4yqF5tu5zEkd36my4xTumHdtC3yNTVRoXPbxV766xjqOdJuRiI
 /T16TZQfEJrfQZXGPKb5ejF4Xnjzd/Vi9ziOxl8k0UDAPv4u3JSp5b9+c8xbwa9567tr
 9hrJYdR3lB9k8RG3omtlR8FWLbyZg0om7xdWBN6dfFEH5uiT68Grb4hR/bWSZ48ZK9il
 ZyAqZMJT4KlU7t44UsizcjoZpjFer6BTaLKHCqjSm61RyMs0TAvfzsLVyroZFQpRh13O
 AXfw==
X-Gm-Message-State: APjAAAWXYPP6GKCKJBjciO1bGO0YtQXEBeICDvUBWqM5pq+h+sVqbMzZ
 mqeZSV9dm+QGLYG9zQ4icxu+qr8q0odqngqqqVAvRg==
X-Google-Smtp-Source: APXvYqyURo7rnH5WL7d4rlsbKyu3inzGzxxABHgNQwJFaoudu7gS//knOa/s/zMfx2shYgTXGc5/sEZ5pfMhx5xHJb8=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr3371760vst.178.1567015744349; 
 Wed, 28 Aug 2019 11:09:04 -0700 (PDT)
MIME-Version: 1.0
References: <1565699895-4770-1-git-send-email-sagar.kadam@sifive.com>
 <1565699895-4770-2-git-send-email-sagar.kadam@sifive.com>
 <CAEUhbmU6xHjUWK3iM_RqURHGuqgmSxQw6RtWthT4+2aL1xLDcA@mail.gmail.com>
In-Reply-To: <CAEUhbmU6xHjUWK3iM_RqURHGuqgmSxQw6RtWthT4+2aL1xLDcA@mail.gmail.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Wed, 28 Aug 2019 11:08:53 -0700
Message-ID: <CAARK3H=gNy7o0NL6KCkcBQANoutwhMHE_-nfbfB2NVUATRgemA@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] mtd: spi-nor: add support for is25wp256
To: Bin Meng <bmeng.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_110906_892548_270FB6EB 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vignesh R <vigneshr@ti.com>,
 tudor.ambarus@microchip.com, Richard Weinberger <richard@nod.at>,
 Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Bin,

On Mon, Aug 26, 2019 at 2:49 AM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> On Tue, Aug 13, 2019 at 8:40 PM Sagar Shrikant Kadam
> <sagar.kadam@sifive.com> wrote:
> >
> > Update spi_nor_id table for is25wp256 (32MB) device from ISSI,
> > present on HiFive Unleashed dev board (Rev: A00).
> >
> > Set method to enable quad mode for ISSI device in flash parameters
> > table.
> >
> > Based on code originally written by Wesley Terpstra <wesley@sifive.com>
> > and/or Palmer Dabbelt <palmer@sifive.com>
> > https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 9 ++++++++-
> >  include/linux/mtd/spi-nor.h   | 1 +
> >  2 files changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 03cc788..6635127 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -1946,7 +1946,10 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
> >                         SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >         { "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
> >                         SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> > -
> > +       { "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
>
> The sector number should be 512, not 1024.

Thanks for pointing this out.
I had rectified it in recent U-boot patchset here
  https://patchwork.ozlabs.org/patch/1146522/
but I missed the change in the linux one as it was sent earlier.
I will include this change in the next version of the patch

Thanks & BR,
Sagar
>
> > +                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> > +                       SPI_NOR_4B_OPCODES)
> > +       },
> >         /* Macronix */
> >         { "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
> >         { "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
> > @@ -3776,6 +3779,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
> >                 case SNOR_MFR_ST:
> >                 case SNOR_MFR_MICRON:
> >                         break;
> > +               case SNOR_MFR_ISSI:
> > +                       params->quad_enable = macronix_quad_enable;
> > +                       break;
> > +
> >
> >                 default:
> >                         /* Kept only for backward compatibility purpose. */
> > diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> > index 9f57cdf..5d6583e 100644
> > --- a/include/linux/mtd/spi-nor.h
> > +++ b/include/linux/mtd/spi-nor.h
> > @@ -21,6 +21,7 @@
> >  #define SNOR_MFR_INTEL         CFI_MFR_INTEL
> >  #define SNOR_MFR_ST            CFI_MFR_ST      /* ST Micro */
> >  #define SNOR_MFR_MICRON                CFI_MFR_MICRON  /* Micron */
> > +#define SNOR_MFR_ISSI          0x9d            /* ISSI */
> >  #define SNOR_MFR_MACRONIX      CFI_MFR_MACRONIX
> >  #define SNOR_MFR_SPANSION      CFI_MFR_AMD
> >  #define SNOR_MFR_SST           CFI_MFR_SST
>
> Regards,
> Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
