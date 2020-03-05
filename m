Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67738179D18
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 01:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=r1cjoiRs5yfI/5ZwZNPh4J3Hd5wrkW8j/pkn8QIoYoI=; b=rPhd8/q+hn9rJA
	1X7NqzfH+lbQwxEYFmRMEAvwzb8R7p3aEkgCrISp1ua99MHHPCUgDDyW6+VKRtMqNYvz5afZg5uab
	v5LnMG02O0PAaUwOInvvlfa3rHtUsflqFZNGHe+JOBZCMnAiMj+VsNx9zaGdNekcb16OYoPricKjA
	+IpIQiS1aQTbfEsz7LhwoyZjSAEA3w1enS3B0hWeKkUS0XZfV0dGvgTRfM9U0Vni8g9EaLuYR78Sn
	V+m3+KstCapCEBp0gnTKKrzeGpB2jxSpUzckjTohbxKShESiWLdMBBBXV/vaWykOYxCVpe1q3yf7l
	/4WwRsY9/agYCvztHIMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9eps-0006ig-3H; Thu, 05 Mar 2020 00:58:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9eph-0006Zn-Qe
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 00:57:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id z65so1389446pfz.8
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 16:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=r1cjoiRs5yfI/5ZwZNPh4J3Hd5wrkW8j/pkn8QIoYoI=;
 b=GyV8uU9CINptKvdryE//p4TelPw6MzQUvY0bQByDvwZ36sulOY/unL5MnrAv9wv8jp
 dbCtNJhdZqzKmlo0IJ3Ul5yzSPYC8JXWX7j022XR/Tlu2e/kdZZe4XozYLMywRja+sF1
 /3S2SXr8G95/JN7RR0FkKRCfuymTF+nfmrPoYGO5rY+iPCmyiJ0rUGBe9I/CHqjqFV5z
 xDi4kO9e4crpRXoqNb+7p82JDdnwLS1k7ei3KxeLySG8zxUiIF/Smw5JVRePLbGi5L8s
 dLQmYA6DTO7lmSou9AkGpr5T2HqzJ6Sm+hg2fPXh5wXMTasN9sIlzXFIGFL1uSzJPQcZ
 6f6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=r1cjoiRs5yfI/5ZwZNPh4J3Hd5wrkW8j/pkn8QIoYoI=;
 b=Ij3t8Jx9kW1QUmTgzTljplTHzXb/OCMqKVrHUDO2Lyg/Fu+pE9P0EBi7cVuy138Ym0
 LG8I4xmyiaNI9Y1sbmAi84rLmHhljcO1ib/w+NYvLRrp3kc/WG0alRPZv9RoPTsuTz8Y
 bieuaPJpYTH9X7QxTInsZghHXSJH6HzfBU0WJoCaCHq2s4ncKYp/bSxnQEDYM0ajcSpF
 6uQpjThlHnjRKzO7/cz5USFB96E1VIkAZQNwfGNv5TAmJGRrF9Oqw2QhijeIjSW93XSU
 nPImruVW0Ips2Fs/lW9xBEkGSTAiWh7t3jKx2LipAlTSgGmG/Y6iWdxem/P3pnB5g+nf
 YFeQ==
X-Gm-Message-State: ANhLgQ0sFIc1apAlkAH96vV/W6qC7xqryYUgTOkfDesVrBuuuVwJpfRV
 GWgdMPWm+qo7voFEnkt13Ym3sA==
X-Google-Smtp-Source: ADFU+vsMu+SCwaGiTvNt7q5D3Z8AxBmHq9uvSeqYl34akVxe8tr0UJLcPLA5uAY0m8LsDJcoJulbmA==
X-Received: by 2002:a62:a206:: with SMTP id m6mr5912639pff.254.1583369868705; 
 Wed, 04 Mar 2020 16:57:48 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id w17sm24466490pfg.33.2020.03.04.16.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 16:57:48 -0800 (PST)
Date: Wed, 04 Mar 2020 16:57:48 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 16:56:49 PST (-0800)
Subject: Re: [PATCH 4/8] riscv: move exception table immediately after RO_DATA
In-Reply-To: <20200217083223.2011-5-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-6a94c49b-419b-4b5a-a11d-dda1fb0aa896@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165749_933862_9F92E77B 
X-CRM114-Status: GOOD (  18.74  )
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

On Mon, 17 Feb 2020 00:32:19 PST (-0800), zong.li@sifive.com wrote:
> Move EXCEPTION_TABLE immediately after RO_DATA. Make it easy to set the
> attribution of the sections which should be read-only at a time.
> Move .sdata to indicate the start of data section with write permission.
> This patch is prepared for STRICT_KERNEL_RWX support.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/kernel/vmlinux.lds.S | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 1e0193ded420..4ba8a5397e8b 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -9,6 +9,7 @@
>  #include <asm/page.h>
>  #include <asm/cache.h>
>  #include <asm/thread_info.h>
> +#include <asm/set_memory.h>
>
>  OUTPUT_ARCH(riscv)
>  ENTRY(_start)
> @@ -52,12 +53,15 @@ SECTIONS
>  	}
>
>  	/* Start of data section */
> -	_sdata = .;
>  	RO_DATA(L1_CACHE_BYTES)
>  	.srodata : {
>  		*(.srodata*)
>  	}
>
> +	EXCEPTION_TABLE(0x10)
> +
> +	_sdata = .;
> +
>  	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
>  	.sdata : {
>  		__global_pointer$ = . + 0x800;
> @@ -69,8 +73,6 @@ SECTIONS
>
>  	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
>
> -	EXCEPTION_TABLE(0x10)
> -
>  	.rel.dyn : {
>  		*(.rel.dyn*)
>  	}

As far as I can tell this is OK: core_kernel_data() explicitly says that RODATA
may or may not be between _sdata and _edata.  That said, I think we should add
__start_rodata and __end_rodata atomicly with this change (around RO_DATA and
.srodata).

