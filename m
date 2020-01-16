Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C3B13F9FB
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Jan 2020 20:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:To:Subject:From:Date:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g60WNasJ7Z271ktE5244YPkyrntxLxFVIdNescBp9z4=; b=Blr2CgscJiQEsh
	m2nCpr8dd/JyVPVgNHJfXn7Dj2TtqTA+emQ+zlH0oxUvU3uzRleMlpqUTVdDTdYAVojYOPj+cyNy6
	vR4tI4GNGty5AmZwfcQDcw+v2HG6wgHIg32War99gLG6Pj7jrgUCowaBUSVU95j4jbmQGU3/jwt6i
	DHxZBu7i6KQCRXaAfF16gLXsB5/dMWaR8/pgOWCaHIk+wxSfQxKEzGDhzqGFJxpmEo9St+ZeQ1zLS
	0xybvARoBpkdBu7oNoiiT81LRnYIku3xmsQOisOvoCsOqkP/q0LgXGXLEmabkNG+in5pl94m0488z
	xQLF0/5UGTcrJlPK9jIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBBF-0001op-3Q; Thu, 16 Jan 2020 19:51:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBB8-0001nM-F3
 for linux-riscv@lists.infradead.org; Thu, 16 Jan 2020 19:51:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so846584plr.8
 for <linux-riscv@lists.infradead.org>; Thu, 16 Jan 2020 11:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id;
 bh=g60WNasJ7Z271ktE5244YPkyrntxLxFVIdNescBp9z4=;
 b=TyP2e5KsTPJw/bqBRc5c9WnVyrhciZJnzvKBfi349Enmd/eVjQkK8tBcSn4I7KTYS0
 h0iSXw+dCYj59gpz2+8PvuUFMpd22OwCcb9Jj1UaOtS/3can81xVzLtlpGaJ5hnpkoQ4
 6VDFcROmb6HoXkzN5HqsT0XIxrSe2OnQYMdJuNy/Ef0MPSapd3dww8vwwkzeJeiBJPqu
 3tQIKXX6J0LV0BKQyy8hLyRD6DL33fLdYME0jElBeJGsUoqan5p5QXO0NvfzolxE8gEu
 cYerInxxCkDfI6zMScGn3j5Pm2pqJRA4zZsBI+8O+HJxsPw//oTDVSiU+tXrGUdFVfjw
 krIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id;
 bh=g60WNasJ7Z271ktE5244YPkyrntxLxFVIdNescBp9z4=;
 b=WiMY/K++fYRZrP52Meq7Tz2I//IfmjvtzyzLsVNHn3ahK1/N2/4GMkHD5DQucFoCFp
 QIt+TYnFaXygNuVTN9VbL0UJn2AY5scUA6Rch6gDhtAB0cARJ9eOs8BOgs1EXuT3gU9g
 uzHnDkeBcUMK5OfoIW2hk09fHTKg1B2dP+FspAsW1wEBxx3dpyCiHsXOSVKRfYFxu0Ye
 En9ltPhv37El/CvmbIthOPOPrTRruDMeNYAq+GaBS2h6Kkdec9uJd2KAG2YAU9Tlm6gg
 8lYVHkq9l7z3Upro8GPbWCamRWOquXl2eSk6fxTWgUq4kkXOcYmSgKUZziPF7+ao00Vz
 nChQ==
X-Gm-Message-State: APjAAAXJDKzWKn77Lpvssr2R7LZ5chve3xMa9oqUpc+Bw7Mf3v0TsIkS
 3pBvDDGjsZPUUhFe96lltuVDhw==
X-Google-Smtp-Source: APXvYqym6i53VUu8ggCl15lqU29XS7/GTsjQdgdYLUwbbasUkynvicTtqBqTIBuUeVaZu00lOGlruw==
X-Received: by 2002:a17:902:407:: with SMTP id
 7mr33015308ple.226.1579204301567; 
 Thu, 16 Jan 2020 11:51:41 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id m22sm26593404pgn.8.2020.01.16.11.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 11:51:41 -0800 (PST)
Date: Thu, 16 Jan 2020 11:51:41 -0800 (PST)
X-Google-Original-Date: Thu, 16 Jan 2020 10:41:32 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v10 02/19] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
To: Anup Patel <Anup.Patel@wdc.com>
In-Reply-To: <20191223113443.68969-3-anup.patel@wdc.com>
References: <20191223113443.68969-3-anup.patel@wdc.com>
 <20191223113443.68969-1-anup.patel@wdc.com>
