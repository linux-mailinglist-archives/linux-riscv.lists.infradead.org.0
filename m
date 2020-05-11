Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B783E1CE70D
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 23:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=62TnuSeM6CTM78jj+qZBkEPwT+WLk/r5wwHVDIphFcM=; b=STdZfeqQW1r7fL
	8u3svxmUQ8Btqsd7dHEdKGvEFhN13LTH8///vgtlHJ8Uxr70rIJJpUtr4MKwk82QnEApZqPLDu5u+
	a5NmPBR2m7+4TrnVgaB1zEbTw1uGED9RlnOYq9XpFvdLjVotnjvgnN8DO4DNh7tO2ffuygTXmJ4rx
	H/IMwcz18cWaaoC8ZzX4yNtkitFt9dD97k50ycZn3JSraejmw4LYTzgjknooFXG3UafEdPbIgKpAv
	y7eKzdZZFIfXjFrJsSXtXEw4pGewssbmA78rGpm+tEA5JuCbsLrf2/etshdVh+eZ9kRyHMqlgrmb8
	0exqjrw+XQdJoiIDe+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFdk-0002da-2Y; Mon, 11 May 2020 21:07:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFdg-0002d4-5s
 for linux-riscv@lists.infradead.org; Mon, 11 May 2020 21:07:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id u22so4429930plq.12
 for <linux-riscv@lists.infradead.org>; Mon, 11 May 2020 14:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=62TnuSeM6CTM78jj+qZBkEPwT+WLk/r5wwHVDIphFcM=;
 b=MgX3Ya4fLNyARY7Yx1xdi9X2dktvm/fspFbV0uiE50XxdfPZ+KyFMtkL46MrcTqmIT
 3lnVn/X/cWTcl5MPH1fIsMe2wX/Vg7wz/q49hj2/y6wKYWCeQxER8ggsKTMny+umwBc8
 x2Uxe3YePBvsA1gLkuH5vlJLLnwe332JLJch7TSt9NJzZW20d8rXvLv+GXlFHNIyVUjQ
 Hp+ZEqQVyVLHhY0IaZBxuRnbz1gpvtt8NVXPtilxjGz1wxxObEDkNly8wyvOq/4UyThd
 SsmuEx8r+R3n+BR9F57p+jgQeKEiDjQM/UjEgSQKeYyOlglEjwbdsRes2Mt7B6+ktVWt
 fhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=62TnuSeM6CTM78jj+qZBkEPwT+WLk/r5wwHVDIphFcM=;
 b=kQTVWgbfpeoFVglmlHNuywq+0C7Pay+TCQ5KTOkfEiPlGhyKYnY4VntOG0kHJ9Xjyn
 NWRLLc7m5hUNLvrjaLfR4uforcbNj7pjnAkLwrZZ2RC7OPekVfJaaCp8TuZ/8MJXwZVM
 l8/bERw26McSqqTW8Ue1f+60498M7LyzcTuqKdtMs3XlCpS6y+6MTTwvoho1IWummOGr
 Hyk81z/ohDD2wCHU1tGO9bSJTGndd9VI3FHG6fuqwTnZeAi+DGz+n1TgE8bIruyaRpWJ
 NbdWv0E/9nfc0hYHOPjV9MvuGmJ+FAlyMesjTiPfeR2f2hYz9vhy6mMTyr6ABDctlYa3
 i0ow==
X-Gm-Message-State: AGi0Puazp/tTORDKamZdLwxze9HTZ+j389D0TgtZhzn0yy6VkCaD9Dil
 A1TTkIo6rNBOVSehZIiQXZm6AA==
X-Google-Smtp-Source: APiQypIzhPmQGVU30ePlDnpJ2VRSQ2Yvamj+NUnEu6Vtr1qonDQOZ0HZAWnxx9BbV4hVOmQEfol9Gw==
X-Received: by 2002:a17:90a:fe9:: with SMTP id
 96mr25813358pjz.13.1589231223000; 
 Mon, 11 May 2020 14:07:03 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id k7sm121629pga.87.2020.05.11.14.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:07:02 -0700 (PDT)
