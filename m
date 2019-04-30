Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5782CFE90
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 19:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZe3Y10Rg/64xxaYhPdxS164zwfYCeekjYJbkQhcJhQ=; b=VrBZ8j+qgdQ686
	CmkPLyBXB+esu6OBH+JrDky0DaT/us/RcVDZRov+YemoKZy9iljmigzvtZ+xH91xyMaqzpjDzS0zk
	p6L7NhUZxS/OPbMER5IssJX/hlYWebjag80C+tzR5kEY4VDv3sPLiI1+94LV3oDqcj+WHRKxuEyKO
	/t6Sx/9zisOgZCv7G9rlh7RsaWw8Chw//JfoElSRSvDBP3WgxZpy7YQ7hY+XNswH7uNAmEfv50inv
	iSpvze71x4xN7wabBSuf3OHY0YZw/AYcDmbd2Eate7CyKh17JPZlI3hE6u6zcEP/Le4uV/GVToLJ6
	BNL/XCLxDeO+8C0JOxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWJn-0000Sp-DF; Tue, 30 Apr 2019 17:13:23 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWJj-0000Gt-0h
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 17:13:20 +0000
Received: by mail-io1-xd41.google.com with SMTP id y6so12880843ior.5
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 10:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=jK04ckLw0I34yJUnmy5KSQzRcqzMiLH61Olu1nj5FW8=;
 b=emNtFUXxA6u3/X0LFCk/N10uGRLXoXN7d7GVsStivjArpsRMcME2Zqrfdavw7fxwEb
 XA/RviIt2rvTIl7KWC+tvORxzVDxNdl1cvTbRoU00fuR8cIIxYIlhPX2hB+khOPRzyM7
 tM6XxbMozgawjRU+uj6KAtZ7XTtOTzlnjVg5bL6SxL3O7Gh+hvQDViflYBwZC+MaF3RD
 Bfoj0xtDWxQ0xEFnQ2Wois9cUiiHE/bxIInR8J0YAiNe8/D3hUJeEzmjAIkRbgwzqgPl
 MMgfqCg4jxKx04FT5kDGVHrh/zUr5yOMWuNKJa3Rhe3LCYEgWJEsTRIJol9jc7I3FhBl
 9VtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=jK04ckLw0I34yJUnmy5KSQzRcqzMiLH61Olu1nj5FW8=;
 b=bnuJACk4THkqZO+QtoLM8Yd5gz8CSvwnrRTB2QJcEDeXHFTHextbY29lFfE2b+rWsl
 +dhZE/kmmdtcZ2NYXc3KUwqS3YKTVN9/rMi9ycq6r7PtKS6GTHPZB6Jy6YjH08KdvR3S
 SksqcsYmrGyFEP9vZzz/4puJkNcn+iONzEvQ5Q94GV9zFH9rlOFd6v6kN//KFjThBmcO
 cRFvWqbXH3sT8LCyUx91Q8+9nfJBctA6w8gm9/bMX6S/eNvdj+ZD0zhUostfcAehYCjw
 UfqBMX6sFwaf6g7LPe6N712NMnP6Qp97h1cNOI+fVQK1kwEQkDZz64iv3e1WOAmAt2ce
 I/6w==
X-Gm-Message-State: APjAAAUZ8ltQuX4mAh/FrTDx3D4zd+68WdnHL+SSYt3D07zpdTGrNf5M
 FS7/atqtbfP71I2a6ueuUdJz9A==
X-Google-Smtp-Source: APXvYqwmi65gW/QZM3FdeLpUsXcro8Mpg0Mj+1XnX3LL/CbQGIlPSbxiLXKUD6sVG4MQUwbLHM5tDA==
X-Received: by 2002:a6b:4f0f:: with SMTP id d15mr5036524iob.48.1556644398210; 
 Tue, 30 Apr 2019 10:13:18 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 f204sm1787534itc.26.2019.04.30.10.13.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 10:13:17 -0700 (PDT)
Date: Tue, 30 Apr 2019 10:13:16 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v2 3/3] mtd: spi-nor: add locking support for is25xxxxx
 device
In-Reply-To: <1556474956-27786-4-git-send-email-sagar.kadam@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1904301004060.7063@viisi.sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
 <1556474956-27786-4-git-send-email-sagar.kadam@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101319_067275_B85FC0B3 
X-CRM114-Status: GOOD (  22.50  )
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

> The locking scheme for ISSI devices is based on stm_lock mechanism.
> The is25xxxxx  devices have 4 bits for selecting the range of blocks to
> be locked for write.
> 
> The current implementation, blocks entire 512 blocks of flash memory.
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 60 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 81c7b3e..2dba7e9 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1459,6 +1459,65 @@ static int macronix_quad_enable(struct spi_nor *nor)
>  
>  	return 0;
>  }
> +/**

The above sequence indicates a kerneldoc-style comment, but the format of 
the comment is not in kerneldoc format.  Please fix this comment to 
conform with

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/kernel-docs.rst


> + * Lock a region of the flash.Implementation is based on stm_lock
> + * Supports the block protection bits BP{0,1,2,3} in the status register
> + * Returns negative on errors, 0 on success.
> + */
> +static int issi_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> +{

Almost all of this function is copied and pasted from stm_lock().  Please 
don't do this: it adds bloat, makes the code hard to maintain, and 
increases the risk that fixes will only target one function rather than 
both.  Instead please pull the common code out into a separate static 
function.

> +	struct mtd_info *mtd = &nor->mtd;
> +	int status_old, status_new;
> +	u8 mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
> +	u8 shift = ffs(mask) - 1, pow, val = 0;
> +	loff_t lock_len;
> +	bool use_top = true;
> +
> +	status_old = read_sr(nor);
> +
> +	if (status_old < 0)
> +		return status_old;
> +
> +	/* lock_len: length of region that should end up locked */
> +	if (use_top)
> +		lock_len = mtd->size - ofs;
> +	else
> +		lock_len = ofs + len;
> +
> +	/*
> +	 * Need smallest pow such that:
> +	 *
> +	 *   1 / (2^pow) <= (len / size)
> +	 *
> +	 * so (assuming power-of-2 size) we do:
> +	 *
> +	 *   pow = ceil(log2(size / len)) = log2(size) - floor(log2(len))
> +	 */
> +	pow = ilog2(mtd->size) - ilog2(lock_len);
> +	val = mask - (pow << shift);
> +
> +	if (val & ~mask)
> +		return -EINVAL;
> +
> +	/* Don't "lock" with no region! */
> +	if (!(val & mask))
> +		return -EINVAL;
> +
> +	status_new = (status_old & ~mask & ~SR_TB) | val;
> +
> +	/* Disallow further writes if WP pin is asserted */
> +	status_new |= SR_SRWD;
> +
> +	/* Don't bother if they're the same */
> +	if (status_new == status_old)
> +		return 0;
> +
> +	/* Only modify protection if it will not unlock other areas */
> +	if ((status_new & mask) < (status_old & mask))
> +		return -EINVAL;
> +
> +	return write_sr_and_check(nor, status_new, mask);
> +}
>  
>  /**
>   * issi_unlock() - clear BP[0123] write-protection.
> @@ -4121,6 +4180,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	/* NOR protection support for ISSI chips */
>  	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
>  	    info->flags & SPI_NOR_HAS_LOCK) {
> +		nor->flash_lock = issi_lock;
>  		nor->flash_unlock = issi_unlock;
>  
>  	}
> -- 
> 1.9.1
> 
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
