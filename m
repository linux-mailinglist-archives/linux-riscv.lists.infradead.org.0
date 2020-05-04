Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180B21C4791
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 22:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=InZygceS6qY1ALrvd0dm1VKcqDlQYD8fjOYr7+5SnCQ=; b=NHfij0pZ+iALd9
	t8p1ODAruugLH8/10kLqALLt/mnOdfupXxKUS+0gUCsoBTmC/j1eGipLI4tML5vsyKSJ0y9IIRUeH
	T5gNTP98UaKhYrN8HdWVEKHEZRvLl1Ed7L5W/pRLHVgv97IeYLeMtSAtdfU4B7+/vKEjUc2xf9wvW
	gZNOwjAB4/jF7VI0POe7mT33n1ngRZqiXu0TvcCTE4bTtJ7T9COAzyZzRG8QCMMkfHkeVnG1qLrOG
	fl9yR5tgjwM3N8TowNkMmT1uC4LZqiCP01NFEmXA5Zh42kNyOV0oqRsYe+VzhmDyKtKjcj/tKYNMk
	460qabCGUFHRyNedFBWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhHU-0003YP-Tw; Mon, 04 May 2020 20:01:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhHN-0003Qj-Gp
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 20:01:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id w3so221159plz.5
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 13:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=InZygceS6qY1ALrvd0dm1VKcqDlQYD8fjOYr7+5SnCQ=;
 b=ospyp/NTckK4n+eXhmc/YRyJvoOreEMMANdUMoWmV2chxeVWXsCZFq9SqaNvWz0BUY
 1GcUts7VtqtlJvbbo3JF2zUedmjrXOhJmKQyab7abHpGdlgvLshAzbMq2apyMQEE/y5H
 hsWgJtO7Nuz3DhircWajfkKlV+fx6YMrbsb6MIXXNBD20JpPGw47q9miDGVrku4QWrpL
 MtfUVwv5WRtLJjxPvXc0rCsnOdxWWz01DP722XfOY66/OlmVFbakHwqtW8TixVWmvW7i
 1IvDZQbPpfihj/eewm1O6ECWEEhgtqYgLaon6eunzdlDmTWod4OY5r5cGKnmXmDaXJTo
 KOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=InZygceS6qY1ALrvd0dm1VKcqDlQYD8fjOYr7+5SnCQ=;
 b=f3fvptKLba+LMDC5MnB2eEcJXNLxzZfMxSHydsPCUj5Grago3AJfSjFy36sRNer54h
 SKPcGhyQ3ZFfz1J9ZbnLz67U2PqFUmuhptZXOaRYtwaQyUpbTwrqwSd95WzIBV9NsPZL
 ngEYb+GV7ExjR01Rfk/iCJGbQo1ikK+FRVlsfzepq7o8wPAgzmaStisNGBwX6nP2F8N+
 jNeKF/nmGvp2nN+9tMYfUZoNRUklA0EQk0dO3AhtwEvu8YWFFr75eP+ij96YvX4DMIH3
 boqDZsGPH35tFQHNK+fiy+RL4FatJ2chZOLRW4bzbfmB4UoXu5wUsWrxRyCuvMGHBPNo
 j8aA==
X-Gm-Message-State: AGi0PuZ/iwQZxGbcOGsKt/V8tQhPZwTkdnoUOYgqF/nBYfmrFQRW3kk1
 IJa1djbbxG91o6WRActvsi0yzw==
X-Google-Smtp-Source: APiQypIW/4eOR2ABHQnOXdSWBIKz8L3Kj00g3AQ3Ti1C3jyx33G/G0OuE9SjxV+bVk6sIL48dLj48A==
X-Received: by 2002:a17:90a:df8b:: with SMTP id
 p11mr709703pjv.137.1588622486917; 
 Mon, 04 May 2020 13:01:26 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id d8sm9610548pfd.159.2020.05.04.13.01.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 13:01:26 -0700 (PDT)
Date: Mon, 04 May 2020 13:01:26 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 12:47:13 PDT (-0700)
Subject: Re: [PATCH] riscv: set max_pfn to the PFN of the last page
In-Reply-To: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-f6e1f945-b5dd-4cbc-8325-e89b9a17b319@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_130129_665095_A5534941 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 23 Apr 2020 01:29:25 PDT (-0700), vincent.chen@sifive.com wrote:
> The current max_pfn equals to zero. In this case, I found it caused users
> cannot get some page information through /proc such as kpagecount in v5.6
> kernel because of new sanity checks. The following message is displayed by
> stress-ng test suite with the command "stress-ng --verbose --physpage 1 -t
> 1" on HiFive unleashed board.
>
>  # stress-ng --verbose --physpage 1 -t 1
>  stress-ng: debug: [109] 4 processors online, 4 processors configured
>  stress-ng: info: [109] dispatching hogs: 1 physpage
>  stress-ng: debug: [109] cache allocate: reducing cache level from L3 (too high) to L0
>  stress-ng: debug: [109] get_cpu_cache: invalid cache_level: 0
>  stress-ng: info: [109] cache allocate: using built-in defaults as no suitable cache found
>  stress-ng: debug: [109] cache allocate: default cache size: 2048K
>  stress-ng: debug: [109] starting stressors
>  stress-ng: debug: [109] 1 stressor spawned
>  stress-ng: debug: [110] stress-ng-physpage: started [110] (instance 0)
>  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd34de000 in /proc/kpagecount, errno=0 (Success)
>  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
>  ...
>  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
>  stress-ng: debug: [110] stress-ng-physpage: exited [110] (instance 0)
>  stress-ng: debug: [109] process [110] terminated
>  stress-ng: info: [109] successful run completed in 1.00s
>  #
>
> After applying this patch, the kernel can pass the test.
>
>  # stress-ng --verbose --physpage 1 -t 1
>  stress-ng: debug: [104] 4 processors online, 4 processors configured stress-ng: info: [104] dispatching hogs: 1 physpage
>  stress-ng: info: [104] cache allocate: using defaults, can't determine cache details from sysfs
>  stress-ng: debug: [104] cache allocate: default cache size: 2048K
>  stress-ng: debug: [104] starting stressors
>  stress-ng: debug: [104] 1 stressor spawned
>  stress-ng: debug: [105] stress-ng-physpage: started [105] (instance 0) stress-ng: debug: [105] stress-ng-physpage: exited [105] (instance 0) stress-ng: debug: [104] process [105] terminated
>  stress-ng: info: [104] successful run completed in 1.01s
>  #
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  arch/riscv/mm/init.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index fab855963c73..157924baa191 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -149,7 +149,8 @@ void __init setup_bootmem(void)
>  	memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
>
>  	set_max_mapnr(PFN_DOWN(mem_size));
> -	max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
> +	max_pfn = PFN_DOWN(memblock_end_of_DRAM());
> +	max_low_pfn = max_pfn;
>
>  #ifdef CONFIG_BLK_DEV_INITRD
>  	setup_initrd();

Thanks.  This is on fixes, with a stable tag.  I couldn't find a good Fixes tag
because it appears this has been broken for a long time.

