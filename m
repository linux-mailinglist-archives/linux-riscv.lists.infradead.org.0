Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE849AF52
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 14:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jkeHx5fcDcaqln/aPgvPRcgvktmCRQ9jg24k3xoTses=; b=lh4r8/6ZzIIqPGMRtqiucvC+N
	OUjrCRPtVrwB0RmsJztbPUv3Dr6iDU5149alP1rV2wz8w6Qe35pSjne3IXS5U5b3wC36nsdlXlAOx
	y4MpaywDktaym1yiToJqB1awICdv6tXvmfDjLJxHbymkmfJA9XbjX64bucDi23zVXoUhxb5TN25FS
	6F5FLXC3Ib4G5Zm3HbqcdPMCmR6MiOwcFQfC7dzT/f9VQ151YdUuBIAvEhuc6Fkb6GXXUYHn7UC90
	DWbsbbBcSVXMiJj3ixZzkpmR0fV8ODB4Xb542VM/k29bECnsB0UltkgHx/jc0VfUIZi3FLKiG1rUJ
	Yo6ZWAu5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18dq-00024G-KK; Fri, 23 Aug 2019 12:26:06 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18dn-00023o-1x
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 12:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566563162; x=1598099162;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=gTCdg8J2VOjRvubNIG/WreNywvWkf7+OZpzbGKuI4Ds=;
 b=JFyoK31KFnHL4Wb4H8wIkDag8zwWZGfji1MRz3wmQgZSAxQvTX7IHgGx
 2Hfmuj03GXxNXohrmo41kIeaBeYIiRecN5ED8kedZun02wWs14jFp25C+
 nqD/DOJ/B2UQuMBWWiQkQ2kz2dyOfIcnSPtVrG2nsR5suLC2yXiyIliJJ 8=;
X-IronPort-AV: E=Sophos;i="5.64,421,1559520000"; d="scan'208";a="781001403"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1e-62350142.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 23 Aug 2019 12:26:01 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-62350142.us-east-1.amazon.com (Postfix) with ESMTPS
 id 65A74A2CD2; Fri, 23 Aug 2019 12:25:57 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 12:25:56 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.191) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 12:25:52 +0000
Subject: Re: [PATCH v5 15/20] RISC-V: KVM: Add timer functionality
To: Anup Patel <anup@brainfault.org>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-16-anup.patel@wdc.com>
 <09d74212-4fa3-d64c-5a63-d556e955b88c@amazon.com>
 <CAAhSdy36q5-x8cXM=M5S3cnE2nvCMhcsfuQayVt7jahd58HWFw@mail.gmail.com>
 <CA3A6A8A-0227-4B92-B892-86A0C7CA369E@amazon.com>
 <CAAhSdy2FFmCZJhNnMojp8QbiD-t6=4XrNtE9KGnCG_-mPb19-A@mail.gmail.com>
 <e369eba6-e659-2892-9cb9-a631dd10153a@amazon.com>
 <CAAhSdy2sknED0W5-SpS4cP46cnS6biHYs_jRDgCj_Ucw5PUYzg@mail.gmail.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <655b1724-c3ca-9913-328b-59e434d40d96@amazon.com>
Date: Fri, 23 Aug 2019 14:25:50 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy2sknED0W5-SpS4cP46cnS6biHYs_jRDgCj_Ucw5PUYzg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.191]
X-ClientProxiedBy: EX13D25UWB003.ant.amazon.com (10.43.161.33) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_052603_297309_FDC935B4 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, Paul
 Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 23.08.19 14:11, Anup Patel wrote:
> On Fri, Aug 23, 2019 at 5:19 PM Alexander Graf <graf@amazon.com> wrote:
>>
>>
>>
>> On 23.08.19 13:46, Anup Patel wrote:
>>> On Fri, Aug 23, 2019 at 5:03 PM Graf (AWS), Alexander <graf@amazon.com> wrote:
>>>>
>>>>
>>>>
>>>>> Am 23.08.2019 um 13:05 schrieb Anup Patel <anup@brainfault.org>:
>>>>>
>>>>>> On Fri, Aug 23, 2019 at 1:23 PM Alexander Graf <graf@amazon.com> wrote:
>>>>>>
>>>>>>> On 22.08.19 10:46, Anup Patel wrote:
>>>>>>> From: Atish Patra <atish.patra@wdc.com>
>>>>>>>
>>>>>>> The RISC-V hypervisor specification doesn't have any virtual timer
>>>>>>> feature.
>>>>>>>
>>>>>>> Due to this, the guest VCPU timer will be programmed via SBI calls.
>>>>>>> The host will use a separate hrtimer event for each guest VCPU to
>>>>>>> provide timer functionality. We inject a virtual timer interrupt to
>>>>>>> the guest VCPU whenever the guest VCPU hrtimer event expires.
>>>>>>>
>>>>>>> The following features are not supported yet and will be added in
>>>>>>> future:
>>>>>>> 1. A time offset to adjust guest time from host time
>>>>>>> 2. A saved next event in guest vcpu for vm migration
>>>>>>
>>>>>> Implementing these 2 bits right now should be trivial. Why wait?
>>>>>
>>
>> [...]
>>
>>>>>> ... in fact, I feel like I'm missing something obvious here. How does
>>>>>> the guest trigger the timer event? What is the argument it uses for that
>>>>>> and how does that play with the tbfreq in the earlier patch?
>>>>>
>>>>> We have SBI call inferface between Hypervisor and Guest. One of the
>>>>> SBI call allows Guest to program time event. The next event is specified
>>>>> as absolute cycles. The Guest can read time using TIME CSR which
>>>>> returns system timer value (@ tbfreq freqency).
>>>>>
>>>>> Guest Linux will know the tbfreq from DTB passed by QEMU/KVMTOOL
>>>>> and it has to be same as Host tbfreq.
>>>>>
>>>>> The TBFREQ config register visible to user-space is a read-only CONFIG
>>>>> register which tells user-space tools (QEMU/KVMTOOL) about Host tbfreq.
>>>>
>>>> And it's read-only because you can not trap on TB reads?
>>>
>>> There is no TB registers.
>>>
>>> The tbfreq can only be know through DT/ACPI kind-of HW description
>>> for both Host and Guest.
>>>
>>> The KVM user-space tool needs to know TBFREQ so that it can set correct
>>> value in generated DT for Guest Linux.
>>
>> So what access methods do get influenced by TBFREQ? If it's only the SBI
>> timer, we can control the frequency, which means we can make TBFREQ
>> read/write.
> 
> There are two things influenced by TBFREQ:
> 1. TIME CSR which is a free running counter
> 2. SBI calls for programming next timer event
> 
> The Guest TIME CSR will be at same rate as Host TIME CSR so
> we cannot show different TBFREQ to Guest Linux.
> 
> In future, we will be having a dedicated RISC-V timer extension which
> will have all programming done via CSRs but until then we are stuck
> with TIME CSR + SBI call combination.

Please make sure that in a future revision of the spec either

   a) TIME CSR can be trapped or
   b) TIME CSR can be virtualized (virtual TIME READ has offset and 
multiplier on phys TIME READ applied)

and the same goes for the timer extension - either make it all trappable 
or all propery adjustable. You need to be double cautious there that 
people don't design something that breaks live migration between hosts 
that have a different TBFREQ.


Thanks,

Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
