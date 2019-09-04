Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14C1A940D
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 22:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9fgKiJRJoe+SECYmUSA6i2+6qVUIthWlrFwqgIXEzA=; b=owzOgJ9ubUcgYt
	F6wECWk9CRoJLboRtYE03U5XiIiz7gLgYn8XgHwtYmViqm3ghxy2efXCRF6ZvVcKFG5osyEfCuhug
	lQ60f3BK2nFILtsyRX8O6bEoTewrpXS4QK7P+29wbGrZMmha2BZFmLc9uMjdPhESW0ztsFE+yT8aI
	m3jfC48/9piRZJYTNhR80vnsAjEXd5pWwbWFwwClKJkxYucrgy0SvFQEJchLN6R/5uisfoXMqSguu
	WVVxYIZHI39XAslfKWFn86RLU2KqAfY5wtHL5WiOYB6F/z8X5Su8GdekcrvHEYjDKCbuh5YQHMwz1
	n1nevi6FMelB/ctVC4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cBA-00064t-Sd; Wed, 04 Sep 2019 20:47:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cB5-00061a-54
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 20:46:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id r12so51881pfh.1
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 13:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7FpVgaIhgimDRqpweFDbMiGBjSsk/JazcD80okKL/K8=;
 b=B3ZwBoxDNj5wp/W0+6EgPLtyn42FRM4lKEPuGul/INFNVDV0d6vrjAfI74kiYbBjwb
 RtwOAFpFkp8ULzlYQBnaGau4RSDKiK2Sdq8Hjs6JHKbU5On8H56ARMSYggt77ImaOAXR
 Phja5i1TBR6bjGzSRWjJc8EZqzoOHCuT1G+iocES8UWBNVeoOYiRY6HkgRLZvKh5M6Sb
 WHzguaFI/2ByIIVLDKt6nFLW+FJbEXZiBcnjB+VvF1jsWXutZ6GLiXNq+3ly3QHxD/gn
 UhmFNW0RtNQQoSqk6dbh3isqFmSp5AkCvUY6fi5kmUt8vL3neywbb2V1USK8/dnNvSiJ
 Cxug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7FpVgaIhgimDRqpweFDbMiGBjSsk/JazcD80okKL/K8=;
 b=KZCQ5lN7y1UFbNerDZxUL53PqyjXTiLjv6W4m080bcBJ0njGsPQA81MZa3wJP+qeNy
 snwQldBHCHewvSE04TRqdqNWRADJy4a8kHhcnw1JuVKZOkoOyUgd2Ol6ZmuBDKkql1K5
 pUeL/vBBVMQnnZohfYeC5rw9l4+smQ53rA95Th3+v7nZZK0iOZSjG62oPPt2+NTDTJ4t
 Ov3U1Hw28TOwLX4NAJNkSQMAiD8iwRdb4rBM1r5WahTzPk67vIU7OOkDbqlRpz/R7q+w
 Y7btfES7VkzXe7VaHyKKSbz32UZ48jJh+D0iikRCH3E6W89L+rE4WdThdjoluzowYvfg
 qwqg==
X-Gm-Message-State: APjAAAUQH45gytm5jG7rgXg/CUi/KsLUrOcq6LaZMCRawo0Ew/mCnupL
 jzNka3iJ1M+aaSlu/ZuPeWRj6Q==
X-Google-Smtp-Source: APXvYqx6p9POXMCXKO+7CZNt3OeG669blGTjX7rgKqWleU9xBmKU6iit1LtXZOmDeIMaYc7+Sw+ZcA==
X-Received: by 2002:a63:66c5:: with SMTP id a188mr49168pgc.127.1567630014448; 
 Wed, 04 Sep 2019 13:46:54 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id br18sm3019455pjb.20.2019.09.04.13.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:46:53 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:46:49 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 23/36] spi: spi-qcom-qspi: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904204649.GF580@tuxbook-pro>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-24-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904135918.25352-24-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_134655_203437_575BCBCA 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, linux-samsung-soc@vger.kernel.org, f.fainelli@gmail.com,
 benjaminfair@google.com, shc_work@mail.ru, khilman@baylibre.com,
 openbmc@lists.ozlabs.org, michal.simek@xilinx.com, krzk@kernel.org,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, andi@etezian.org,
 rjui@broadcom.com, s.hauer@pengutronix.de, mripard@kernel.org,
 broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, sbranden@broadcom.com,
 yamada.masahiro@socionext.com, avifishman70@gmail.com, venture@google.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 thierry.reding@gmail.com, wahrenst@gmx.net, kernel@pengutronix.de,
 kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed 04 Sep 06:59 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/spi/spi-qcom-qspi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/spi-qcom-qspi.c b/drivers/spi/spi-qcom-qspi.c
> index a0ad73f..250fd60 100644
> --- a/drivers/spi/spi-qcom-qspi.c
> +++ b/drivers/spi/spi-qcom-qspi.c
> @@ -424,7 +424,6 @@ static int qcom_qspi_probe(struct platform_device *pdev)
>  {
>  	int ret;
>  	struct device *dev;
> -	struct resource *res;
>  	struct spi_master *master;
>  	struct qcom_qspi *ctrl;
>  
> @@ -440,8 +439,7 @@ static int qcom_qspi_probe(struct platform_device *pdev)
>  
>  	spin_lock_init(&ctrl->lock);
>  	ctrl->dev = dev;
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	ctrl->base = devm_ioremap_resource(dev, res);
> +	ctrl->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(ctrl->base)) {
>  		ret = PTR_ERR(ctrl->base);
>  		goto exit_probe_master_put;
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
