Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB23912A316
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Dec 2019 17:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWsnGUwLQy1fCYTio28U1e+bq8tf4RG5vs287No2BFM=; b=IaPGZqLxjskBamo1MuWN7ih0P5
	O3wz0p8xTdHefWDsMwWSrcUiX0+xK1Xpdn1UMYrf8qb9vDCFIum8fo5wf/SW2hVKPDig8Kan7U3ig
	xTwi3TD4D8ay0N3RYcX96Q0I596AoHZYbkXQwXMjJSg6oFlGg+GjjThvTYugIGAS9/+OG9b6MwciI
	NMG2qcS9AmSGaxuQ2YHwfRLmsAWF48A1DmK1joJ/EF05iDWipy11tvZ7zi3Y9SpXDpzaBAiuTRp71
	TXR5uIqX9izaFF9BVX3FRB/QbW+Rs7ATQikL2v/O7RAANQoXzQjBDEGkWEtA1r54PGmtvyvTUlufn
	XZx34HCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijmdx-0007JA-Vc; Tue, 24 Dec 2019 16:02:45 +0000
Received: from [2601:1c0:6280:3f0::fee9]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijmdv-0007Iu-Ly; Tue, 24 Dec 2019 16:02:43 +0000
Subject: Re: [RFC PATCH] riscv: Add numa support for riscv64 platform
To: Greentime Hu <greentime.hu@sifive.com>, green.hu@gmail.com,
 greentime@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191224085544.24960-1-greentime.hu@sifive.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <5762c1c1-4078-0647-27fe-6d28f6bc8e9a@infradead.org>
Date: Tue, 24 Dec 2019 08:02:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191224085544.24960-1-greentime.hu@sifive.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 12/24/19 12:55 AM, Greentime Hu wrote:
> +# Common NUMA Features
> +config NUMA
> +	bool "Numa Memory Allocation and Scheduler Support"
> +	select OF_NUMA
> +	select ARCH_SUPPORTS_NUMA_BALANCING
> +	depends on SPARSEMEM
> +	help
> +	  Enable NUMA (Non Uniform Memory Access) support.

	              (Non-Uniform Memory Access)
please.

> +
> +	  The kernel will try to allocate memory used by a CPU on the
> +	  local memory of the CPU and add some more
> +	  NUMA awareness to the kernel.
> +


-- 
~Randy


