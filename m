Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656E0179D3E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 02:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=JtVY2TbnZYg34ePRXi3izpntJbzbeF3tPdRAvzboEq4=; b=ocNaEbwMjnkDIm
	GkvP0tu5SBeKW39BREHoNmhJwbLbnEvgyvB2OLDqVMotE7P1/lcrUxEweQo46JnBUEc2CU9yMlhY6
	s/uS0KiKCi6m8hgTJXfZpBnzDkb9PbZz9kXvygLiO4gQrm8JSo51EYiDWHM5w35iJDDAUtHsJuS6d
	gpVUkE/yiWE1Wbl8/WurBHFxaz3BnBx/Of2KGxB/sqU7Bz3MtUxs4ZNg1Yj1xSLVE5rLWJY5XvmuZ
	ExQdkSjfA9IU/XuKkRFDhkblYkk4LpXMZed5khudVdrjFW85VljpthcvVCCkzEvzBvSNhBk7YIL54
	T2kdFprF52JPnmj3aEtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9fD9-0005pY-C4; Thu, 05 Mar 2020 01:22:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9fD6-0005pC-38
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 01:22:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id y21so1928551pfp.1
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 17:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=JtVY2TbnZYg34ePRXi3izpntJbzbeF3tPdRAvzboEq4=;
 b=vRmlQPhcvEZSPwvwVSbDFH2/f2X9nWaWR7WirMd/AxqNvih88hS3tAuPclvlOztfOd
 NYAANy/g3VOcEsrh6+j4V82J982wL/WYXidaKBfEtcYSuTgXfq8/wl7Y8qakl6zmrREa
 Gb9JEogTJ01Y2gxKBQPhwvWT17JDW1Gjg+GiSqg2WHBdoy37IbDxzs2zNy5JJdA1atA+
 b3lr/JRh3DZO4U/hcAWh0Xn64I2GLzoZcjAlbLgVaj1Ig7eUnId6i2j5QGpz0TQARcpt
 VrLFIVGMEkGyKVcTBuQv/sYNvjF972O74pMspAUZyO5ajds2iONAj6KA70OlKVDsyfhp
 NFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=JtVY2TbnZYg34ePRXi3izpntJbzbeF3tPdRAvzboEq4=;
 b=nuj8GHAAoLWySInA+7a3WD6AfNifMbr5el8ddk+QPV5uEGS6Oa24tEcbUSoal7F6LE
 CmAY+L5OeXg9PfsDJ5CE8aPWp6+9SU3oyltK32MDqKhCtH0LuRy5xAW1QmpYdCktQPxx
 k9df/Ayp0PMBFP7q4YXqjZxt62KOntz/7+X8MsSW9TNl97jee9987w3iMbM9PS7B3o4A
 bR206KDbjimBG5c9M5CoUiwd+jDDF97upKbiz0j1eCta6gG7b4ud4627lyhTHYiJzjkl
 hME552JKdtrza50WzYahkMriahTt/CIwEAYJNwT/sholg3jy+kMIWmkb02/gNsToSTdE
 LEIw==
X-Gm-Message-State: ANhLgQ3GbhlVPQL3FRtNt783uWzLfBOsTnXELs9L/BSr1F3J8oUttZoS
 F6BIQobvv/ZQh1eZuZUfBV1c9A==
X-Google-Smtp-Source: ADFU+vu139oi/AXnRI9S2g5bYyVFgxEXHq5dJXwkf/gEh7zlAomdz0ShxEZvQDizftt1c19aePWiKQ==
X-Received: by 2002:a65:5c46:: with SMTP id v6mr5297930pgr.333.1583371318976; 
 Wed, 04 Mar 2020 17:21:58 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id 129sm4362349pfw.84.2020.03.04.17.21.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 17:21:57 -0800 (PST)
