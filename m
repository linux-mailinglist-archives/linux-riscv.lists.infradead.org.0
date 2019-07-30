Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B7F7AA7C
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 16:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41TfmMdlNl/JQiuDG9+MF178MDQz6LdGQFmJLHt+oIs=; b=N38FCyx8lQzmG1
	viza2LwxW5bqO26hquh1D2aWLwI0MSqkMO2LNGFbAZ7Rub49jUukaTcBkEy6DKwasP5nS8cXh36f+
	WXGjVzLUMw+3n7xAmR7FFZA5d/pbKgAQvsVvByAl5D60uhdzkpecczw11QSjYzcpEiuhmoAnpj20j
	Ja/x3R1NMhMcbj01vvpfTEd9IzRAzIT4RUZRw9Zj2WigmlfhF73xQO6NRt0iHsssJYlSJXBhc7LXj
	Y490wrUuEyG6RWY5D7GT1l8UR3KaPW+SJfkb7i1AD7WPikycOrInW0Y9acoo/02HqWRfbqdlNEoEX
	FK2YWpvE1/VDW3i6u2pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsShj-0003GJ-Qr; Tue, 30 Jul 2019 14:02:15 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsShg-0003Fn-4P
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 14:02:13 +0000
Received: by mail-wr1-f66.google.com with SMTP id n9so66021063wru.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 07:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9EuouZv6KkAfnXeYgN1dDIcC6u4TgIuceUgUlR6uEAU=;
 b=ZPh5HOjuTPo+NKEJkJrkrETvuAlMAx6RTTFBgZx0MRk8kej5ndfeJd9Jvs0TohVjEL
 D52z9HLWyzNmMKMF1lNx/8JUsRCP9E0oGnFc2E6OPpcBSTXsxJvmSds0ciV7iKxTe1T+
 gP+wxr6d/PCT4wyLcCYAW7HM7CEIXrD6/LiUbmloDFIch9k1itEeIBfME2fU+cd2sqlF
 h7U6mizbXPlkNIfaxqYhrLDOi1x9MCo0qTHnkX6R6Wzz7ZmpdIm3+zJuVjBkMZMRuIjA
 15Rnnch7BeUXWEfFvp6TAzfxFnN6q2Goqb84r1boiZi3IIvTRSulMq+KekzpDZeGr7tl
 QVog==
X-Gm-Message-State: APjAAAVmW7fVEe9Hm6YtmMK5XkRmbL3Pw/nE/hW5PLes6ZhAbRnNwe1m
 LwWswPTYS6PpIua7uTO/0/cN6A==
X-Google-Smtp-Source: APXvYqz444q5M6LOXoHcyZ0+5NhLAV2GC/dilLeCMRigSflzkicbG33/VTK0UCpeR27ntA61CsOd8w==
X-Received: by 2002:a5d:518d:: with SMTP id k13mr32991874wrv.40.1564495330668; 
 Tue, 30 Jul 2019 07:02:10 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id j17sm107585902wrb.35.2019.07.30.07.02.09
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 07:02:09 -0700 (PDT)
Subject: Re: [RFC PATCH 00/16] KVM RISC-V Support
To: Anup Patel <anup@brainfault.org>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <72e9f668-f496-3fca-a1a8-a3c3122a3fd9@redhat.com>
 <CAAhSdy3Z6d2phRGo20eNWfa4onFwFtsOUPM+OCD465y0tvQ5wg@mail.gmail.com>
 <965cffdb-86e2-b422-9c23-345c7100fd88@redhat.com>
 <CAAhSdy0Sy9YV5ymdFk0URLY4GvOkWaWOpC_Dju+1ada_yc=Pmw@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <c430df93-836a-3cd4-eac1-493833e79ca9@redhat.com>
Date: Tue, 30 Jul 2019 16:02:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy0Sy9YV5ymdFk0URLY4GvOkWaWOpC_Dju+1ada_yc=Pmw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_070212_177113_3EA1D81C 
X-CRM114-Status: GOOD (  15.05  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 30/07/19 15:50, Anup Patel wrote:
>> BTW, since IPIs are handled in the SBI I wouldn't bother with in-kernel
>> PLIC emulation unless you can demonstrate performance improvements (for
>> example due to irqfd).  In fact, it may be more interesting to add
> 
> I thought VHOST requires irqfd and we would certainly endup providing
> in-kernel PLIC emulation to support VHOST.

vhost only needs an eventfd, userspace can poll the eventfd and inject
the irq as usual with KVM_INTERRUPT.  Of course that can be slower, but
you can benchmark it and see if it's indeed a good reason for in-kernel
PLIC.

>> plumbing for userspace handling of selected SBI calls (in addition to
>> get/putchar, sbi_system_reset and sbi_hart_down look like good
>> candidates in SBI v0.2).
> 
> The get/putchar SBI v0.1 calls won't be encouraged going forward because
> we already have earlycon implmentation in-place and Guest kernel can directly
> write to UART registers for earlyprints.

> If we still wanted to implement get/putchar calls then we would need a RISC-V
> specific exit reason in KVM. We have tried to avoid RISC-V specific IOCTLs
> or exit reason in this series.

Sounds good.

Paolo

>>
>>> We were thinking to keep KVM RISC-V disabled by default (i.e. keep it
>>> experimental) until we have validated it on some FPGA or real HW. For now,
>>> users can explicitly enable it and play-around on QEMU emulation. I hope
>>> this is fine with most people ?
>>
>> That's certainly okay with me.
>>
> 
> Thanks,
> Anup
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
