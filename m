Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AF01D988E
	for <lists+linux-riscv@lfdr.de>; Tue, 19 May 2020 15:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ys7r3qotLzzWaWhq9vVdrgrhhROTJgno1lweCnsUlJA=; b=DgWEIylTMgvz0W
	EEAiqF185ciDaxlVWosICy68tkypxcHfJbRlZuerRD0ASMYLx+QXwuKWIIycPV/MZulzeXK2A+Afj
	61B14fgBe2ZDGnT4oJQPh8Ey5M1+w3RlRqNfoKs/JbqnsfYDSz5FQFr2S0lNwk15zv01VY8gNvL95
	11d2F5V/K0lLwpbEZYabzxYJ37ciLla2Dd8CJ8kDljts+Nz3if+SMu5bwM3fBQ2Z8gd+2uHQcnizQ
	Gc+Ng9aMZiHbgBdJbcS3Vw5xHbW/QAgT5RYncEql5fYru9l1qBxUWZTG6QgW0avoiSw6QpwsxOlBU
	o+opXCbIf+p/5x0fWqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2eL-0006jd-1T; Tue, 19 May 2020 13:51:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2eH-0006j0-HS
 for linux-riscv@lists.infradead.org; Tue, 19 May 2020 13:51:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id u188so3692678wmu.1
 for <linux-riscv@lists.infradead.org>; Tue, 19 May 2020 06:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ys7r3qotLzzWaWhq9vVdrgrhhROTJgno1lweCnsUlJA=;
 b=fzm2colEUsT+TUViv8WS4wjalsLOjeAfXbhlgm+V1KGZT4hDxaA2LWyEczY5Lu74aV
 4O7zsNC1i+IflOc1i1HkRWS2tXs7Z48MtQN+CcN76BK1EG92QH9CumZTwjtjQWMm2KnA
 KADgar5kGafqe4R0DWM1Jehr/cp3W45n5vmFFNg5Q4D6srgt033qR7HvK/2gTWChl87e
 CkAVs1e4y9JStKPiN3z+3vJcB2SVZDs/4zQjMb2V5e6l2JJYenPUKycVqZ9bIKclmfdi
 3XzOCC0BQM3AXy82C8lbXtG4aas2kuM/P0+zRc8sHO6FVfl/EvliKYbmwSE662rnEFtR
 2tJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ys7r3qotLzzWaWhq9vVdrgrhhROTJgno1lweCnsUlJA=;
 b=gWnoZu1JdsuVVE3+OA2h3/rQOoH/5CynSLQG7VxZeeRtficN9Hg3jPsNGNZEmpgoio
 5XI2BOEvp9xMxcTfI/iFH/0LxS3Vi//YHBY9bEwsd6l1Gkp38s+f4a5r04fH4em/+3ES
 7u7KrQZXdSovl9k80eK/2BMRTHD29Ahr++ZMLDV/LulFYZHWfEvUO4m2NN9zqK504WQA
 4EDQsc3qZWKDI7kNYgjWyz0AWwj5COdNLXGdLpJTQVF/JpinigIPoZYoPd7w4kgIqu5H
 6bciOrGlB1Sr9FuDdzDVvCDMMPqDG6j72dXW3BK2dA1lkk1aPySKlnNo46YqblpBLnJ/
 jyKg==
X-Gm-Message-State: AOAM533fEkg+MjPzjHGw5HSkhWANi4L24g3JRBOZzO4zVTGQWwxRVa+e
 wgm7u76M1xX8t+5XLNude7gQMA==
X-Google-Smtp-Source: ABdhPJzs+51TVNZNv6Czy4tb35EXHHN6WGmkr18m2/J2dyfhi3Gk7Oj7qToikxglM6x4gLVmhP0CAA==
X-Received: by 2002:a7b:cc0e:: with SMTP id f14mr5620926wmh.39.1589896270455; 
 Tue, 19 May 2020 06:51:10 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e504:4297:986:ffb0?
 ([2a01:e34:ed2f:f020:e504:4297:986:ffb0])
 by smtp.googlemail.com with ESMTPSA id q17sm4243965wmk.36.2020.05.19.06.51.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 06:51:09 -0700 (PDT)
