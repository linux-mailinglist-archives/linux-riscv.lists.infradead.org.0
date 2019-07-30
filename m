Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135747A94E
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 15:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBMi3WF7aQpKSMPa1kaKpj3X+ui8NXUVebe+VUSLk38=; b=LrizSGCk1yTw68
	0pSe/ApnyU90wJWgT6aOmi9c+EQDmAf82j0O93hw/rjU1bEmCPckidShxKBkXG7l2UZLsy0dtXfnZ
	zXrFlA4PnuEv9p3EBq2LNeLEArddmeT3ID58BdyMafsyEEK3TU6BI9ruiQX+NS0HKVLhd4bsd1JVf
	emFECEE8VZYMFPwQ/Fii0SdtqXfKAIK3pmtAEKeUdeDS6dwh7nTHHbLMNOsnpn1SWXJtvmanPYyyb
	2IyH5c2jp1sRDKWx+qZK+zh1cYPONAyYRIqHDlWl8ntX8w+kt/gvy/gmZ58BIfasr/wujnlE5pwEK
	v40bFmUHDzOAcutXHxug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsS21-0001Ep-8n; Tue, 30 Jul 2019 13:19:09 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsS1v-0001Dp-IT
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 13:19:05 +0000
Received: by mail-wr1-f68.google.com with SMTP id x1so15848824wrr.9
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 06:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4T+N5rDWzyUqBCwwe6XKAKGnNik0HfsnLC/oOFv9Yvo=;
 b=RDvzPl4oMfa4A7cBTA9pU9xO7/KnBZA/WddHJY4OvXZ8mTmtrI7F6Iq0/0lWX9oXzs
 Gkmzpy7PNg8Fd+a9kk/Vp12tzvqpmwNrXfKTOks5I6grP3K/F5u4GdJg656DJ5Vl7ihJ
 I9pOuI1TiHMbQNXsHOyRhy+AQJCoNW4S039GwVDbVXin+pt52tOROh/X62fw15Ba1uvj
 0pH5DXbi7mXU3s+iwZrqU0G1YW6/DXXEW8gbiZvM1pz6ApP2hT/1tnaAwPtV+KzN7tX7
 R4YcwD2Hjf7vXJNUryfJIj6KPds58FD3cGlle4pPHzqGIqWmKeiTTf/0N6qIfRI+CiZG
 ax4A==
X-Gm-Message-State: APjAAAUhCKjFm0oQXxfl7EnYC9m21IHgj2wsZ/sbMFBGfawTizyyG9GU
 f06DbuNN7ZPvJue5MFyQoWUpqKLP8gA=
X-Google-Smtp-Source: APXvYqxH5jMUMQZRjTvBj61yj3IX+c8QpeNllhHi+YlYGKDbWnFDORisbT652uSyoJl02SGXzGJpZw==
X-Received: by 2002:a5d:4212:: with SMTP id n18mr5731078wrq.261.1564492738582; 
 Tue, 30 Jul 2019 06:18:58 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id a8sm51401838wma.31.2019.07.30.06.18.56
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 06:18:57 -0700 (PDT)
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Anup Patel <anup@brainfault.org>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
 <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
 <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
 <66c4e468-7a69-31e7-778b-228908f0e737@redhat.com>
 <CAAhSdy3b-o6y1fsYi1iQcCN=9ZuC98TLCqjHCYAzOCx+N+_89w@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <828f01a9-2f11-34b6-7753-dc8fa7aa0d18@redhat.com>
Date: Tue, 30 Jul 2019 15:18:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3b-o6y1fsYi1iQcCN=9ZuC98TLCqjHCYAzOCx+N+_89w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_061903_755844_29661C51 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On 30/07/19 14:45, Anup Patel wrote:
> Here's some text from RISC-V spec regarding SIP CSR:
> "software interrupt-pending (SSIP) bit in the sip register. A pending
> supervisor-level software interrupt can be cleared by writing 0 to the SSIP bit
> in sip. Supervisor-level software interrupts are disabled when the SSIE bit in
> the sie register is clear."
> 
> Without RISC-V hypervisor extension, the SIP is essentially a restricted
> view of MIP CSR. Also as-per above, S-mode SW can only write 0 to SSIP
> bit in SIP CSR whereas it can only be set by M-mode SW or some HW
> mechanism (such as S-mode CLINT).

But that's not what the spec says.  It just says (just before the
sentence you quoted):

   A supervisor-level software interrupt is triggered on the current
   hart by writing 1 to its supervisor software interrupt-pending (SSIP)
   bit in the sip register.

and it's not written anywhere that S-mode SW cannot write 1.  In fact
that text is even under sip, not under mip, so IMO there's no doubt that
S-mode SW _can_ write 1, and the hypervisor must operate accordingly.

In fact I'm sure that if Windows were ever ported to RISC-V, it would be
very happy to use that feature.  On x86, Intel even accelerated it
specifically for Microsoft. :)

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
