Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB0B9DA1D
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 01:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=JXgHwk7bLCSG2cTcBv8oIClwYohMyunHC3J/Ek3GoRM=; b=RWFBhkirPaqnT6uB+kg2kwJ1O
	yRL/BuGsW14QnW3ZQiEOoacGN3GA/fRd/fBhRewbQ+spPtF2tJSh1R5Ybkxm6APiP0fIyianhhFNg
	gpF4OW2Ooi5L7D+DB0E0rVmz3DQmgKPhbQyIM+fS+rR1ni0C3SfAj0Bwzy1cgEpw6RCn+LVe37Lu7
	nqxRk4kVQUtSO49exhfa9zHSJ/hnEfOldbM0qwzND1wUvxUJELcdl7sgLjVUDci/1geafB8wtvKAk
	1U8Oep+kCLDywFRB45fFd+BRq54dpl6cQzS+HiWumODbJ9P2fWJQZnM8DhAJ+xC59VZRvFM5XCsJO
	h+ZB1/Teg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2OiX-00014O-M0; Mon, 26 Aug 2019 23:48:09 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2OiT-00013e-AX
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 23:48:07 +0000
Received: by mail-pl1-f193.google.com with SMTP id bj8so10809217plb.4
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 16:48:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=zd7cywiAkoUWcRfVHCpRZTgeWdfgqowuSFCwN1bZj2Y=;
 b=owzQ8pwPxmtRpRD3h3EX4rIKRbA/cSW6fuxi6C/lBfOnu/CrkjUFXI4hAmDOZ4sMtf
 ijSVNnK3q7nEP8dcvVDCuG/2kxu+Ytao3PhLK7SmTraNj5pa/RDMaqwI3Y+5PILE/Ce4
 dP7ujQ0CuuIM8tbvSG1mZ7xirTtRKgm0W6ZxO8lk6RtlH+u562tQYbSEVYkafeXznOeN
 yHZbU4lLZZZ4dONeKS1nE2Pae48QFh9YNgQ2vfWQDCZq3AXgb4s7u6pXnJHgs5VvYAJl
 dLQJIQzPfaVI32jdjCIBfKOUvpQfhRpieBm+nuRENop1gvjZCqfy8zvdvM2g0ww7xyDu
 ydSg==
X-Gm-Message-State: APjAAAULPM1sbEy1U0p0lalAOUV75/tJ74EwTXp5Ueb8h2JNiI/dJp00
 m3isd/66sp2HlfzfpDoU+xS9Sw==
X-Google-Smtp-Source: APXvYqwyXgUsc5NoBh5QUb4SDP9eiKr+6nVJJzX04PkAKM0NdwIJMpxpTcIRtFf4265JDbAiP0IQAA==
X-Received: by 2002:a17:902:bb96:: with SMTP id
 m22mr9391336pls.158.1566863283326; 
 Mon, 26 Aug 2019 16:48:03 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id r75sm18127613pfc.18.2019.08.26.16.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 16:48:02 -0700 (PDT)
