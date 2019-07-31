Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F45D7BA07
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 08:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7bVQqsYAnl4rYp0xwUO1xTHKT3JJ1EdvGi0VnHardY=; b=L7fb054GTQ/B2u
	yu9z5DpSHGRANtKyvc43/0Zmdz9l9iHVi3ubiSS0BRwvf8/E/NR5FXKK99MdUbrvDMFmnGRp6uxqu
	OfMngTjE90dcXLhZ7kw1KFqXzQsWgaotSedKhjw+baE0Lzy/wO95PshXdRSSMSeHpYHWGROauHEti
	0UK9rHrKGa9AeQkp8xO8pnoDWFm1yU9A4ZJXLMUFeiQ4MVzFdPdexr6Ze2lk1U83qd2ZeF2MsmY0l
	8bY7qpuZqUfr8V5D76BvXDLUnUNgS/J/7BIRCswNH+B4Kjg0+I4BcxARFVk4NXzZx9JGmGb2cpHd8
	8iXRF6xOQhFZb9wWljIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiYz-00063b-Fy; Wed, 31 Jul 2019 06:58:17 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiYv-00063G-8B
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 06:58:15 +0000
Received: by mail-wr1-f66.google.com with SMTP id n4so68435954wrs.3
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 23:58:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qU9tOJPiFi8TuJFj6AQwXvcoVLt8SoI2Z+8B3y84t18=;
 b=p7nyVOL+2v7uP65kQ2bqWcNS8nBaGqNVcpjOOa6gT7FKpEADuqicdRjoXmXbzmIzF6
 V19xBSl+z1fMvxptt+dhnQ2yQ6/gNjjcphjNQ0Bb6TJ0yiUZKRDZoXCJ7u3FlvlxSnYz
 +wFhQpuQxgxTYDW0Em8LD8xDGoaZ7G+d7UoibgmAkTUxylVevKQRQu95IQBkD4SaeOCy
 A3vUIdwjATdZf8SAdXS8okuzVlbNtAbsusab5lie0dKLP1I/RDYQUu8xduURB1wzEMFY
 mxiGGGmPpzAoSil3OQu1noQZryuaAygp1ERMw47Lhx83UYK5WMvmEkAWq03yYDm8VsnX
 PpmQ==
X-Gm-Message-State: APjAAAUPfKm9nIPLafZkO4k/F4JnBSj5RAcWJDnXFZ0dGabD+BtA/iry
 GSMfrWeHGUiMtdpK1A5F+cA47tWAdLU=
X-Google-Smtp-Source: APXvYqzku30fKv86lxvZXAIuXhHFW1nsc4OVmn/VRSfl4N2bSyp3UlDAsp9RpZGVF8OvZNUqcVv2kg==
X-Received: by 2002:a05:6000:1043:: with SMTP id
 c3mr79068480wrx.236.1564556291018; 
 Tue, 30 Jul 2019 23:58:11 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:91e7:65e:d8cd:fdb3?
 ([2001:b07:6468:f312:91e7:65e:d8cd:fdb3])
 by smtp.gmail.com with ESMTPSA id t140sm1471116wmt.0.2019.07.30.23.58.09
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 23:58:10 -0700 (PDT)
Subject: Re: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
To: Atish Patra <Atish.Patra@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-14-anup.patel@wdc.com>
 <abedb067-b91f-8821-9bce-d27f6c4efdee@redhat.com>
 <7fe9e845c33e49e4c215e12b1ee1b5ed86a95bc1.camel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <0be68aeb-06de-71c7-375e-95f82112dae1@redhat.com>
Date: Wed, 31 Jul 2019 08:58:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7fe9e845c33e49e4c215e12b1ee1b5ed86a95bc1.camel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_235813_295875_58A329CC 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 31/07/19 03:55, Atish Patra wrote:
> On Tue, 2019-07-30 at 13:26 +0200, Paolo Bonzini wrote:
>> On 29/07/19 13:57, Anup Patel wrote:
>>> +	if (delta_ns > VCPU_TIMER_PROGRAM_THRESHOLD_NS) {
>>> +		hrtimer_start(&t->hrt, ktime_add_ns(ktime_get(),
>>> delta_ns),
>>
>> I think the guest would prefer if you saved the time before enabling
>> interrupts on the host, and use that here instead of ktime_get().
>> Otherwise the timer could be delayed arbitrarily by host interrupts.
>>
>> (Because the RISC-V SBI timer is relative only---which is
>> unfortunate---
> 
> Just to clarify: RISC-V SBI timer call passes absolute time.
> 
> https://elixir.bootlin.com/linux/v5.3-rc2/source/drivers/clocksource/timer-riscv.c#L32
> 
> That's why we compute a delta between absolute time passed via SBI and
> current time. hrtimer is programmed to trigger only after the delta
> time from now.

Nevermind, I got lost in all the conversions.

One important issue is the lack of ability to program a delta between
HS/HU-mode cycles and VS/VU-mode cycles.  Without this, it's impossible
to do virtual machine migration (except with hcounteren
trap-and-emulate, which I think we agree is not acceptable).  I found
the open issue at https://github.com/riscv/riscv-isa-manual/issues/298
and commented on it.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
