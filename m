Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440F9FEB3
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 19:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTv4vSTf4J1yrdlHPCnxLvtpwsPfifAi9/fKVvpIhlo=; b=G9VbFPO9qIc4z6
	FF24XAllTl32sSYuP1d6X/iOiot2HBmxTEMgMoPYWrQYC62pJ5WPAKFDnbmTyYHznR32UA5SPdFis
	mw6BPTiBIcjURblQzpjAwK24FajuerQSe3iZBFIIn87usqo/ZrIj5LyEdIXs/HAO0YlqVXxGJGpOK
	RBrbxXM/bkL+M51zeYezLHUu9vPKKb67fLhfr4MeqDvhbTIZrKw/kmt6VsbF9hkpfQOVqQk3RuKC9
	NHKLZEygPDxIFOadGMNzTk8g5Odna2lnaRfSsiKpO/+1TwAdYMca0iRCtT5KhVqKwWiibp7LmPTNf
	4beEMHW0EIT280+A4i+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWPm-0003cP-00; Tue, 30 Apr 2019 17:19:34 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWPR-0003A2-J6
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 17:19:15 +0000
Received: by mail-it1-x144.google.com with SMTP id l140so4733784itb.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 10:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=FiLJnoBGMZ9oBi3dnF5JorKlP2R1B74woYmCiWU3q4E=;
 b=eo8mbG6Zp1FjFJ0ysrn85VPXjbAGAkyFP1/8x3Tfyv07vBVd3xQMhqQhkSo/4dHdtf
 IrzOuPgDagw3ot0zYzQwuk2RaosxuSxg48PlJaiM0Xb/0bjQ7esnFaokU9deuYPAcuDv
 MwIAn1YR7T7wQ1DJvLVNGNWLjRbroxu/rmzSI0h7Wql1u2D2rXf+HQhG9zZZH/4JH3Qi
 y5jBvYI4NI5rSOmlzCSYUkwxCIck9lW4CxA31M0oH5ox3yjS/pvMXZGc2CUJ16trf6vs
 8+ejFS6yxbXoGzPlILgTGgEXvNESG9DY8+8ufs3ZkD9mEm5LBpWR1q2QXdf+GhpwxYFU
 uvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=FiLJnoBGMZ9oBi3dnF5JorKlP2R1B74woYmCiWU3q4E=;
 b=qttsp5kgKzR9ja63QwkBXGwUJ1LkO+dfKNG837Xo6OW/KRsHdntthIk5teSLdvvp8L
 U1x9wizK+qPxpZcz0OiYiCyQTQy576+3oVh3DEeUj5AsCC6SZ1Yml5PLHh643nJZiKKw
 Cpxqp7HhAsiZm+tlQUv6dk/esI1Bq172MF4+e9G/O1UCdXaME4rgpSFBRbZRbpcan+Ah
 2mUHgOU89Cs8mNYVWIuWtibOofX7PW3/Mvu2vc3PerAovjgodkZmMWZivkdgFtEFXfPT
 3/QAOYOXjbwVUvkIPLjWy0QTS4GTV8rCCUL/aSlUVtrf3roV1YSKMNuuTDLCWS7HrKPZ
 3NLg==
X-Gm-Message-State: APjAAAXh6WE2BqeiNdsoqwTGtEoL4JLLRmEPSbJPLuCH1252rgsqEYIx
 nYP1MJnu1nacuJ0d/P1jN5Cgig==
X-Google-Smtp-Source: APXvYqzrp/nKimnoq8jslzC4Mbr5Q2qCr/jPkQ8YAvMQ/Fpquys4+OccO/DxegQ1qHLcD4SMXFGNEA==
X-Received: by 2002:a24:7608:: with SMTP id z8mr4377301itb.116.1556644752532; 
 Tue, 30 Apr 2019 10:19:12 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t196sm1949364ita.4.2019.04.30.10.19.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 10:19:11 -0700 (PDT)
Date: Tue, 30 Apr 2019 10:19:10 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v2 2/3] mtd: spi-nor: add support to unlock flash device.
In-Reply-To: <1556474956-27786-3-git-send-email-sagar.kadam@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1904301016400.7063@viisi.sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
 <1556474956-27786-3-git-send-email-sagar.kadam@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101913_644353_9096EEB2 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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

> Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
> have memory blocks guarded by block protection bits BP[0,1,2,3].
> 
> Clearing block protection bits,unlocks the flash memory regions
> The unlock scheme is registered during nor scans.

This also looks like it's partially based on Wes or Palmer's patch from 

https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Please note that in the patch message.

> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 48 ++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/mtd/spi-nor.h   |  1 +
>  2 files changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index c5408ed..81c7b3e 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1461,6 +1461,46 @@ static int macronix_quad_enable(struct spi_nor *nor)
>  }
>  
>  /**
> + * issi_unlock() - clear BP[0123] write-protection.
> + * @nor: pointer to a 'struct spi_nor'
> + * @ofs: offset from which to unlock memory
> + * @len: number of bytes to unlock
> + * Bits [2345] of the Status Register are BP[0123].
> + * ISSI chips use a different block protection scheme than other chips.
> + * Just disable the write-protect unilaterally.
> + * Return: 0 on success, -errno otherwise.

This is closer to kernel-doc format, but not quite.  Please update this to 
align to

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/doc-guide/kernel-doc.rst#n57


- Paul

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
> +		return 0;
> +	} else {
> +		dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
> +		return -EINVAL;
> +	}
> +}
> +
> +/**
>   * spansion_quad_enable() - set QE bit in Configuraiton Register.
>   * @nor:	pointer to a 'struct spi_nor'
>   *
> @@ -1836,7 +1876,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
>  			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> -			SPI_NOR_4B_OPCODES)
> +			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
>  	},
>  
>  	/* Macronix */
> @@ -4078,6 +4118,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  		nor->flash_is_locked = stm_is_locked;
>  	}
>  
> +	/* NOR protection support for ISSI chips */
> +	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
> +	    info->flags & SPI_NOR_HAS_LOCK) {
> +		nor->flash_unlock = issi_unlock;
> +
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
>  #define SR_TB			BIT(5)	/* Top/Bottom protect */
>  #define SR_SRWD			BIT(7)	/* SR write protect */
>  /* Spansion/Cypress specific status bits */
> -- 
> 1.9.1
> 
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
