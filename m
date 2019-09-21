Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A19DB9D40
	for <lists+linux-riscv@lfdr.de>; Sat, 21 Sep 2019 12:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHc7VbL0baUcv7M0JXkiDbKzikjGCYXUq06gRIgJz+g=; b=ugVm3/vAkHHZ+P
	U740SfrC+RoKAMxYdk0nHoQFGmD9ilQq80dsBljUXCucc+GUF4BdyU4X3Vs23S9DlRMSBPMG77sQ5
	wjCPOswQfH3lbzqkmj0n5iEjveJaIDEJI6HOd5mRyFxLCkbKaeBrpMKWeh0Q6T/3AIp3570zfMgFy
	4+6cskbstVsZs8MZT7y3PML7fZ6hV0V6kyvYiYNL/6WIP2bXIYh5HPQhOdlClZoZM8FkaDby2jp8o
	44SOkqFcxQL8yMRCzLEhJJ06S+rYR2FZuKSqEUDePe66+Ss/U/BYwHaMhRv8Z+X8tVMQU9UsrkQkf
	SpFEJM6ChwDcML+uNcSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBcD5-0006ox-Rg; Sat, 21 Sep 2019 10:01:47 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBcCw-0006ob-L8
 for linux-riscv@lists.infradead.org; Sat, 21 Sep 2019 10:01:40 +0000
Received: by mail-ot1-x344.google.com with SMTP id 67so8296947oto.3
 for <linux-riscv@lists.infradead.org>; Sat, 21 Sep 2019 03:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=IH+HLtM3m/3AdPUwWj10yu5azF09YSyrzk+IE7lz+/c=;
 b=Fjk5VEoH5TXP2GebQ8rtvVO7k9C2SXvanErm1z29Ux6o9KEmemDWy4J5YavIqS1uhz
 ciEkXtoyKr9e0ZEDCPCY3hR1EHJw+u2cLLz+NLb4Mue3jxoRiONck0rrPTK9sSX7DgAA
 0oSzI8Gky1LOekb3pThUJsHuuLUvQ5ZW4Nd06XqXZwjZwjoc/McC+6yjy9/gujgon9Mn
 4l+iuQeFGCkuofllZWdd9TewxT7mZmI0dGTmdqTOKUh7U9WyN3+YUXgIG7hxs+vHZFap
 ZeZMaadQmZPnKHajASa834VOs1nMVjtUJfOU4eaHrEtjrU3cqmRHqtgGhWFAcZ5SsHyw
 9JiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=IH+HLtM3m/3AdPUwWj10yu5azF09YSyrzk+IE7lz+/c=;
 b=ZU7QI3ICt4urOtlYTxkj30DwvLZAquuPKxvmfIOOj8jC8zafs05l2KmeBv8+6DjIp/
 f7XT3m+ybS/Fm7JHpZsQtVCkNHAyy2FeCUvEkFONeGxE3AvxN7e6p3/VpMQI4Eq55eL+
 d6g8DjxzDYo5BodRYG/PflVb7MggWO7Fu/+vIfCEZ7pNb7j8GnVQprSHDnXy1fS7kGOC
 cKb4wiJEI4gyb2OJO6K71I8EqckX76fagemtpJMCquvqHbvWcowfr58rwDua8byYZotY
 QqLDi5dyCrrfWYUvksz/6v4MNCfDw3W/clLLeBBfF3CZKfcQmPihA70u5tR9lY6jGGld
 RKBw==
X-Gm-Message-State: APjAAAVCPoAXz9qbCPSGVBrJS7VNBayENP65eWyzdzW/IwwPxKutAapS
 X5WZWXeUinGXMQ/hD2Ew5RVuag==
X-Google-Smtp-Source: APXvYqzpSdwksOxrecA2OELNPx8yrVtpI8N9Oju4ihq+H1WOvzlOgo63k6TAq41Ye4rLUkc7UInGjg==
X-Received: by 2002:a05:6830:1e2b:: with SMTP id
 t11mr4492721otr.119.1569060094783; 
 Sat, 21 Sep 2019 03:01:34 -0700 (PDT)
