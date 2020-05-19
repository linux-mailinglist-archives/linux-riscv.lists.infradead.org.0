Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD551D9675
	for <lists+linux-riscv@lfdr.de>; Tue, 19 May 2020 14:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZwDbbsAuwTTDP1KU08igc8/ftip3GVigjtT5GpyxrU=; b=l8NW1Gpwdt2N9L
	D+8wwwqmf58XJV4uqcV74zAQE56OAaVc03kpqmzqPu0WXEwTL1hWD3KUEFoHMZg7qwBn4AzZ0bMp8
	6nXpbDnWyEIgUhbr3pSFzp3+hihz6j2jbQmxYLsHeO+1FavfT+Z0hPXIPKmn1pPhzoGkZFvXZ39tJ
	/ErJdQnlfNq/pV9bEG4ypSWhiRycpcFnfe7bHiDqE3Fd8k/gNCNlhz8ONuRw+5+GoHTgdoVTxPYcJ
	dIEcvJXrKzu+tbIZo7KsZy+1dg53E86myYeyy2mt6vBduOlNF53zQNzkGWhPheDyyCA6HA3LWZsKj
	KXgkqOqizRCmNOWEu2GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1XV-00050P-Um; Tue, 19 May 2020 12:40:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1XP-0003gO-QT
 for linux-riscv@lists.infradead.org; Tue, 19 May 2020 12:40:05 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6B2DFB1E1AA97F3E3C6C;
 Tue, 19 May 2020 20:39:56 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.93) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Tue, 19 May 2020
 20:39:46 +0800
Subject: Re: [PATCH 09/10] timer-riscv: Fix undefined riscv_time_val
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, <tglx@linutronix.de>
References: <mhng-0c491e9e-41fd-4f76-a048-55c03d9359f0@palmerdabbelt-glaptop1>
 <66121f9a-48f3-d3a5-7c96-d71397e12aed@linaro.org>
 <0bc3eb36-7b9d-7c86-130c-68b566e85c10@huawei.com>
 <e1916079-c209-bfad-6b0c-ccfb2e136ca4@linaro.org>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <29dc112e-d8c2-2749-7f5d-7c0c19aa9092@huawei.com>
Date: Tue, 19 May 2020 20:39:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e1916079-c209-bfad-6b0c-ccfb2e136ca4@linaro.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Originating-IP: [10.166.215.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_054004_451244_2E2AE66F 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hulkci@huawei.com, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 2020/5/19 4:23, Daniel Lezcano wrote:
> Hi Kefeng,
>
> On 18/05/2020 17:40, Kefeng Wang wrote:
>> On 2020/5/18 22:09, Daniel Lezcano wrote:
>>> On 13/05/2020 23:14, Palmer Dabbelt wrote:
>>>> On Sun, 10 May 2020 19:20:00 PDT (-0700), wangkefeng.wang@huawei.com
>>>> wrote:
>>>>> ERROR: modpost: "riscv_time_val" [crypto/tcrypt.ko] undefined!
>>>>>
>>>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>>>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
>>>>> ---
>>>>>    drivers/clocksource/timer-riscv.c | 1 +
>>>>>    1 file changed, 1 insertion(+)
>>>>>
>>>>> diff --git a/drivers/clocksource/timer-riscv.c
>>>>> b/drivers/clocksource/timer-riscv.c
>>>>> index c4f15c4068c0..071b8c144027 100644
>>>>> --- a/drivers/clocksource/timer-riscv.c
>>>>> +++ b/drivers/clocksource/timer-riscv.c
>>>>> @@ -19,6 +19,7 @@
>>>>>
>>>>>    u64 __iomem *riscv_time_cmp;
>>>>>    u64 __iomem *riscv_time_val;
>>>>> +EXPORT_SYMBOL(riscv_time_val);
>>>>>
>>>>>    static inline void mmio_set_timer(u64 val)
>>>>>    {
>>>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>>> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>>>
>>>> Adding the clocksource maintainers.  Let me know if you want this
>>>> through my
>>>> tree, I'm assuming you want it through your tree.
>>> How can we end up by an export symbol here ?!
>> Hi Danile,
> s/Danile/Daniel/
Sorry for typing error.
>
>> Found this build error when CONFIG_RISCV_M_MODE=y and CONFIG_RISCV_SBI
>> is not,
>>
>> see patch "4f9bbcefa142 riscv: add support for MMIO access to the timer
>> registers"
> Thanks for the pointer.
>
> The question still remains, how do we end up with this EXPORT_SYMBOL?
>
> There is something wrong if the fix is an EXPORT_SYMBOL for a global
> variable.

Not very clear, there are some global variable( eg, acpi_disabled, 
memstart_addr in arm64,) is exported by EXPORT_SYMBOL,  do you mean that 
export riscv_time_val is wrong way?



>
>
>


