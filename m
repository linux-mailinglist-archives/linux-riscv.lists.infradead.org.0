Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A4F63841
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jul 2019 16:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEjZYGk5lSyh8oEvj16gInMpGGf1HJ72H/bsXzudr0I=; b=NHsPLy8zK/cyKT
	EcIPQGG46070cVbDXc2FhytN782ckcYrAQ1M7RfP3tQwYYXPAEwKJY7uPkjTSCaEE93CS7yKx7PmS
	zEWStwCg8Rr9/L39MmGXaAL4TYpFCtwm1qlLSaAqXYcYXMCuvvnyl8iEP3mJTtRm647cev34Gez0z
	WHyEDGNnp9cexqnHqtKC/l6cKdeESJBg5Ym22MinhBUtfHZvgo2FA3XlUg+wIG299qMM6UTqafpUO
	A6Jt+xit3KpEprB4+SzyDE/TOhj4aXgAVNGz+9BayJTfYAvK17uyhZG3OzJsIsVB2YYaFKn26ZmuA
	8X9S6b8xFPMnYBifz1tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrVT-0000Du-8W; Tue, 09 Jul 2019 14:54:11 +0000
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrVP-0000De-BE; Tue, 09 Jul 2019 14:54:07 +0000
Subject: Re: [PATCH 1/4] Makefile: rules for printing kernel architecture and
 localversion
To: "Enrico Weigelt, metux IT consult" <info@metux.net>,
 linux-kernel@vger.kernel.org
References: <1562664759-16009-1-git-send-email-info@metux.net>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <3d4da301-618e-e348-2a6a-144b802d240f@infradead.org>
Date: Tue, 9 Jul 2019 07:54:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562664759-16009-1-git-send-email-info@metux.net>
Content-Language: en-US
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
Cc: michal.lkml@markovi.net, linux-kbuild@vger.kernel.org,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 apw@canonical.com, joe@perches.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/9/19 2:32 AM, Enrico Weigelt, metux IT consult wrote:
> trivial rule to print out the kernel arch and localversion, so
> external tools, like distro packagers, can easily get it.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>

Hi,
If accepted, these targets should be added to the top level Makefile's
"make help" output also.

Thanks.

> ---
>  Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 3e4868a..5afc3de 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1706,6 +1706,12 @@ kernelrelease:
>  kernelversion:
>  	@echo $(KERNELVERSION)
>  
> +kernellocalversion:
> +	@$(CONFIG_SHELL) $(srctree)/scripts/setlocalversion $(srctree) | sed -e 's~^\-~~'
> +
> +kernelarch:
> +	@echo $(ARCH)
> +
>  image_name:
>  	@echo $(KBUILD_IMAGE)
>  
> 


-- 
~Randy

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