Date: Wed, 04 Mar 2020 17:21:57 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 17:21:43 PST (-0800)
Subject: Re: [PATCH 6/8] riscv: add STRICT_KERNEL_RWX support
In-Reply-To: <20200217083223.2011-7-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-5d8ed200-0200-4198-946f-ae41ba71cc06@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_172200_137171_490BCBC6 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 00:32:21 PST (-0800), zong.li@sifive.com wrote:
> The commit contains that make text section as non-writable, rodata
> section as read-only, and data section as non-executable.
>
> The init section should be changed to non-executable.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig                  |  1 +
>  arch/riscv/include/asm/set_memory.h |  8 +++++
>  arch/riscv/mm/init.c                | 45 +++++++++++++++++++++++++++++
>  3 files changed, 54 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index f524d7e60648..308a4dbc0b39 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -62,6 +62,7 @@ config RISCV
>  	select ARCH_HAS_GIGANTIC_PAGE
>  	select ARCH_HAS_SET_DIRECT_MAP
>  	select ARCH_HAS_SET_MEMORY
> +	select ARCH_HAS_STRICT_KERNEL_RWX
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>  	select SPARSEMEM_STATIC if 32BIT
>  	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> index a91f192063c2..d3076087cb34 100644
> --- a/arch/riscv/include/asm/set_memory.h
> +++ b/arch/riscv/include/asm/set_memory.h
> @@ -15,6 +15,14 @@ int set_memory_rw(unsigned long addr, int numpages);
>  int set_memory_x(unsigned long addr, int numpages);
>  int set_memory_nx(unsigned long addr, int numpages);
>
> +#ifdef CONFIG_STRICT_KERNEL_RWX
> +void set_kernel_text_ro(void);
> +void set_kernel_text_rw(void);
> +#else
> +static inline void set_kernel_text_ro(void) { }
> +static inline void set_kernel_text_rw(void) { }
> +#endif
> +
>  int set_direct_map_invalid_noflush(struct page *page);
>  int set_direct_map_default_noflush(struct page *page);
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..09fa643e079c 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -12,11 +12,13 @@
>  #include <linux/sizes.h>
>  #include <linux/of_fdt.h>
>  #include <linux/libfdt.h>
> +#include <linux/set_memory.h>
>
>  #include <asm/fixmap.h>
>  #include <asm/tlbflush.h>
>  #include <asm/sections.h>
>  #include <asm/pgtable.h>
> +#include <asm/ptdump.h>
>  #include <asm/io.h>
>
>  #include "../kernel/head.h"
> @@ -477,6 +479,49 @@ static void __init setup_vm_final(void)
>  	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
>  	local_flush_tlb_all();
>  }
> +
> +#ifdef CONFIG_STRICT_KERNEL_RWX
> +void set_kernel_text_rw(void)
> +{
> +	unsigned long text_start = (unsigned long)_text;
> +	unsigned long text_end = (unsigned long)_etext;
> +
> +	set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> +}
> +
> +void set_kernel_text_ro(void)
> +{
> +	unsigned long text_start = (unsigned long)_text;
> +	unsigned long text_end = (unsigned long)_etext;
> +
> +	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> +}
> +
> +void mark_rodata_ro(void)
> +{
> +	unsigned long text_start = (unsigned long)_text;
> +	unsigned long text_end = (unsigned long)_etext;
> +	unsigned long rodata_start = (unsigned long)__start_rodata;
> +	unsigned long data_start = (unsigned long)_sdata;
> +	unsigned long max_low = (unsigned long)(__va(PFN_PHYS(max_low_pfn)));
> +
> +	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> +	set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
> +	set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);

Ya, this'll risk barfing because of srodata.

> +	set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
> +}
> +#endif
> +
> +void free_initmem(void)
> +{
> +	unsigned long init_begin = (unsigned long)__init_begin;
> +	unsigned long init_end = (unsigned long)__init_end;
> +
> +	/* Make the region as non-execuatble. */
> +	set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
> +	free_initmem_default(POISON_FREE_INITMEM);
> +}
> +
>  #else
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {

