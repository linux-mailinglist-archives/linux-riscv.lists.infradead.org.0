Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230361B5741
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 10:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KvixY1w1e5aT2FP06xP0LGMRJCmO4czacOXqtfzviBA=; b=Ql3AwdypJ+PVQDmDs2haVple5
	/yZr4w3Ihw/V0gkiI7zEGI2JRvqL0V5zmmnAC2iT/wd/UYXqq9y6weJ4MkVD/vqlqSogjWVQ5ZcGy
	LLfg0+NZP47Wb3jIL6Oyw5VcQpQYVWy9YPt3sAOXiodZySB3UlbB2oby5hRSSCjQHOB5LwVcniDUD
	bT4+F//vJvGFslvewyM16kBfICB0XTXXTYs/HQ1gNtZG4weEYc6/I0dvBCIXrnRjZNBoiAW2alehg
	CWIS8hmPofcoviDgO6pj0UKPwt+PHIfyogLy/+8gV0BRgX1G+JC3WvEjEdkVYv7QtL0oIw2ZNZbK9
	gqL1GyaDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRXIG-0003dH-6c; Thu, 23 Apr 2020 08:33:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRXIC-0003ak-CA
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 08:33:09 +0000
Received: by mail-wr1-x441.google.com with SMTP id s10so5815114wrr.0
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 01:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KvixY1w1e5aT2FP06xP0LGMRJCmO4czacOXqtfzviBA=;
 b=AS/wbJR+lOlt7GwUf0Gq02W8esYTWKHMuhmxEE+cRiEyb7upYVoVXlfBHWfAfNZ4Ck
 nZZuUex8nxQD0wJ1K0z98rc7UDwlo4sMkyC+xawOC6hXmcJb46ZzheitTf3X3JYJe2gO
 kpJ4YC4V39TW9qgycPdrMWxifMvngCclbtVYtZT/WgpXzwUQDFJwjUXF6m/Abiv87lJY
 4JDKsotWGBaSvl2pwAmBdSZA3mTwrwn+uRkR9M0rmeKlM8QNlLdUf7ie62nm8gPqsuFA
 Z4Qd0VakSI1RWJmKKLvLnGQsp1gXw74kab8hnM03Zrd7ZFFnjiYkjsW5Wz/nr7DmmusX
 93jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KvixY1w1e5aT2FP06xP0LGMRJCmO4czacOXqtfzviBA=;
 b=fkIWwN/LRpyrDGLzVXMp2ljtg5Slec5c9wyCQXsiqRop97z+ufdik0hUWuLfOT81B6
 lkzXZz13SNujNTSFPdQKAnIX/NfiL7ZTFWR9MhuaftgPgTVNs6mYoC13S2LTyxiIKbAt
 lThRsRGtiwWyBZRYS24sBiTgMgW2a0AYt4EcV0dJhK7a9Fx7tGZGWYZORVdS4EfMX+kd
 XM8qq5TZ0bmF8ZzibSRmZcmhL72gHPNRT37gwg8jhRisg5ACfkmYRuvGFxGnWgiTFyPf
 sEBWKUWKcbMgRiszaPFm8mNYRskB4PI0jS1JJnYFVLLvW+g0HnhSLvxv+6m3pBAKHHmK
 RzwA==
X-Gm-Message-State: AGi0PuY1lJRxvd0YiuGJqJOJMIWDNoej4+r6nDpP+iyiZHJ/V4FDo3FG
 ep6CZrE6lb5YY7t/l3kaN3d2CFjQk864nvPRr2iM6g==
X-Google-Smtp-Source: APiQypKhHPXHk3ErwkCoVPpoUtId+rs9EXRmgRmRioxbLv3XAhHHSjA+WJWQL2piC4n11vyNQMdMT6wnfjwZMc7qDsQ=
X-Received: by 2002:adf:f651:: with SMTP id x17mr3571044wrp.230.1587630783566; 
 Thu, 23 Apr 2020 01:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 23 Apr 2020 14:02:51 +0530
Message-ID: <CAAhSdy28HOHvkCwF0kpBxMVM7b_zF4FoOo9PpH1+Cxc2eZUSjA@mail.gmail.com>
Subject: Re: [PATCH] riscv: set max_pfn to the PFN of the last page
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_013308_440213_E824EBA8 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 1:59 PM Vincent Chen <vincent.chen@sifive.com> wrote:
>
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
>         memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
>
>         set_max_mapnr(PFN_DOWN(mem_size));
> -       max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
> +       max_pfn = PFN_DOWN(memblock_end_of_DRAM());
> +       max_low_pfn = max_pfn;
>
>  #ifdef CONFIG_BLK_DEV_INITRD
>         setup_initrd();
> --
> 2.7.4
>
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.ort>

If possible add "Fixes:" line and also Cc stable kernel.

Regards,
Anup

