Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B11A1BE98
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 22:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o63UH7UzSnuevfZCTnx6Dng1lw96qrN5QvN/Bwgq0Tk=; b=HIJFA4BI+4PBHH
	wDAJOK+kaBfyfUetqEmo8P5/Fz13zFq1UIulCtC84oeCNStCt91bPd1rF73hLsCTjPDvkqVlyFBiN
	Gm8wa5gxcQPGv9HgQT/SaUCuGToXJWTMZ3D2LPLw7pXmC1VLZFWuNUrQ0bfVgFO9OVII4TSwfts2H
	yq33aYYrCpjNDrP4PVt27LbLWrzS0qukkRND6YdLWVrsMXMfr3NEOIC1x6H44yR8eDE4eC1DPdujw
	El/dspsr9GUy4ROfWfH7e8+KW83N6B5QyrjJgHJPiyIH8yvfSHDptCzjM6MZRhuF5LAu7uNRakQ4n
	E+PyXI3QwQhtFmeUyXAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHSu-0008HU-S8; Mon, 13 May 2019 20:22:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHSo-0008Gq-1L
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 20:22:27 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A03F20862;
 Mon, 13 May 2019 20:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557778941;
 bh=rUumpDM3UecrwQ7TBHU63Q7wVdRFdbY9R6pHgI3XXUU=;
 h=In-Reply-To:References:From:Subject:Cc:To:Date:From;
 b=eWOcVhl7rhA8P+caYmgE348aRGNcCsgXWD4IWR9sejbueLJYMZW+Ge/7VqKgP81O+
 34n12gx0kewuLnKO84a00k3U3iVXBCezrOPsWdkPt6ljwtxHoi5DuWkwLZNxXaFK9n
 ozBcif5H1L+1jNZzB87yhgwjYRCRLrUMgDn6ZZHY=
MIME-Version: 1.0
In-Reply-To: <20190513200758.15241-1-paul.walmsley@sifive.com>
References: <20190513200758.15241-1-paul.walmsley@sifive.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: sifive: restrict Kconfig scope for the FU540 PRCI
 driver
To: Paul Walmsley <paul.walmsley@sifive.com>, mturquette@baylibre.com,
 pavel@ucw.cz
Message-ID: <155777894054.14659.13824195555713805550@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Mon, 13 May 2019 13:22:20 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132226_350950_1D78D173 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Walmsley <paul@pwsan.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-05-13 13:07:58)
> Restrict Kconfig scope for SiFive clock and reset IP block drivers
> such that they won't appear on most configurations that are unlikely
> to support them.  This is based on a suggestion from Pavel Machek
> <pavel@ucw.cz>.  Ideally this should be dependent on
> CONFIG_ARCH_SIFIVE, but since that Kconfig directive does not yet
> exist, add dependencies on RISCV or COMPILE_TEST for now.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Pavel Machek <pavel@ucw.cz>

Reported-by?

> ---
>  drivers/clk/sifive/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/sifive/Kconfig b/drivers/clk/sifive/Kconfig
> index 8db4a3eb4782..27a8fe531357 100644
> --- a/drivers/clk/sifive/Kconfig
> +++ b/drivers/clk/sifive/Kconfig
> @@ -2,6 +2,7 @@
>  
>  menuconfig CLK_SIFIVE
>         bool "SiFive SoC driver support"
> +       depends on RISCV || COMPILE_TEST
>         help
>           SoC drivers for SiFive Linux-capable SoCs.
>  
> @@ -10,6 +11,7 @@ if CLK_SIFIVE
>  config CLK_SIFIVE_FU540_PRCI
>         bool "PRCI driver for SiFive FU540 SoCs"
>         select CLK_ANALOGBITS_WRPLL_CLN28HPC
> +       depends on RISCV || COMPILE_TEST

This isn't needed? The config already implicitly depends on CLK_SIFIVE
which depends on RISCV || COMPILE_TEST. This line should be removed.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
