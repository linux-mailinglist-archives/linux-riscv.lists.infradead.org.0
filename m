Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67731E2ECA
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 21:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YFRI8Pzmi8Hkgh9xlFXYHyu3aYx5I7yE+6THkxrPB8I=; b=b6psHwN8kfAQWk
	pUInDoMt41eDvgfBGGI30qAxMWxYF29NOi78irVl7l8b7VZLSh7HoMtexBsvlTqdfoe6k+U9qTNqQ
	kl320VeqbOrje4MOpQfR+C3e5tQmzpTo5Q0pLOUSjgXnhByQIQA7mKsY0lBxS2RXKgF5+87KJCYis
	NpDbRBYoB4OjFpxgXGyA5MrGpDEGgoC+gZBSpk8uEKrbbrZbNlEGbdzDFAPcAY8QzqiM7iF1JaTxN
	JSs0Wu8LWNl+qDIRF7Wk3PshRel2cahULqXVBU7fpxCsHYKxgaErBrp/NCHFSqEt4MmuetTqABM3v
	7CpRKanW9hWtfbGm/9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfIk-0000Lu-Fr; Tue, 26 May 2020 19:31:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfIg-0000Kl-3E
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 19:31:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id r10so10522900pgv.8
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 12:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=YFRI8Pzmi8Hkgh9xlFXYHyu3aYx5I7yE+6THkxrPB8I=;
 b=vS7fMYrrAgg3oUBGa3cYcSiEpyRDaWgj11jtVR7CjRp4pnKrHNU7NTOnemnYkB25eH
 2vlyjn5eK/YrvhhtNTGrdGOtMzQtXOFGCeDNsTVjIdts8nhNoF//GK8Uk4zkQJZ3l/FE
 jwjFlTFdVaxtBWbXt1VQcFnYhGZYrxybxa3sysnJVEs1ztOhd8JnIvTA25P7TbsI2Urk
 Vst1Z2KUJ2TwNHGQlj2QR6AioGdlYUileOiWYqvlKJrm5FllyzZseAWzHHGcTlC8jMjt
 oASNMVbCiQkQ5RvIvbvkOBTKbyGva0jrx6L7Rs0VKJ2ljfP7VVb67hqEaZdQKNSYIwRi
 6rlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=YFRI8Pzmi8Hkgh9xlFXYHyu3aYx5I7yE+6THkxrPB8I=;
 b=L3i++BYp4jCKHAOCY+cwXhX6yR/G0LmSqU0BIMaCZMkANG6ksqV/lfYyqeNnMj6UGg
 APu4mL5GoL4KNpOkK+obc03dNFhAZ9j2QyYvNS+xqB4kC5kPEUjLoWSfhx1p9ttRJqgH
 yN9XMQOmecD3/av0JAWyICiVdR1OStKh6xQOaJunDUboDZGROcec6T1c6BhEmSsWabJ2
 6hARbBEVkwD+l3cjo9USl0xoca2Lm7BRyXE8rU+fiRgBra8TmdkjyA0FKMXvLNs5W9WC
 YMbRynw0c64W0ngAplM5jJa7pQNhRXg9JVhMtVBH2noyvo6irJtJq6G6eGuo8lDyicRW
 4gWg==
X-Gm-Message-State: AOAM531FSIHSaDpe/m48ur5WZv6vEKPRK8laGb9CG56mXC9MA+6XkrKu
 XtE1v+RLXMRs9snj2MdVkkDhhw==
X-Google-Smtp-Source: ABdhPJx7PaDMUCSP3dWG8db1wbzMCLv5XsRADqttAo+C1oTetQidFR58rZotM4lHGR9W7RN7Be9DSA==
X-Received: by 2002:a63:de06:: with SMTP id f6mr475817pgg.238.1590521504497;
 Tue, 26 May 2020 12:31:44 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id d18sm238566pjv.34.2020.05.26.12.31.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 12:31:43 -0700 (PDT)
