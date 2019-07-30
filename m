Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8927A8FD
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuF1V2eCzrmdk+kCDqU8Hfo75RF2xCgGIkIGTDs3X3Y=; b=KvFqTLPicCw/EZ
	ehXK6wrNzK+Mb3bmorqzhUie+FuXp0KgG9EUZTlMshu9fOjMz0XYpiIM/507nnQzdZwKowUly+WwW
	xdNVmqHcQ+EHNYK0br1hwi7KEUpx2oSVVGN/MEQglctD1SIsQnDueLnJxNa/ut2v0R8x3hYvGmfAw
	v01GVEfaoUzLchdcY/CJMNmevMNOF5gkv9Xi3y11IERkNbCFIIkeb3wAlIxLuCknk951raE4GE1Dr
	BKiTOxBuRD38S/s1+7ikKZCegjE9VssJlVjjkk7S7yWDXuRHS1WTieEsVz3OGjmcjBXkxSJcunDPR
	67jcgJ1jykvZ8XD54aTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRbR-0005a3-PQ; Tue, 30 Jul 2019 12:51:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRbO-0005Zb-3g
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:51:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id h19so45256139wme.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xlyMVEJE1Dy/QWFW2G9NXycH3WhR1tYzSwV5Ut1wIIw=;
 b=QyvteSpZvYEwd3gV2EtvARV1NGAzZRk5lzI2uo4SdM8QoQ36QBtPMGTg3JDRwhcFtR
 RpXL7DNOrvr1lP7GhriG0Fa+aGdcjHMS+hpGS/kuo+pyYMKQGSE/4of7VqDGY+vov/H5
 r7TNVf6EaAi7cC0DnOnJ8wtNZBkHk4vNlcrh1ex5A3pQBSfBT+j2zbjCJPGbIMeZu/pq
 QhcWAsS+vVjtTKy53+LSoBPyGfeqqHaHvqqYScc3s0Jm+WXk5so/EBMKcqspHr9pmK1W
 vBxsbxpgKH/VGIvvIDaorODcrwTeuSmfNl9AykChCaUJi0k828CGXOd2XLSlKY4SXwCU
 Todg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xlyMVEJE1Dy/QWFW2G9NXycH3WhR1tYzSwV5Ut1wIIw=;
 b=qVHNrA/N2oxi11OReWueZDI/UBRaPygsAqZDihZPZ8va1d+NbyrPHvpR75bcm4HG1O
 Hjw8AeiiGBuEmjOlMaJhd9pIu6R4hnj0Vdq2kqV+rqiqE4yRXrOj3KpB/7OccGF5w4oA
 apAQLiKd2bDXjTZgsYtkZKJyQjfcHbUZ3JCbsJqY0ppJXeTFyXbUhXom5Wembp3Mgh85
 i6qxz97nWkceiphSpKkEv6YfTBpdgf+O7dAdUrNuDNoCUcDIJ/Mytd1KWrP0BJAKUtME
 IlCdisdk+2ApOVUvwr+cQzVsWq5jMQlBTsZpMSG9uco6iKTBeURjbe0lE/BLgtrnJKPw
 OJQQ==
X-Gm-Message-State: APjAAAWY2ryeBLkUFcCsZjitvnHUxmVlfkXRbLynfcix3/1WRwxWcKx7
 stY1eAZQ0LfgHFw5n+N2edLw4veh+w1xYsjib9c=
X-Google-Smtp-Source: APXvYqxuguKU0X+siFrvn9HOub5fk0XoQDRv8R/r/X/5oWCQQU/kraAMUh75sFlJTua5yk0lVONdEWCEt0D0+4rQl0o=
X-Received: by 2002:a1c:e0c4:: with SMTP id
 x187mr100750011wmg.177.1564491096568; 
 Tue, 30 Jul 2019 05:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-8-anup.patel@wdc.com>
 <cbb1b995-be2f-96a5-9890-63e1941e7f3c@redhat.com>
In-Reply-To: <cbb1b995-be2f-96a5-9890-63e1941e7f3c@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 18:21:24 +0530
Message-ID: <CAAhSdy2KbiEq35NSyKHNjrxbJOeh0U02mmf=bueDuXCEZCyXpg@mail.gmail.com>
Subject: Re: [RFC PATCH 07/16] RISC-V: KVM: Implement VCPU world-switch
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_055138_152351_2BA6B5A1 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Tue, Jul 30, 2019 at 3:04 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 29/07/19 13:57, Anup Patel wrote:
> >  void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
> >  {
> > -     /* TODO: */
> > +     struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> > +
> > +     csr_write(CSR_HIDELEG, csr->hideleg);
> > +     csr_write(CSR_HEDELEG, csr->hedeleg);
>
> Writing HIDELEG and HEDELEG here seems either wrong or inefficient to me.
>
> I don't remember the spec well enough, but there are two cases:
>
> 1) either they only matter while the guest runs and then you can set
> them in kvm_arch_hardware_enable.  KVM common code takes care of doing
> this on all CPUs for you.

This is a good suggestion. I will use kvm_arch_hardware_enable() for
programming HIDELEG and HEDELEG CSRs.

>
> 2) or they also matter while the host runs and then you need to set them
> in vcpu_switch.S.

They don't matter in HS-mode so we don't need to access them in
vcpu_switch.S

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
