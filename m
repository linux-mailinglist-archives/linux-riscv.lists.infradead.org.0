Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE39DE5AE
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 09:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujvdq6qfJZ4KRvSUvK9Bw9hZ8LFB2QGyh+OaRg8NPY0=; b=ULB7iEDpKwOla3
	6GD8RbSwtrPXvGY+WQLvGWogKE1pEh3XPmdtnfTyMeA79dmsqpDfm8yWTTGz9wKOJVEBAaAndbUkm
	/k0rq3zcwuIrru5A2NeQqRMcqsK3h8alSXHLe7CJ0UWwnnOtIV071ZHMc2iZb/lVQvs6muCTobyGv
	xfCRo0H76WKO/ZzpdoxG0L9crdcQOYSR6tEpNd+F0PpSPmYhQ8OnYMCpk7vIcYl/aEp4Ta1B7yBto
	S3e8YDcmw9RwvJ9ncNb3OPc6cs+PglNEX5QfO6sSJoHKAJUfR0Ps9H/ylruZXfjpl0lXzbDTGYtEc
	1c5/KjhMhALR8koXta8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSas-0007gB-1e; Mon, 21 Oct 2019 07:59:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSaQ-0007Fd-Kp; Mon, 21 Oct 2019 07:58:44 +0000
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5908A21744;
 Mon, 21 Oct 2019 07:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571644721;
 bh=HaNxatOx3Yl+LjuXNZSg9j6rwSnjKUPc8eLVmd61SU0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=luHraHozlqKNUHwEUrw+p/CKnNkzg4GhLnRI3IQVw1ZUnmvt4Cwl7ABV+5EzHS34g
 CqVlZgKrjSy7nsjEnaLPBzt8i8/jWykyodKl+iP31wL1BC0A++0dn8emaiIgMxVUqa
 6AeBtKgvcbANkPSenLQVsuD5VltHn5JOl0JQoRvI=
Received: by mail-wr1-f42.google.com with SMTP id l10so12273172wrb.2;
 Mon, 21 Oct 2019 00:58:41 -0700 (PDT)
X-Gm-Message-State: APjAAAUb6cNKIacwZ/EyEY7uTOpoiEsrEO4tytQNQYCl7Dm13h9ZRjjR
 Mo+49T8b2L+lagkY/k8grnGd++md2PxfUZq1NZY=
X-Google-Smtp-Source: APXvYqzvF6HJCASpTMUMf7HweDv3Hno9oEAxiqhI3GBGEOPTWQrWQiETxVnKLeVHbQ3ma/xucSMvECIDZp2EBxJkKe8=
X-Received: by 2002:adf:ebcb:: with SMTP id v11mr17344477wrn.24.1571644719802; 
 Mon, 21 Oct 2019 00:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191017174554.29840-1-hch@lst.de>
 <20191017174554.29840-21-hch@lst.de>
In-Reply-To: <20191017174554.29840-21-hch@lst.de>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 21 Oct 2019 15:58:28 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQ_VeBfi1uaafgtp+uA2skq-w2px12ig=5QD1O9J+PgbA@mail.gmail.com>
Message-ID: <CAJF2gTQ_VeBfi1uaafgtp+uA2skq-w2px12ig=5QD1O9J+PgbA@mail.gmail.com>
Subject: Re: [PATCH 20/21] csky: remove ioremap_cache
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_005842_729441_D20DD3DB 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-alpha@vger.kernel.org,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Acked-by: Guo Ren <guoren@kernel.org>

On Fri, Oct 18, 2019 at 1:47 AM Christoph Hellwig <hch@lst.de> wrote:
>
> No driver that can be used on csky uses ioremap_cache, and this
> interface has been deprecated in favor of memremap.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/csky/include/asm/io.h | 2 --
>  arch/csky/mm/ioremap.c     | 7 -------
>  2 files changed, 9 deletions(-)
>
> diff --git a/arch/csky/include/asm/io.h b/arch/csky/include/asm/io.h
> index a4b9fb616faa..f572605d5ad5 100644
> --- a/arch/csky/include/asm/io.h
> +++ b/arch/csky/include/asm/io.h
> @@ -36,13 +36,11 @@
>  /*
>   * I/O memory mapping functions.
>   */
> -extern void __iomem *ioremap_cache(phys_addr_t addr, size_t size);
>  extern void __iomem *__ioremap(phys_addr_t addr, size_t size, pgprot_t prot);
>  extern void iounmap(void *addr);
>
>  #define ioremap(addr, size)            __ioremap((addr), (size), pgprot_noncached(PAGE_KERNEL))
>  #define ioremap_wc(addr, size)         __ioremap((addr), (size), pgprot_writecombine(PAGE_KERNEL))
> -#define ioremap_cache                  ioremap_cache
>
>  #include <asm-generic/io.h>
>
> diff --git a/arch/csky/mm/ioremap.c b/arch/csky/mm/ioremap.c
> index e13cd3497628..ae78256a56fd 100644
> --- a/arch/csky/mm/ioremap.c
> +++ b/arch/csky/mm/ioremap.c
> @@ -44,13 +44,6 @@ void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot)
>  }
>  EXPORT_SYMBOL(__ioremap);
>
> -void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size)
> -{
> -       return __ioremap_caller(phys_addr, size, PAGE_KERNEL,
> -                               __builtin_return_address(0));
> -}
> -EXPORT_SYMBOL(ioremap_cache);
> -
>  void iounmap(void __iomem *addr)
>  {
>         vunmap((void *)((unsigned long)addr & PAGE_MASK));
> --
> 2.20.1
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
