Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF97C179D13
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 01:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=o9J+supnrYLSUg8HBVX6gCsPDHMxj5Rl4InzzMMgNk4=; b=tthLtZduEqhWhP
	8eoBDnPex5nOIO25ZDHOS5lE5cGP/UGrUf2kB4plN4Qa7w7sHPZIsnFrDXpL6WB2Fps9PnB2v1gx9
	FAyypLLYfLdfrISNAn+sW7Da6EnZbfyUEx7MFmvaqHmxvXmkYQid2y2J2rqCLYzf531QLEXviaGwx
	15cgryYOxT9JzBxuxvHqBh+9Mf661zl981IJuZH1/sM8/Y5EIQ3qWUhYEeX2cNTN1ON4IJakC+KGR
	fbO8hlzAhi/wyR4abfCxDPTVX4/QmYODfVFiXqyoEgKBtiX8EUQL9q1EjWLsw7QmIvP1nW3eo9RZm
	fIz6sZo4Gm8kPJPdwoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9eph-0006Ya-Sk; Thu, 05 Mar 2020 00:57:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9epd-0006Xl-TV
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 00:57:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id i19so1899563pfa.2
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 16:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=o9J+supnrYLSUg8HBVX6gCsPDHMxj5Rl4InzzMMgNk4=;
 b=hQ+wDCVa7veVaJOhswZk31E6FovSFwVCXjKkZlGb9+jgYG+l3dTnq4geE0epl3SxRI
 NSnKJfat/3r9aLQUlt3YeW8qEtcAIlpPEvBe/7ZeoGsMa6PE430uieuyq5TFAO5eiFp4
 91JSSEx7G5SiDY4luoBPcluAqk3EL83j0I57DQPd9Hi4FJ/kKRjNybyqAuPzad4ryisR
 98Hr9aU5zKVbnqqMT4bsr+q6HpbCOOrlvqO7tX5Uq086/Yaoact3aTdhiLWuYjhL0aA8
 ivwsIhYpHA7gpkGF24f2+1kjwqtnps6vlbBtH+iR8f8dHX7S2I2gUZRAbhlt/IVdU9/m
 ofFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=o9J+supnrYLSUg8HBVX6gCsPDHMxj5Rl4InzzMMgNk4=;
 b=XtaBO2SPm5HkNVaIFoPPp5ELhTiJ4kBq8EBL//JV32bxJ7r1p4gzEMdU9G4OEx/ggu
 5XRdL25FkEOwscP6t4piGw+UvQceVeJcFsyJXcl51BJduwlytpjV8nGihDBnax7BuyLR
 o4/gdPUnQTTTA5Wpk7VOEOeTy2nCU+3Mm9NmECdXooWRU3fNOjY84huGnffMCXVUIkL8
 SEwzJto2c7HHbZo+wvAlPpTNx1g3+NznlHaR80xwmhzF34vKHcRaClLQ4OpLtKq0WjyK
 x/hFJqp0BSIXr10O8AaZb+pEZ0v0Ny/SraHdRiTZeQVv+mL7+6T4L4zcp/WDGMh/qRbG
 mOJw==
X-Gm-Message-State: ANhLgQ23vbtChdYlBf3GjPQGaZ6qLwDk1VfB8GH9M9upcdeVrjoL+MOK
 E5PpK9JjAX69bHZGffTzb9M0yA==
X-Google-Smtp-Source: ADFU+vsWbCh8e7ot3LQGH2zg1bgwU1AUXI8CJL97bju480ETGjnDsCiZtJz6DKw1vk1uawKDcMKYrg==
X-Received: by 2002:a62:e20e:: with SMTP id a14mr5669133pfi.138.1583369864936; 
 Wed, 04 Mar 2020 16:57:44 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id d82sm12867200pfd.187.2020.03.04.16.57.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 16:57:43 -0800 (PST)
Date: Wed, 04 Mar 2020 16:57:43 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 16:28:27 PST (-0800)
Subject: Re: [PATCH 2/8] riscv: add ARCH_HAS_SET_DIRECT_MAP support
In-Reply-To: <20200217083223.2011-3-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-67b20408-35a0-4b4a-97cf-a64b81a69c92@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165745_949844_908E0ACD 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On Mon, 17 Feb 2020 00:32:17 PST (-0800), zong.li@sifive.com wrote:
> Add set_direct_map_*() functions for setting the direct map alias for
> the page to its default permissions and to an invalid state that cannot
> be cached in a TLB. (See d253ca0c ("x86/mm/cpa: Add set_direct_map_*()
> functions")) Add a similar implementation for RISC-V.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig                  |  1 +
>  arch/riscv/include/asm/set_memory.h |  3 +++
>  arch/riscv/mm/pageattr.c            | 24 ++++++++++++++++++++++++
>  3 files changed, 28 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 76ed36543b3a..07bf1a7c0dd2 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -60,6 +60,7 @@ config RISCV
>  	select HAVE_EBPF_JIT if 64BIT
>  	select EDAC_SUPPORT
>  	select ARCH_HAS_GIGANTIC_PAGE
> +	select ARCH_HAS_SET_DIRECT_MAP
>  	select ARCH_HAS_SET_MEMORY
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>  	select SPARSEMEM_STATIC if 32BIT
> diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> index 936f08063566..a9783a878dca 100644
> --- a/arch/riscv/include/asm/set_memory.h
> +++ b/arch/riscv/include/asm/set_memory.h
> @@ -14,4 +14,7 @@ int set_memory_rw(unsigned long addr, int numpages);
>  int set_memory_x(unsigned long addr, int numpages);
>  int set_memory_nx(unsigned long addr, int numpages);
>
> +int set_direct_map_invalid_noflush(struct page *page);
> +int set_direct_map_default_noflush(struct page *page);
> +
>  #endif /* _ASM_RISCV_SET_MEMORY_H */
> diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
> index fcd59ef2835b..7be6cd67e2ef 100644
> --- a/arch/riscv/mm/pageattr.c
> +++ b/arch/riscv/mm/pageattr.c
> @@ -148,3 +148,27 @@ int set_memory_nx(unsigned long addr, int numpages)
>  {
>  	return __set_memory(addr, numpages, __pgprot(0), __pgprot(_PAGE_EXEC));
>  }
> +
> +int set_direct_map_invalid_noflush(struct page *page)
> +{
> +	unsigned long start = (unsigned long)page_address(page);
> +	unsigned long end = start + PAGE_SIZE;
> +	struct pageattr_masks masks = {
> +		.set_mask = __pgprot(0),
> +		.clear_mask = __pgprot(_PAGE_PRESENT)
> +	};
> +
> +	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
> +}
> +
> +int set_direct_map_default_noflush(struct page *page)
> +{
> +	unsigned long start = (unsigned long)page_address(page);
> +	unsigned long end = start + PAGE_SIZE;
> +	struct pageattr_masks masks = {
> +		.set_mask = PAGE_KERNEL,
> +		.clear_mask = __pgprot(0)
> +	};
> +
> +	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
> +}

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

