Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82F7114DE6
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 10:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tov1mbhcp+QsiI0VacWBIXeC4BBdyQE6hAedYBCDd8E=; b=CQiJzTpA0ejLKpBybO+8ilHgf
	TZDEbcAyao0vXd3Xeh9C326gw7qhE6ceqpUJ0Npy/Am3SwO8/z7TUC/W4Pq68nPuNL6rNQbtez4c0
	Z2H3h95lcwTGBEZnqCtzuj6YD+6kUd1Cp4DkhF/b9fgyzZ/qopVH8P1dELbldH6SjknJ8K0EBFwW8
	jEcvsXZQP17ZMjKO+KmwsFNZHiBqYO4hwlPl0nZv+OVfdmdIkhqZu63qkhEKcmyo1g27n1ACI1pLq
	Ibn9u2v2uN/AzLwOB8XDEO61PqVd862YcXqmHKGDPjRiV+6L5C/lyv65+D9meLww9JCGzlSkqdtF1
	aSYx5x8XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id9U2-0007L7-Sg; Fri, 06 Dec 2019 09:01:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id9Tz-0007KM-7M
 for linux-riscv@lists.infradead.org; Fri, 06 Dec 2019 09:01:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so6532565wmi.5
 for <linux-riscv@lists.infradead.org>; Fri, 06 Dec 2019 01:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tov1mbhcp+QsiI0VacWBIXeC4BBdyQE6hAedYBCDd8E=;
 b=nPFMVBmJuifGcCiqRG78vP2N+sKADvqey/XG1wU7WJ40c+bzMQIOjUCKoCqZlBgYuF
 e8VlHjY/J5jNnGT/fmHdL+NoyyFvZGO4RuqSE9LpryWkwWB7UlbttIuyaxmJDcpR8szB
 yMQerm0kHNycNZfSZJIRODo/8Soj0OJlpJFZMn/bztbEsQ/Qdx65L3Bo7evvO+vmnEbD
 fUMTlDj+IpqMzCwagyFw0FRLfwZZRzsTqjZlpV3RHnqdRiq03afFkwYJpMaGna5T1Lr8
 2jU4tbwqMQccgxz62OZ7zAPKlVs6CCoW4cyAUdJm+3ip0E1UJtKNjomwuupcCMycXM+L
 s+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tov1mbhcp+QsiI0VacWBIXeC4BBdyQE6hAedYBCDd8E=;
 b=oOD45PTqBmT7YAqKVQuoOBpxESak2bFKdj6YxXf38eKspR0AA+OyBToVojA5D72Xrw
 kjWKGnG5OiypoZI+DoJ5PHhk0ZWgvxiXhEej/p7bEVpLIt6EvH4Gkmm5NLCD0sTpLMKR
 gBfpzKPhil896j5Xyq8LRM1eta0AMmuF5gIYmnHedC4d3JbE+1tpj+YL1e5q6EHfYDlm
 FMXgj3y0wiMG81y52/WJRTL0y3L/AyEBJyEtLI6n+TMCfA+zWT9hTaJ113rD8KKBjoC0
 fUskmiPXg/9lw7aINelFP/m6uscPqT93I/kxjjqUNweORptc5RkZXvOAKw3csqmV1uls
 OlOA==
X-Gm-Message-State: APjAAAXuqSPczL/y6bVHH+DN7aQFwY9sbYe9vG5G3OgP8jIQunkElnzB
 pDAY3oAQIxUsmNxKjwkrZdSvzA==
X-Google-Smtp-Source: APXvYqzozTEc+CeSycLg3r5mCMusfpi9OWnzCWwliv4+2VT/UxNOmnlO3uxk52x4yMZCS99LVEBYOA==
X-Received: by 2002:a7b:c5d2:: with SMTP id n18mr9201425wmk.37.1575622861300; 
 Fri, 06 Dec 2019 01:01:01 -0800 (PST)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id e18sm17642216wrw.70.2019.12.06.01.01.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 01:01:00 -0800 (PST)
Date: Fri, 6 Dec 2019 09:00:59 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v2] RISC-V: Add fragmented config for debug options
Message-ID: <20191206090059.vpwku3gsqjtcubf5@holly.lan>
References: <20191205174902.4935-1-anup.patel@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191205174902.4935-1-anup.patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_010103_300292_85B64A86 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 05:49:18PM +0000, Anup Patel wrote:
> Various Linux kernel DEBUG options have big performance impact so
> these should not be enabled in RISC-V normal defconfigs.
> 
> Instead we should have separate RISC-V fragmented config for enabling
> these DEBUG options. This way Linux RISC-V kernel can be built for
> both non-debug and debug purposes using same defconfig.
> 
> This patch moves additional DEBUG options to extra_debug.config.
> 
> To configure a non-debug RV64 kernel, we use our normal defconfig:
>    $ make O=<linux_build_directory> defconfig
> Wherease to configure a debug RV64 kernel, we use extra_debug.config:
>    $ make O=<linux_build_directory> defconfig extra_debug.config
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
> Changes since v1:
>  - Use fragmented .config instead of separate debug defconfigs.
> ---
>  arch/riscv/configs/defconfig          | 23 -----------------------
>  arch/riscv/configs/extra_debug.config | 21 +++++++++++++++++++++

