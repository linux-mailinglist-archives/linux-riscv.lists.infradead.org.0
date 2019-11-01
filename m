Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A195ECBC8
	for <lists+linux-riscv@lfdr.de>; Sat,  2 Nov 2019 00:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=pGk3cZzDRMIe/5wBBa235FDrh17fu8DFmPcoRMetcVs=; b=PBakB9svgZV/G04GQYMfi8/ks
	WpZPn3SclpEXGSdouVxG1AoqaumDAROSevKhx6simN0GadMkmCTOnieZjReuLmCBFZI5kylBDhcCI
	YLb3p5F6m3t1tISsVC9iZqEi8r/dXkWGI4C/b91+WAJeptn4jb1629hDV+qYQIewoLHlxpYiqzuTL
	M+/HCsSKXowJRNwqyZME5OZ5lxc1Bi9ja+MZWWGO8SRkEt5xP40larfM0N/x7B8dwKuoZAlPETehO
	V+09ETbRu+MGH1VvGrIZqbsogxtcSVlZ9RKBkEXBmDrbkjKgoPAYoEy6wyqHwY++5T3trlFH9H1zq
	eVBCAYaJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQg12-0007x2-El; Fri, 01 Nov 2019 23:07:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQg0z-0007wQ-1s
 for linux-riscv@lists.infradead.org; Fri, 01 Nov 2019 23:07:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id q16so4976167pll.11
 for <linux-riscv@lists.infradead.org>; Fri, 01 Nov 2019 16:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=xp3A8vdh1NO+887OUg4MRpz1hgoXlnInMjaDscwcRX4=;
 b=yYriT6h58xv7hTXRzRB5iUZbmOc5hfCHewM2Mn+UNE2HN6q4ot/vtr6GVE9xr9Jq7v
 rTmrjCeexwllHIjaJ0T9qdR+VD4y89F7Zd1DNeouk0nXPojIgyGe4P9Jkb1L01bZk0Br
 MBif6u0NSdZpeTSvrepGMxTj5dlUg8gB2hYfkF4XDyPXffagLnSq9b66FkDavj5E4gsG
 WeworxdV9zPAcmnaMW6Bwwy+zXiFrtoHAytsvZ9iQNf5LVCBgJd+DxxwHjuJ2FjllLQc
 WHjW27/Vg4xxU7lMx4LeqLGpmdqnmy9VnqNtQRCld93taP9KRm5poqrJpna8obEFlAhy
 QKVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=xp3A8vdh1NO+887OUg4MRpz1hgoXlnInMjaDscwcRX4=;
 b=C+HLO6dpQ0tsUAVYq+wmwxdYG0rY6XdAhJBnfIlTnLHAAP154U70tDBflYbQBvUq3O
 kZaIBaM51zETYDEls9Hy0gfq0kriUKRIfROp0FAhPMTY6C/OpBCQn+PCMGqauGoYbiG+
 hM/2+WaBHYYoQLBm0QjKJ2U9F3Y+YHR8nnqwvuIfKjst5iVmDGOTEFUPIh/Z2g5Bi3ja
 PZs8z9mlqXcwX7juFsSRjbKzNIN61KLK/p32zeEG2XCMbCWpIHU2e3K7CKezGnINfD5s
 NI2I74QlV7QSUlqERP6dB+70t3VJHgCWe4AE9hjgyZcFeMnP7RzN+LUpXI0RmfCYQ1Or
 QHHg==
X-Gm-Message-State: APjAAAVmi+jv4j2mLdUZqPXZrd+gsZ5gnNA48WxjMC6FFV506aAhYyjE
 Aequ/tz4tyeSIR/riYPsebEYNg==
X-Google-Smtp-Source: APXvYqxnsTZAEt4O+FvzghWOLNmYefTtpIpLZBMMy0wB7jnrlC85ie0yvSHdvkcDZFGQbFUhj+6ObQ==
X-Received: by 2002:a17:902:349:: with SMTP id
 67mr2206815pld.221.1572649651082; 
 Fri, 01 Nov 2019 16:07:31 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id v15sm8798149pfc.85.2019.11.01.16.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 16:07:29 -0700 (PDT)
Date: Fri, 01 Nov 2019 16:07:29 -0700 (PDT)
X-Google-Original-Date: Fri, 01 Nov 2019 15:53:59 PDT (-0700)
Subject: Re: [PATCH] spi: sifive: disable clk when probe fails and remove
In-Reply-To: <20191101121745.13413-1-hslester96@gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: hslester96@gmail.com
Message-ID: <mhng-3be3dc4e-15f2-4ad2-b156-ea5439e729bd@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_160733_124737_B57046DD 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hslester96@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 01 Nov 2019 05:17:45 PDT (-0700), hslester96@gmail.com wrote:
> The driver forgets to disable and unprepare clk when probe fails and
> remove.
> Add the calls to fix the problem.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/spi/spi-sifive.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> index 35254bdc42c4..f7c1e20432e0 100644
> --- a/drivers/spi/spi-sifive.c
> +++ b/drivers/spi/spi-sifive.c
> @@ -357,14 +357,14 @@ static int sifive_spi_probe(struct platform_device *pdev)
>  	if (!cs_bits) {
>  		dev_err(&pdev->dev, "Could not auto probe CS lines\n");
>  		ret = -EINVAL;
> -		goto put_master;
> +		goto disable_clk;
>  	}
>
>  	num_cs = ilog2(cs_bits) + 1;
>  	if (num_cs > SIFIVE_SPI_MAX_CS) {
>  		dev_err(&pdev->dev, "Invalid number of spi slaves\n");
>  		ret = -EINVAL;
> -		goto put_master;
> +		goto disable_clk;
>  	}
>
>  	/* Define our master */
> @@ -393,7 +393,7 @@ static int sifive_spi_probe(struct platform_device *pdev)
>  			       dev_name(&pdev->dev), spi);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Unable to bind to interrupt\n");
> -		goto put_master;
> +		goto disable_clk;
>  	}
>
>  	dev_info(&pdev->dev, "mapped; irq=%d, cs=%d\n",
> @@ -402,11 +402,13 @@ static int sifive_spi_probe(struct platform_device *pdev)
>  	ret = devm_spi_register_master(&pdev->dev, master);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "spi_register_master failed\n");
> -		goto put_master;
> +		goto disable_clk;
>  	}
>
>  	return 0;
>
> +disable_clk:
> +	clk_disable_unprepare(spi->clk);
>  put_master:
>  	spi_master_put(master);
>
> @@ -420,6 +422,7 @@ static int sifive_spi_remove(struct platform_device *pdev)
>
>  	/* Disable all the interrupts just in case */
>  	sifive_spi_write(spi, SIFIVE_SPI_REG_IE, 0);
> +	clk_disable_unprepare(spi->clk);
>
>  	return 0;
>  }

Reviewed-by: Palmer Dabbelt <palmer@dabbelt.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
