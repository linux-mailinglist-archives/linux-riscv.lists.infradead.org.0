Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6731FB0A6
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 14:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZvEv0HF3u5bsyZgJMwGz8N4GLIlr/HzwKI8FsVx0ae4=; b=MLctSLGlehTKoFvtsa3awyRW8
	8iVlDytxOslk0Mcc8jNj2W/wJxwip16C16hyps3QEu0ignfK6YwGkVFEIccH8XNiDkhGAylneea5r
	CJ6lwCoICb9DAvZu1Ns4/TNFyQyt5uw16lY3SXAGoQiq+A0uF/E00Y6jg/9gw9lTZXiksaGVnWaSA
	M+xzGOUBLE81D+2cH8saWAu03FBsdjtySKe+Kl9k7ooZPgtMVWFXkPDZ1/XGTYQhmv9hBGfjwhZh+
	ZGlGktHINHKHnWt1Jgo3+ou+W2S2vSRgo+Eg9gXWurCK4rTFUm7f32brM+HSgQAvCL2UWqqS2LNJZ
	Nf+SmcmJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAh2-0001Vi-0L; Tue, 16 Jun 2020 12:27:56 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAgy-0001VN-DW
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 12:27:54 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05GCRU4N019960; Tue, 16 Jun 2020 12:27:37 GMT
X-AuditID: 8b5b014d-257ff700000045c5-e8-5ee8bab847aa
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 9D.6F.17861.8BAB8EE5; Tue, 16 Jun 2020 15:27:37 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Tue, 16 Jun 2020 15:27:36 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 2/2] riscv: Support CONFIG_STRICT_DEVMEM
Organization: FORTH
In-Reply-To: <7faa60aa4a606b5c5c1ae374d82a7eee6c764b38.1592292685.git.zong.li@sifive.com>
References: <cover.1592292685.git.zong.li@sifive.com>
 <7faa60aa4a606b5c5c1ae374d82a7eee6c764b38.1592292685.git.zong.li@sifive.com>
