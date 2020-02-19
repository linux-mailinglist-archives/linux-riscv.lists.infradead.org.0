Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923DA163FF3
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 10:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g5u0snihwa6Egt0Qk0Qh1M1KCMq5VuHmrqtC2JmzYRI=; b=qA37Hm62Pozhf7zJ4/ZKjQJJ/
	JCzTepSsGlK65EiE+CTdHESMyzERig25ztBfmEG3ygfZNmEZEJaXZ9Aiv4FPBFtB/hj7TM+CGOzgb
	kKkeUX7vICuYjyA0OOFXldTRJJwq3UcYJIU0mOVNHKDdew36hsVT7lTRX1pV3M3lJrybvq3kUn66d
	hqEthZqk0PIMD7+TxQshV1nF76WBq/nOXPYw3iPtlUm31P0U9dyieoscn1e5cQqqhZrIoz/738BLQ
	gzEnGx0aNGIPGLw1iCrcKRAj6Rnv+IB97O3JmtR7ZiPKJOjJXH+RGTgqC4HpbilpJc95+Pgi0ZiJQ
	LKnYQKLSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LJE-00039t-V1; Wed, 19 Feb 2020 09:06:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LJA-00037g-V0
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 09:06:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id m16so27192193wrx.11
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 01:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g5u0snihwa6Egt0Qk0Qh1M1KCMq5VuHmrqtC2JmzYRI=;
 b=WrHeYr+LxI3ni7qNcbeMCpT/+7ReG3fSl4yFztfPLszWLVkBbMKTlt2NYXDMktsVVv
 eQY8piaGh4g+DKsXGH+bYRYvsMahQAtl0DZMvQFrY2a1kKsJRqWU+x+HgY7npqvfV0/v
 iYXkekA0zm+P5js5VetP585W0VhIgV5OHBGhm5aINeAfeFPhhZEALXcRFZPt1OwXirQG
 +Pw6rcekd9yTUhPNHZuvrSxZzkmulBIGbg5YTZ1PXICHmJquFokx5miB68NNQPPIHGjP
 k1n+tTnj0S++bcDjDl5Ll0w7NrXJ630ckEq4i4ClLDSKMO6a0Yjjb8taqqIwDDC1+Yal
 boYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g5u0snihwa6Egt0Qk0Qh1M1KCMq5VuHmrqtC2JmzYRI=;
 b=RM6YHuY/qNqyRpzjeIIjudczBiVzqic/34L+UFvjcMhXXFOt3PraKeByW9nDCB34HN
 c5qYc5/tb4Ayx4C4/eKrF2Ux+SYT+WJCynTPte9M/9+njRVqXsqUeuAsySgqnHVdm+eT
 XQ9mGArKAp/W/8Jk10eZ9+MPRVj9u5+Zr/MLsdmlydM0+rziCBKPeM2l6YXaBRFK8UiE
 QxhIqdCRPGM/RLjyS+GkzoCxEsjagxg5irLEfuMS3CcJorbibUZufBi0CyANIkO+XOm/
 4ifArVv4rTmTcIMDdQX+Qfz4Z0n4ATV5gs8CWPUcKSKMuJS761wNC2wksfoWc/ktnwAP
 xZew==
X-Gm-Message-State: APjAAAW9+Baw+U8OuuE+by8V4UjHw0jwUvz0XUsJLJfrc+DLQr1YcaCu
 vxlcGGKBMfD0LTa4dlKcYH0=
X-Google-Smtp-Source: APXvYqwB3mvWMMUQZrubqH3g3gNmhK3ZDnDOknE2O5MTlbd8pBp2NrxTAhIfgel+z6FtYi2ht6ffhA==
X-Received: by 2002:adf:df83:: with SMTP id z3mr34427726wrl.389.1582103175606; 
 Wed, 19 Feb 2020 01:06:15 -0800 (PST)
Received: from aurora.visucore.com (92-110-144-95.cable.dynamic.v4.ziggo.nl.
 [92.110.144.95])
 by smtp.gmail.com with ESMTPSA id 5sm2093005wrc.75.2020.02.19.01.06.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Feb 2020 01:06:14 -0800 (PST)
Date: Wed, 19 Feb 2020 10:06:12 +0100
From: "Wladimir J. van der Laan" <laanwj@gmail.com>
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Message-ID: <20200219090612.7onbaoygy6waumnw@aurora.visucore.com>
References: <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
 <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
 <CADnnUqenadntSrngNGjnu40inxZWK1Nm3T64BnyY114hEwC_Og@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CADnnUqenadntSrngNGjnu40inxZWK1Nm3T64BnyY114hEwC_Og@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_010617_001951_5659963D 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laanwj[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Sean Anderson <seanga2@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:26:17PM -0300, Carlos Eduardo de Paula wrote:
> On Tue, Feb 18, 2020 at 2:48 PM Sean Anderson <seanga2@gmail.com> wrote:
> >
> > So the LCD connector is supposed to be for a ST7789V controller, but
> > there doesn't appear to be a driver in Linux for it. I don't have an
> > appropriate LCD screen, so I will not be able to write a driver.
> >
> 
> Actually there is a driver and config DRM_PANEL_SITRONIX_ST7789V, in
> gpu/drm/panel/panel-sitronix-st7789v.c and also FB_TFT_ST7789V and
> CONFIG_FB_TFT_ST7789V with the driver a in
> staging/fbtft/fb_st7789v.c. Might be easier :)
> 
> Weird that the Kendryte SDK refers to the LCD as NT35310
> (https://github.com/kendryte/kendryte-standalone-demo/tree/develop/lcd).

I remember checking the datasheet for both a while ago and NT35310 and ST7789V
seem to be more or less compatible, with only register differences
for more obscure functionality.

The more involved part is likely to adapt the spi-dw driver, apart from making the
ctrlr0 shifts configurable, there's the "OCTAL" mode that is used and extra
register that isn't set in the Linux driver (spi_ctrlr0 / 0xf4) concerning
"instruction address translation mode" and other things that needs to
be set correctly for LCD transfers to work.

> > There is no need for GPIOs. The datasheet shows SPI0 as hooked up to the
> > SD card, but the default pinconf doesn't have it hooked up. In addition,
> > the dedicated SPI0 data lines are already connected to the LCD. For

Yes - apparently only if you set sysctl spi_dvp_data_enable to route the
SPI0_0-7 pins to to the LCD data pins (bypassing FPIOA).

BTW speaking of which, does anyone know what's up with the K210's DMA
controller? It looks like it can only transfer 32-bit values from and to
peripherals? At least the kendryte-standalone-sdk goes to great lengths to
first allocate a 32-bit buffer then manually copy it to say, bytes or 16-bit
words. Seems quite a silly workaround with a lot of overhead.

Wladimir


