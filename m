Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201977A04E
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 07:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIkYMf4w4+1sQ4Xhz7Ud8aupbhxNvHNh2uglKyuzH/0=; b=KHekmVfU9vCUT0
	ZVojxk9H/OdkqMKpZRl8O/H4dq2HmVzE+pIOYIundaiAQRKMhnTna99RlzQH5MPc41GnCMJ3f8eQW
	Z7ksQxMY0Jwdg0Emw97sWgwvcLeN21VltlEYe2UQqURp+VXT3bvMniNuGayNEsQz3GDqlrIE9hKQ5
	5wPaWmgrSOfzctnwS7WyRTLkZnytTZdx9jDzv6XLYtUWSEgN9QngS5clsQ1ADFuU+Yy0VEDK0L9eF
	O5bJoKF+grh/kCnkFWPQv5lxjz3Pj0vgrWCa1yLOsVz3Ly/pIleEbRPzFnT/woO5SIpWFAYuIOOYv
	jmVuyz7CAa0x1mh8rVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKez-0005Yx-SR; Tue, 30 Jul 2019 05:26:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKev-0005YD-0t
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 05:26:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id v15so55815830wml.0
 for <linux-riscv@lists.infradead.org>; Mon, 29 Jul 2019 22:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=47K6Qgo5QbrZVacaid1WG9JiEbdXdWfBJ5xwgMh492Q=;
 b=y2smEzLUhjWfJzia8TXdaSlDHyftOWzuH910O0PkAhV1T6cHiL6c6wLlk8CxkgNnU0
 CNwqtZsdVpRwMEbeXWYMlwX4m1NfMzmFn6GBQHJ6CzUFo3C69Tr5JOS0xCvt8Ze3HNGC
 TckHauXiV7jipXhyCxjA3RPxJCMB+MZz3nGc67U/l8hmsOQAUtl9Tcq+7tjBDWIYOuF+
 EYWGQLwgoYd32dqpj0MjQitNehY3lKlRWC3tQiCmiH5hSrEvYb/kHkhXoaBR7KbnB8Qv
 4aImkrmH/Oa0pcwxkJpzyoxP0n/5MHwqp1lrlT0U46nf+oHTCHpu0YTYMS6ii62EJGZP
 fX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=47K6Qgo5QbrZVacaid1WG9JiEbdXdWfBJ5xwgMh492Q=;
 b=kT07XavIB8+dCirQBeDQH4gOevmpRaWi2vPlavylueSzIEyYtjgizsiSwvjXsxpIfg
 r8rPeNRlqoD+jaeYZivhcPoTMrGLfkCosyA74lsSSAS95EBkkVRveRh9uAPfPcmmjIVV
 LSlA8y3JdWMdb1bAoX1WZkGVVlKy+wBn6gY9/hdFWDe1N2uYzl8zGBr8/UXWTSXj+ofr
 NnjMsHCYnsaRkDxRmvk0xBgiI7pIKAyh4YQrrEyfrSxiXTcMQKOyuEnycye+lS+ZVEbS
 8EPO0EaSE/8iccRXiB344sXi1PNgPtv97yTgsYfgeeps+HSM1xQLZR9c0sTh1DCVJbUB
 Pdjg==
X-Gm-Message-State: APjAAAU+WVM11WRwNhioLq3VMQZvOK2tOV/sQeElM31jYHPNjxXBbufW
 9RU3HIWbTiczkZJumCYnIA4Uhq/J91GrZnOMrCQ=
X-Google-Smtp-Source: APXvYqy9JqFCYGeBYIGRwK0STC3uyqMmE3umCULOglzUZYV5R/oHxsaevcpDD0VVoIXgi5fdeCDD/6ktHdvpucpNCOA=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr94263067wmg.24.1564464405064; 
 Mon, 29 Jul 2019 22:26:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <72e9f668-f496-3fca-a1a8-a3c3122a3fd9@redhat.com>
In-Reply-To: <72e9f668-f496-3fca-a1a8-a3c3122a3fd9@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 10:56:33 +0530
Message-ID: <CAAhSdy3Z6d2phRGo20eNWfa4onFwFtsOUPM+OCD465y0tvQ5wg@mail.gmail.com>
Subject: Re: [RFC PATCH 00/16] KVM RISC-V Support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_222649_117756_5579E01B 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Jul 30, 2019 at 3:17 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 29/07/19 13:56, Anup Patel wrote:
> > This series adds initial KVM RISC-V support. Currently, we are able to boot
> > RISC-V 64bit Linux Guests with multiple VCPUs.
> >
> > Few key aspects of KVM RISC-V added by this series are:
> > 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
> > 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
> > 3. KVM ONE_REG interface for VCPU register access from user-space.
> > 4. PLIC emulation is done in user-space. In-kernel PLIC emulation, will
> >    be added in future.
> > 5. Timer and IPI emuation is done in-kernel.
> > 6. MMU notifiers supported.
> > 7. FP lazy save/restore supported.
> > 8. SBI v0.1 emulation for KVM Guest available.
> >
> > More feature additions and enhancments will follow after this series and
> > eventually KVM RISC-V will be at-par with other architectures.
>
> This looks clean and it shouldn't take long to have it merged.  Please
> sort out the MAINTAINERS additions.  It would also be nice if
> tools/testing/selftests/kvm/ worked with RISC-V from the beginning;
> there have been recent ARM and s390 ports that you can take some
> inspiration from.

Thanks Paolo.

We will certainly include a patch in v2 series for MAINTAINERS entry.

We referred existing implementation of KVM ARM/ARM64, KVM powerpc
and KVM mips when we started KVM RISC-V port.

Here's a brief TODO list which we want to immediately work upon after this
series:
1. Handle trap from unpriv access in SBI v0.1 emulation
2. In-kernel PLIC emulation
3. SBI v0.2 emulation in-kernel
4. SBI v0.2 hart hotplug emulation in-kernel
5. ..... and so on .....

We will include above TODO list in v2 series cover letter as well.

Apart from above, we also have a more exhaustive TODO list based on study
of other KVM ports which we want to discuss at upcoming LPC 2019.

We were thinking to keep KVM RISC-V disabled by default (i.e. keep it
experimental) until we have validated it on some FPGA or real HW. For now,
users can explicitly enable it and play-around on QEMU emulation. I hope
this is fine with most people ?

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
