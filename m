Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8171FFF4B
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 02:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=uw4q+6RxBb1gZ8hafCJgFSIShMDUHG3YIGhQQPpjq/8=; b=rUoEdz1d27KzbU
	11yDzipDPt4Ulf5tHZ4+4GP7A2xeNJgBDMF/P1GVjeEwRouOuxa9QkPxEdl6sq9fqOIModBuqDYuc
	qBTMlPtAXkcBNcMgdVowEELiOwFH9wUVmPIhFCWquvguSfupwYr7xclWT9ntA803EGaVmuXNpkNht
	DW8byyAyVV0zZDJA+gXju/ho5MOjdn0ubmnI1JCEDdIzopNsGfZy3a+FFpjhcZXlQmCVeH4j8SKGd
	dYKLCEyFpNTEwo0KcRj2u+kPzrP9n6cm8id1fJSAu8b9TgzQeUzgkhk1Jd4eSj18cKUymupRo3QzN
	nsWKl9RDhLd1bNXX4KFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4wD-0003OI-0w; Fri, 19 Jun 2020 00:31:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4w8-0003NO-5T
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 00:31:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id j12so1396082pfn.10
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 17:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=uw4q+6RxBb1gZ8hafCJgFSIShMDUHG3YIGhQQPpjq/8=;
 b=TZYvnKImLRzWawkHleEhvx7rGT8Wk9QkPtu0cMwu1LUjYtRJ+G5DhEXf7YUIGvStgE
 vq3LpzuaolOsAVpzP7w1eHmxOL/BC+nd/zH0RswrD6baAehVmmOCCuAtO2fd+/UAlISS
 iRPvzSjUhcsjA23fdhaGXUQ56oX6w4LilW61s+qQmKChHTeGTlF56x4qaCjJgU+5YCID
 aGEXy43ZoJm6rh1j7UBWQmMCOmdGt6E7hsv9oO54c2LOzAfjOqtt4qt8a1+TT5GKzm0K
 tpXrGOwtjRKs8L0Xu+qUYWji0XrPrU218HIw2xmZRsPnpJy/ujsiln86I2Q6UD1mo7lm
 PEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=uw4q+6RxBb1gZ8hafCJgFSIShMDUHG3YIGhQQPpjq/8=;
 b=G6lHwr5kDbIrvRPqF+rjfmCWJBUAxypwd+3CTaQV1BLTBqTBGiSpOZkgyWMEajkjFH
 j42ieLBZCtwdRP+T6FNn8EVyNC88KK/Ut08jBoshmKyvei5RYN+UQ9m9MlX3N1u2vjqD
 wkgmbAc+FzMO5vl/eGKKF4Tw4lzclaYkW2GPhC4z0e6D5GGiZN6VP8DrX4EI+KUSPb14
 MKARuwS/ul/MKrT4AKvS8OiPbZ+XmMWTz10O/Jq63x1CF+aQmlPKFHyVydhMcB9WB3HU
 59KBYm3tF26HOPiG4AcCtA4Da5Jj5JgxhYsmFoSTKZLKp5aJ6OL98+X31FPeynPOXPcO
 aX1g==
X-Gm-Message-State: AOAM53391qs1r5Z0dOhJPhD6ddWle5tCiSf5TOxE4sqNvxPZmHM/Ni7C
 ftbvtyBmUSZy7MlK2zfA+gx/NQ==
X-Google-Smtp-Source: ABdhPJwau8uI/KVK0RFr+Mma2bumEKOSrKCg7KtTVps5gdvTpxpwqjvlK9D1HrbNbA9hH6yf7NDHMw==
X-Received: by 2002:a65:594b:: with SMTP id g11mr987979pgu.168.1592526675190; 
 Thu, 18 Jun 2020 17:31:15 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id h17sm3338722pgv.41.2020.06.18.17.31.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 17:31:14 -0700 (PDT)
Date: Thu, 18 Jun 2020 17:31:14 -0700 (PDT)
X-Google-Original-Date: Thu, 18 Jun 2020 17:31:04 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Don't allow write+exec only page mapping request
 in mmap
In-Reply-To: <1592316186-1420-1-git-send-email-yash.shah@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: yash.shah@sifive.com
Message-ID: <mhng-f46325d7-1e58-4c03-b345-b39e53cabb12@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_173116_201945_CB261F2C 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, david.abdurachmanov@gmail.com,
 linux-kernel@vger.kernel.org, yash.shah@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, colin.king@canonical.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 07:03:06 PDT (-0700), yash.shah@sifive.com wrote:
> As per the table 4.2 of the RISC-V instruction set manual[0], the PTE
> permission bit combination of "write+exec only" is invalid and reserved
> for future use. Hence, don't allow such mapping request in mmap call.
>
> An issue is been reported by David Abdurachmanov, that while running
> stress-ng with "sysbadaddr" argument, RCU stalls are observed on RISC-V
> specific kernel.
>
> This issue arises when the stress-sysbadaddr request for pages with
> "write+exec only" permission bits and then passes the address obtain
> from this mmap call to various system call. For the riscv kernel, the
> mmap call should fail for this particular combination of permission bits
> since it's not valid.
>
> [0]: https://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-161.pdf

That's super old.  I can't figure out how to get a stable link to a new
privilege spec (the riscv.org website has some crazy wordpress paths that I
don't trust, and github doesn't appear to have the PDF for the ratified 1.11
tag).  I'm just going to put the ratified PDF on dabbelt.com, as at least I
have control over that.  LMK if anyone knows where to find the ratified user
PDF of the manual, as that'd be nice to have as well...

It's now table 4.4 in the PDF I get from riscv.org, see

https://github.com/palmer-dabbelt/website/commit/4c2676320c9b580f592bd0a1074bb3c6507d97a5

or

http://dabbelt.com/~palmer/keep/riscv-isa-manual/riscv-privileged-20190608-1.pdf

> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> Reported-by: David Abdurachmanov <david.abdurachmanov@gmail.com>
> ---
>  arch/riscv/kernel/sys_riscv.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
> index f3619f5..12f8a7f 100644
> --- a/arch/riscv/kernel/sys_riscv.c
> +++ b/arch/riscv/kernel/sys_riscv.c
> @@ -8,6 +8,7 @@
>  #include <linux/syscalls.h>
>  #include <asm/unistd.h>
>  #include <asm/cacheflush.h>
> +#include <asm-generic/mman-common.h>
>
>  static long riscv_sys_mmap(unsigned long addr, unsigned long len,
>  			   unsigned long prot, unsigned long flags,
> @@ -16,6 +17,11 @@ static long riscv_sys_mmap(unsigned long addr, unsigned long len,
>  {
>  	if (unlikely(offset & (~PAGE_MASK >> page_shift_offset)))
>  		return -EINVAL;
> +
> +	if ((prot & PROT_WRITE) && (prot & PROT_EXEC))
> +		if (unlikely(!(prot & PROT_READ)))
> +			return -EINVAL;
> +
>  	return ksys_mmap_pgoff(addr, len, prot, flags, fd,
>  			       offset >> (PAGE_SHIFT - page_shift_offset));
>  }

This is on fixes, with my cleanups.  I'd really prefer to avoid linking to
dabbelt.com, so LMK if you have a better way to handle it.  I'm planning on
sumbitting an rc2 PR tomorrow, though...

Thanks!

