Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15141C48D3
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 23:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=O/LbpJnPhVHmNihaVc3Tkl9gnztDmWEWrxGREVa1cKw=; b=cKKowEw0iSb+NT
	QX6nRhFV3yd5T7Wpfsowb12xuqlF2koyXDe9iCfX7y5nal0b9bZBFfBgEbX6rartES4GL/rbKrgjO
	nY9W8qEnS6QCiacAOeROMDgndinwGiFZw8v5L5kgtKhwzxpR4vdwalj/ZftJdCVTElsqMYsCg9TM6
	cZAAQb93tAVbHp+i+KYt9rIcf8VLxuOvtt0Qqbtub9HEEoptY9YX2H/vlB2Cps/53O7qqsryxmnk1
	oFvkj/+baH9wbc3XSpejQFaLhlKmlAgciksajSwutH/PrddbY8980ElvyzYLrOfRvb2jC1mKH/5D+
	I7gA1+bN1i/3QsWsRNdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jViPb-00026y-Kz; Mon, 04 May 2020 21:14:03 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jViPX-00026I-OS
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 21:14:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id t16so292035plo.7
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 14:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=O/LbpJnPhVHmNihaVc3Tkl9gnztDmWEWrxGREVa1cKw=;
 b=qpkvPm7a4ESLZBP5G3g1wc2r5HbiLS1AYPBRTvjhNxfuT2rV81ivr/0Z4oADq46OM+
 ov0GjQPrHWiYkMCsAM/fLmJWmK8T1LnMhbNwDweZ/fSivQYbOfYxaCfgknf2rszTNs4R
 4d9OB+ygqA1xrKZIkkvlUHdaHIjEzBweG2bKAU9ERaCZmIXF5rNw+Asq0YULTUxtxEHq
 KPwMaCygvtWXOpEG3B24IV4IJE31Acd+QqY5/0qBg875vnzS6jwHgrGqT9sF1I661yJN
 dbhJLaONbulAxbGpcgo68iyJp+gsKEhGrM5GGDWrWjSIOou+Osm9w5T799o/Hz/xU0dq
 n2Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=O/LbpJnPhVHmNihaVc3Tkl9gnztDmWEWrxGREVa1cKw=;
 b=XwfDjHKEh6TjSPZyJKCQ+ey0MHhoMmU5wP/GR8Omu2TT6jjOhn/vxMSaRhS9Okm2FH
 Hl5GlJQjqjivbPvmWtfrw4jtGdVw6chmN250fE/jg17DqirQ37DJmWIY7Wgai70WzIGB
 +hyazpxdyIwk5FtAYPbjov6Tv63ktUHp3bP6DQPX4EOZZWZ1r0x+ARn2/soo3xSwgrzE
 6+PWpOoM/S7d+vx7taD1nGCrPXTVZnXf02xx/piUcQPOOPbkDburb+CdwQoDfigucvNr
 +nN5Ip3T4+apRP0xzcCJF5lZo6zqkhdvlUHyoRcFDYBhaRWyIZVXIZPVHGuMHqwXMNQa
 /6Rg==
X-Gm-Message-State: AGi0Puaiw2kNZaV1nKixIFyGTa+1SX8sUCDuzVj84pEDf5el2CUP+Agl
 6GXGR2q0lYJc9t9ZyXhSXHpa9A==
X-Google-Smtp-Source: APiQypLZ6S4t4a9i3wmdcCw8yGySraGf81OTeSD16fInrEjO1bn6FXYsh4NgOtvbSlomLa8Y+1h7vw==
X-Received: by 2002:a17:90a:780d:: with SMTP id
 w13mr120832pjk.20.1588626838433; 
 Mon, 04 May 2020 14:13:58 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id h12sm9694904pfq.176.2020.05.04.14.13.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 14:13:57 -0700 (PDT)
Date: Mon, 04 May 2020 14:13:57 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 14:13:20 PDT (-0700)
Subject: Re: [PATCH v3] riscv: set max_pfn to the PFN of the last page
In-Reply-To: <1587970764-4393-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-75f253d6-21f7-47be-a163-62c232ade694@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_141359_858967_53E811CC 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 stable@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 26 Apr 2020 23:59:24 PDT (-0700), vincent.chen@sifive.com wrote:
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
> Fixes: 0651c263c8e3 (RISC-V: Move setup_bootmem() to mm/init.c)
> Cc: stable@vger.kernel.org
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Yash Shah <yash.shah@sifive.com>
> Tested-by: Yash Shah <yash.shah@sifive.com>
>
> Changes since v1:
> 1. Add Fixes line and Cc stable kernel
> Changes since v2:
> 1. Fix typo in Anup email address
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

I'm dropping the Fixes tag, as the actual bug goes back farther than that
commit, that's just as far as it'll auto-apply.

