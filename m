Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C496B140106
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 01:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i1i+BUVl6X3dVlLrJ1ezNZBhRrN2tvT8AcA1Jjxsl6o=; b=jr0wG+bsaJxbcsaEeVRfezph4
	Qn/qRUkdhq0nECGQHa93OZ1XnjValIEBjJ8XOp9ycCFETTUWo8WIHr/YNBxW3SBzA/SvVlTxaoY5X
	QE2WSmb4hqPiGGohNHYqH1sJQ8hv1iAKyJcXeGLaiZWUAtoW071cDOdfHalQSGXJ2yWoHuDucLNj2
	JGmv0pP3NvUHf70ah2aCPVHZbP1+uWAKVyIDYKS8Og1zTk84+acykK+Buf2cdvewsp35vyvQpx8kQ
	r7JHJvQxTPwtFlarkzzUvVP1UajtBDDsxCfGqsOvErLVVjpefnQHkjK18aZTcNku/6LdXeeLiN32m
	Rs/re0JnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isFc1-0001bL-Vz; Fri, 17 Jan 2020 00:35:46 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isFbx-0001ag-Qz
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 00:35:43 +0000
Received: from zn.tnic (p200300EC2F0B23003D0DC5C907B4D929.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0b:2300:3d0d:c5c9:7b4:d929])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5D0171EC0C8A;
 Fri, 17 Jan 2020 01:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1579221333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=i1i+BUVl6X3dVlLrJ1ezNZBhRrN2tvT8AcA1Jjxsl6o=;
 b=Zee8qfedPj1RhUqUw0X36j2qSZ1p5ge8Xp/CVKrXnCMY4M2kt1gi34TuURop2u/bHG3iaQ
 zMY+pc/mtH3ry1EDkTwT8GK8sV6j1mzaCVHRaRqJZHiTKBcV0Doc0hGmZqFzdGk/1cpk05
 wPcBc3z6midbSR7wjOt2MxiYqfT2wyA=
Date: Fri, 17 Jan 2020 01:35:23 +0100
From: Borislav Petkov <bp@alien8.de>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH]  EDAC/sifive: fix return value check in ecc_register()
Message-ID: <20200117003523.GK27148@zn.tnic>
References: <20200115150303.112627-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200115150303.112627-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_163542_031366_6082938D 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Luck <tony.luck@intel.com>, kernel-janitors@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 03:03:03PM +0000, Wei Yongjun wrote:
> In case of error, the function edac_device_alloc_ctl_info() returns NULL
> pointer not ERR_PTR(). The IS_ERR() test in the return value check
> should be replaced with NULL test.
> 
> Fixes: 91abaeaaff35 ("EDAC/sifive: Add EDAC platform driver for SiFive SoCs")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/edac/sifive_edac.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
> index c0cc72a3b2be..3a3dcb14ed99 100644
> --- a/drivers/edac/sifive_edac.c
> +++ b/drivers/edac/sifive_edac.c
> @@ -54,8 +54,8 @@ static int ecc_register(struct platform_device *pdev)
>  	p->dci = edac_device_alloc_ctl_info(0, "sifive_ecc", 1, "sifive_ecc",
>  					    1, 1, NULL, 0,
>  					    edac_device_alloc_index());
> -	if (IS_ERR(p->dci))
> -		return PTR_ERR(p->dci);
> +	if (!p->dci)
> +		return -ENOMEM;
>  
>  	p->dci->dev = &pdev->dev;
>  	p->dci->mod_name = "Sifive ECC Manager";

Applied, thanks.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

