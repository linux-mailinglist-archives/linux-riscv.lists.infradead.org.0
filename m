Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35EE9AED7
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 14:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atL7pKCjt/j5x55RO25IC3yYZFa6jjphkTb/Z0ejBrc=; b=XIvfpBKNnrXdvC
	+hTHnTiCkXYg3GV1wlltiDfivs/6BlB3RJwoQYD3jhJR8g/1vERQcqorhqJgnS3gpqI2yILXQ+AkJ
	QOT6skFzA9RxZyN+z3dtJSZimxcU90LwMmR50KyAPMMjREyaY7isKPfhP8SJ1Tj2q4djmotVdyL9k
	mIuzYWdB+Qwaoy+JkLJm23K6NzJ2CZNgowbAxPahaUB9atKX07d+Zpe1vZOB/tpeDIrbB0EKZEEI6
	/e8/QSS1hVhF2fHt8EKHZOZ1RMAFLfNsoD+HhEXyOolXkbB8Bh1IyxAwrj6rY34dYR1JAbzwWDG4c
	8MQZWOKoD4n3g6zk68+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Pl-0002vt-0r; Fri, 23 Aug 2019 12:11:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Pf-0002on-4A
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 12:11:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id p17so8401874wrf.11
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 05:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iRAIEkmwp6JE/WX2NGJMgDWxiWJMs7wvHv42hCwyQfI=;
 b=YEpPQAEvWA9shVqsD3mh8d8r/uR1cXm76LWodn7SiQ5pxKz7XzPS/ZenBR9boBZyaG
 caGIKN8nTkYwxmJT/mzu7KBhHgk4GeQi8KzLsfjZvbcWPNgfjk8U7abtLLKyXdj5Iamh
 WEsHh//w59EZk4ZHq2zco+dvqKcSqeOpqKfAgAxs24rR3jk7qj70m/eSqghKeO27BCbg
 57q5BniRpmfS+Onee+Wyw2JZmiPvY2YoeKKMT+7msYpvsBdu8lDwXAgn8HTnnVp8Mqhf
 ANB5y7OGnpvyOk+4i8bGpz2IwFMlbb8/P8hrdq+BDZUs4bKztK084OcOQFc10fpgUOCS
 PrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iRAIEkmwp6JE/WX2NGJMgDWxiWJMs7wvHv42hCwyQfI=;
 b=jIZLqJ3mIqezuV3BXqwoNCKbeE9dhgQXZVoB0tM2Dk9fdNnwhw1Tk3wVCQTgcKei/A
 aQvjYhbk3Es5cwnp7M4Q6asItVzAIt/REZ5NG+TsNk2HM7IdzBXsFh6BC7G+HgxlvF3Q
 TwDi/4irGO5oD01VVJLC0+V/WuGT2pYn6HcXzh8TrT5CtrIGT9vng/mgDEh1J9gIkK0C
 ryqme/Gnkg2DVrBK6mwVupnJyU2WhDdyVvZZjGknQ9/BQrtGvEtegEoeAMGcvYiCdoWf
 Sgm6xODr5SzzHd1kYV/etrq0RNAmG/EKcntZcUCdAqKKffWsmeu70LNgQnYbOTwl6mSS
 9H0g==
X-Gm-Message-State: APjAAAVmUdwZ//caHUgc1v0z3GPCGNmset6prpyWOemmuO8Jq38LuSCC
 IO4JuQIKTczaLEjcNvwv8pdrLpnWvH6FJktyytudxg==
X-Google-Smtp-Source: APXvYqweuPNty8ifIydMeMGqUfpAmO11I/wuZUHMJ01iiMWWORMqB38dG8e4+ued1WCyfTwxqp2l51dVxUm9msyVfcc=
X-Received: by 2002:a5d:4ecb:: with SMTP id s11mr4728857wrv.323.1566562285504; 
 Fri, 23 Aug 2019 05:11:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-16-anup.patel@wdc.com>
 <09d74212-4fa3-d64c-5a63-d556e955b88c@amazon.com>
 <CAAhSdy36q5-x8cXM=M5S3cnE2nvCMhcsfuQayVt7jahd58HWFw@mail.gmail.com>
 <CA3A6A8A-0227-4B92-B892-86A0C7CA369E@amazon.com>
 <CAAhSdy2FFmCZJhNnMojp8QbiD-t6=4XrNtE9KGnCG_-mPb19-A@mail.gmail.com>
 <e369eba6-e659-2892-9cb9-a631dd10153a@amazon.com>
