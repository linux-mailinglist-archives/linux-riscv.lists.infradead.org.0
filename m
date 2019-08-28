Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D70A9F7AA
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 03:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=Pb+S0jBomQaRzj8Plmlpe9s8XmfkRGpY9NZuQUrgRj0=; b=pmAkRTvYo2Wl9Aoj+nLFW6Avx
	twApL5EczOMvCy92DUIn/5ewxeGefiovGpS4IBTQiPkqXBGGqHtkzV8vmu6psMovS/YwXvsa9g0p8
	OlRtLs0MA+QsFxf0DaU5oQW/u0D4oRMbNjeqIVkbJRk6LuFNAKLrNUBNz/scNC1BiZeqxzHcC5wf8
	rnzC45nfYIZ1FR68jkPPMvSc0HSuWDHUxWE+wKTAQQevG1RgiWWdeZ3X0PxmWqEOa/hsHAerAF+/U
	vx2LzM5KYK6NntTb2c3phoIab4ZzJtQaQc/WTSld+1L2kh866QArjpyFepOfU4Tkb/7QdYSTAZOk/
	hQsih2/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2mU0-0001nh-Rt; Wed, 28 Aug 2019 01:10:44 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2mTs-0001k7-JY
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 01:10:38 +0000
Received: by mail-pl1-f193.google.com with SMTP id w11so387357plp.5
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 18:10:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=XLoeXX/1mSAew8yNsoCj+1I19RW0KNa1KwCc6dBonHs=;
 b=gNUCzit+7fMjgOn4tYLxrRzEOLWiqjTRylyaK1a8EGOKyxnC5/0chMaq5BYqtDmSJv
 1QfqXS/4spXGwqSkSoIh+GA/i6sI/pb+3OdcZKxTGtOfdgHHPPwkEI8gaxJ/uX5yaony
 hnjHtDAMrB6cLtjd2OfWRMdz/yvh9eN2B049Unp064XQbQCW6Kfa10ZieP3Z2RGK4cKB
 DHejOlgFFHTrhydBgDgdYd2LnP3uTtjJEXJIkp4Da0YTMSQSJxn8NiJQEGwqEMa/GZB7
 632DVW+bwcFO/DsGO+dlUpQ9BdogC95fZBISMMUNYJsPOr79kwM/bjH6GVhFRBDl5LMK
 PlZQ==
X-Gm-Message-State: APjAAAV76mhG11hv9b5UN1XGwtKaTNnMs1x58ie1/0sN99p9O9oN3mxc
 +WRrE+4E0beCNRrulI6PZ/gM5A==
X-Google-Smtp-Source: APXvYqwxsamYGWiI2+0jF3fftFGPzEBxeZfpc5WfnANtO157PT7XcCrUwTnxYkBUGos235NojHvuzA==
X-Received: by 2002:a17:902:8f81:: with SMTP id
 z1mr1786460plo.110.1566954634249; 
 Tue, 27 Aug 2019 18:10:34 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b18sm563003pfi.160.2019.08.27.18.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 18:10:33 -0700 (PDT)
Date: Tue, 27 Aug 2019 18:10:33 -0700 (PDT)
X-Google-Original-Date: Tue, 27 Aug 2019 18:00:43 PDT (-0700)
Subject: Re: [PATCH 8/8] riscv: ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag
In-Reply-To: <20190822065612.28634-9-hch@lst.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-363188c5-b80c-4935-8a84-861fbdb1e8e4@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_181036_646432_8680F4D8 
X-CRM114-Status: GOOD (  22.85  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 23:56:12 PDT (-0700), Christoph Hellwig wrote:
> The SYS_RISCV_FLUSH_ICACHE_LOCAL is built on the flawed assumption that
> there is such a thing as a local cpu outside of in-kernel preemption
> disabled sections.  Just ignore the flag as it can't be used in a safe
> way.

This is meant to perform a context-local flush, not a cpu-local flush.  The 
whole point here is that userspace doesn't know anything about CPUs, just 
contexts -- that's why we have this deferred flush mechanism.  I think the 
logic is complicated but sound, and removing this will almost certainly lead to 
huge performance degradation.

Maybe I'm missing something, what is the specific issue?

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/cacheflush.h |  2 +-
>  arch/riscv/mm/cacheflush.c          | 13 ++++++++-----
>  2 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
> index b86ac3a4653a..3c18d956c970 100644
> --- a/arch/riscv/include/asm/cacheflush.h
> +++ b/arch/riscv/include/asm/cacheflush.h
> @@ -100,6 +100,6 @@ void flush_icache_all(void);
>  /*
>   * Bits in sys_riscv_flush_icache()'s flags argument.
>   */
> -#define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL
> +#define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL /* ignored */
>
>  #endif /* _ASM_RISCV_CACHEFLUSH_H */
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 8f1134715fec..4b6ecc3431e2 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -17,7 +17,7 @@ void flush_icache_all(void)
>  	sbi_remote_fence_i(NULL);
>  }
>
> -static void flush_icache_mm(bool local)
> +static void flush_icache_mm(void)
>  {
>  	unsigned int cpu = get_cpu();
>
> @@ -36,8 +36,7 @@ static void flush_icache_mm(bool local)
>  	 * still need to order this hart's writes with flush_icache_deferred().
>  	 */
>  	cpu = get_cpu();
> -	if (local ||
> -	    cpumask_any_but(mm_cpumask(current->mm), cpu) >= nr_cpu_ids) {
> +	if (cpumask_any_but(mm_cpumask(current->mm), cpu) >= nr_cpu_ids) {
>  		local_flush_icache_all();
>  		smp_mb();
>  	} else {
> @@ -50,7 +49,7 @@ static void flush_icache_mm(bool local)
>  	put_cpu();
>  }
>  #else
> -#define flush_icache_mm(local)	flush_icache_all()
> +#define flush_icache_mm()	flush_icache_all()
>  #endif /* CONFIG_SMP */
>
>  /*
> @@ -72,6 +71,10 @@ static void flush_icache_mm(bool local)
>   * remove flush for harts that are not currently executing a MM context and
>   * instead schedule a deferred local instruction cache flush to be performed
>   * before execution resumes on each hart.
> + *
> + * Note that we ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag, as there is
> + * absolutely not way to ensure the local CPU is still the same by the time we
> + * return from the syscall.
>   */
>  SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
>  		unsigned long, flags)
> @@ -79,7 +82,7 @@ SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
>  	/* Check the reserved flags. */
>  	if (unlikely(flags & ~SYS_RISCV_FLUSH_ICACHE_LOCAL))
>  		return -EINVAL;
> -	flush_icache_mm(flags & SYS_RISCV_FLUSH_ICACHE_LOCAL);
> +	flush_icache_mm();
>  	return 0;
>  }

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
