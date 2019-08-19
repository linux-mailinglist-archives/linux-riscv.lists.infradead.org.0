Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DB791C24
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 06:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3JCIuPjF3ETbxmBBbi0CYbEuVTUjnB1UkAiO6xJUwQ=; b=ll+bN3R99E0vNj
	PaLyliAkVibEzUl+xnhIoJpjZPVv0r01W7UgAjc4MEyIlojouZSglirLfSJkzdE0Vv/I/HkT0z81Y
	wmgyJUn4qeuAqnWeA4sYG32/Rv7uJl6Be60RB5dlV8vTGFBtw4l6tOcAM/NTfBpL4Fbzt0Bt8ed7P
	WEJ+86ESr8HavfvNX1koJ2Bo3q3cRrFT9EYSopcT1czBGaheXkVHcFwFbOwwNBQmyLUWNNXdhBDPR
	sY49t6tmLrj3nr3lGOCAMuq16m9z5a+ehN8vQE1/k37blKOsxQI5dC5/IVEbJMzCirfkgOwi2A28W
	z7rfsRdG3h0pKEDfu0Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzZX3-0006PB-Ki; Mon, 19 Aug 2019 04:44:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzZWw-0006Dq-0O
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 04:44:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id r3so7216876wrt.3
 for <linux-riscv@lists.infradead.org>; Sun, 18 Aug 2019 21:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fTdhTJlfOEvwMxtoOo8JgnOcQgqcJ7O6rfujPFqHNDs=;
 b=rH337aQk94SWC4IT60yJz1ozOzffxGCHpGpI+emUGND0A3/kgYnnSBEK6gpjmxFxXp
 iuYFCUFx5wyjY7wLk62+KIJavNt0eYH/GXtCHCjveXmnPvGiN5OixCTWxdfnqsgjxn9w
 2lcinCuOPQQySpK+QGLWFSuatxvnSJlh8MhxDp9csdOV9XsW7zqcSFXBjX6mPDhkIe34
 1AOQrEjGsSl39kOicGpeCeoVpbELRFY6k0FlA7xEmwKa0twcyyuxlKlJb13YTPAd4Tt8
 GgwlgGroYXUM9cgK5gMV1px5kHAahLOzoObnOfaO6DJ4LyQruK6G6kAZF/L72wkkS0wR
 TL2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fTdhTJlfOEvwMxtoOo8JgnOcQgqcJ7O6rfujPFqHNDs=;
 b=nQ78u8st8YyUPrBS/DxbvnZwrS2D8PpWKt25FtfGSFRDZY8LWQJHgnolYlLtbqZOq2
 b7482jzfGPR8JLz9KwdjcPptygVJ2zU5pO8zBzPbEiuANvgNJIZe4a1Cm5CvWEhI+ffT
 iB4ZLFxCHjYxK4ocD6FEjEp3hOOL6HYc42dv5067bkMf8IMtj4KOd5DmMeALYXiNB56P
 crOtpHYCCBi8j2gdzOzQAiXEF9KmTi4W5F6TbYk6wCT10k4R22243QUz4zJIlgBtXrBs
 AoiwXwR+wrZHmUhIhaBYGxbGRa/jrEL2AjnQFKESC7lNdB9LqGvZ3KD67cKeGRPRVmwr
 Xopg==
X-Gm-Message-State: APjAAAViI0qRvk8A3zk0UE7DHXeJbjVafcscdloyTt8fD7c36GjUjWYW
 RhzBr4oJ2I5qYU9AGH9Pq+7PHoQElHcVXfchiia9DA==
X-Google-Smtp-Source: APXvYqwUQPkud8m3pn3JD+iQBOJ9pDvE11srZt37VrKVieKqD5k2pI6Be57Z3epvvVVDV/zbKoPQvn8POiUVFTV1Zn8=
X-Received: by 2002:a5d:4ecb:: with SMTP id s11mr16468225wrv.323.1566189866336; 
 Sun, 18 Aug 2019 21:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190818082935.14869-1-hch@lst.de>
