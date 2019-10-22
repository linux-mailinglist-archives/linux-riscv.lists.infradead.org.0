Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F65E0CCD
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 21:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJZbV6JSw/In+k+bL4RSNnH7jVY2iT8F3juUaZWR1as=; b=bxKG4dtnVf6Dq2
	bUzBVDEdG9iLVyuzN3lPwJCdt0/pUiODfPJ+K0ypuxYnTNonQIsEWprruSaOfE4TDLcZxUmi7mOdG
	ikpOs+aRRVZWKukFzp8RWACYl66XVJeNSv6v311T1oiI2Mii4D0TzWzY6lfMKo8hEmXfo89vMPniA
	rtdlvssvBhEYCKNzPNvfpHQFuZfIyslDRhcOQ/zZ0OkS4AjMKoja4SKB8xxHAMdQIzFNo4u9ROlaj
	Aj26U/mEHl6SvvGFdlInfz8jxglbsaYLc+EE7qQWmnCo+06VA6r/YxeWJXV+4zy21YkHLRzYyMUs3
	18hWYFiV+hcHUjbjMXBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN0Co-0002P6-9c; Tue, 22 Oct 2019 19:52:34 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN0Ck-0002No-QG
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 19:52:32 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1iN0Cf-0001zY-SH; Tue, 22 Oct 2019 13:52:26 -0600
To: David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Stefan O'Rear <sorear2@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Alexandre Ghiti <alex@ghiti.fr>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191022162136.19076-1-david.abdurachmanov@sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <b3ce6ae0-abc5-f85a-66e2-9c7d08580b84@deltatee.com>
Date: Tue, 22 Oct 2019 13:52:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022162136.19076-1-david.abdurachmanov@sifive.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, alex@ghiti.fr,
 david.abdurachmanov@sifive.com, sorear2@gmail.com, greentime.hu@sifive.com,
 rppt@linux.ibm.com, Anup.Patel@wdc.com, aou@eecs.berkeley.edu,
 palmer@sifive.com, paul.walmsley@sifive.com, david.abdurachmanov@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] riscv: fix fs/proc/kcore.c compilation with sparsemem
 enabled
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_125230_905036_9A0414BA 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-10-22 10:21 a.m., David Abdurachmanov wrote:
> Failed to compile Fedora/RISCV kernel (5.4-rc3+) with sparsemem enabled:
> 
> fs/proc/kcore.c: In function 'read_kcore':
> fs/proc/kcore.c:510:8: error: implicit declaration of function 'kern_addr_valid'; did you mean 'virt_addr_valid'? [-Werror=implicit-function-declaration]
>   510 |    if (kern_addr_valid(start)) {
>       |        ^~~~~~~~~~~~~~~
>       |        virt_addr_valid
> 
> Looking at other architectures I don't see kern_addr_valid being guarded by
> CONFIG_FLATMEM.
> 
> Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
> Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
> Tested-by: David Abdurachmanov <david.abdurachmanov@sifive.com>

Makes sense to me.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>


> ---
>  arch/riscv/include/asm/pgtable.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 42292d99cc74..7110879358b8 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -428,9 +428,7 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
>  #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
>  #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
>  
> -#ifdef CONFIG_FLATMEM
>  #define kern_addr_valid(addr)   (1) /* FIXME */
> -#endif
>  
>  extern void *dtb_early_va;
>  extern void setup_bootmem(void);
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
