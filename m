Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8E39AF13
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 14:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vP5hVeuW9Z6m0EK/R8dWKCr1iK83OjlSB3L/NwVV+g=; b=VRlpsQzfgVsSMB
	i8+419yyZUE41tpHKTHpXfMqyVZWmjPYyRp2lvMymdE60LGwvnvE/eF6nRN8CyyF7BEquOtkNFJCW
	mbjGxArJMM7j1L7uWg3kYObFEuuyKd6Q3shc0VtlFwhO5AxBL0pdq7MCEb6Q74sb5fdVgqphk3lYv
	1Aq8OSsHipuYyFWzifbfYU5H1dumkSeENsKUuPyBGVfv5UZYOfdxjeYgJKy7BU/DeUe0tiDsrxI+9
	6uAfwytU4K/OYi7AqRdwHXdIyI4h9YoEVQ+RYCjAXpIK4QNMr6K2MjXXFjwLzkM7M5DRgglP0/MHB
	C6y6jWT0bJ2TPuPuwolA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18XJ-0005VQ-0A; Fri, 23 Aug 2019 12:19:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18XG-0005V5-AR
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 12:19:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id u16so8468812wrr.0
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 05:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OYnKooGAz/mlH//vFYVeCnlGLtd4YMyaR7dMhD5g3Ao=;
 b=egKRBOY6T+iHEx6i2bpwOVrDK5E+iUy/1Jr2VP37Xdy4TLrla+q4pkZndjdXqnHiHK
 mtaTLIxuZBDXoLfDMhs4tYjjWnmMGtyl5dLbT1yCedbE7MMf8Mh90hvJdKJp+3qcI/tW
 MtUpYrMIf91Fd5vQMkm5yeMAHyx2FZ7jSNafbeDlyDfN9gxyJjsa4K1f68DNVX5C0VpA
 4zzgHgKKf74NPSusdkLYUGCaL7ep7967MErfnLWERuCwcRGWnaSBe7OQYYS/k/DQ+e8I
 Pj5tnbOCxnwiNxiDgpGICI9Do0qy2STOJpt8GCil1Kr5guweLZFAsmmdrDdHNVzdPm2z
 iUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OYnKooGAz/mlH//vFYVeCnlGLtd4YMyaR7dMhD5g3Ao=;
 b=ewk+xB1SgyzNZJkYoBheiiiz2jhzJQq+W6nY3tzWtKCfFKjHfSxc6gPPVC0Lnmob11
 lQKAmbbhwjPTFKuSu3jchmAoNaD89zM7eXK0zgBFJ9RFeGFk8XyKMbL/UvifkHVRTcBE
 NN+rSQkcv4DkD9TBSswmOWC/TQJrBXP0VQVE1p6yrCt9jH13BGqChcGkWwIPGLoGxaVS
 H+pDKjSF62qdkUgmQLInbocGDnxAiuUiuP3yvgqzMGc4g0e4H4Bim1NnB80a69kHmsaO
 2xv2gBvaAdEDMPqksQjoeoDZSBUOti/ecjzPlrI2cHCH+eLoEhBZ4jYu+GmziNErt06Z
 y1Ew==
X-Gm-Message-State: APjAAAW1ApnHwZUbS5nQ5W9949SF08gON9WMFwg/IPt7caQgBbwPj5CP
 iLDx7WvZgTiDpzP0Bg48Rf4OUJi/+6DD86au4ddkAQ==
X-Google-Smtp-Source: APXvYqyiffUPdRbthtoeU5iHSxUcXZATp2nwKI/3hiwIGiM2dZnwJz+txTHd6WA3LOy2smUSPUERZ3sDle/MwMI8wro=
X-Received: by 2002:adf:f641:: with SMTP id x1mr4992458wrp.179.1566562756752; 
 Fri, 23 Aug 2019 05:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <8a2a9ea6-5636-e79a-b041-580159e703b2@amazon.com>
 <CAAhSdy2RC6Gw708wZs+FM56UkkyURgbupwdeTak7VcyarY9irg@mail.gmail.com>
 <757C929B-D26C-46D9-98E8-1191E3B86F3C@amazon.com>
 <fda67a5d-6984-c3ef-8125-7805d927f15b@redhat.com>
In-Reply-To: <fda67a5d-6984-c3ef-8125-7805d927f15b@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 23 Aug 2019 17:49:05 +0530
Message-ID: <CAAhSdy1k96m8GinxAhcfRL_gOxCzK+ODfyjDxCmr-AF2ycntwA@mail.gmail.com>
Subject: Re: [PATCH v5 00/20] KVM RISC-V Support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_051918_364692_551C16DD 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "Graf \(AWS\), Alexander" <graf@amazon.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 5:40 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 23/08/19 13:44, Graf (AWS), Alexander wrote:
> >> Overall, I'm quite happy with the code. It's a very clean implementation
> >> of a KVM target.
>
> Yup, I said the same even for v1 (I prefer recursive implementation of
> page table walking but that's all I can say).
>
> >> I will send v6 next week. I will try my best to implement unpriv
> >> trap handling in v6 itself.
> > Are you sure unpriv is the only exception that can hit there? What
> > about NMIs? Do you have #MCs yet (ECC errors)? Do you have something
> > like ARM's #SError which can asynchronously hit at any time because
> > of external bus (PCI) errors?
>
> As far as I know, all interrupts on RISC-V are disabled by
> local_irq_disable()/local_irq_enable().

Yes, we don't have per-CPU interrupts for async bus errors or
non-maskable interrupts. The local_irq_disable() and local_irq_enable()
affect all interrupts (excepts traps).

Although, the async bus errors can certainly be routed to Linux
via PLIC (interrupt-controller) as regular peripheral interrupts.

Regards,
Anup

>
> Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