In-Reply-To: <e369eba6-e659-2892-9cb9-a631dd10153a@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 23 Aug 2019 17:41:13 +0530
Message-ID: <CAAhSdy2sknED0W5-SpS4cP46cnS6biHYs_jRDgCj_Ucw5PUYzg@mail.gmail.com>
Subject: Re: [PATCH v5 15/20] RISC-V: KVM: Add timer functionality
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_051127_206073_BB219EA4 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 5:19 PM Alexander Graf <graf@amazon.com> wrote:
>
>
>
> On 23.08.19 13:46, Anup Patel wrote:
> > On Fri, Aug 23, 2019 at 5:03 PM Graf (AWS), Alexander <graf@amazon.com> wrote:
> >>
> >>
> >>
> >>> Am 23.08.2019 um 13:05 schrieb Anup Patel <anup@brainfault.org>:
> >>>
> >>>> On Fri, Aug 23, 2019 at 1:23 PM Alexander Graf <graf@amazon.com> wrote:
> >>>>
> >>>>> On 22.08.19 10:46, Anup Patel wrote:
> >>>>> From: Atish Patra <atish.patra@wdc.com>
> >>>>>
> >>>>> The RISC-V hypervisor specification doesn't have any virtual timer
> >>>>> feature.
> >>>>>
> >>>>> Due to this, the guest VCPU timer will be programmed via SBI calls.
> >>>>> The host will use a separate hrtimer event for each guest VCPU to
> >>>>> provide timer functionality. We inject a virtual timer interrupt to
> >>>>> the guest VCPU whenever the guest VCPU hrtimer event expires.
> >>>>>
> >>>>> The following features are not supported yet and will be added in
> >>>>> future:
> >>>>> 1. A time offset to adjust guest time from host time
> >>>>> 2. A saved next event in guest vcpu for vm migration
> >>>>
> >>>> Implementing these 2 bits right now should be trivial. Why wait?
> >>>
>
> [...]
>
> >>>> ... in fact, I feel like I'm missing something obvious here. How does
> >>>> the guest trigger the timer event? What is the argument it uses for that
> >>>> and how does that play with the tbfreq in the earlier patch?
> >>>
> >>> We have SBI call inferface between Hypervisor and Guest. One of the
> >>> SBI call allows Guest to program time event. The next event is specified
> >>> as absolute cycles. The Guest can read time using TIME CSR which
> >>> returns system timer value (@ tbfreq freqency).
> >>>
> >>> Guest Linux will know the tbfreq from DTB passed by QEMU/KVMTOOL
> >>> and it has to be same as Host tbfreq.
> >>>
> >>> The TBFREQ config register visible to user-space is a read-only CONFIG
> >>> register which tells user-space tools (QEMU/KVMTOOL) about Host tbfreq.
> >>
> >> And it's read-only because you can not trap on TB reads?
> >
> > There is no TB registers.
> >
> > The tbfreq can only be know through DT/ACPI kind-of HW description
> > for both Host and Guest.
> >
> > The KVM user-space tool needs to know TBFREQ so that it can set correct
> > value in generated DT for Guest Linux.
>
> So what access methods do get influenced by TBFREQ? If it's only the SBI
> timer, we can control the frequency, which means we can make TBFREQ
> read/write.

There are two things influenced by TBFREQ:
1. TIME CSR which is a free running counter
2. SBI calls for programming next timer event

The Guest TIME CSR will be at same rate as Host TIME CSR so
we cannot show different TBFREQ to Guest Linux.

In future, we will be having a dedicated RISC-V timer extension which
will have all programming done via CSRs but until then we are stuck
with TIME CSR + SBI call combination.

Regards,
Anup

>
>
> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
