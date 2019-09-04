Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1DA85A3
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 16:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBSRR5t5qOIdsFeaprWjetfbB8g6ARQmckYCDDU+uV4=; b=C1WtkgBP+QWZja
	cqu2RHDzqFgTBFvG+PIYpfQFezQeni89KKa9j6sglLk0UMEdyr9svW8tB5mxV/WYrkNGPhRvkNDBf
	KU1/C4q1//n00weJxmurvCyDwmZ3kQqvDGy1yCKiQbJVGyfpdXM6BFi9MG695HfXHK0d2cBhL+HgE
	omboeuqau/iyRao03h3KxBbZGXonzhC1ilsx+lU6Te6lDBJ6PXY/2WenXIi4P1PCNr8qqgu9iWWKj
	8z7LeMQWVrTkCTAiZqCN8iDS7CkaEJAeMYZsT4hk5efE/bMclfjpvt+HULaCidhSla3lrEodbI60j
	eOsLZJnZr7oi4042GhJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WHM-0005ym-Cz; Wed, 04 Sep 2019 14:29:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WH5-0005k1-4U; Wed, 04 Sep 2019 14:28:44 +0000
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 592B72342D;
 Wed,  4 Sep 2019 14:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567607322;
 bh=L76A2ZvdZ49vwh9gPyzYANOjIS9WVsZyi57kx5mf8cQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=szOhtdy3pm0hmLpuZGMow2vaeDvOjEj/9NcUKl3Ye865Ae8MB/Tl+Sip/dXvPxb9B
 72hiCdJ/0l/oVbxrbyiOYabDzUdSAJFpf80udg8QExAsVR84ISBvUwLj6bCfquTzob
 rRp/OA3BeXbrfH/12rQnn4/Hm5WjoM800DRgrq64=
Received: by mail-lf1-f43.google.com with SMTP id w67so16109868lff.4;
 Wed, 04 Sep 2019 07:28:42 -0700 (PDT)
X-Gm-Message-State: APjAAAW7ouz7PA1YJi5avY84iHGwgCCcPMEZzsbJEAq+GVAmyhnSPJbc
 dbl6BhpZXiZ6brt97m3k6faIKDq4Mo7gUbS70AA=
X-Google-Smtp-Source: APXvYqycXOQpNE+apc0JPS11KQSp+RmtxHn6Ng9LQDVcy4lQi5wxS8ZrsQ1N6swmH4iFFIYS5iVQwDmEz/WmDjOTj6U=
X-Received: by 2002:a19:c649:: with SMTP id w70mr24808672lff.33.1567607320399; 
 Wed, 04 Sep 2019 07:28:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
In-Reply-To: <20190904135918.25352-26-yuehaibing@huawei.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 4 Sep 2019 16:28:29 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
Message-ID: <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_072843_212653_9376E30C 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 f.fainelli@gmail.com, benjaminfair@google.com, shc_work@mail.ru,
 khilman@baylibre.com, openbmc@lists.ozlabs.org, michal.simek@xilinx.com,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andi Shyti <andi@etezian.org>, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org, broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, sbranden@broadcom.com,
 yamada.masahiro@socionext.com, avifishman70@gmail.com, venture@google.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, thierry.reding@gmail.com, wahrenst@gmx.net,
 kernel@pengutronix.de, kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 16:00, YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>

This tag does not look real... First of all where is the report?
Second, it was reported by coccinelle.
Reported-by should be use to give real credits.

Best regards,
Krzysztof

> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/spi/spi-s3c24xx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/spi/spi-s3c24xx.c b/drivers/spi/spi-s3c24xx.c
> index aea8fd9..2d6e37f 100644
> --- a/drivers/spi/spi-s3c24xx.c
> +++ b/drivers/spi/spi-s3c24xx.c
> @@ -487,7 +487,6 @@ static int s3c24xx_spi_probe(struct platform_device *pdev)
>         struct s3c2410_spi_info *pdata;
>         struct s3c24xx_spi *hw;
>         struct spi_master *master;
> -       struct resource *res;
>         int err = 0;
>
>         master = spi_alloc_master(&pdev->dev, sizeof(struct s3c24xx_spi));
> @@ -536,8 +535,7 @@ static int s3c24xx_spi_probe(struct platform_device *pdev)
>         dev_dbg(hw->dev, "bitbang at %p\n", &hw->bitbang);
>
>         /* find and map our resources */
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       hw->regs = devm_ioremap_resource(&pdev->dev, res);
> +       hw->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(hw->regs)) {
>                 err = PTR_ERR(hw->regs);
>                 goto err_no_pdata;
> --
> 2.7.4
>
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
