Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76153100973
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 17:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1Helv4tlB5Q1hTRn8NQ5Q1EyXZeixUBy8s1zcNqr6g=; b=HU1izPjxHf+5L2
	zeTEWm1yN8eWd3l4uHG7otUnLwt1YkWLUjX6OG+tkH8efAZKXFOGBN3Hr7jcyLKHlW5lNy8oX9EYt
	M4z7xHFrupsPzwhCJBaHHz9GJw4rM0/VQy6pbOoKWMAfgtjC8eUdtqIoCwqxzLLPLYBeu0xj5XOfM
	4F3biBx2SV1UtFkN8joCLSAb8GAlgW1LPVv4doZSZcEQfLGVV3Cp8l7EAXYsoi2BZzwXUhH4fkFCd
	aGavKDBbu/asjtsvCogaTspqObMGSmzLnIZaTIJ8TvH+t6F8lOdJ8KZO9mA3Kkc69YVKk01lkqKrP
	FtIqxylX5LK6a0J1BLqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWk8p-00017Q-HN; Mon, 18 Nov 2019 16:44:43 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWk8l-00016F-Tl
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 16:44:41 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1iWk8Q-0000Vr-JU; Mon, 18 Nov 2019 09:44:19 -0700
To: Yash Shah <yash.shah@sifive.com>,
 "Paul Walmsley ( Sifive)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1574056694-28927-1-git-send-email-yash.shah@sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <86b0a2c6-91ee-6ea6-92e7-1e5235b559f5@deltatee.com>
Date: Mon, 18 Nov 2019 09:44:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574056694-28927-1-git-send-email-yash.shah@sifive.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sachin.ghadi@sifive.com, wangkefeng.wang@huawei.com,
 tglx@linutronix.de, bmeng.cn@gmail.com, ren_guo@c-sky.com, rppt@linux.ibm.com,
 Anup.Patel@wdc.com, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 paul.walmsley@sifive.com, yash.shah@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH v2] RISC-V: Add address map dumper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_084439_962512_A40B326D 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: "wangkefeng.wang@huawei.com" <wangkefeng.wang@huawei.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-11-17 10:58 p.m., Yash Shah wrote:
> Add support for dumping the kernel address space layout to the console.
> User can enable CONFIG_DEBUG_VM to dump the virtual memory region into
> dmesg buffer during boot-up.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Looks good to me, thanks.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
> This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive
> Unleashed board.
> 
> Changes in v2:
> - Avoid #ifdefs inside functions
> - Helper functions instead of macros
> - Drop newly added CONFIG_DEBUG_VM_LAYOUT, instead use CONFIG_DEBUG_VM
> ---
>  arch/riscv/mm/init.c | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 573463d..7828136 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -45,6 +45,41 @@ void setup_zero_page(void)
>  	memset((void *)empty_zero_page, 0, PAGE_SIZE);
>  }
>  
> +#ifdef CONFIG_DEBUG_VM
> +static inline void print_mlk(char *name, unsigned long b, unsigned long t)
> +{
> +	pr_notice("%12s : 0x%08lx - 0x%08lx   (%4ld kB)\n", name, b, t,
> +		  (((t) - (b)) >> 10));
> +}
> +
> +static inline void print_mlm(char *name, unsigned long b, unsigned long t)
> +{
> +	pr_notice("%12s : 0x%08lx - 0x%08lx   (%4ld MB)\n", name, b, t,
> +		  (((t) - (b)) >> 20));
> +}
> +
> +static void print_vm_layout(void)
> +{
> +	pr_notice("Virtual kernel memory layout:\n");
> +	print_mlk("fixmap", (unsigned long)FIXADDR_START,
> +		  (unsigned long)FIXADDR_TOP);
> +	print_mlm("vmemmap", (unsigned long)VMEMMAP_START,
> +		  (unsigned long)VMEMMAP_END);
> +	print_mlm("vmalloc", (unsigned long)VMALLOC_START,
> +		  (unsigned long)VMALLOC_END);
> +	print_mlm("lowmem", (unsigned long)PAGE_OFFSET,
> +		  (unsigned long)high_memory);
> +	print_mlk(".init", (unsigned long)__init_begin,
> +		  (unsigned long)__init_end);
> +	print_mlk(".text", (unsigned long)_text, (unsigned long)_etext);
> +	print_mlk(".data", (unsigned long)_sdata, (unsigned long)_edata);
> +	print_mlk(".bss", (unsigned long)__bss_start,
> +		  (unsigned long)__bss_stop);
> +}
> +#else
> +static void print_vm_layout(void) { }
> +#endif /* CONFIG_DEBUG_VM */
> +
>  void __init mem_init(void)
>  {
>  #ifdef CONFIG_FLATMEM
> @@ -55,6 +90,7 @@ void __init mem_init(void)
>  	memblock_free_all();
>  
>  	mem_init_print_info(NULL);
> +	print_vm_layout();
>  }
>  
>  #ifdef CONFIG_BLK_DEV_INITRD
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