Subject: Re: [PATCH 09/10] timer-riscv: Fix undefined riscv_time_val
To: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, tglx@linutronix.de
References: <mhng-0c491e9e-41fd-4f76-a048-55c03d9359f0@palmerdabbelt-glaptop1>
 <66121f9a-48f3-d3a5-7c96-d71397e12aed@linaro.org>
 <0bc3eb36-7b9d-7c86-130c-68b566e85c10@huawei.com>
 <e1916079-c209-bfad-6b0c-ccfb2e136ca4@linaro.org>
 <29dc112e-d8c2-2749-7f5d-7c0c19aa9092@huawei.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <8c5ecbd3-c23a-ccd4-b5d8-2e7d2bd10699@linaro.org>
Date: Tue, 19 May 2020 15:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <29dc112e-d8c2-2749-7f5d-7c0c19aa9092@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_065113_608675_91AD8130 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hulkci@huawei.com, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 19/05/2020 14:39, Kefeng Wang wrote:
> 
> On 2020/5/19 4:23, Daniel Lezcano wrote:
>> Hi Kefeng,
>>
>> On 18/05/2020 17:40, Kefeng Wang wrote:
>>> On 2020/5/18 22:09, Daniel Lezcano wrote:
>>>> On 13/05/2020 23:14, Palmer Dabbelt wrote:
>>>>> On Sun, 10 May 2020 19:20:00 PDT (-0700), wangkefeng.wang@huawei.com
>>>>> wrote:
>>>>>> ERROR: modpost: "riscv_time_val" [crypto/tcrypt.ko] undefined!
>>>>>>
>>>>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>>>>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
>>>>>> ---
>>>>>>    drivers/clocksource/timer-riscv.c | 1 +
>>>>>>    1 file changed, 1 insertion(+)
>>>>>>
>>>>>> diff --git a/drivers/clocksource/timer-riscv.c
>>>>>> b/drivers/clocksource/timer-riscv.c
>>>>>> index c4f15c4068c0..071b8c144027 100644
>>>>>> --- a/drivers/clocksource/timer-riscv.c
>>>>>> +++ b/drivers/clocksource/timer-riscv.c
>>>>>> @@ -19,6 +19,7 @@
>>>>>>
>>>>>>    u64 __iomem *riscv_time_cmp;
>>>>>>    u64 __iomem *riscv_time_val;
>>>>>> +EXPORT_SYMBOL(riscv_time_val);
>>>>>>
>>>>>>    static inline void mmio_set_timer(u64 val)
>>>>>>    {
>>>>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>>>> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>>>>
>>>>> Adding the clocksource maintainers.  Let me know if you want this
>>>>> through my
>>>>> tree, I'm assuming you want it through your tree.
>>>> How can we end up by an export symbol here ?!
>>> Hi Danile,
>> s/Danile/Daniel/
> Sorry for typing error.
>>
>>> Found this build error when CONFIG_RISCV_M_MODE=y and CONFIG_RISCV_SBI
>>> is not,
>>>
>>> see patch "4f9bbcefa142 riscv: add support for MMIO access to the timer
>>> registers"
>> Thanks for the pointer.
>>
>> The question still remains, how do we end up with this EXPORT_SYMBOL?
>>
>> There is something wrong if the fix is an EXPORT_SYMBOL for a global
>> variable.
> 
> Not very clear, there are some global variable( eg, acpi_disabled,
> memstart_addr in arm64,) is exported by EXPORT_SYMBOL,  do you mean that
> export riscv_time_val is wrong way?

I do not maintain acpi neither arm64.mm.

AFAICT, riscv_time_val is globally declared in
drivers/clocksource/timer-riscv.c

The driver does not use this variable at all. Then there is a readl on
it in the header file arch/riscv/include/asm/timex.h

And finally it is initialized in arch/riscv/kernel/clint.c

Same thing for riscv_time_cmp.

The correct fix is to initialize the variables in the place where they
belong to (drivers/clocksource/timer-riscv.c), create a function to read
their content and export-symbol-gpl the function.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