Message-ID: <29425dbf7d54bab2733d28480d3adb61@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsXSHT1dWXfnrhdxBm9WMFtc3jWHzWLb5xY2
 i5eXe5gt2mbxW3y4O5vNgdXjzcuXLB6bl9R7XGq+zu7xeZNcAEsUl01Kak5mWWqRvl0CV8bK
 tytZCjokKu4suMzawLhVuIuRk0NCwETi2NzzLF2MXBxCAkcZJZ7ebWWGSJhKzN7byQhi8woI
 Spyc+YQFxGYWsJCYemU/I4QtL9G8dTZYPYuAqsT0y6vBbDYBTYn5lw6C1YsIKEhcWbIRqrdC
 Yuu/30wgtrCAjcSvFyvA4vwCwhKf7l5kBbE5BSIl7rfdZoQ4qIVRovnIVRaII1wkOpa8gjpO
 ReLD7wfsILaogLLEzcPP2ScwCs5CcussJLfOQnLrAkbmVYwCiWXGepnJxXpp+UUlGXrpRZsY
 wSHN6LuD8fbmt3qHGJk4GA8xSnAwK4nwRtu+iBPiTUmsrEotyo8vKs1JLT7EKM3BoiTOm8e9
 PFZIID2xJDU7NbUgtQgmy8TBKdXAJD7956upAdVMwrJLpxRv+vSV67lgUnLd2fuSuW+8JYIL
 07aZWqzl43s6/7LXxlsMNaL/Gb3Puxw5r39N9eiVq6nen+Z+yZIVzP5b41rIYHD8s+FRw6l+
 b2YJ7WS8/VrA6WhSm+5CkY/yn1yEDjQ0FAqs13VyZ1LRY552t9GQLcMwTebXoR3H5NZPTyhw
 4yyc4dEnVhO34eaZptWefirfvU7OKOn93sZe2G3cu3V6q8oLzpLnlp9bt9bt0IyXPj/bbSLH
 HeHFc6b/4nPIWOXwok+x2kG4oXXlizdRRTdMj5ZdN7v1tnB71NajLfPeT6nImJb75tKv154z
 BGednTnBIvnc3ntNW07PeDbV0E7siRJLcUaioRZzUXEiAAwwNb3YAgAA
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Tue, 16 Jun 2020 12:27:37 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Tue, 16 Jun 2020 12:27:37 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_052752_822287_2A29274D 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-06-16 10:45, Zong Li έγραψε:
> Implement the 'devmem_is_allowed()' interface for RISC-V, like some of
> other architectures have done. It will be called from 
> range_is_allowed()
> when userpsace attempts to access /dev/mem.
> 
> Access to exclusive IOMEM and kernel RAM is denied unless
> CONFIG_STRICT_DEVMEM is set to 'n'.
> 
> Test it by devmem, the result as follows:
> 
>  - CONFIG_STRICT_DEVMEM=y
> 	$ devmem 0x10010000
> 	0x00000000
> 	$ devmem 0x80200000
> 	0x0000106F
> 
>  - CONFIG_STRICT_DEVMEM is not set
> 	$ devmem 0x10010000
> 	devmem: mmap: Operation not permitted
> 	$ devmem 0x80200000
> 	devmem: mmap: Operation not permitted
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig          |  1 +
>  arch/riscv/include/asm/io.h |  2 ++
>  arch/riscv/mm/init.c        | 19 +++++++++++++++++++
>  3 files changed, 22 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 128192e14ff2..ffd7841ede4c 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -16,6 +16,7 @@ config RISCV
>  	select ARCH_HAS_BINFMT_FLAT
>  	select ARCH_HAS_DEBUG_VIRTUAL if MMU
>  	select ARCH_HAS_DEBUG_WX
> +	select ARCH_HAS_DEVMEM_IS_ALLOWED
>  	select ARCH_HAS_GCOV_PROFILE_ALL
>  	select ARCH_HAS_GIGANTIC_PAGE
>  	select ARCH_HAS_MMIOWB
> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> index 3835c3295dc5..04ac65ab93ce 100644
> --- a/arch/riscv/include/asm/io.h
> +++ b/arch/riscv/include/asm/io.h
> @@ -147,4 +147,6 @@ __io_writes_outs(outs, u64, q, __io_pbr(), 
> __io_paw())
> 
>  #include <asm-generic/io.h>
> 
> +extern int devmem_is_allowed(unsigned long pfn);
> +
>  #endif /* _ASM_RISCV_IO_H */
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index bbe816e03b2f..5e7e61519acc 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -517,6 +517,25 @@ void mark_rodata_ro(void)
>  }
>  #endif
> 
> +#ifdef CONFIG_STRICT_DEVMEM
> +#include <linux/ioport.h>
> +/*
> + * devmem_is_allowed() checks to see if /dev/mem access to a certain 
> address
> + * is valid. The argument is a physical page number.
> + *
> + * Disallow access to system RAM as well as device-exclusive MMIO 
> regions.
> + * This effectively disable read()/write() on /dev/mem.
> + */
> +int devmem_is_allowed(unsigned long pfn)
> +{
> +	if (iomem_is_exclusive(pfn << PAGE_SHIFT))
> +		return 0;
> +	if (!page_is_ram(pfn))
> +		return 1;
> +	return 0;
> +}
> +#endif
> +
>  void __init resource_init(void)
>  {
>  	struct memblock_region *region;

This shouldn't be part of /mm/init.c, it has nothing to do with memory 
initialization, I suggest we move it to another file like mmap.c on 
arm/arm64. Also before using iomem_is_exclusive we should probably also 
mark any reserved regions with the no-map attribute as busy|exclusive, 
reserved-memory regions are not necessarily part of the main memory so 
the page_is_ram check may pass and iomem_is_exclusive won't do any good.

