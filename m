Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CECFE62
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 19:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjYLb8R4s9nWcivJPClZxGpSYLb6E1E735xYzaJZLb4=; b=k9/Snm/qqQnBwi
	Eg//23VfdqPTPiWpeBSgZSnLOwUv5JIP7O8lCOhtXMDb93Wg9c36DNQyN3x4nHA1i1mU7Vfqojeek
	GEjd8UeP3pCeWsmHibXAmjoXrURqdnVO0z210qieXw+j1jYG/ToAc8uYzUnNPeHjG6EDQ5P0141rM
	PflNS+D9X5gmp5sewWrUyJnV4BpR5uWOkrb/xlAYFlLgfA5EhT7h6gmmqsqgW9TTVlwWC5tNGIi1d
	qS39dkYEuvveyPoenC8yhIeXZWw/5W/I4rTqgGvLOlMeTFeUA8oxKirbOlqWRJPvnG5WUcXDnvLI8
	zcVi3horH+Mdy7G+Nizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWAs-0003ew-Av; Tue, 30 Apr 2019 17:04:10 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWAh-0003Tu-3J
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 17:04:00 +0000
Received: by mail-io1-xd41.google.com with SMTP id c3so12864550iok.6
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 10:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=etJ1WR4qO+3IuPfLuVdMXPbV+XDBvAU6tcECrR4xCrc=;
 b=jv7DxdnVudtPMbDXxMEw/GM6NMPqoYoCohNeCzcb2ZSDFyhwR53p8yt5rztmB+SlAf
 /6HkkM1OGFkTHmp6HqKcBGui9wGjTtcdnfFajTPjETmcuAIhe9NUW0xK/jTAi7NKtmHI
 lL2AftBMEwQCtNz7CwfBTolnOwMRZxouvJvbRP9iDJKEwDZbq+agZE/edhY16NycGWzf
 D0zkdHg9jEo/1wZ4p2aGffpsSAtgX6TsX+Vd0um8aKmDQ3T9FoNbSkve4NsttbhxTaq4
 o5LzkTsG3l9hA0mHJxLmZ2vDRt2nqULQ71SsYLA1yapsTMA5oOJoYFdsY9wZ06I3p7yQ
 /tDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=etJ1WR4qO+3IuPfLuVdMXPbV+XDBvAU6tcECrR4xCrc=;
 b=LGdPogQYf/TLBD3Qbjj8Um+Aq2peozjjCEfvu0zy6AIIegw98aEibT7zLLRAmparOr
 +rmKpvnvcVgpBwIM7ADlM5wW59XvrrfyNfrz/SzPo2+xcEvOlX9XViNqx0NqfZJmQecA
 42hfl0BY6bXdwwwGQ6pe5NcpH2NSZOr6+63PoKcJiST9FyNoh4vBag7SMho+v2QgTS2O
 8MjEB2NYF+h2Zh0vEkPtNkCFwXQ8YK58EDYl+kUOfCcHxXPREu7J+Y/Hg4qeX0hRHGD1
 56cTiZDnxM8AhFEan2d1lMkTcsrV+mZeP1r2qfgSjWr4Afb+msLTkgapL5JRUoBcBuTe
 g2oQ==
X-Gm-Message-State: APjAAAUlQiTodMz5WD3zpzF20eUeZ9qogv62Dse9CETA03mQpoUo6PVa
 CVWCROTVro6lfyFBT+fYFnbYog==
X-Google-Smtp-Source: APXvYqwtQ6krzDTRPbFVrDov44ozx7k+PlhNoNgKqYFMwYfxTI/Usg4vUIfk12zixNg61hOvW70aRA==
X-Received: by 2002:a5e:9307:: with SMTP id k7mr16429275iom.155.1556643837925; 
 Tue, 30 Apr 2019 10:03:57 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id 12sm526406itm.2.2019.04.30.10.03.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 10:03:57 -0700 (PDT)
Date: Tue, 30 Apr 2019 10:03:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v2 1/3] mtd: spi-nor: add support for is25wp256
In-Reply-To: <1556474956-27786-2-git-send-email-sagar.kadam@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1904301002170.7063@viisi.sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
 <1556474956-27786-2-git-send-email-sagar.kadam@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100359_147256_083938C2 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: palmer@sifive.com, bbrezillon@kernel.org, richard@nod.at,
 tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 28 Apr 2019, Sagar Shrikant Kadam wrote:

> Update spi_nor_id tablet for is25wp256 (32MB)device from ISSI,
> present on HiFive Unleashed dev board (Rev: A00).
> 
> Set method to enable quad mode for ISSI device in flash parameters
> table.

This patch was based on one originally written by Wes and/or Palmer: 
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

The right thing to do is to note this in the commit message.

> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 10 +++++++++-
>  include/linux/mtd/spi-nor.h   |  1 +
>  2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index fae1474..c5408ed 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1834,6 +1834,10 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
> +			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +			SPI_NOR_4B_OPCODES)
> +	},
>  
>  	/* Macronix */
>  	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
> @@ -3650,6 +3654,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
>  		case SNOR_MFR_MACRONIX:
>  			params->quad_enable = macronix_quad_enable;
>  			break;
> +		case SNOR_MFR_ISSI:
> +			params->quad_enable = macronix_quad_enable;
> +			break;
> +
>  
>  		case SNOR_MFR_ST:
>  		case SNOR_MFR_MICRON:
> @@ -4127,7 +4135,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	if (ret)
>  		return ret;
>  
> -	if (nor->addr_width) {
> +	if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
>  		/* already configured from SFDP */
>  	} else if (info->addr_width) {
>  		nor->addr_width = info->addr_width;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index b3d360b..ff13297 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -19,6 +19,7 @@
>  #define SNOR_MFR_ATMEL		CFI_MFR_ATMEL
>  #define SNOR_MFR_GIGADEVICE	0xc8
>  #define SNOR_MFR_INTEL		CFI_MFR_INTEL
> +#define SNOR_MFR_ISSI		0x9d		/* ISSI */
>  #define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
>  #define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
>  #define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
> -- 
> 1.9.1
> 
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