Message-ID: <mhng-24b22694-82f4-467b-b6a9-0fb2e186d3f2@palmerdabbelt-glaptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_115142_508388_F976C75C 
X-CRM114-Status: GOOD (  28.13  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>, aou@eecs.berkeley.edu,
 kvm@vger.kernel.org, rkrcmar@redhat.com, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 graf@amazon.com, kvm-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, pbonzini@redhat.com,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Dec 2019 03:35:26 PST (-0800), Anup Patel wrote:
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
>  arch/riscv/include/asm/hwcap.h | 22 +++++++++
>  arch/riscv/kernel/cpufeature.c | 83 ++++++++++++++++++++++++++++++++--
>  2 files changed, 102 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 1bb0cd04aec3..5589c012e004 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -8,6 +8,7 @@
>  #ifndef _ASM_RISCV_HWCAP_H
>  #define _ASM_RISCV_HWCAP_H
>  
> +#include <linux/bits.h>
>  #include <uapi/asm/hwcap.h>
>  
>  #ifndef __ASSEMBLY__
> @@ -22,6 +23,27 @@ enum {
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

Unfortunately the ISA doesn't really work this way any more: the single-letter
extensions are just aliases for longer extension strings, each of which
represents a single instruction.  I know we're saddled with some ABI that looks
this way, but I really don't want to add new code that depends on these defunct
assumptions -- there isn't that much in Linux right now, but there's a lot in
the FSF toolchain and getting that all out is going to be a long project.

> +
> +#define RISCV_ISA_EXT_MAX	256

Why so big?  It looks like the rest of the code just touches the first word,
and most of that is explicit.

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
>  
>  #endif /* _ASM_RISCV_HWCAP_H */
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 0b40705567b7..e172a2322b34 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -6,6 +6,7 @@
>   * Copyright (C) 2017 SiFive
>   */
>  
> +#include <linux/bitmap.h>
>  #include <linux/of.h>
>  #include <asm/processor.h>
>  #include <asm/hwcap.h>
> @@ -13,15 +14,57 @@
>  #include <asm/switch_to.h>
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
> + * riscv_isa_extension_base() - Get base extension word
> + *
> + * @isa_bitmap: ISA bitmap to use
> + * Return: base extension word as unsigned long value
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */
> +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap)
> +{
> +	if (!isa_bitmap)
> +		return riscv_isa[0];
> +	return isa_bitmap[0];
> +}
> +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);

This isn't used, which makes it hard to review.  Can you please split out the
changes that don't depend on the V extension to come out of draft?  That would
make it easier to take some of the code early, which lets us keep around less
diff.

> +
> +/**
> + * __riscv_isa_extension_available() - Check whether given extension
> + * is available or not
> + *
> + * @isa_bitmap: ISA bitmap to use
> + * @bit: bit position of the desired extension
> + * Return: true or false
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */
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
> +	char print_str[BITS_PER_LONG + 1];
> +	size_t i, j, isa_len;
>  	static unsigned long isa2hwcap[256] = {0};
>  
>  	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> @@ -33,8 +76,11 @@ void riscv_fill_hwcap(void)
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
> @@ -42,8 +88,24 @@ void riscv_fill_hwcap(void)
>  		if (riscv_read_check_isa(node, &isa) < 0)
>  			continue;
>  
> -		for (i = 0; i < strlen(isa); ++i)
> +		i = 0;
> +		isa_len = strlen(isa);
> +#if IS_ENABLED(CONFIG_32BIT)
> +		if (!strncmp(isa, "rv32", 4))
> +			i += 4;
> +#elif IS_ENABLED(CONFIG_64BIT)
> +		if (!strncmp(isa, "rv64", 4))
> +			i += 4;

We shouldn't be accepting arbitrary inputs and attempting to correct them, just
enforce that an actual ISA string is provided and check it against what the
kernel can support.

> +#endif
> +		for (; i < isa_len; ++i) {
>  			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> +			/*
> +			 * TODO: X, Y and Z extension parsing for Host ISA
> +			 * bitmap will be added in-future.
> +			 */
> +			if ('a' <= isa[i] && isa[i] < 'x')
> +				this_isa |= (1UL << (isa[i] - 'a'));
> +		}
>  
>  		/*
>  		 * All "okay" hart should have same isa. Set HWCAP based on
> @@ -54,6 +116,11 @@ void riscv_fill_hwcap(void)
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
> @@ -63,7 +130,17 @@ void riscv_fill_hwcap(void)
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

