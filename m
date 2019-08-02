Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9EE7EF8E
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 10:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYATeuwPSj+0BwoYEpM9lp7+ki4/+iGjsYtUWDhqmX8=; b=A74W8XpJSWqMIP
	OdRjh9Egn5UaiOrXfJFijUUDiiBZNcHsyx9rstyql0QyNFkXZInSJ0wPmXafA5MUlysYR+DeN3lNN
	D+HvbS3/G5El4sCvXQPimwgYYIgpDw+phUMawvXW4lEhMHfFRNKgyzpNybbDblef4RBwsSCZYMXLH
	5vum1833im3wi2lirTJ/0varibWfp8hIN0cxyTG0Bw2n8QNSdNIWrgO3pNRXDJjERcYM14B8sWPLY
	zkQ8v4JgmaFNMIzsJaCApQjIK4xWsD3MHWUBjF/ceJ77TIXuHGZdm3DxDlk4sEQA5IzsB1SMRzc82
	ckAWydTUYYhGLWns6HvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTAV-0000gh-R8; Fri, 02 Aug 2019 08:44:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTAS-0000g6-H4
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 08:44:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so51227072wrr.4
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 01:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4fvZtEUHzSAKzVrV5AOyqmz39HB0VJQNW+QYwyaRSP8=;
 b=eVWg8TPmTdTRpDNDCOsjC4/KOvtHtbA59TBmQpqBTpEAcbGe1sHWV9Ml4O0/GHWjIC
 TIk0QMnDFaqET3emtRhSQaQHsG2RAbId4A2KPGGTXL7s29NqSW0K7GhCoMcmZ+KZ8dKI
 PwC6FuSYrrbGPGJf7mkFuicfKeymU78FbY7saknYYNLWo+vqWdXIxb2vNEl+c/oSo1vJ
 D72TyjVS2XCILOUSIqknYw+d+6Lri7hcad32mztop9cmXfd93VlHjoizzJNNbHW94HmX
 c5BZ/dtEwOAoDlwI85Byw8UHZh49hT1dy6qXDhYaW/bYdZh16X7zSNGwUAWBPXZVo3k4
 lV6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4fvZtEUHzSAKzVrV5AOyqmz39HB0VJQNW+QYwyaRSP8=;
 b=BsYjWgizvvSW+M8ZCSXGxz79yHfFvTvmq5tVIvHEJw/DstQPfPV9dKdj+uZmEwDmyg
 OCo8ueJzYSlO9zbgJmYOs6u7WuL+94iWZKfWmCVrB/Bt7Ucjbqksl2UXDyT+pSIO3Ehm
 OFQnOdgWdQ42xYOoReKYHsyy+9BnP1t+9XRduksi/MMqhImYfG1TlJFPTH9LN0KHSSOZ
 FVfW7XJy7K4P5jd33BK6TMLujxinINcrWNJXwUSBy4gn16jlkIR+u4jz/6L3H9OVp3sA
 LWwtmBIDdhAPEghRvvjspL3Ov/QuY+WkWgFL4cvtZ2GcKAjC9bod2Oj9W7Q5HzFlKodY
 HlBg==
X-Gm-Message-State: APjAAAWOvv76M9txGAgZeyT430gZZOULLf2eIWoj6NW2fBS2U2l0OWyz
 J2UJO8dEtwxOC9cw8PPtyPzPA9XJ44L6NOrKOLI=
X-Google-Smtp-Source: APXvYqxas7y2Zc7v8qVSPU0beTBrHfoNVyfQR6SsOerqrYpig1rTc8AZXwSt8FqQnA9mXGGMe0nRqgvYh5el8Os44GI=
X-Received: by 2002:adf:b1cb:: with SMTP id
 r11mr136837207wra.328.1564735442789; 
 Fri, 02 Aug 2019 01:44:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-9-anup.patel@wdc.com>
 <72d8efbf-ec62-ab1e-68bf-e0c5f0bc256e@redhat.com>
In-Reply-To: <72d8efbf-ec62-ab1e-68bf-e0c5f0bc256e@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 2 Aug 2019 14:13:52 +0530
Message-ID: <CAAhSdy2_ZsnT7gSKb624r9wzuJSx+1TnKxgW6srtqvXV1Ri9Aw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 08/19] RISC-V: KVM: Implement VCPU world-switch
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_014404_620212_C01848B2 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Aug 2, 2019 at 2:00 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 02/08/19 09:47, Anup Patel wrote:
> > +     /* Save Host SSTATUS, HSTATUS, SCRATCH and STVEC */
> > +     csrr    t0, CSR_SSTATUS
> > +     REG_S   t0, (KVM_ARCH_HOST_SSTATUS)(a0)
> > +     csrr    t1, CSR_HSTATUS
> > +     REG_S   t1, (KVM_ARCH_HOST_HSTATUS)(a0)
> > +     csrr    t2, CSR_SSCRATCH
> > +     REG_S   t2, (KVM_ARCH_HOST_SSCRATCH)(a0)
> > +     csrr    t3, CSR_STVEC
> > +     REG_S   t3, (KVM_ARCH_HOST_STVEC)(a0)
> > +
>
> A possible optimization: if these cannot change while Linux runs (I am
> thinking especially of STVEC and HSTATUS, but perhaps SSCRATCH can be
> saved on kvm_arch_vcpu_load too) you can avoid the csrr and store.

Actual exception vector of Host Linux is different so we switch STVEC
every time.

HSTATUS.SPV is set whenever we come back from Guest world so
while we are in in-kernel run loop with interrupts enabled we can get
external interrupt and HSTATUS.SPV bit can affect SRET of interrupt
handler. To handle this we switch HSTATUS every time.

The world switch code uses SSCRATCH to save vcpu->arch pointer
which is later used on return path. Now, I did not want to restrict Host
Linux from using SSCRATCH for some other purpose hence we
switch SSCRATCH every time.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