Received: from localhost (184.sub-174-206-23.myvzw.com. [174.206.23.184])
 by smtp.gmail.com with ESMTPSA id l17sm1309105oic.24.2019.09.21.03.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 03:01:34 -0700 (PDT)
Date: Sat, 21 Sep 2019 03:01:27 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v7 02/21] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
In-Reply-To: <20190904161245.111924-4-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1909210245000.2030@viisi.sifive.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-4-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_030138_734137_434D4ED5 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Anup,

Thanks for changing this to use a bitmap.  A few comments below -

On Wed, 4 Sep 2019, Anup Patel wrote:

> This patch adds riscv_isa bitmap which represents Host ISA features
> common across all Host CPUs. The riscv_isa is not same as elf_hwcap
> because elf_hwcap will only have ISA features relevant for user-space
> apps whereas riscv_isa will have ISA features relevant to both kernel
> and user-space apps.
> 
> One of the use-case for riscv_isa bitmap is in KVM hypervisor where
> we will use it to do following operations:
> 
> 1. Check whether hypervisor extension is available
> 2. Find ISA features that need to be virtualized (e.g. floating
>    point support, vector extension, etc.)
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 26 +++++++++++
>  arch/riscv/kernel/cpufeature.c | 79 ++++++++++++++++++++++++++++++++--
>  2 files changed, 102 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 7ecb7c6a57b1..9b657375aa51 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -8,6 +8,7 @@
>  #ifndef __ASM_HWCAP_H
>  #define __ASM_HWCAP_H
>  
> +#include <linux/bits.h>
>  #include <uapi/asm/hwcap.h>
>  
>  #ifndef __ASSEMBLY__
> @@ -22,5 +23,30 @@ enum {
>  };
>  
>  extern unsigned long elf_hwcap;
> +
> +#define RISCV_ISA_EXT_a		('a' - 'a')
> +#define RISCV_ISA_EXT_c		('c' - 'a')
> +#define RISCV_ISA_EXT_d		('d' - 'a')
> +#define RISCV_ISA_EXT_f		('f' - 'a')
> +#define RISCV_ISA_EXT_h		('h' - 'a')
> +#define RISCV_ISA_EXT_i		('i' - 'a')
> +#define RISCV_ISA_EXT_m		('m' - 'a')
> +#define RISCV_ISA_EXT_s		('s' - 'a')
> +#define RISCV_ISA_EXT_u		('u' - 'a')
> +#define RISCV_ISA_EXT_zicsr	(('z' - 'a') + 1)
> +#define RISCV_ISA_EXT_zifencei	(('z' - 'a') + 2)
> +#define RISCV_ISA_EXT_zam	(('z' - 'a') + 3)
> +#define RISCV_ISA_EXT_ztso	(('z' - 'a') + 4)

If we add the Z extensions here, it's probably best if we drop Zam from 
this list.  The rationale is, as maintainers, we're planning to hold off 
on merging any support for extensions or modules that aren't in the 
"frozen" or "ratified" states, and according to the RISC-V specs, Zicsr, 
Zifencei, and Ztso are all either frozen or ratified.  However, see 
below -

> +
> +#define RISCV_ISA_EXT_MAX	256
> +
> +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
> +
> +#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
> +
> +bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit);
> +#define riscv_isa_extension_available(isa_bitmap, ext)	\
> +	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
> +
>  #endif
>  #endif
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index b1ade9a49347..4ce71ce5e290 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -6,21 +6,64 @@
>   * Copyright (C) 2017 SiFive
>   */
>  
> +#include <linux/bitmap.h>
>  #include <linux/of.h>
>  #include <asm/processor.h>
>  #include <asm/hwcap.h>
>  #include <asm/smp.h>
>  
>  unsigned long elf_hwcap __read_mostly;
> +
> +/* Host ISA bitmap */
> +static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
> +
>  #ifdef CONFIG_FPU
>  bool has_fpu __read_mostly;
>  #endif
>  
> +/**
> + * riscv_isa_extension_base - Get base extension word
> + *
> + * @isa_bitmap ISA bitmap to use
> + * @returns base extension word as unsigned long value
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */

