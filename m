Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81201CCF2E
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 03:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/W/X7Na1sHX0oRhbIpCkcwbRNWrj9FMMHIu10HP2WQ=; b=SZKx7ZBHAS/ocg
	AdY81Is+eBVM1GFBVzOpIQKOIctXKjjTImQLffesuf4gTE3Dho1Ue3NMAOYbVB2fVwK7rM9G1PTFV
	T/Swmfdbu70hu6kXHN2C3haKxl5FK3J28HgVIVLbVBlXbcKwxmFXfRcuV9YHNlbB4z+XSTCpoOLnY
	g94+gagrGiM2+HlfZNi1wfPXAybG33URk4C9pYNFTjUqHznQFriSpF/V3Hll4cbDk2HCK/iWsCQCq
	xiRVmXq4nOB0t8MArkNsOk7Us6t9hQpAb3IOPiEg0dOATQCOOBxItqo2v6CJd+sBn2Kwezcz/gnjq
	niXGg21Ty6ltO0t9Yhhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxI0-0005Xt-4u; Mon, 11 May 2020 01:31:28 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxHv-0005UI-T1
 for linux-riscv@lists.infradead.org; Mon, 11 May 2020 01:31:25 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8E1C236E49384F496D23;
 Mon, 11 May 2020 09:31:03 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.93) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Mon, 11 May 2020
 09:30:37 +0800
Subject: Re: [PATCH -next] riscv: perf_event: Make some funciton static
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-158b6408-4023-446d-89b4-b4416ba80718@palmerdabbelt-glaptop1>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <b5635dbb-5bd6-ca01-ca3b-4932941fd19a@huawei.com>
Date: Mon, 11 May 2020 09:30:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <mhng-158b6408-4023-446d-89b4-b4416ba80718@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Originating-IP: [10.166.215.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_183124_107936_F40AC2EA 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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


On 2020/5/9 1:13, Palmer Dabbelt wrote:
> What's the "-next" for?  This seems appropriate for an RC to me, as 
> it's a
> build fix.

Thanks for your review, this patch and "[PATCH -next] riscv: perf: 
RISCV_BASE_PMU

should be closeable", I fix the issue based on linux-next, so add the 
next prefix ; )

and we also found some another build issue when add RISCV arch to huawei 
build robot,

will send out the patches later.


>
> On Thu, 07 May 2020 08:04:44 PDT (-0700), wangkefeng.wang@huawei.com 
> wrote:
>> Fixes the following warning detected when running make with W=1,
>> ../arch/riscv/kernel/perf_event.c:150:5: warning: no previous 
>> prototype for ‘riscv_map_cache_decode’ [-Wmissing-prototypes]
>>  int riscv_map_cache_decode(u64 config, unsigned int *type,
>>      ^~~~~~~~~~~~~~~~~~~~~~
>> ../arch/riscv/kernel/perf_event.c:345:13: warning: no previous 
>> prototype for ‘riscv_base_pmu_handle_irq’ [-Wmissing-prototypes]
>>  irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>>              ^~~~~~~~~~~~~~~~~~~~~~~~~
>> ../arch/riscv/kernel/perf_event.c:364:6: warning: no previous 
>> prototype for ‘release_pmc_hardware’ [-Wmissing-prototypes]
>>  void release_pmc_hardware(void)
>>       ^~~~~~~~~~~~~~~~~~~~
>> ../arch/riscv/kernel/perf_event.c:467:12: warning: no previous 
>> prototype for ‘init_hw_perf_events’ [-Wmissing-prototypes]
>>  int __init init_hw_perf_events(void)
>>             ^~~~~~~~~~~~~~~~~~~
>>
>> Cc: Alan Kao <alankao@andestech.com>
>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
>> ---
>>  arch/riscv/kernel/perf_event.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/riscv/kernel/perf_event.c 
>> b/arch/riscv/kernel/perf_event.c
>> index 91626d9ae5f2..c835f0362d94 100644
>> --- a/arch/riscv/kernel/perf_event.c
>> +++ b/arch/riscv/kernel/perf_event.c
>> @@ -147,7 +147,7 @@ static int riscv_map_hw_event(u64 config)
>>      return riscv_pmu->hw_events[config];
>>  }
>>
>> -int riscv_map_cache_decode(u64 config, unsigned int *type,
>> +static int riscv_map_cache_decode(u64 config, unsigned int *type,
>>                 unsigned int *op, unsigned int *result)
>>  {
>>      return -ENOENT;
>> @@ -342,7 +342,7 @@ static void riscv_pmu_del(struct perf_event 
>> *event, int flags)
>>
>>  static DEFINE_MUTEX(pmc_reserve_mutex);
>>
>> -irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>> +static irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
>>  {
>>      return IRQ_NONE;
>>  }
>> @@ -361,7 +361,7 @@ static int reserve_pmc_hardware(void)
>>      return err;
>>  }
>>
>> -void release_pmc_hardware(void)
>> +static void release_pmc_hardware(void)
>>  {
>>      mutex_lock(&pmc_reserve_mutex);
>>      if (riscv_pmu->irq >= 0)
>> @@ -464,7 +464,7 @@ static const struct of_device_id 
>> riscv_pmu_of_ids[] = {
>>      { /* sentinel value */ }
>>  };
>>
>> -int __init init_hw_perf_events(void)
>> +static int __init init_hw_perf_events(void)
>>  {
>>      struct device_node *node = of_find_node_by_type(NULL, "pmu");
>>      const struct of_device_id *of_id;
>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> .
>


