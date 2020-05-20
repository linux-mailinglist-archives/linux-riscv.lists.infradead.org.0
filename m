Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65461DA854
	for <lists+linux-riscv@lfdr.de>; Wed, 20 May 2020 04:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z92VXHJ5r2XFX5/pHVosr6DajlmJMenkp91AsWW5AkI=; b=G8wm1zWgzksjNY
	yOu+Y7zYG5jPegecwevs/xQQfS4zJY33utEdMvgZt/p6Am16yqJmP/sU0bqvA684EWVcYlYnQkHRJ
	XpjEeTOOedglIphbynW7F67hNIJ+4jsIlzgRzSm/Td2YDNIzDjBzstTYHu6bNk1NFM7mi6TkFvShI
	Q6TJ6MnDauUuoeKGOpQ/nFdhF2reXkPem2i+Na0bgGib7AdG60xtL3X2hBKA9/Zt8C8xZTif+I9eq
	V147LmIcA7T6zsuTifhP3OTm6Lt8eGanj6fgM+BcXtHPNdKpx3p3ZMMYipHwZA/OdyNbyLvAqvpUI
	zAWGU5YK1/A+IvSAy7rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEvo-0005zN-HZ; Wed, 20 May 2020 02:58:08 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEvZ-0005ib-3X
 for linux-riscv@lists.infradead.org; Wed, 20 May 2020 02:57:55 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7C93712289F3B3FBD862;
 Wed, 20 May 2020 10:57:46 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.93) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Wed, 20 May 2020
 10:57:39 +0800
Subject: Re: [PATCH 09/10] timer-riscv: Fix undefined riscv_time_val
To: Anup Patel <anup@brainfault.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>
References: <mhng-0c491e9e-41fd-4f76-a048-55c03d9359f0@palmerdabbelt-glaptop1>
 <66121f9a-48f3-d3a5-7c96-d71397e12aed@linaro.org>
 <0bc3eb36-7b9d-7c86-130c-68b566e85c10@huawei.com>
 <e1916079-c209-bfad-6b0c-ccfb2e136ca4@linaro.org>
 <29dc112e-d8c2-2749-7f5d-7c0c19aa9092@huawei.com>
 <8c5ecbd3-c23a-ccd4-b5d8-2e7d2bd10699@linaro.org>
 <CAAhSdy2wsnkYMLpT1_2OAjr334t6dAy9LCPNefC=h+aPuRqFrg@mail.gmail.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <7bfb95d7-93ff-e649-06c0-dc96bedcdb1d@huawei.com>
Date: Wed, 20 May 2020 10:57:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy2wsnkYMLpT1_2OAjr334t6dAy9LCPNefC=h+aPuRqFrg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Originating-IP: [10.166.215.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195753_330065_003F84B7 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "linux-kernel@vger.kernel.org
 List" <linux-kernel@vger.kernel.org>, hulkci@huawei.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 2020/5/20 9:14, Anup Patel wrote:
> On Tue, May 19, 2020 at 7:21 PM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
>> On 19/05/2020 14:39, Kefeng Wang wrote:
>>> On 2020/5/19 4:23, Daniel Lezcano wrote:
>>>> Hi Kefeng,
>>>>
>>>> On 18/05/2020 17:40, Kefeng Wang wrote:
>>>>> On 2020/5/18 22:09, Daniel Lezcano wrote:
>>>>>> On 13/05/2020 23:14, Palmer Dabbelt wrote:
>>>>>>> On Sun, 10 May 2020 19:20:00 PDT (-0700), wangkefeng.wang@huawei.com
>>>>>>> wrote:
>>>>>>>> ERROR: modpost: "riscv_time_val" [crypto/tcrypt.ko] undefined!
>>>>>>>>
>>>>>>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>>>>>>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
>>>>>>>> ---
>>>>>>>>     drivers/clocksource/timer-riscv.c | 1 +
>>>>>>>>     1 file changed, 1 insertion(+)
>>>>>>>>
>>>>>>>> diff --git a/drivers/clocksource/timer-riscv.c
>>>>>>>> b/drivers/clocksource/timer-riscv.c
>>>>>>>> index c4f15c4068c0..071b8c144027 100644
>>>>>>>> --- a/drivers/clocksource/timer-riscv.c
>>>>>>>> +++ b/drivers/clocksource/timer-riscv.c
>>>>>>>> @@ -19,6 +19,7 @@
>>>>>>>>
>>>>>>>>     u64 __iomem *riscv_time_cmp;
>>>>>>>>     u64 __iomem *riscv_time_val;
>>>>>>>> +EXPORT_SYMBOL(riscv_time_val);
>>>>>>>>
>>>>>>>>     static inline void mmio_set_timer(u64 val)
>>>>>>>>     {
>>>>>>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>>>>>> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>>>>>>
>>>>>>> Adding the clocksource maintainers.  Let me know if you want this
>>>>>>> through my
>>>>>>> tree, I'm assuming you want it through your tree.
>>>>>> How can we end up by an export symbol here ?!
>>>>> Hi Danile,
>>>> s/Danile/Daniel/
>>> Sorry for typing error.
>>>>> Found this build error when CONFIG_RISCV_M_MODE=y and CONFIG_RISCV_SBI
>>>>> is not,
>>>>>
>>>>> see patch "4f9bbcefa142 riscv: add support for MMIO access to the timer
>>>>> registers"
>>>> Thanks for the pointer.
>>>>
>>>> The question still remains, how do we end up with this EXPORT_SYMBOL?
>>>>
>>>> There is something wrong if the fix is an EXPORT_SYMBOL for a global
>>>> variable.
>>> Not very clear, there are some global variable( eg, acpi_disabled,
>>> memstart_addr in arm64,) is exported by EXPORT_SYMBOL,  do you mean that
>>> export riscv_time_val is wrong way?
>> I do not maintain acpi neither arm64.mm.
>>
>> AFAICT, riscv_time_val is globally declared in
>> drivers/clocksource/timer-riscv.c
>>
>> The driver does not use this variable at all. Then there is a readl on
>> it in the header file arch/riscv/include/asm/timex.h
>>
>> And finally it is initialized in arch/riscv/kernel/clint.c
>>
>> Same thing for riscv_time_cmp.
>>
>> The correct fix is to initialize the variables in the place where they
>> belong to (drivers/clocksource/timer-riscv.c), create a function to read
>> their content and export-symbol-gpl the function.

ok, it's better.  thanks for your explanation.


> I agree with Daniel. Exporting riscv_time_val is a temporary fix.

yes.  it's only for build,  let's wait for Anup's patch.

>
> The problem is timer-riscv.c is pretty convoluted right now. It is
> implementing two different clocksources and clockevents in one-place.
>
> I think we need two separate drivers for RISC-V world.
>
> 1. timer-riscv: This for regular S-mode kernel with MMU. The clocksource
> will use TIME CSR and the clockevent device will use SBI calls.
>
> 2. timer-clint: This for M-mode kernel without MMU (or NoMMU kernel).
> The clocksource will use MMIO counter for clocksource and the
> clockevent device will use MMIO compare registers.
>
> I will send a patch to have a separate timer-clint driver under
> drivers/clocksource. (@Daniel, I hope you will be fine with this?)
> Regards,
> Anup
>
>>
>> --
>> <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs
>>
>> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
>> <http://twitter.com/#!/linaroorg> Twitter |
>> <http://www.linaro.org/linaro-blog/> Blog
> .
>