Am happy to see comments that can be automatically parsed, but could you 
reformat them into kernel-doc format? 

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/doc-guide/kernel-doc.rst

> +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap)
> +{
> +	if (!isa_bitmap)
> +		return riscv_isa[0];
> +	return isa_bitmap[0];
> +}
> +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
> +
> +/**
> + * __riscv_isa_extension_available - Check whether given extension
> + * is available or not
> + *
> + * @isa_bitmap ISA bitmap to use
> + * @bit bit position of the desired extension
> + * @returns true or false
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */

Same comment as above.

> +bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit)
> +{
> +	const unsigned long *bmap = (isa_bitmap) ? isa_bitmap : riscv_isa;
> +
> +	if (bit >= RISCV_ISA_EXT_MAX)
> +		return false;
> +
> +	return test_bit(bit, bmap) ? true : false;
> +}
> +EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
> +
>  void riscv_fill_hwcap(void)
>  {
>  	struct device_node *node;
>  	const char *isa;
> -	size_t i;
> +	char print_str[BITS_PER_LONG+1];
> +	size_t i, j, isa_len;
>  	static unsigned long isa2hwcap[256] = {0};
>  
>  	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> @@ -32,8 +75,11 @@ void riscv_fill_hwcap(void)
>  
>  	elf_hwcap = 0;
>  
> +	bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
> +
>  	for_each_of_cpu_node(node) {
>  		unsigned long this_hwcap = 0;
> +		unsigned long this_isa = 0;
>  
>  		if (riscv_of_processor_hartid(node) < 0)
>  			continue;
> @@ -43,8 +89,20 @@ void riscv_fill_hwcap(void)
>  			continue;
>  		}
>  
> -		for (i = 0; i < strlen(isa); ++i)
> +		i = 0;
> +		isa_len = strlen(isa);
> +#if defined(CONFIG_32BIT)
> +		if (!strncmp(isa, "rv32", 4))
> +			i += 4;
> +#elif defined(CONFIG_64BIT)
> +		if (!strncmp(isa, "rv64", 4))
> +			i += 4;
> +#endif
> +		for (; i < isa_len; ++i) {
>  			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> +			if ('a' <= isa[i] && isa[i] <= 'z')
> +				this_isa |= (1UL << (isa[i] - 'a'));

Continuing from the earlier comment, this code won't properly handle the X 
and Z prefix extensions.  So maybe for the time being, we should just drop 
the lines mentioned earlier that imply that we can parse Z-prefix 
extensions, and change this line so it ignores X and Z letters?

Then a subsequent patch can add support for more complicated extension 
string parsing.


> +		}
>  
>  		/*
>  		 * All "okay" hart should have same isa. Set HWCAP based on
> @@ -55,6 +113,11 @@ void riscv_fill_hwcap(void)
>  			elf_hwcap &= this_hwcap;
>  		else
>  			elf_hwcap = this_hwcap;
> +
> +		if (riscv_isa[0])
> +			riscv_isa[0] &= this_isa;
> +		else
> +			riscv_isa[0] = this_isa;
>  	}
>  
>  	/* We don't support systems with F but without D, so mask those out
> @@ -64,7 +127,17 @@ void riscv_fill_hwcap(void)
>  		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
>  	}
>  
> -	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
> +	memset(print_str, 0, sizeof(print_str));
> +	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +		if (riscv_isa[0] & BIT_MASK(i))
> +			print_str[j++] = (char)('a' + i);
> +	pr_info("riscv: ISA extensions %s\n", print_str);
> +
> +	memset(print_str, 0, sizeof(print_str));
> +	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +		if (elf_hwcap & BIT_MASK(i))
> +			print_str[j++] = (char)('a' + i);
> +	pr_info("riscv: ELF capabilities %s\n", print_str);
>  
>  #ifdef CONFIG_FPU
>  	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
> -- 
> 2.17.1
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
