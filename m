Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49B5F7A94
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 19:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGNS26HZHjes1SRxrrz1VcBJV6pHBog+ttiBJlg7CmQ=; b=S3Pk3VzDS177LM
	5RbWmE5H4aT2YmNZPIav7BV0ez69mDNS/mIvBF4rTce2NGnbDbP2S1IsPU9hJb/AE0DCrE/+4lzqm
	GMzQNUVnRReoyr/DJcivU2rDtIQMspdq5dwtvdC64qKu04/OFIRpMK5zJDGaTe41r7WRlbFuK78WW
	w/tFIY584LyPY7koid0HufEnIAePqvLVg+7hi8G65ITVnari+Sf8WiOOD4lVYrIACLiBmRrvqfNAw
	oWAQzp41Js6IGpYpDkUK/ayA+hbaYZa/acvBx7GYCSJbD/9YIsL0k9Ajn1eJ7YDj+jxaMu0d+2L5M
	3wWv4BWBZphTVEhXdDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEDG-0000Kc-7n; Mon, 11 Nov 2019 18:14:54 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEDC-0000JW-1F
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 18:14:52 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1iUECv-00018v-1q; Mon, 11 Nov 2019 11:14:33 -0700
To: Yash Shah <yash.shah@sifive.com>,
 "Paul Walmsley ( Sifive)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1573450015-16475-1-git-send-email-yash.shah@sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <91f35033-ffc8-cd2e-36f7-c6f4f25be36b@deltatee.com>
Date: Mon, 11 Nov 2019 11:14:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573450015-16475-1-git-send-email-yash.shah@sifive.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sachin.ghadi@sifive.com, tglx@linutronix.de,
 bmeng.cn@gmail.com, ren_guo@c-sky.com, rppt@linux.ibm.com, Anup.Patel@wdc.com,
 aou@eecs.berkeley.edu, palmer@dabbelt.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, paul.walmsley@sifive.com,
 yash.shah@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH] RISC-V: Add address map dumper
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_101450_407701_CCFC98F8 
X-CRM114-Status: GOOD (  19.07  )
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
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



On 2019-11-10 10:27 p.m., Yash Shah wrote:
> Add support for dumping the kernel address space layout to the console.
> User can enable CONFIG_DEBUG_VM_LAYOUT to dump the virtual memory region
> into dmesg buffer during boot-up.

Cool, I'd find this useful. Though, is there any reason we don't do this
more generally for all architectures?

> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
> This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive Unleashed
> board.
> ---
>  arch/riscv/Kconfig.debug |  9 +++++++++
>  arch/riscv/mm/init.c     | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
> index e69de29..cdedfd3 100644
> --- a/arch/riscv/Kconfig.debug
> +++ b/arch/riscv/Kconfig.debug
> @@ -0,0 +1,9 @@
> +config DEBUG_VM_LAYOUT
> +	bool "Print virtual memory layout on boot up"
> +	depends on DEBUG_KERNEL
> +	help
> +	  Say Y here if you want to dump the kernel virtual memory layout to
> +	  dmesg log on boot up. This information is only useful for kernel
> +	  developers who are working in architecture specific areas of the
> +	  kernel. It is probably not a good idea to enable this feature in a
> +	  production kernel.
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 79cfb35..fcb8144 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -55,6 +55,36 @@ void __init mem_init(void)
>  	memblock_free_all();
>  
>  	mem_init_print_info(NULL);
> +#ifdef CONFIG_DEBUG_VM_LAYOUT

Generally, it's best to avoid #ifdefs inside functions, it's even
counter-indicated in the style guide[1].

> +#define MLK(b, t) b, t, (((t) - (b)) >> 10)
> +#define MLM(b, t) b, t, (((t) - (b)) >> 20)
> +#define MLK_ROUNDUP(b, t) b, t, DIV_ROUND_UP(((t) - (b)), SZ_1K)

I personally find these inline defines rather ugly. Maybe it would be
better to have a helper function that prints a single line. Also seems
like MLK and MLK_ROUNDUP could be the same assuming the entries in MLK
are aligned...

> +
> +	pr_notice("Virtual kernel memory layout:\n"
> +			"    fixmap  : 0x%08lx - 0x%08lx   (%4ld kB)\n"
> +			"    vmemmap : 0x%08lx - 0x%08lx   (%4ld MB)\n"
> +			"    vmalloc : 0x%08lx - 0x%08lx   (%4ld MB)\n"
> +			"    lowmem  : 0x%08lx - 0x%08lx   (%4ld MB)\n"
> +			"      .init : 0x%px - 0x%px   (%4td kB)\n"
> +			"      .text : 0x%px - 0x%px   (%4td kB)\n"
> +			"      .data : 0x%px - 0x%px   (%4td kB)\n"
> +			"       .bss : 0x%px - 0x%px   (%4td kB)\n",
> +
> +			MLK(FIXADDR_START, FIXADDR_TOP),
> +			MLM(VMEMMAP_START, VMEMMAP_END),
> +			MLM(VMALLOC_START, VMALLOC_END),
> +			MLM(PAGE_OFFSET, (unsigned long)high_memory),
> +
> +			MLK_ROUNDUP(__init_begin, __init_end),
> +			MLK_ROUNDUP(_text, _etext),
> +			MLK_ROUNDUP(_sdata, _edata),
> +			MLK_ROUNDUP(__bss_start, __bss_stop));
> +
> +#undef MLK
> +#undef MLM
> +#undef MLK_ROUNDUP
> +#endif
>  }
>  
>  #ifdef CONFIG_BLK_DEV_INITRD

Thanks,

Logan

[1]
https://www.kernel.org/doc/html/latest/process/coding-style.html#conditional-compilation

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
