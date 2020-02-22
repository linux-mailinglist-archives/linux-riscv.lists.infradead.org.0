Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D3D169175
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Feb 2020 20:07:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hUcpnSLEn+YLhIPVmeEuGnNNkTS3APInXZoS9Ntpa9k=; b=hRmziBx4dTlSbSB5u2XunZUMa
	B3hMJQyD6E+NzJ7P/iijACAhIKJmotGcdYioBhYMC2hyLaigwOBpdvkLfikYtDqEFL5D+OSBGXgao
	81aYBIZgRNqJ3nZLF7o4ScxU4ANMN0Ap3t2b0wGFTBz+WU5Sbv9z+G7g2pNnG7aTqBX/YuDkRpwhQ
	yM/gw9VTXYwkTDJgk4H1sEKgh6ZhAPEJSE1yKL59GF0GS89xcUtNGfTlcHOGPORqMKNzWrtsEutq+
	iYYpNSPDqKlZcot8wKxdEgQ1Yv2qfJwbt5/8gWcGoN43tpGcRElbdRsgPtWWXNzsr/VzVEEQV8huV
	XSRuNkHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5a7p-0001tC-HR; Sat, 22 Feb 2020 19:07:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5a7k-0001sq-Ux
 for linux-riscv@lists.infradead.org; Sat, 22 Feb 2020 19:07:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id n10so5758434wrm.1
 for <linux-riscv@lists.infradead.org>; Sat, 22 Feb 2020 11:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hUcpnSLEn+YLhIPVmeEuGnNNkTS3APInXZoS9Ntpa9k=;
 b=et+d0OWPbMtJ8Xphz2xq3pVxrhb1EYui2SOTDSR1IFSAvQ8awjSMCnu72Fm/MFRQpV
 anU86e/cWbLAUHkYhsT7jwKzaEZb1r9X8cYaG77Q9/gie3+XvRmjxpqDNDMNxHOiF49K
 bDH6tY9U6hySDUDz+KoT7/laMpEA3WgM2u1EQW64xwUZg205moeqCosrwyyxgnlzTriX
 +FZtUgrim7jyYMj+Sd1MM7boDCOuyNdropx6Oim26lEHo4Sn6imoqiaH0yIgLvbomZ6q
 JW0gQqyJIIn9DMDrfzNUIlVy/ARvya3BuPBeNLld+RSHpm9FLsFwB/E1dHYmLc4n7WhZ
 n54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hUcpnSLEn+YLhIPVmeEuGnNNkTS3APInXZoS9Ntpa9k=;
 b=CnePvJHa/WTf74/rU7TBYZJdL3Toca23Rj/YOE172Pmzu2IYJS0cueoV8ActYXSOxU
 PgOlpOxiGXziXav1KY7hcWjNnGMiJXkHIjQRcxBNpL5SaLPAXXL2UIg9Bqcl0GvPNhfl
 EBpjU/Bip97VzF6UQKIRk+NLTiNEqr11KWeBsKGMvqtEqZr4rVSfJ97O2sLPZ2nztRcx
 jC/1HuDB78jE5qf4yeqB5+5D8vQU5fqvGbyJmU8cGBoF6iwRUuNzLsToVidpUh1/JYb+
 hyTQmEYaUySH/5bOtgWUPsB7OlvI3AjL12AsNTcDX1NAXDWD7agzBS68z9TILcMS9WEL
 XWWA==
X-Gm-Message-State: APjAAAXmyy1udnEXawdfgjNpOvvTfan3Unj7aca03WA4gKlV0ieJzzCx
 7eJhuexNkp62KE7ibNG5jIw=
X-Google-Smtp-Source: APXvYqzdXKRUuL30mVRDZU/hskKyYjlVq6KShPLNY2HtCwoksIrvuWAgJSGSw2C9MAWzNKlK9x26Ag==
X-Received: by 2002:a05:6000:192:: with SMTP id
 p18mr55186224wrx.218.1582398454468; 
 Sat, 22 Feb 2020 11:07:34 -0800 (PST)
Received: from aurora.visucore.com (92-110-144-95.cable.dynamic.v4.ziggo.nl.
 [92.110.144.95])
 by smtp.gmail.com with ESMTPSA id n3sm9985429wrs.8.2020.02.22.11.07.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Feb 2020 11:07:33 -0800 (PST)
Date: Sat, 22 Feb 2020 20:07:31 +0100
From: "Wladimir J. van der Laan" <laanwj@gmail.com>
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Message-ID: <20200222190731.27vulbrqj37obeq6@aurora.visucore.com>
References: <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
 <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
 <CADnnUqenadntSrngNGjnu40inxZWK1Nm3T64BnyY114hEwC_Og@mail.gmail.com>
 <20200219090612.7onbaoygy6waumnw@aurora.visucore.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200219090612.7onbaoygy6waumnw@aurora.visucore.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_110736_999538_A2A02442 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: kendryte.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laanwj[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Sean Anderson <seanga2@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


> > > So the LCD connector is supposed to be for a ST7789V controller, but
> > > there doesn't appear to be a driver in Linux for it. I don't have an
> > > appropriate LCD screen, so I will not be able to write a driver.
> > >
> > 
> > Actually there is a driver and config DRM_PANEL_SITRONIX_ST7789V, in
> > gpu/drm/panel/panel-sitronix-st7789v.c and also FB_TFT_ST7789V and
> > CONFIG_FB_TFT_ST7789V with the driver a in
> > staging/fbtft/fb_st7789v.c. Might be easier :)
> > 
> > Weird that the Kendryte SDK refers to the LCD as NT35310
> > (https://github.com/kendryte/kendryte-standalone-demo/tree/develop/lcd).
> 
> I remember checking the datasheet for both a while ago and NT35310 and ST7789V
> seem to be more or less compatible, with only register differences
> for more obscure functionality.

I just stumbled on this:
https://forum.kendryte.com/topic/68/a-guide-to-adapt-kendryte-kd233-kpu-demo-to-sipeed-m1
under "LCD Driver".

So it looks like the K233 uses a nt35310, while Sipeed M1 uses st7789. This is
a likely explanation for them mentioning both chips in the SDKs.

Kind regards,
Wladimir

