Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1111CB56D
	for <lists+linux-riscv@lfdr.de>; Fri,  8 May 2020 19:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0bbo9yqx2/IuXmKBdRPrbP5cAWNcfhqAl9BM/fU1oqQ=; b=i2X3IuKmnH+/0/
	nMKNuu40VyioKrfceSLDe7uNk/oysrzT82F1xdwhQDSMNJwWfv5UI8veDrKeL4VvPxfAtQoZJQKZT
	vGpekkPjKUGy4HAqyVf7KXme3MwSAxkiPV8hZ42btYPuIDpN+c9wVkam6B6VbrSCxMFTyJlG5qH2r
	eKsHqY4iOh1TOou0odgP9cuBCcS0hQ7uqNangv0hjWZi973K/9rshF9mPVybRKFbv8B1OvWxVLJiq
	ag4e4/QghKGFxnAengjI9TKUwK23CzMib6datis1XIg47faPQr/aeZTui/zMKvdOBJCZXYb4VbhT7
	xn8fjt4XuGbmLcvVj+cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6Yq-0005Ye-7J; Fri, 08 May 2020 17:13:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Ym-0005YF-6I
 for linux-riscv@lists.infradead.org; Fri, 08 May 2020 17:13:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id f6so1163641pgm.1
 for <linux-riscv@lists.infradead.org>; Fri, 08 May 2020 10:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=0bbo9yqx2/IuXmKBdRPrbP5cAWNcfhqAl9BM/fU1oqQ=;
 b=PjTFL8s6+I1J9/NZKcqTpcYV5XM/11g94CEXvhvhFY8SvWcpkz+1MhpvPOXChg3oNs
 6GHO9ZHiT+NPS1cJrPXNp1QXnQ/YOjrRximPC5LOYx7z+7dJZgCC9eGdwGLZ1AdP512B
 X9bTTdQUKxs0ZqbWfh6EsA4frwTQ6muuqQQc170KHdTy5/b2iY3SZN8AJGH1y5CwsLPe
 FXIYTBwCNWRAZf68VObcEJIBQOj4J8veOqnic/GWjiaPmTIEu4/vlsR0+PIwoKrsRh3f
 l74V+fI6aD+CENVcbth6cHy6Vs9iT+Dzt8WvxvRMBVfneWXYxI9WBw+xMD+SImy2V0nd
 Zeng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=0bbo9yqx2/IuXmKBdRPrbP5cAWNcfhqAl9BM/fU1oqQ=;
 b=I7/Z5gSq1cRFQHnDg8eAR7sHP4XGCbls6XeVH7Nm5+abEwZEcj4MF0K/n/zMafx7Gk
 lvS2YleUevAfjEW0QOL7z6MZ2DqxWe7RWhKfyCJv8fnRTcLtpK2S25fGbN6gd5rUAGPP
 Ydy1YUOXarNGty+CY9lV/srvvyokPDl+fOWQ9Tym6o3O+6aGHY2qZT9dlk+t4a8so3ns
 VSwuGpkcmmvx7OLtAcHPxqYUsdWzpd31Bk5LB1RMpiVCGEXjpQ3zlXaddzoRjBzc4ys0
 IN6lt6Fj+EORrqlSMfRdAM1YqAUCMAhVRNCoMBQIwlD7t5Uu0yGB1mu1QjvY8kBgrwYC
 REDA==
X-Gm-Message-State: AGi0PuZJGx2E1tYQg/wE2q+NeAeBzrxsWVYIbuP5otaqPv99LwbXTfpy
 eCJFGke77mHBDtHtdu2ZYOr/SBELdKo=
X-Google-Smtp-Source: APiQypLYQ1/Ktlte3epOcpwn4RycsMdaiTx18JHtnN1cRjb5gOaX3mgnrzKNXuxG2/El9D2NYSoZ7w==
X-Received: by 2002:a62:35c1:: with SMTP id c184mr3665454pfa.120.1588957994887; 
 Fri, 08 May 2020 10:13:14 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id d35sm1725500pgd.29.2020.05.08.10.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 10:13:14 -0700 (PDT)
Date: Fri, 08 May 2020 10:13:14 -0700 (PDT)
X-Google-Original-Date: Thu, 07 May 2020 10:36:03 PDT (-0700)
Subject: Re: [PATCH -next] riscv: perf_event: Make some funciton static
In-Reply-To: <20200507150445.174390-1-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-158b6408-4023-446d-89b4-b4416ba80718@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_101316_293604_D8EFCF6B 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

What's the "-next" for?  This seems appropriate for an RC to me, as it's a
build fix.

On Thu, 07 May 2020 08:04:44 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> Fixes the following warning detected when running make with W=1,
> ../arch/riscv/kernel/perf_event.c:150:5: warning: no previous prototype for ‘riscv_map_cache_decode’ [-Wmissing-prototypes]
>  int riscv_map_cache_decode(u64 config, unsigned int *type,
>      ^~~~~~~~~~~~~~~~~~~~~~
> ../arch/riscv/kernel/perf_event.c:345:13: warning: no previous prototype for ‘riscv_base_pmu_handle_irq’ [-Wmissing-prototypes]
>  irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>              ^~~~~~~~~~~~~~~~~~~~~~~~~
> ../arch/riscv/kernel/perf_event.c:364:6: warning: no previous prototype for ‘release_pmc_hardware’ [-Wmissing-prototypes]
>  void release_pmc_hardware(void)
>       ^~~~~~~~~~~~~~~~~~~~
> ../arch/riscv/kernel/perf_event.c:467:12: warning: no previous prototype for ‘init_hw_perf_events’ [-Wmissing-prototypes]
>  int __init init_hw_perf_events(void)
>             ^~~~~~~~~~~~~~~~~~~
>
> Cc: Alan Kao <alankao@andestech.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/kernel/perf_event.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/kernel/perf_event.c b/arch/riscv/kernel/perf_event.c
> index 91626d9ae5f2..c835f0362d94 100644
> --- a/arch/riscv/kernel/perf_event.c
> +++ b/arch/riscv/kernel/perf_event.c
> @@ -147,7 +147,7 @@ static int riscv_map_hw_event(u64 config)
>  	return riscv_pmu->hw_events[config];
>  }
>
> -int riscv_map_cache_decode(u64 config, unsigned int *type,
> +static int riscv_map_cache_decode(u64 config, unsigned int *type,
>  			   unsigned int *op, unsigned int *result)
>  {
>  	return -ENOENT;
> @@ -342,7 +342,7 @@ static void riscv_pmu_del(struct perf_event *event, int flags)
>
>  static DEFINE_MUTEX(pmc_reserve_mutex);
>
> -irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
> +static irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>  {
>  	return IRQ_NONE;
>  }
> @@ -361,7 +361,7 @@ static int reserve_pmc_hardware(void)
>  	return err;
>  }
>
> -void release_pmc_hardware(void)
> +static void release_pmc_hardware(void)
>  {
>  	mutex_lock(&pmc_reserve_mutex);
>  	if (riscv_pmu->irq >= 0)
> @@ -464,7 +464,7 @@ static const struct of_device_id riscv_pmu_of_ids[] = {
>  	{ /* sentinel value */ }
>  };
>
> -int __init init_hw_perf_events(void)
> +static int __init init_hw_perf_events(void)
>  {
>  	struct device_node *node = of_find_node_by_type(NULL, "pmu");
>  	const struct of_device_id *of_id;

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