Date: Mon, 26 Aug 2019 16:48:02 -0700 (PDT)
X-Google-Original-Date: Mon, 26 Aug 2019 16:44:31 PDT (-0700)
Subject: Re: [PATCH v2 1/5] RISC-V: Remove per cpu clocksource
In-Reply-To: <089a5ee46759074af391c50f5e9d28344b429de4.camel@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-6a5026a2-d727-4c08-969d-712b303903df@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_164805_368022_BEC102F2 
X-CRM114-Status: GOOD (  32.40  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, daniel.lezcano@linaro.org,
 Greg KH <gregkh@linuxfoundation.org>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, johan@kernel.org,
 alexios.zavras@intel.com, aou@eecs.berkeley.edu,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 info@metux.net, tglx@linutronix.de, allison@lohutok.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 11:55:14 PDT (-0700), Atish Patra wrote:
> On Fri, 2019-08-16 at 17:09 +0200, Daniel Lezcano wrote:
>> On 31/07/2019 03:24, Atish Patra wrote:
>> > There is only one clocksource in RISC-V. The boot cpu initializes
>> > that clocksource. No need to keep a percpu data structure.
>> 
>> That is not what is stated in the initial patch [1].
>> 
>> Can you clarify that ?
>> 
> 
> I think what I meant to say was "There is only one clocksource used in
> RISC-V Linux" as it is guranteed that all the timers across all the
> harts are synchronized within one tick of each other [2]. 
> Apologies for not being verbose here.
> 
> However, reading the privilege specification(1.12-draft) 
> 
> Section. 3.1.10 states that 
> 
> "Accurate real-time clocks (RTCs) are relatively expensive to provide
> (requiring a crystal or MEMS oscillator) and have to run even when the
> rest of system is powered down, and so there is usually only one in a
> system located in a different frequency/voltage domain from the
> processors. Hence, the RTC must be shared by all the harts in a system"
> 
> This is different from the commit text in [1].
> 
> Perhaps I misunderstood something. @Palmer ?

This is one of those places the ISA has drifted around a bit: in the user ISA 
there is a time CSR, and CSRs are all per-hart state so logically there is a 
timer per hart.  We used to actually build systems this way (with an SOC agent 
what would actively increment each CSR whenever the RTC fired), but it ended up 
being impractical for a bunch of reasons.  There was never a way to actually 
write these time CSRs from supervisor mode, but machine-mode software could 
write them so it would have been possible to build system that had different 
time values on different harts.

As a result we ended up with per-CPU timers in Linux, but they never actually 
worked correctly: there's a bunch of per-CPU state in the driver, but nothing 
to actually enforce that timer reads go to the correct hart.  For example, get 
the time on hart 0 you'd have to IPI over to that hart, do a local CSR read, 
and then IPI the time back.  As a result the per-CPU state never really made 
any sense, but it kind of just hung around because it worked fine on the 
systems we were building (which always had time synced up anyway) and was 
closer to what the spec allowed -- we didn't IPI over because time was always 
synchronized on systems that actually existed and the IPIs are super slow, but 
the scaffolding stuck around.

As part of cleaning up the privileged ISA for ratification we decided to 
mandate that the time CSRs on every hart are always within a single tick of 
each other, effectively mandating a single time across the system.  This was 
partially motivated by Linux, but mostly by a new approach we were taking to 
the hypervisor specification -- rather than a hypervisor mode, we decided to 
just extend supervisor mode to support fast nested virtualization, which means 
we now have "htimedelta" (a per-hart timer offset) rather than per-hart timers.  
This is more efficient because the per-state stays constant so we don't need to 
actively tick it, and since it makes the per-hart time state unnecessary we 
decided to drop that extra state.

The change to global time on RISC-V systems rendered the per-CPU timers 
defunct, but since they weren't really doing anything they just stuck around.  
The cleanup seems perfectly reasonable to me, modulo the issue I've pointed out 
below...

> 
> 
> [2] 
> https://elixir.bootlin.com/linux/v5.3-rc4/source/drivers/clocksource/timer-riscv.c#L44
> 
>> Thanks
>> 
>>   -- Daniel
>> 
>> [1] https://lkml.org/lkml/2018/8/4/51
>> 
>> 
>> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> > ---
>> >  drivers/clocksource/timer-riscv.c | 6 ++----
>> >  1 file changed, 2 insertions(+), 4 deletions(-)
>> > 
>> > diff --git a/drivers/clocksource/timer-riscv.c
>> > b/drivers/clocksource/timer-riscv.c
>> > index 5e6038fbf115..09e031176bc6 100644
>> > --- a/drivers/clocksource/timer-riscv.c
>> > +++ b/drivers/clocksource/timer-riscv.c
>> > @@ -55,7 +55,7 @@ static u64 riscv_sched_clock(void)
>> >  	return get_cycles64();
>> >  }
>> >  
>> > -static DEFINE_PER_CPU(struct clocksource, riscv_clocksource) = {
>> > +static struct clocksource riscv_clocksource = {
>> >  	.name		= "riscv_clocksource",
>> >  	.rating		= 300,
>> >  	.mask		= CLOCKSOURCE_MASK(64),
>> > @@ -92,7 +92,6 @@ void riscv_timer_interrupt(void)
>> >  static int __init riscv_timer_init_dt(struct device_node *n)
>> >  {
>> >  	int cpuid, hartid, error;
>> > -	struct clocksource *cs;
>> >  
>> >  	hartid = riscv_of_processor_hartid(n);
>> >  	if (hartid < 0) {
>> > @@ -112,8 +111,7 @@ static int __init riscv_timer_init_dt(struct
>> > device_node *n)
>> >  
>> >  	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
>> >  	       __func__, cpuid, hartid);
>> > -	cs = per_cpu_ptr(&riscv_clocksource, cpuid);
>> > -	error = clocksource_register_hz(cs, riscv_timebase);
>> > +	error = clocksource_register_hz(&riscv_clocksource,
>> > riscv_timebase);

Someone's client has mangled the patches, but I think there's an issue here: 
we're still calling the init code for every "riscv" DT entry, but there's now 
only a single "struct clocksource".  This will result in a single clocksource 
being initialized multiple times, which I assume is an issue.

>> >  	if (error) {
>> >  		pr_err("RISCV timer register failed [%d] for cpu =
>> > [%d]\n",
>> >  		       error, cpuid);
>> > 
>> 
>> 
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