Date: Tue, 26 May 2020 12:31:43 -0700 (PDT)
X-Google-Original-Date: Tue, 26 May 2020 12:31:41 PDT (-0700)
Subject: Re: [PATCH 1/1] riscv: sort select statements alphanumerically
In-Reply-To: <0609f8f0c0c7182fda08fc395161ec11309c63fb.1589859647.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-7c33e65d-d59d-400e-a056-cd44958c9222@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_123146_164039_9AAFF908 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 20:42:04 PDT (-0700), zong.li@sifive.com wrote:
> Like patch b1b3f49 ("ARM: config: sort select statements alphanumerically")
> , we sort all our select statements alphanumerically by using the perl
> script in patch b1b3f49 as above.
>
> As suggested by Andrew Morton:
>
>   This is a pet peeve of mine.  Any time there's a long list of items
>   (header file inclusions, kconfig entries, array initalisers, etc) and
>   someone wants to add a new item, they *always* go and stick it at the
>   end of the list.
>
>   Guys, don't do this.  Either put the new item into a randomly-chosen
>   position or, probably better, alphanumerically sort the list.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig | 70 +++++++++++++++++++++++-----------------------
>  1 file changed, 35 insertions(+), 35 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 74ce5c5249e9..8244b8f7e7c3 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -12,64 +12,64 @@ config 32BIT
>
>  config RISCV
>  	def_bool y
> -	select OF
> -	select OF_EARLY_FLATTREE
> -	select OF_IRQ
>  	select ARCH_HAS_BINFMT_FLAT
> +	select ARCH_HAS_DEBUG_VIRTUAL if MMU
> +	select ARCH_HAS_DEBUG_WX
> +	select ARCH_HAS_GCOV_PROFILE_ALL
> +	select ARCH_HAS_GIGANTIC_PAGE
> +	select ARCH_HAS_MMIOWB
> +	select ARCH_HAS_PTE_SPECIAL
> +	select ARCH_HAS_SET_DIRECT_MAP
> +	select ARCH_HAS_SET_MEMORY
> +	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>  	select ARCH_WANT_FRAME_POINTERS
> +	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>  	select CLONE_BACKWARDS
>  	select COMMON_CLK
> +	select EDAC_SUPPORT
> +	select GENERIC_ARCH_TOPOLOGY if SMP
> +	select GENERIC_ATOMIC64 if !64BIT
>  	select GENERIC_CLOCKEVENTS
> +	select GENERIC_IOREMAP
> +	select GENERIC_IRQ_MULTI_HANDLER
>  	select GENERIC_IRQ_SHOW
>  	select GENERIC_PCI_IOMAP
> +	select GENERIC_PTDUMP if MMU
>  	select GENERIC_SCHED_CLOCK
> +	select GENERIC_SMP_IDLE_THREAD
>  	select GENERIC_STRNCPY_FROM_USER if MMU
>  	select GENERIC_STRNLEN_USER if MMU
> -	select GENERIC_SMP_IDLE_THREAD
> -	select GENERIC_ATOMIC64 if !64BIT
> -	select GENERIC_IOREMAP
> -	select GENERIC_PTDUMP if MMU
>  	select HAVE_ARCH_AUDITSYSCALL
> +	select HAVE_ARCH_KASAN if MMU && 64BIT
> +	select HAVE_ARCH_KGDB
> +	select HAVE_ARCH_KGDB_QXFER_PKT
> +	select HAVE_ARCH_MMAP_RND_BITS if MMU
>  	select HAVE_ARCH_SECCOMP_FILTER
> +	select HAVE_ARCH_TRACEHOOK
>  	select HAVE_ASM_MODVERSIONS
> +	select HAVE_COPY_THREAD_TLS
>  	select HAVE_DMA_CONTIGUOUS if MMU
> +	select HAVE_EBPF_JIT if MMU
>  	select HAVE_FUTEX_CMPXCHG if FUTEX
> +	select HAVE_PCI
>  	select HAVE_PERF_EVENTS
>  	select HAVE_PERF_REGS
>  	select HAVE_PERF_USER_STACK_DUMP
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select IRQ_DOMAIN
> -	select SPARSE_IRQ
> -	select SYSCTL_EXCEPTION_TRACE
> -	select HAVE_ARCH_TRACEHOOK
> -	select HAVE_PCI
>  	select MODULES_USE_ELF_RELA if MODULES
>  	select MODULE_SECTIONS if MODULES
> -	select THREAD_INFO_IN_TASK
> +	select OF
> +	select OF_EARLY_FLATTREE
> +	select OF_IRQ
>  	select PCI_DOMAINS_GENERIC if PCI
>  	select PCI_MSI if PCI
>  	select RISCV_TIMER
> -	select GENERIC_IRQ_MULTI_HANDLER
> -	select GENERIC_ARCH_TOPOLOGY if SMP
> -	select ARCH_HAS_PTE_SPECIAL
> -	select ARCH_HAS_MMIOWB
> -	select ARCH_HAS_DEBUG_VIRTUAL if MMU
> -	select HAVE_EBPF_JIT if MMU
> -	select EDAC_SUPPORT
> -	select ARCH_HAS_GIGANTIC_PAGE
> -	select ARCH_HAS_SET_DIRECT_MAP
> -	select ARCH_HAS_SET_MEMORY
> -	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
> -	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>  	select SPARSEMEM_STATIC if 32BIT
> -	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> -	select HAVE_ARCH_MMAP_RND_BITS if MMU
> -	select ARCH_HAS_GCOV_PROFILE_ALL
> -	select HAVE_COPY_THREAD_TLS
> -	select HAVE_ARCH_KASAN if MMU && 64BIT
> -	select HAVE_ARCH_KGDB
> -	select HAVE_ARCH_KGDB_QXFER_PKT
> -	select ARCH_HAS_DEBUG_WX
> +	select SPARSE_IRQ
> +	select SYSCTL_EXCEPTION_TRACE
> +	select THREAD_INFO_IN_TASK
>
>  config ARCH_MMAP_RND_BITS_MIN
>  	default 18 if 64BIT
> @@ -196,11 +196,11 @@ config ARCH_RV64I
>  	bool "RV64I"
>  	select 64BIT
>  	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
> -	select HAVE_FUNCTION_TRACER
> -	select HAVE_FUNCTION_GRAPH_TRACER
> -	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_DYNAMIC_FTRACE if MMU
>  	select HAVE_DYNAMIC_FTRACE_WITH_REGS if HAVE_DYNAMIC_FTRACE
> +	select HAVE_FTRACE_MCOUNT_RECORD
> +	select HAVE_FUNCTION_GRAPH_TRACER
> +	select HAVE_FUNCTION_TRACER
>  	select SWIOTLB if MMU
>
>  endchoice

Thanks.  This is on for-next, except I re-ran the script as there have been
some changes.

