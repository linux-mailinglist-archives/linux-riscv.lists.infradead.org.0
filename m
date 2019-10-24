Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B14EE37CD
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 18:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xXFNOJ5EuoCXiZJBM8PY5JklLbi9rOeZT7EvZoD3OI=; b=IFeYtgk9P0EYaZ
	dyBGfrHlPXuBwKldrcD2QaSxLTXpFVvFJAi4N4bw/TmqXd8Gxq4xAiO7uQykC2cPJJFOXGjRIxzKE
	Fg1lHbiQo430S1XW+DZY1m8c0T2vF6mE2V3NWEP316+5y8Kmp1PaeNnurq/MXuIevelUHHDjoCoNZ
	mB2me0JS6z+5pMlVwkKdItTWdZFkVcu0f8fVMVAV1VGM3q92E8S5yB5Uo07fVCU2RFmoicEtyp7Jc
	VpSrJQUkrI2IYJi8QySW0SnKqlrClfN+rVaoMePKvAakjW3yZ33z0rBRUH8ko7IkukfC4gxlVmRs0
	LZF9fWRNKKaTzOuLgPWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfud-0006eg-7Q; Thu, 24 Oct 2019 16:24:35 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfuZ-0006ZA-Ua
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 16:24:33 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1iNfuB-0004s9-36; Thu, 24 Oct 2019 10:24:08 -0600
To: Yash Shah <yash.shah@sifive.com>,
 "Paul Walmsley ( Sifive)" <paul.walmsley@g.sifive.com>,
 "Palmer Dabbelt ( Sifive)" <palmer@g.sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1571908438-4802-1-git-send-email-yash.shah@sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c4817ec1-4e50-5646-68f0-caeb0ab6f0bf@deltatee.com>
Date: Thu, 24 Oct 2019 10:24:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571908438-4802-1-git-send-email-yash.shah@sifive.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: allison@lohutok.net, will@kernel.org, tglx@linutronix.de,
 gregkh@linuxfoundation.org, greentime.hu@g.sifive.com, sachin.ghadi@sifive.com,
 rppt@linux.ibm.com, Anup.Patel@wdc.com, catalin.marinas@arm.com, alex@ghiti.fr,
 aou@eecs.berkeley.edu, sorear2@gmail.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, palmer@g.sifive.com,
 paul.walmsley@g.sifive.com, yash.shah@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: Add PCIe I/O BAR memory mapping
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_092432_024796_D6B68830 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "sorear2@gmail.com" <sorear2@gmail.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alex@ghiti.fr" <alex@ghiti.fr>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 Greentime Hu <greentime.hu@g.sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-10-24 3:14 a.m., Yash Shah wrote:
> For I/O BARs to work correctly on RISC-V Linux, we need to establish a
> reserved memory region for them, so that drivers that wish to use I/O BARs
> can issue reads and writes against a memory region that is mapped to the
> host PCIe controller's I/O BAR MMIO mapping.

I don't think other arches do this. ioremap() typically just uses
virtual address space in the VMALLOC region, PCI doesn't need it's own
range. As far as I know the ioremap() implementation in riscv already
does this.

In any case, 16MB for PCI bar space seems woefully inadequate.

Logan


> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/include/asm/io.h      | 7 +++++++
>  arch/riscv/include/asm/pgtable.h | 7 ++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> index fc1189a..3ba4d93 100644
> --- a/arch/riscv/include/asm/io.h
> +++ b/arch/riscv/include/asm/io.h
> @@ -13,6 +13,7 @@
>  
>  #include <linux/types.h>
>  #include <asm/mmiowb.h>
> +#include <asm/pgtable.h>
>  
>  extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
>  
> @@ -162,6 +163,12 @@ static inline u64 __raw_readq(const volatile void __iomem *addr)
>  #endif
>  
>  /*
> + *  I/O port access constants.
> + */
> +#define IO_SPACE_LIMIT		(PCI_IO_SIZE - 1)
> +#define PCI_IOBASE		((void __iomem *)PCI_IO_START)
> +
> +/*
>   * Emulation routines for the port-mapped IO space used by some PCI drivers.
>   * These are defined as being "fully synchronous", but also "not guaranteed to
>   * be fully ordered with respect to other memory and I/O operations".  We're
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 7fc5e4a..d78cc74 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -7,6 +7,7 @@
>  #define _ASM_RISCV_PGTABLE_H
>  
>  #include <linux/mmzone.h>
> +#include <linux/sizes.h>
>  
>  #include <asm/pgtable-bits.h>
>  
> @@ -88,6 +89,7 @@ extern pgd_t swapper_pg_dir[];
>  #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
>  #define VMALLOC_END      (PAGE_OFFSET - 1)
>  #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> +#define PCI_IO_SIZE      SZ_16M
>  
>  /*
>   * Roughly size the vmemmap space to be large enough to fit enough
> @@ -102,7 +104,10 @@ extern pgd_t swapper_pg_dir[];
>  
>  #define vmemmap		((struct page *)VMEMMAP_START)
>  
> -#define FIXADDR_TOP      (VMEMMAP_START)
> +#define PCI_IO_END       VMEMMAP_START
> +#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> +#define FIXADDR_TOP      PCI_IO_START
> +
>  #ifdef CONFIG_64BIT
>  #define FIXADDR_SIZE     PMD_SIZE
>  #else
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
