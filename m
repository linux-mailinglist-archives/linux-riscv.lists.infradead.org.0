Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A265C9AE51
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 13:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3XefBXUr0eQza8Fc9yQqevh5RKp8zW5W4XeGt0x/DY=; b=A/tzhLzgObCvmi
	6CM0FWicfT+AEnlSKDxDu6TkMzywN+UYuJYI8KKn9eZgaDPjz30bRTLROBXSu4vM71iw6cl6UuaWZ
	qv1/EqZJg0YLjkUkfujzXmaAtooF7/V35wbDStLvHrBBZF1FGeHEtz0S68Zt7lbOtahzt22srOk4V
	P8infqVwaaICiqitJFf2MhsugWu4bouXsXFeqJJkU/Gk7AMF4eidWJ3arZrgXPrwf5W6ayJMAytKk
	GHohP7KJYFLvkSnXIc8nUPP4nCPW6rPTxrj8vKBSRO+V9jV+9sGnZdxupm/M+xCaci7NreeC8c0MY
	CxPI0cRn9J8ctzWAV3cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17zv-0003dP-5A; Fri, 23 Aug 2019 11:44:51 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17zr-0003d1-U9
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 11:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566560687; x=1598096687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RHYS8jGRkdr3gB9hs1d2WnBjre+WbM/f68EhPrZ6uEY=;
 b=aGd0V+IFmEhhOVD6XFz1K+hfKvUvwxfmSd6QCGoGaf4e+wUT9E9EiYZb
 He8XU0JP3cP7cfdRu42bUEwkdkYCAEbd3Y1S/ddvbmxrUvtsx4povt5K/
 JS3B7XnAFsCGx/Oqou/Z7KIkiQsOIT+mK3N0NBI0Yu70rg8mSBHGu/4p/ k=;
X-IronPort-AV: E=Sophos;i="5.64,421,1559520000"; d="scan'208";a="823019313"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 23 Aug 2019 11:44:45 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com (Postfix) with ESMTPS
 id 901A6A24D2; Fri, 23 Aug 2019 11:44:44 +0000 (UTC)
Received: from EX13D20UWC002.ant.amazon.com (10.43.162.163) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 11:44:44 +0000
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13D20UWC002.ant.amazon.com (10.43.162.163) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 11:44:43 +0000
Received: from EX13D20UWC001.ant.amazon.com ([10.43.162.244]) by
 EX13D20UWC001.ant.amazon.com ([10.43.162.244]) with mapi id 15.00.1367.000;
 Fri, 23 Aug 2019 11:44:43 +0000
From: "Graf (AWS), Alexander" <graf@amazon.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v5 00/20] KVM RISC-V Support
Thread-Topic: [PATCH v5 00/20] KVM RISC-V Support
Thread-Index: AQHVWYn+hiT/O4W/4EWKNvIhq6UCB6cIl+EAgAAFWns=
Date: Fri, 23 Aug 2019 11:44:43 +0000
Message-ID: <757C929B-D26C-46D9-98E8-1191E3B86F3C@amazon.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <8a2a9ea6-5636-e79a-b041-580159e703b2@amazon.com>,
 <CAAhSdy2RC6Gw708wZs+FM56UkkyURgbupwdeTak7VcyarY9irg@mail.gmail.com>
In-Reply-To: <CAAhSdy2RC6Gw708wZs+FM56UkkyURgbupwdeTak7VcyarY9irg@mail.gmail.com>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_044448_016823_F5485B9F 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> Am 23.08.2019 um 13:26 schrieb Anup Patel <anup@brainfault.org>:
> 
>> On Fri, Aug 23, 2019 at 1:39 PM Alexander Graf <graf@amazon.com> wrote:
>> 
>>> On 22.08.19 10:42, Anup Patel wrote:
>>> This series adds initial KVM RISC-V support. Currently, we are able to boot
>>> RISC-V 64bit Linux Guests with multiple VCPUs.
>>> 
>>> Few key aspects of KVM RISC-V added by this series are:
>>> 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
>>> 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
>>> 3. KVM ONE_REG interface for VCPU register access from user-space.
>>> 4. PLIC emulation is done in user-space. In-kernel PLIC emulation, will
>>>    be added in future.
>>> 5. Timer and IPI emuation is done in-kernel.
>>> 6. MMU notifiers supported.
>>> 7. FP lazy save/restore supported.
>>> 8. SBI v0.1 emulation for KVM Guest available.
>>> 
>>> Here's a brief TODO list which we will work upon after this series:
>>> 1. Handle trap from unpriv access in reading Guest instruction
>>> 2. Handle trap from unpriv access in SBI v0.1 emulation
>>> 3. Implement recursive stage2 page table programing
>>> 4. SBI v0.2 emulation in-kernel
>>> 5. SBI v0.2 hart hotplug emulation in-kernel
>>> 6. In-kernel PLIC emulation
>>> 7. ..... and more .....
>> 
>> Please consider patches I did not comment on as
>> 
>> Reviewed-by: Alexander Graf <graf@amazon.com>
>> 
>> Overall, I'm quite happy with the code. It's a very clean implementation
>> of a KVM target.
> 
> Thanks Alex.
> 
>> 
>> The only major nit I have is the guest address space read: I don't think
>> we should pull in code that we know allows user space to DOS the kernel.
>> For that, we need to find an alternative. Either you implement a
>> software page table walker and resolve VAs manually or you find a way to
>> ensure that *any* exception taken during the read does not affect
>> general code execution.
> 
> I will send v6 next week. I will try my best to implement unpriv trap
> handling in v6 itself.

Are you sure unpriv is the only exception that can hit there? What about NMIs? Do you have #MCs yet (ECC errors)? Do you have something like ARM's #SError which can asynchronously hit at any time because of external bus (PCI) errors?

Alex

> 
> Regards,
> Anup
> 
>> 
>> 
>> Thanks,
>> 
>> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