In-Reply-To: <20190818082935.14869-1-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 19 Aug 2019 10:14:14 +0530
Message-ID: <CAAhSdy18rh+3nSrpeMPoxmi_St4FUEy=48oPZmDnOndWUFegbg@mail.gmail.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_214430_120295_F840F787 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-edac@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 2:01 PM Christoph Hellwig <hch@lst.de> wrote:
>
> The sifive_l2_cache.c is in no way related to RISC-V architecture
> memory management.  It is a little stub driver working around the fact
> that the EDAC maintainers prefer their drivers to be structured in a
> certain way that doesn't fit the SiFive SOCs.
>
> Move the file to drivers/soc and add a Kconfig option for it, as well
> as the whole drivers/soc boilerplate for CONFIG_SOC_SIFIVE.
>
> Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/Makefile                                 |  1 -
>  drivers/edac/Kconfig                                   |  2 +-
>  drivers/soc/Kconfig                                    |  1 +
>  drivers/soc/Makefile                                   |  1 +
>  drivers/soc/sifive/Kconfig                             | 10 ++++++++++
>  drivers/soc/sifive/Makefile                            |  4 ++++
>  .../riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c  |  0
>  7 files changed, 17 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/soc/sifive/Kconfig
>  create mode 100644 drivers/soc/sifive/Makefile
>  rename {arch/riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c (100%)
>
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 74055e1d6f21..d2101d0741d4 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -11,6 +11,5 @@ obj-y += extable.o
>  obj-y += ioremap.o
>  obj-y += cacheflush.o
>  obj-y += context.o
> -obj-y += sifive_l2_cache.o
>
>  obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
> diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
> index 200c04ce5b0e..9241b3e7a050 100644
> --- a/drivers/edac/Kconfig
> +++ b/drivers/edac/Kconfig
> @@ -462,7 +462,7 @@ config EDAC_ALTERA_SDMMC
>
>  config EDAC_SIFIVE
>         bool "Sifive platform EDAC driver"
> -       depends on EDAC=y && RISCV
> +       depends on EDAC=y && SIFIVE_L2
>         help
>           Support for error detection and correction on the SiFive SoCs.
>
> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> index 833e04a7835c..1778f8c62861 100644
> --- a/drivers/soc/Kconfig
> +++ b/drivers/soc/Kconfig
> @@ -14,6 +14,7 @@ source "drivers/soc/qcom/Kconfig"
>  source "drivers/soc/renesas/Kconfig"
>  source "drivers/soc/rockchip/Kconfig"
>  source "drivers/soc/samsung/Kconfig"
> +source "drivers/soc/sifive/Kconfig"
>  source "drivers/soc/sunxi/Kconfig"
>  source "drivers/soc/tegra/Kconfig"
>  source "drivers/soc/ti/Kconfig"
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index 2ec355003524..8b49d782a1ab 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -20,6 +20,7 @@ obj-y                         += qcom/
>  obj-y                          += renesas/
>  obj-$(CONFIG_ARCH_ROCKCHIP)    += rockchip/
>  obj-$(CONFIG_SOC_SAMSUNG)      += samsung/
> +obj-$(CONFIG_SOC_SIFIVE)       += sifive/
>  obj-y                          += sunxi/
>  obj-$(CONFIG_ARCH_TEGRA)       += tegra/
>  obj-y                          += ti/
> diff --git a/drivers/soc/sifive/Kconfig b/drivers/soc/sifive/Kconfig
> new file mode 100644
> index 000000000000..9ffb2e8a48cd
> --- /dev/null
> +++ b/drivers/soc/sifive/Kconfig
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +if SOC_SIFIVE
> +
> +config SIFIVE_L2
> +       tristate "Sifive L2 Cache controller"
> +       help
> +         Support for the L2 cache controller on SiFive platforms.
> +
> +endif
> diff --git a/drivers/soc/sifive/Makefile b/drivers/soc/sifive/Makefile
> new file mode 100644
> index 000000000000..9b4a85558347
> --- /dev/null
> +++ b/drivers/soc/sifive/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_SIFIVE_L2)        += sifive_l2_cache.o
> +
> diff --git a/arch/riscv/mm/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
> similarity index 100%
> rename from arch/riscv/mm/sifive_l2_cache.c
> rename to drivers/soc/sifive/sifive_l2_cache.c
> --
> 2.20.1
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
