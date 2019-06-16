Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C147493
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Jun 2019 15:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rT+2KPiavGt3WrXjJ0EU+6X50ZYSyuNqIa3vNMBCd5Y=; b=nFtkAhgkQNRkkd
	yxz32ofz3PypvDgbCRnMsC3y6Zq8IP/hITXFqnm9H87DBbypax5zL43z2XLjE420ijAHHNg6nlRrj
	3/teLeSPiaMpgcGSglsI6HILGwRDMwM6C1KMWLQOSMWVwJOoDwGHQlkOkSYbtkI3+hDnrYvVfsDjD
	m+qbaDJxBZlZkMZhPE8MpfP6/Z3zzjL+GNTUOLE+lsYtl9DeLSkNx99m1N5Zc5laV9r6cARsKRgN9
	7S627dzRnri9kIDw4fHbgYjn5on9dNXJCJNOMsZf77Onu2z4pT9cqZ2emK8UZLoRC+u92cjwkWwuX
	DqqlnyMqsrfEbol85OmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcUqy-0006Cz-BH; Sun, 16 Jun 2019 13:05:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcUqi-00063F-VF; Sun, 16 Jun 2019 13:05:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5GD5MQL125473;
 Sun, 16 Jun 2019 08:05:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560690322;
 bh=2RA2xXNZVNHXhzN4iyBAxmX1EFLrT8461Okcvci1n6I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nlyClEWa59PXLXs71NW8irUU1AdDG4XUgKl0Ya96XG9WpKeZjTFVwM4MQDLxq6kZz
 iQEDY67QI+kGjavrwrRr96LGhfCQ/agW9ap/KtWNi7NqDNoqnaGTREqiQae9KSAd/s
 mi+hg+5roShtG8LYYd8N5JrX6PLD/ctMa8+mOwII=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5GD5MRq047563
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 16 Jun 2019 08:05:22 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 16
 Jun 2019 08:05:21 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 16 Jun 2019 08:05:21 -0500
Received: from [10.250.133.146] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5GD5HHD072003;
 Sun, 16 Jun 2019 08:05:18 -0500
Subject: Re: [PATCH v5 2/3] mtd: spi-nor: add support to unlock flash device
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-3-git-send-email-sagar.kadam@sifive.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <70732c8e-111f-7c46-9e93-11894d944a1d@ti.com>
Date: Sun, 16 Jun 2019 18:35:16 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1560336476-31763-3-git-send-email-sagar.kadam@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_060533_095312_FBAFBF3F 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wesley@sifive.com, palmer@sifive.com, aou@eecs.berkeley.edu,
 paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
> have memory blocks guarded by block protection bits BP[0,1,2,3].
> 
> Clearing block protection bits,unlocks the flash memory regions
> The unlock scheme is registered during nor scans.
> 
> Based on code developed by Wesley Terpstra <wesley@sifive.com>
> and/or Palmer Dabbelt <palmer@sifive.com>.
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 51 ++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/mtd/spi-nor.h   |  1 +
>  2 files changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 2d5a925..b7c6261 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1461,6 +1461,49 @@ static int macronix_quad_enable(struct spi_nor *nor)
>  }
>  
>  /**
> + * issi_unlock() - clear BP[0123] write-protection.
> + * @nor: pointer to a 'struct spi_nor'.
> + * @ofs: offset from which to unlock memory.
> + * @len: number of bytes to unlock.
> + *
> + * Bits [2345] of the Status Register are BP[0123].
> + * ISSI chips use a different block protection scheme than other chips.
> + * Just disable the write-protect unilaterally.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> +{
> +	int ret, val;
> +	u8 mask = SR_BP0 | SR_BP1 | SR_BP2 | SR_BP3;
> +
> +	val = read_sr(nor);
> +	if (val < 0)
> +		return val;
> +	if (!(val & mask))
> +		return 0;
> +
> +	write_enable(nor);
> +
> +	write_sr(nor, val & ~mask);
> +
> +	ret = spi_nor_wait_till_ready(nor);
> +	if (ret)
> +		return ret;
> +
> +	ret = read_sr(nor);
> +	if (ret > 0 && !(ret & mask)) {
> +		dev_info(nor->dev,
> +			"ISSI Block Protection Bits cleared SR=0x%x", ret);
> +		ret = 0;
> +	} else {
> +		dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
> +		ret = -EINVAL;
> +	}
> +	return ret;
> +}
> +
> +/**
>   * spansion_quad_enable() - set QE bit in Configuraiton Register.
>   * @nor:	pointer to a 'struct spi_nor'
>   *
> @@ -1836,7 +1879,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> -			SPI_NOR_4B_OPCODES)
> +			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
>  	},
>  
>  	/* Macronix */
> @@ -4080,6 +4123,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  		nor->flash_is_locked = stm_is_locked;
>  	}
>  
> +	/* NOR protection support for ISSI chips */
> +	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
> +	    info->flags & SPI_NOR_HAS_LOCK) {

This should be:

	if (JEDEC_MFR(info) == SNOR_MFR_ISSI &&
	    info->flags & SPI_NOR_HAS_LOCK) {

Otherwise you would end up overriding nor->flash_unlock function for
other vendors too, right?

> +		nor->flash_unlock = issi_unlock;
> +

No need for blank line here.
Please run ./scripts/checkpatch.pl --strict on all patches and address
all the issues reported by it.



> +	}
>  	if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
>  		mtd->_lock = spi_nor_lock;
>  		mtd->_unlock = spi_nor_unlock;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index ff13297..9a7d719 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -127,6 +127,7 @@
>  #define SR_BP0			BIT(2)	/* Block protect 0 */
>  #define SR_BP1			BIT(3)	/* Block protect 1 */
>  #define SR_BP2			BIT(4)	/* Block protect 2 */
> +#define SR_BP3			BIT(5)	/* Block protect 3 for ISSI device*/

No need to mention ISSI here. I am sure there are devices from other
vendors with BP3

>  #define SR_TB			BIT(5)	/* Top/Bottom protect */
>  #define SR_SRWD			BIT(7)	/* SR write protect */
>  /* Spansion/Cypress specific status bits */
> 

Regards
Vignesh

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
