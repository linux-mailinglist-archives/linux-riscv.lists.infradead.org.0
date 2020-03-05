Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9040E179D1C
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 01:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HhIcP1OmX7KCJe/LzPGyLrrs+To5FwKg4wadhbBvhh0=; b=Tv8ryVVnpnFcgd
	KSNrN22bYBep0UZ32e+ce2NC+iD0RlXfSj/lvZ3jc08d3UcXI86FOzf+vm0mMjjqfNf3DEvqDbDFN
	pkkMWKZrG6feMEtedx9xZePu/gEKQOKHaYuJoBYBjYMFKrQ5x9dSx+eJCh/8JE0P4WZIqiDoKFthC
	fLzf4ZWAvsQrubMkrrRZdCaFdIhLNclDXMQj8vsCkfGHyv6akleth5mxJbdr0QLzmdmRbCXSji0kg
	VQIs16IuTdlf8tBuOJIlaL0xicKRqvuG33ScQS9JxnY5dtPLCnOpsBnnJb9VrVdtr3qp00atBMsKu
	VCKLDVnN9QzfRjTnJoDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9eqf-0006s1-Im; Thu, 05 Mar 2020 00:58:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9eqc-0006rg-Hg
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 00:58:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id o24so1875201pfp.13
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 16:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=HhIcP1OmX7KCJe/LzPGyLrrs+To5FwKg4wadhbBvhh0=;
 b=Aq2qqLvbqlU5Kjj4F0+/BOA9infgEg+KgkHaarF5Qd364tds3v0rBe1kM6S1n+VRFQ
 KMbfEg959bSsq+g+BpJ+T5+0ObvEBeIPAd68I1k5uwjBYzsS1RX/pM6xaA4Wlf0etwy9
 z0ZF3cd9owkVC8se+XXBMIhOnUaUIEbNAptYSZMYxA+LoO4r04W9v8y8hw5xP2vV2fSd
 QB2nUS0hM9b3vsJeSeCh6VUmJcY2DSKkaubpIE1gdKZOmxvydMTwAUx5NWgbQSgfUfBs
 B39SyxjVf2MrSiaU02IvghnrbuCMuy2SW3FUPjkTeMYflYtZC8xIAFCvW3aTW2GnVUjm
 JFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=HhIcP1OmX7KCJe/LzPGyLrrs+To5FwKg4wadhbBvhh0=;
 b=DAc39vaPWKuDl6y8tAiP7YuHxSTclnuUYPrK8MmagHERpvHN/XlsSyLhtg/8hgS5BM
 rmtZL+YHaOzV4MRnbIjW5wz1a+douYuR7E3RJL2vVuhmHSExBChaZCYdC1oN6U6HbV4N
 SN/vJ//gXWCw7Jq2XQJ0O9TV2Geix9jcTkMnGHCRfWPHRkGpHUhBwSg39Y4JWDVaiP0Y
 wTMQtQHptvs8B8lk0UR1iLvVS9ZFLhj1v/QjZK0Ic3aYV+A79mO4r3ntVpKYJj0H9OMx
 ZyFYZA+ocbB5rW8DYum6+9zr+Q52WnhTuX4Gt0uSTayFsy57dzlHZ920byaROkFj9liB
 yfqg==
X-Gm-Message-State: ANhLgQ2kbkJE9WZsgEf5N863Pu0TKYDxLG1QqCJEson/wfzrkiowxkGQ
 ddfamLxaugWW14wjpZu737kfdcJq0QM=
X-Google-Smtp-Source: ADFU+vvZlYvK0bH3igAzK6gimmXeABOtAKPRA5V8gdnRj1XWlcgdFrUaO6kH5XRHYEs1TUASkniV5g==
X-Received: by 2002:aa7:8687:: with SMTP id d7mr5703217pfo.164.1583369925861; 
 Wed, 04 Mar 2020 16:58:45 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id e9sm3910889pjt.16.2020.03.04.16.58.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 16:58:45 -0800 (PST)
Date: Wed, 04 Mar 2020 16:58:45 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 16:58:05 PST (-0800)
Subject: Re: [PATCH 5/8] riscv: add alignment for text,
 rodata and data sections
In-Reply-To: <20200217083223.2011-6-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-fa489ba7-f1c7-459c-aae0-0dc68c826635@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165846_588558_A57A375E 
X-CRM114-Status: GOOD (  20.01  )
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

On Mon, 17 Feb 2020 00:32:20 PST (-0800), zong.li@sifive.com wrote:
> The kernel mapping will tried to optimize its mapping by using bigger
> size. In rv64, it tries to use PMD_SIZE, and tryies to use PGDIR_SIZE in
> rv32. To ensure that the start address of these sections could fit the
> mapping entry size, make them align to the biggest alignment.
>
> Define a macro SECTION_ALIGN because the HPAGE_SIZE or PMD_SIZE, etc.,
> are invisible in linker script.
>
> This patch is prepared for STRICT_KERNEL_RWX support.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/include/asm/set_memory.h | 13 +++++++++++++
>  arch/riscv/kernel/vmlinux.lds.S     |  4 +++-
>  2 files changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> index a9783a878dca..a91f192063c2 100644
> --- a/arch/riscv/include/asm/set_memory.h
> +++ b/arch/riscv/include/asm/set_memory.h
> @@ -6,6 +6,7 @@
>  #ifndef _ASM_RISCV_SET_MEMORY_H
>  #define _ASM_RISCV_SET_MEMORY_H
>
> +#ifndef __ASSEMBLY__
>  /*
>   * Functions to change memory attributes.
>   */
> @@ -17,4 +18,16 @@ int set_memory_nx(unsigned long addr, int numpages);
>  int set_direct_map_invalid_noflush(struct page *page);
>  int set_direct_map_default_noflush(struct page *page);
>
> +#endif /* __ASSEMBLY__ */
> +
> +#ifdef CONFIG_ARCH_HAS_STRICT_KERNEL_RWX
> +#ifdef CONFIG_64BIT
> +#define SECTION_ALIGN (1 << 21)
> +#else
> +#define SECTION_ALIGN (1 << 22)
> +#endif
> +#else /* !CONFIG_ARCH_HAS_STRICT_KERNEL_RWX */
> +#define SECTION_ALIGN L1_CACHE_BYTES
> +#endif /* CONFIG_ARCH_HAS_STRICT_KERNEL_RWX */
> +
>  #endif /* _ASM_RISCV_SET_MEMORY_H */
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 4ba8a5397e8b..0b145b9c1778 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -37,6 +37,7 @@ SECTIONS
>  	PERCPU_SECTION(L1_CACHE_BYTES)
>  	__init_end = .;
>
> +	. = ALIGN(SECTION_ALIGN);
>  	.text : {
>  		_text = .;
>  		_stext = .;
> @@ -53,13 +54,14 @@ SECTIONS
>  	}
>
>  	/* Start of data section */
> -	RO_DATA(L1_CACHE_BYTES)
> +	RO_DATA(SECTION_ALIGN)
>  	.srodata : {
>  		*(.srodata*)
>  	}
>
>  	EXCEPTION_TABLE(0x10)
>
> +	. = ALIGN(SECTION_ALIGN);
>  	_sdata = .;
>
>  	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

