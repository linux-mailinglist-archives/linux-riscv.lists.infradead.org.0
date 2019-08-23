Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3356A9AF70
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 14:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FHUllwDFWu0KZ++Z7tB/NKFToC3XHIvXt9LaHqtWngY=; b=HCk8G4xCFOOSU160OaH2Q5k38
	2RlUixdtTAVaHrH+NfUfrtJ6O69GepAVZwhcw0Aw4sXqbq8cQZp+5OawlcqG0SFDt2GCDw3JKZCsu
	O/Mgsr1S/vk8Q2W5Eu4DEAIv2imrQXM0ZUzUrUeBVudH8yNE51grl4yGdV7w/EMoEiLcCiyqRJFby
	of8OLTml3Tfx/Fwb7x9j2sCtaKKhGfA776bxt2CywpeqjFtYLsWaZCbmhp0Oj+DgpmBYCwYMdLIgD
	mCDfljVgmYrq9iOvjlLJrf8YD9hbJqV0qkUdpmfKYpH97r0uXzcfnnkMJthDEGFi7X0UbebJL6Shy
	S4CKCgfuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18g3-0002zK-60; Fri, 23 Aug 2019 12:28:23 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18g0-0002yy-59
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 12:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566563299; x=1598099299;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=gZe9dv7UhZ0T/4gNWDLLPmXvjNu2lShnoO5YUyoC53g=;
 b=tYPOT4idYO91bzSUhGJziZeEGw74A4TGah3/DkOZjsLamQXVkCBuTgh7
 d0PG4kAVzoMdjCw9BT2HIO3tkfnY2OsY5Cy1yXq4PeSmwj3SaAJVyoyxA
 agUKLrEE+Vok16phS+C+POSEXt96KA/1tNZt7G5UEZJlXFXOLdxc94FyQ k=;
X-IronPort-AV: E=Sophos;i="5.64,421,1559520000"; d="scan'208";a="411336772"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-af6a10df.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 23 Aug 2019 12:28:18 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-af6a10df.us-east-1.amazon.com (Postfix) with ESMTPS
 id 523ABA2782; Fri, 23 Aug 2019 12:28:13 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 12:28:13 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.161.67) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 12:28:09 +0000
Subject: Re: [PATCH v5 00/20] KVM RISC-V Support
To: Anup Patel <anup@brainfault.org>, Paolo Bonzini <pbonzini@redhat.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <8a2a9ea6-5636-e79a-b041-580159e703b2@amazon.com>
 <CAAhSdy2RC6Gw708wZs+FM56UkkyURgbupwdeTak7VcyarY9irg@mail.gmail.com>
 <757C929B-D26C-46D9-98E8-1191E3B86F3C@amazon.com>
 <fda67a5d-6984-c3ef-8125-7805d927f15b@redhat.com>
 <CAAhSdy1k96m8GinxAhcfRL_gOxCzK+ODfyjDxCmr-AF2ycntwA@mail.gmail.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <5a9ccf5f-ee75-9289-814e-0c8b9b3c3f00@amazon.com>
Date: Fri, 23 Aug 2019 14:28:07 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy1k96m8GinxAhcfRL_gOxCzK+ODfyjDxCmr-AF2ycntwA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.67]
X-ClientProxiedBy: EX13D03UWC001.ant.amazon.com (10.43.162.136) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_052820_329863_2FEA4B7A 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
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
 Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 23.08.19 14:19, Anup Patel wrote:
> On Fri, Aug 23, 2019 at 5:40 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>>
>> On 23/08/19 13:44, Graf (AWS), Alexander wrote:
>>>> Overall, I'm quite happy with the code. It's a very clean implementation
>>>> of a KVM target.
>>
>> Yup, I said the same even for v1 (I prefer recursive implementation of
>> page table walking but that's all I can say).
>>
>>>> I will send v6 next week. I will try my best to implement unpriv
>>>> trap handling in v6 itself.
>>> Are you sure unpriv is the only exception that can hit there? What
>>> about NMIs? Do you have #MCs yet (ECC errors)? Do you have something
>>> like ARM's #SError which can asynchronously hit at any time because
>>> of external bus (PCI) errors?
>>
>> As far as I know, all interrupts on RISC-V are disabled by
>> local_irq_disable()/local_irq_enable().
> 
> Yes, we don't have per-CPU interrupts for async bus errors or
> non-maskable interrupts. The local_irq_disable() and local_irq_enable()
> affect all interrupts (excepts traps).

Awesome, so that means you really only need to worry about traps. Even 
easier then! :)

Also, you want to look out for a future extension that adds any of the 
above (NMI, MCE, SError on local bus), as that would then break the 
function ;)


Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
