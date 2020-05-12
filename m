Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FF21D0009
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 23:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ayvF8u1Trz98kPzut/fpymP+skmFBSVYrYtlr1DmSGU=; b=AmlLL0pD74z2cw
	U5xhcMs59GdYL2KNmx8o63YewQxwGQvr6u6rANJyRCqsFSYmr6ZHH3Yl8iIxxB/I0azw3WqsWT5o5
	GqxRpdLjtyrqDgZBDs645S8TUfyUwIxQv0KeYk4itOSGOk3aSig6Hhfwr5yiNGScKdiRpJSXivfys
	N6GqJrpWBVQcs23mBiQ8I8GuD1T82DoHYRohgqHbAWNRHP2F/UF1XVnJvKHzkW7o4p8LahX8AzNIf
	Ofm10D9mSblqNFeCj0R5ksp+7hcrDu2uLoEswkHYPAJMDizQQoRtB+/i8kagZv1sFRcCtv1vO/g3j
	o1Fz36tQ10BqDSyxc2Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYc2Q-0007SJ-6E; Tue, 12 May 2020 21:02:06 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYc2M-0007Rq-Od
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 21:02:04 +0000
Received: by mail-pf1-x429.google.com with SMTP id y18so170104pfl.9
 for <linux-riscv@lists.infradead.org>; Tue, 12 May 2020 14:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ayvF8u1Trz98kPzut/fpymP+skmFBSVYrYtlr1DmSGU=;
 b=FylPsE15RtP6ywL7le1gyvsxrmPItQoeC/5Ryg5WHuwi0HcfkcvPiSWmUjVKs8lCMX
 bmDljyY3/7gvmviPldTdLfU4Gs8NapeSyUdlJsTReKuUfoyOHDeg65aEuEAKZWWskEYx
 ZbZUOyUzIJptP/QoXJsD/1wRwyX3QKwfRhEYzozjKVwvpZWNK+GnE594UG/v3AhgeGfv
 gofkpVIahbbP3/7V7MmAgKiAeY7fZ0ppG22okSItXuwTjx6U9Jcki7Sq5Yi7wkbznQz1
 Ch87INmwG2hjL+9unZhTUzOOtMPkkYN6BDbMCi/1bDTHkBy0AvM5TQwMGDjbf5JZ+L5m
 ZXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ayvF8u1Trz98kPzut/fpymP+skmFBSVYrYtlr1DmSGU=;
 b=Cg/sUIjWilfl0Bg6opD0Acyd5h1GmpRQkd7IACesUcNpVRNWusT+o7trmduolX+imI
 1funp3aRSamrbD/MslV7QpZVDOks5sfdwCYZnJCZ03V7/9ODf0aeH4kQu2d388gwSwN3
 H0RqYTgoUezFGGtudBvwsTyJVcnzb9il4TTIOddIkOZ8J1E8hPT0fc5wrNeOynsGEZt+
 Oj5YM0MEPe/qNVzhPj7HxBXiWL3Ko9NutNfXhUwPqAIVzdiS8ML03QFcQNsLRgh/Y/rU
 FykHd2vqSZQSN4A4c8qCTlTT0779fdVwK7PtL3qVxfDm9d1iW0i9bz5ttjc0nRNr5s7B
 1z2Q==
X-Gm-Message-State: AGi0PuaeMpUCzm4pY5ciAzIigtwIRPD1WCPumrn6JeJhKnBQNX3Kzz7r
 XnxTSUP9zgtN0nrmInFBIXtl4g==
X-Google-Smtp-Source: APiQypKlB/jxdOAsAkgCZwJcJ3f8Oon0jsH3vtTXx3EiO/PQpimL6MarV7shEWha7UHZ3nX7tUkusw==
X-Received: by 2002:aa7:9258:: with SMTP id 24mr23618884pfp.35.1589317321647; 
 Tue, 12 May 2020 14:02:01 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id s123sm12859105pfs.170.2020.05.12.14.02.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:02:00 -0700 (PDT)
Date: Tue, 12 May 2020 14:02:00 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 13:54:00 PDT (-0700)
Subject: Re: [PATCH -next] riscv: perf: RISCV_BASE_PMU should be closeable
In-Reply-To: <20200507150445.174390-2-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-58148e77-03b6-4c56-98ea-0d0cbf99d522@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_140202_852941_3DE30D8E 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
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
Cc: wangkefeng.wang@huawei.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, alankao@andestech.com,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 07 May 2020 08:04:45 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> As 178e9fc47aae("perf: riscv: preliminary RISC-V support") said,
> For RISCV_BASE_PMU, 'this option can also be disable to reduce kernel size',
> but it could not work well, we need diable both RISCV_BASE_PMU and
> PERF_EVENTS manually, or build error will occur when only disable
> RISCV_BASE_PMU.

I'm worried this belies a larger issue related to how this PMU stuff works, but
we have only one PMU right now so it's not a pressing issue.  I've taken this
onto fixes.

Thanks!

>
> Cc: Alan Kao <alankao@andestech.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/include/asm/perf_event.h | 8 ++------
>  arch/riscv/kernel/Makefile          | 2 +-
>  2 files changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/include/asm/perf_event.h b/arch/riscv/include/asm/perf_event.h
> index 0234048b12bc..062efd3a1d5d 100644
> --- a/arch/riscv/include/asm/perf_event.h
> +++ b/arch/riscv/include/asm/perf_event.h
> @@ -12,19 +12,14 @@
>  #include <linux/ptrace.h>
>  #include <linux/interrupt.h>
>
> +#ifdef CONFIG_RISCV_BASE_PMU
>  #define RISCV_BASE_COUNTERS	2
>
>  /*
>   * The RISCV_MAX_COUNTERS parameter should be specified.
>   */
>
> -#ifdef CONFIG_RISCV_BASE_PMU
>  #define RISCV_MAX_COUNTERS	2
> -#endif
> -
> -#ifndef RISCV_MAX_COUNTERS
> -#error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."
> -#endif
>
>  /*
>   * These are the indexes of bits in counteren register *minus* 1,
> @@ -82,6 +77,7 @@ struct riscv_pmu {
>  	int		irq;
>  };
>
> +#endif
>  #ifdef CONFIG_PERF_EVENTS
>  #define perf_arch_bpf_user_pt_regs(regs) (struct user_regs_struct *)regs
>  #endif
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 1f5736e996fd..b355cf485671 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -43,7 +43,7 @@ obj-$(CONFIG_MODULE_SECTIONS)	+= module-sections.o
>  obj-$(CONFIG_FUNCTION_TRACER)	+= mcount.o ftrace.o
>  obj-$(CONFIG_DYNAMIC_FTRACE)	+= mcount-dyn.o
>
> -obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
> +obj-$(CONFIG_RISCV_BASE_PMU)	+= perf_event.o
>  obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
>  obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
>  obj-$(CONFIG_RISCV_SBI)		+= sbi.o