Date: Mon, 11 May 2020 14:07:02 -0700 (PDT)
X-Google-Original-Date: Mon, 11 May 2020 13:49:17 PDT (-0700)
Subject: Re: [PATCH -next] riscv: perf_event: Make some funciton static
In-Reply-To: <b5635dbb-5bd6-ca01-ca3b-4932941fd19a@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-eeb74520-7724-4947-b2ec-1a13744b3e63@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140704_287084_7692D4DF 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 alankao@andestech.com, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 18:30:36 PDT (-0700), wangkefeng.wang@huawei.com wrote:
>
> On 2020/5/9 1:13, Palmer Dabbelt wrote:
>> What's the "-next" for?  This seems appropriate for an RC to me, as
>> it's a
>> build fix.
>
> Thanks for your review, this patch and "[PATCH -next] riscv: perf:
> RISCV_BASE_PMU
>
> should be closeable", I fix the issue based on linux-next, so add the
> next prefix ; )

OK, makes sense.  I've put it on fixes.

>
> and we also found some another build issue when add RISCV arch to huawei
> build robot,
>
> will send out the patches later.

Thanks!

>>
>> On Thu, 07 May 2020 08:04:44 PDT (-0700), wangkefeng.wang@huawei.com
>> wrote:
>>> Fixes the following warning detected when running make with W=1,
>>> ../arch/riscv/kernel/perf_event.c:150:5: warning: no previous
>>> prototype for ‘riscv_map_cache_decode’ [-Wmissing-prototypes]
>>>  int riscv_map_cache_decode(u64 config, unsigned int *type,
>>>      ^~~~~~~~~~~~~~~~~~~~~~
>>> ../arch/riscv/kernel/perf_event.c:345:13: warning: no previous
>>> prototype for ‘riscv_base_pmu_handle_irq’ [-Wmissing-prototypes]
>>>  irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>>>              ^~~~~~~~~~~~~~~~~~~~~~~~~
>>> ../arch/riscv/kernel/perf_event.c:364:6: warning: no previous
>>> prototype for ‘release_pmc_hardware’ [-Wmissing-prototypes]
>>>  void release_pmc_hardware(void)
>>>       ^~~~~~~~~~~~~~~~~~~~
>>> ../arch/riscv/kernel/perf_event.c:467:12: warning: no previous
>>> prototype for ‘init_hw_perf_events’ [-Wmissing-prototypes]
>>>  int __init init_hw_perf_events(void)
>>>             ^~~~~~~~~~~~~~~~~~~
>>>
>>> Cc: Alan Kao <alankao@andestech.com>
>>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
>>> ---
>>>  arch/riscv/kernel/perf_event.c | 8 ++++----
>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/arch/riscv/kernel/perf_event.c
>>> b/arch/riscv/kernel/perf_event.c
>>> index 91626d9ae5f2..c835f0362d94 100644
>>> --- a/arch/riscv/kernel/perf_event.c
>>> +++ b/arch/riscv/kernel/perf_event.c
>>> @@ -147,7 +147,7 @@ static int riscv_map_hw_event(u64 config)
>>>      return riscv_pmu->hw_events[config];
>>>  }
>>>
>>> -int riscv_map_cache_decode(u64 config, unsigned int *type,
>>> +static int riscv_map_cache_decode(u64 config, unsigned int *type,
>>>                 unsigned int *op, unsigned int *result)
>>>  {
>>>      return -ENOENT;
>>> @@ -342,7 +342,7 @@ static void riscv_pmu_del(struct perf_event
>>> *event, int flags)
>>>
>>>  static DEFINE_MUTEX(pmc_reserve_mutex);
>>>
>>> -irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>>> +static irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>>>  {
>>>      return IRQ_NONE;
>>>  }
>>> @@ -361,7 +361,7 @@ static int reserve_pmc_hardware(void)
>>>      return err;
>>>  }
>>>
>>> -void release_pmc_hardware(void)
>>> +static void release_pmc_hardware(void)
>>>  {
>>>      mutex_lock(&pmc_reserve_mutex);
>>>      if (riscv_pmu->irq >= 0)
>>> @@ -464,7 +464,7 @@ static const struct of_device_id
>>> riscv_pmu_of_ids[] = {
>>>      { /* sentinel value */ }
>>>  };
>>>
>>> -int __init init_hw_perf_events(void)
>>> +static int __init init_hw_perf_events(void)
>>>  {
>>>      struct device_node *node = of_find_node_by_type(NULL, "pmu");
>>>      const struct of_device_id *of_id;
>>
>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> .
>>

