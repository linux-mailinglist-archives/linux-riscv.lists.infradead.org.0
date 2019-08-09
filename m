Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74375878B2
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 13:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4e6yXlOxIkiunZNx5/0felBhJ1ks/6H11Ibbl9GTuk=; b=m/jVc+53nf6Lb/
	SD/csjNVDVhXlJuHQBXfLSNqzjgS8KMDl5EPxgF4rtusgS4qLJic1ByvCU0ph0Iif3Rae20KbJOg7
	RGZDGWMzCmMjm9P6xb2GTGschEHw6nLo5hrnVNoBE52XpmOOV8AP8t7Sz1Bz1P5Jc2qmk96vrwDRl
	SjaPvy+lAmt/ciSg9kkjM+qdmS8iW8FK4hyjF2e1m/EnOtshClexiPM5iHvfoHPsYHuk1XlX+vgeZ
	MeyAC1Ep/utRj8swMjaq5/hFRX8Vb1q/epLisZbCFioyelVb7zWlN6RbUSmGKAJPQEgIr3PSrrOW/
	juvLHdtpx4SqhF/c9Bog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3A0-00034K-Pn; Fri, 09 Aug 2019 11:34:16 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw39n-0002tY-2L; Fri, 09 Aug 2019 11:34:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79BXp2W103086;
 Fri, 9 Aug 2019 06:33:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565350431;
 bh=DXv/jQeoUgS/jLmVHHjMH1IRgDVmsq4gwr/8uuGGdBQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TMFOedF/iy9Y8Y2M+fSQrQ89aXeGFUuT/AlY+DphI4DUdVvzFsm+/Vu2URSw0jDh3
 KQ1GMeXkdHEjzu1xuoftDGiZsb9V6gxDAU3BGygFlur9P1lvDKLhnk2P33b8BMa542
 +pcnyIjRpEaGQZVd2iOFq6ABf+nDLFych41oswOc=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79BXpUs044281
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 06:33:51 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 06:33:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 06:33:51 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79BXlD6078973;
 Fri, 9 Aug 2019 06:33:47 -0500
Subject: Re: [PATCH v7 1/4] mtd: spi-nor: add support for is25wp256
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
 <1562092745-11541-2-git-send-email-sagar.kadam@sifive.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <c193950a-ddd9-cf8e-0694-eeb91b994729@ti.com>
Date: Fri, 9 Aug 2019 17:04:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1562092745-11541-2-git-send-email-sagar.kadam@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_043403_186955_9B657E13 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 03/07/19 12:09 AM, Sagar Shrikant Kadam wrote:
> Update spi_nor_id table for is25wp256 (32MB) device from ISSI,
> present on HiFive Unleashed dev board (Rev: A00).
> 
> Set method to enable quad mode for ISSI device in flash parameters
> table.
> 
> Based on code originally written by Wesley Terpstra <wesley@sifive.com>
> and/or Palmer Dabbelt <palmer@sifive.com>
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>


>  drivers/mtd/spi-nor/spi-nor.c | 9 ++++++++-
>  include/linux/mtd/spi-nor.h   | 1 +
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index e3a28c0..971f0f3 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1857,7 +1857,10 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> -
> +	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
> +			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +			SPI_NOR_4B_OPCODES)
> +	},
>  	/* Macronix */
>  	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
>  	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
> @@ -3687,6 +3690,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
>  		case SNOR_MFR_ST:
>  		case SNOR_MFR_MICRON:
>  			break;
> +		case SNOR_MFR_ISSI:
> +			params->quad_enable = macronix_quad_enable;
> +			break;
> +
>  
>  		default:
>  			/* Kept only for backward compatibility purpose. */
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index b3d360b..b0e42b3 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -21,6 +21,7 @@
>  #define SNOR_MFR_INTEL		CFI_MFR_INTEL
>  #define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
>  #define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
> +#define SNOR_MFR_ISSI		0x9d		/* ISSI */
>  #define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
>  #define SNOR_MFR_SPANSION	CFI_MFR_AMD
>  #define SNOR_MFR_SST		CFI_MFR_SST
> 

-- 
Regards
Vignesh

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
