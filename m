Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04CECFE02
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 17:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drYrERZY76tiwFUSJnAfUdJ4F+HnyOLOdiz5zE7PZ/g=; b=JsJDYOkyTCzR0P
	Lcsa2Vy4NYtiu/a7k23/dBiopw/E+dDskxNTG3uxucdiq4WDkpe+eMUP7ee0/MZeIUQG43TvNKieW
	wQcBDbwPjSO29MeZoOZDpXrwneD+AhLzMFrH+zH1oFFw267YdJk+eCaEdpNNmTctnVqJZDiMbmvOT
	B7xgKIWBKXi+zlc8jbRSs7iyFA4r/yAGPrnmu8+e6zmpy4EvLd9LCznk7W9j/CG+3Yj9kALiSfVXZ
	sE9V6k0+WTfpnXQXH/t7D+aXLrGz9sUD/jSrftUsgx06M1jG9KlL4ApCvg4Mw7Pd5mLykyOOLsC27
	oej4aItYRK8s/+cuOjZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrfu-00040l-Jv; Tue, 08 Oct 2019 15:45:22 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iHrei-0001rR-O5; Tue, 08 Oct 2019 15:44:08 +0000
Date: Tue, 8 Oct 2019 08:44:08 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v1 PATCH  2/2] RISC-V: Consolidate isa correctness check
Message-ID: <20191008154408.GC20318@infradead.org>
References: <20191004012000.2661-1-atish.patra@wdc.com>
 <20191004012000.2661-3-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004012000.2661-3-atish.patra@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Johan Hovold <johan@kernel.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Alexandre Ghiti <aghiti@upmem.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> +int riscv_read_check_isa(struct device_node *node, const char **isa)
> +{
> +	u32 hart;
> +
> +	if (of_property_read_u32(node, "reg", &hart)) {
> +		pr_warn("Found CPU without hart ID\n");
> +		return -ENODEV;
> +	}
> +
> +	if (of_property_read_string(node, "riscv,isa", isa)) {
> +		pr_warn("CPU with hartid=%d has no \"riscv,isa\" property\n",
> +			hart);
> +		return -ENODEV;
> +	}
> +
> +	/*
> +	 * Linux doesn't support rv32e or rv128i, and we only support booting
> +	 * kernels on harts with the same ISA that the kernel is compiled for.
> +	 */
> +#if defined(CONFIG_32BIT)
> +	if (strncmp(*isa, "rv32i", 5) != 0)
> +		return -ENODEV;
> +#elif defined(CONFIG_64BIT)
> +	if (strncmp(*isa, "rv64i", 5) != 0)
> +		return -ENODEV;
> +#endif

Using IS_ENABLED here would clean the checks up a bit.

> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index b1ade9a49347..eaad5aa07403 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -38,10 +38,8 @@ void riscv_fill_hwcap(void)
>  		if (riscv_of_processor_hartid(node) < 0)
>  			continue;
>  
> -		if (of_property_read_string(node, "riscv,isa", &isa)) {
> -			pr_warn("Unable to find \"riscv,isa\" devicetree entry\n");
> +		if (riscv_read_check_isa(node, &isa) < 0)
>  			continue;

Do we really get rid of warnings if we didn't find anything proper?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