Might be better to call this rv_debug.config (or riscv_debug.config),
This would imply it is a set of options recommended by riscv
maintainers and also having a suitable prefix means it is less
likely to ever conflict with .config files in kernel/configs .

BTW don't respin the patch on my account. Using a .config file was just
an idea and I'm not sure it reached consensus on the v1 thread.


Daniel.


>  arch/riscv/configs/rv32_defconfig     | 23 -----------------------
>  3 files changed, 21 insertions(+), 46 deletions(-)
>  create mode 100644 arch/riscv/configs/extra_debug.config
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index e2ff95cb3390..f0710d8f50cc 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -101,27 +101,4 @@ CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
>  CONFIG_DEBUG_FS=y
> -CONFIG_DEBUG_PAGEALLOC=y
> -CONFIG_DEBUG_VM=y
> -CONFIG_DEBUG_VM_PGFLAGS=y
> -CONFIG_DEBUG_MEMORY_INIT=y
> -CONFIG_DEBUG_PER_CPU_MAPS=y
> -CONFIG_SOFTLOCKUP_DETECTOR=y
> -CONFIG_WQ_WATCHDOG=y
> -CONFIG_SCHED_STACK_END_CHECK=y
> -CONFIG_DEBUG_TIMEKEEPING=y
> -CONFIG_DEBUG_RT_MUTEXES=y
> -CONFIG_DEBUG_SPINLOCK=y
> -CONFIG_DEBUG_MUTEXES=y
> -CONFIG_DEBUG_RWSEMS=y
> -CONFIG_DEBUG_ATOMIC_SLEEP=y
> -CONFIG_STACKTRACE=y
> -CONFIG_DEBUG_LIST=y
> -CONFIG_DEBUG_PLIST=y
> -CONFIG_DEBUG_SG=y
>  # CONFIG_RCU_TRACE is not set
> -CONFIG_RCU_EQS_DEBUG=y
> -CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> -# CONFIG_FTRACE is not set
> -# CONFIG_RUNTIME_TESTING_MENU is not set
> -CONFIG_MEMTEST=y
> diff --git a/arch/riscv/configs/extra_debug.config b/arch/riscv/configs/extra_debug.config
> new file mode 100644
> index 000000000000..66c58bb645a4
> --- /dev/null
> +++ b/arch/riscv/configs/extra_debug.config
> @@ -0,0 +1,21 @@
> +CONFIG_DEBUG_PAGEALLOC=y
> +CONFIG_DEBUG_VM=y
> +CONFIG_DEBUG_VM_PGFLAGS=y
> +CONFIG_DEBUG_MEMORY_INIT=y
> +CONFIG_DEBUG_PER_CPU_MAPS=y
> +CONFIG_SOFTLOCKUP_DETECTOR=y
> +CONFIG_WQ_WATCHDOG=y
> +CONFIG_SCHED_STACK_END_CHECK=y
> +CONFIG_DEBUG_TIMEKEEPING=y
> +CONFIG_DEBUG_RT_MUTEXES=y
> +CONFIG_DEBUG_SPINLOCK=y
> +CONFIG_DEBUG_MUTEXES=y
> +CONFIG_DEBUG_RWSEMS=y
> +CONFIG_DEBUG_ATOMIC_SLEEP=y
> +CONFIG_STACKTRACE=y
> +CONFIG_DEBUG_LIST=y
> +CONFIG_DEBUG_PLIST=y
> +CONFIG_DEBUG_SG=y
> +CONFIG_RCU_EQS_DEBUG=y
> +CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> +CONFIG_MEMTEST=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index eb519407c841..bdec58e6c5f7 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -98,27 +98,4 @@ CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
>  CONFIG_DEBUG_FS=y
> -CONFIG_DEBUG_PAGEALLOC=y
> -CONFIG_DEBUG_VM=y
> -CONFIG_DEBUG_VM_PGFLAGS=y
> -CONFIG_DEBUG_MEMORY_INIT=y
> -CONFIG_DEBUG_PER_CPU_MAPS=y
> -CONFIG_SOFTLOCKUP_DETECTOR=y
> -CONFIG_WQ_WATCHDOG=y
> -CONFIG_SCHED_STACK_END_CHECK=y
> -CONFIG_DEBUG_TIMEKEEPING=y
> -CONFIG_DEBUG_RT_MUTEXES=y
> -CONFIG_DEBUG_SPINLOCK=y
> -CONFIG_DEBUG_MUTEXES=y
> -CONFIG_DEBUG_RWSEMS=y
> -CONFIG_DEBUG_ATOMIC_SLEEP=y
> -CONFIG_STACKTRACE=y
> -CONFIG_DEBUG_LIST=y
> -CONFIG_DEBUG_PLIST=y
> -CONFIG_DEBUG_SG=y
>  # CONFIG_RCU_TRACE is not set
> -CONFIG_RCU_EQS_DEBUG=y
> -CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> -# CONFIG_FTRACE is not set
> -# CONFIG_RUNTIME_TESTING_MENU is not set
> -CONFIG_MEMTEST=y
> -- 
> 2.17.1
> 

