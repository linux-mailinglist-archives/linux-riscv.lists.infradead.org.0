Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9987AA8D
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 16:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9hjVBitmy4w2rFQ5Fj9dLscz6rZC2io1k9passGMNw=; b=fO1hfxLhQk6hzz
	yezDNkOHseQgSNwjl0GPwWEHIf/LRyPAIkE+snmDvRDXk3HSRwQFatxMbTMfN0n60o5dJYsaF8ETJ
	V/hpYmOacL9ed4C2gly02dJWGyqh/TGtfYUjTiRPBVHfY1VxKDlF1h6zFbWpqnjaJx5fiLk5eO1WW
	vbDdbnQp3mbovVqy733018qxyfnMSjMFRgHOAZ67Siv/B18Nl8VGdJ9SglmQa8CrNSVrjMcCQ1vq4
	vXQo66/Yj/BO45X+nRuR4bS/koqe5RKEebQReNM3cndSYw/DC95wgH7+3VpvrFNadXsA0TQEFgw3e
	Z2zmR61I19W940IcseoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSnm-00056z-Ch; Tue, 30 Jul 2019 14:08:30 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSnh-00056E-T4
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 14:08:27 +0000
Received: by mail-wm1-f68.google.com with SMTP id v19so56814812wmj.5
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 07:08:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZH4+xww8GjJmr2iRqeXFgV0mXUwPu2r7QQVWlvDHaVk=;
 b=a+nyrq63mGtQmmCXUd0hRQ1rAHKBZnzmTRHLAIpOM0kO7tGNp4R0Mva32FqpuVdSOA
 m2EEM7iguod8C8JKFu1eWye4M2ahGHR+xyOmVNhSTFIGQ6QS7Ag0OfKd1K4OBzQRyF5Z
 vgqJPphnQvJfZiRnJfRQMoZ4ivl802n4uYy45T+OMh4G6E2/Z7awgVxMVAcJ9jAOObst
 AkR/Hfi7pKPQhDKcgORepEeNZlnKZVLXQGr5+s7HWO2F1v6BltP9hhqXi1EBoV6KmGdX
 AmmnuBvgmrQ6SA9M+TkD9dzwcKsaFPui7AZ30KU/72zuferUCwIqKd8U6GYACu6Z7wmz
 oZ2Q==
X-Gm-Message-State: APjAAAVuMOKAatyCiSfS0RMYzSHTFvBvZgHWAMlfUuy7Ybeov9yKW4Il
 HAjjoSu3OCHxTO11aVuQY/SyHw==
X-Google-Smtp-Source: APXvYqz76P7zjl5qWfhGVUvy62IrTslgJOlgUHf8WXPi8LxP5z5ObP6+fp6h+josSRdGuBLS/01xpg==
X-Received: by 2002:a1c:a514:: with SMTP id
 o20mr108471635wme.149.1564495704002; 
 Tue, 30 Jul 2019 07:08:24 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id m24sm39374446wmi.39.2019.07.30.07.08.22
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 07:08:23 -0700 (PDT)
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Anup Patel <anup@brainfault.org>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
 <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
 <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
 <66c4e468-7a69-31e7-778b-228908f0e737@redhat.com>
 <CAAhSdy3b-o6y1fsYi1iQcCN=9ZuC98TLCqjHCYAzOCx+N+_89w@mail.gmail.com>
 <828f01a9-2f11-34b6-7753-dc8fa7aa0d18@redhat.com>
 <CAAhSdy19_dEL7e_sEFYi-hXvhVerm_cr3BdZ-TRw0aTTL-O9ZQ@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <816c70e7-0ea3-1dde-510e-f1d5c6a02dd5@redhat.com>
Date: Tue, 30 Jul 2019 16:08:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy19_dEL7e_sEFYi-hXvhVerm_cr3BdZ-TRw0aTTL-O9ZQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_070825_936797_F2CA7541 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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

On 30/07/19 15:35, Anup Patel wrote:
> On Tue, Jul 30, 2019 at 6:48 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>>
>> On 30/07/19 14:45, Anup Patel wrote:
>>> Here's some text from RISC-V spec regarding SIP CSR:
>>> "software interrupt-pending (SSIP) bit in the sip register. A pending
>>> supervisor-level software interrupt can be cleared by writing 0 to the SSIP bit
>>> in sip. Supervisor-level software interrupts are disabled when the SSIE bit in
>>> the sie register is clear."
>>>
>>> Without RISC-V hypervisor extension, the SIP is essentially a restricted
>>> view of MIP CSR. Also as-per above, S-mode SW can only write 0 to SSIP
>>> bit in SIP CSR whereas it can only be set by M-mode SW or some HW
>>> mechanism (such as S-mode CLINT).
>>
>> But that's not what the spec says.  It just says (just before the
>> sentence you quoted):
>>
>>    A supervisor-level software interrupt is triggered on the current
>>    hart by writing 1 to its supervisor software interrupt-pending (SSIP)
>>    bit in the sip register.
> 
> Unfortunately, this statement does not state who is allowed to write 1
> in SIP.SSIP bit.

If it doesn't state who is allowed to write 1, whoever has access to sip
can.

> I quoted MIP CSR documentation to highlight the fact that only M-mode
> SW can set SSIP bit.
> 
> In fact, I had same understanding as you have regarding SSIP bit
> until we had MSIP issue in OpenSBI.
> (https://github.com/riscv/opensbi/issues/128)
>
>> and it's not written anywhere that S-mode SW cannot write 1.  In fact
>> that text is even under sip, not under mip, so IMO there's no doubt that
>> S-mode SW _can_ write 1, and the hypervisor must operate accordingly.
> 
> Without hypervisor support, SIP CSR is nothing but a restricted view of
> MIP CSR thats why MIP CSR documentation applies here.

But the privileged spec says mip.MSIP is read-only, it cannot be cleared
(as in the above OpenSBI issue).  So mip.MSIP and sip.SSIP are already
different in that respect, and I don't see how the spec says that S-mode
SW cannot set sip.SSIP.

(As an aside, why would M-mode even bother using sip and not mip to
write 1 to SSIP?).

> I think this discussion deserves a Github issue on RISC-V ISA manual.

Perhaps, but I think it makes more sense this way.  The question remains
of why M-mode is not allowed to write to MSIP/MEIP/MTIP.  My guess is
that then MSIP/MEIP/MTIP are simply a read-only view of an external pin,
so it simplifies hardware a tiny bit by forcing acks to go through the
MMIO registers.

> If my interpretation is incorrect then it would be really strange that
> HART in S-mode SW can inject IPI to itself by writing 1 to SIP.SSIP bit.

Well, it can be useful, for example Windows does it when interrupt
handlers want to schedule some work to happen out of interrupt context.
 Going through SBI would be unpleasant if it causes an HS-mode trap.

Paolo

>>
>> In fact I'm sure that if Windows were ever ported to RISC-V, it would be
>> very happy to use that feature.  On x86, Intel even accelerated it
>> specifically for Microsoft. :)
> 
> That would be indeed very strange usage.  :)
> 
> Regards,
> Anup
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
