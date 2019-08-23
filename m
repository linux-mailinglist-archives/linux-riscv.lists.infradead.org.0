Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6EE9AE0F
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 13:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVVNljgnTi36/Bxpz9eKvrc+WTWBgLsgjFIlRm8ynH4=; b=EP0FClZsvVarej
	lo48yANt2BHAmJgGksbevNN5yIOCbj3xOc0eOPAbYODxDKyU7JEW+DO9KP9jJ+gOxb/6sFT37MoiD
	E0n18C53NC2fXQXnGCLaCIg0YTTH8HNcKYLtRmIjVq4nkSXajSdPljPW6h46z75GHRAUWG8jNI9Di
	YpBEqIi7xmjMEjB9pxvCX13sef6ppHtLAuHs0HarLm9qwMr7qQ5qhG+NVjA909yFN8b3wXdmf8hOo
	iQKeJyP6ewjXUH11RsEzouHDPThCTKEXZoAPdIyJkUohXn06jS6bkhXjdTNWVrWCpbtLMQeqkI/jt
	75prNKfYJKfaKSTXT5RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17hW-0004yi-NM; Fri, 23 Aug 2019 11:25:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17hT-0004xp-TQ
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 11:25:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id c5so8552940wmb.5
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 04:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2op3y+Z3X9zLwGWh5yuPCvqGBI0kNPuqyjux0dDAk8w=;
 b=aXeXefReU5hfFqxXgBXsV18a8odcYZXiwtAX5xokTAFEUr8r7Lhl2b/S7YxXNi6r8p
 n6FaMzY3lRdWRdBYqzfE7s4dbycNU98P8HZEgR1PHig9lMZFRcat/YCPkdx10UjouI8s
 9xp6M1+9utA+35p2ezpNZMVjSe6v/haZnkoLjx8j+l08IPugdvYR2mAQ5LUodYmA13ly
 6p7z/nFxYGz5m3gbMXZiXMrDWmsGAy9gLrkt92WWuGjsypHaUfv56sNObKze+U88M+Vw
 fHGrSDzchUBtV7QgvNBWcX+LZCJTZUUZ8nlM6BT8hSmOKA/dTouDxvJ+7Mh8/oeavyIE
 yMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2op3y+Z3X9zLwGWh5yuPCvqGBI0kNPuqyjux0dDAk8w=;
 b=So13m1/l1C6FMFnFUbfwP4FUvNaHvGMO6bzbZddj9jeM5t7c3gcLQDsbg1UEPfk45X
 NJm1VHKMkyWvMEGlkvLX5HJ17688lF2UJL6UPy1d5YwSTtjUCjcgJ+o/tvRMwCngOQUN
 CM8iwBa6MeShcVBzplZSqwaCjPaPrN7cVVe9sPLDntaHU5PNVYro5L664qlMGpjDMCva
 ic3eIj2menJauc/bpiBGkdEtSffmxHmQl98YsC6rqRbv7IguNVOFnvOh/tJ9CiWpHOTH
 dN2zTHMRIT8UjQfYQ4o65qmhrRFrKRPE1UW7Hvhz5tUgAu4nyDTT9CN5Zb3qmPQW30No
 +dkg==
X-Gm-Message-State: APjAAAVarLBqhfpqAprZeOJfQpLL82mQTxzvsTz8P4OJTFL1YyOfvjEe
 WcTdHMQ1VDXIBxWRnN5WHXZQw7Ip6a8uv/XG2Ntzfg==
X-Google-Smtp-Source: APXvYqycI41rK57NbAfGj4CZHgSbW6grDpjvAoH0BFDYwOsJIrsS4OcpuzhTo+8XrddhShRkR73OeGttOUX30LY+zAU=
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr4648907wme.103.1566559546115; 
 Fri, 23 Aug 2019 04:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <8a2a9ea6-5636-e79a-b041-580159e703b2@amazon.com>
In-Reply-To: <8a2a9ea6-5636-e79a-b041-580159e703b2@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 23 Aug 2019 16:55:34 +0530
Message-ID: <CAAhSdy2RC6Gw708wZs+FM56UkkyURgbupwdeTak7VcyarY9irg@mail.gmail.com>
Subject: Re: [PATCH v5 00/20] KVM RISC-V Support
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_042547_953687_92CB31D3 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Fri, Aug 23, 2019 at 1:39 PM Alexander Graf <graf@amazon.com> wrote:
>
> On 22.08.19 10:42, Anup Patel wrote:
> > This series adds initial KVM RISC-V support. Currently, we are able to boot
> > RISC-V 64bit Linux Guests with multiple VCPUs.
> >
> > Few key aspects of KVM RISC-V added by this series are:
> > 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
> > 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
> > 3. KVM ONE_REG interface for VCPU register access from user-space.
> > 4. PLIC emulation is done in user-space. In-kernel PLIC emulation, will
> >     be added in future.
> > 5. Timer and IPI emuation is done in-kernel.
> > 6. MMU notifiers supported.
> > 7. FP lazy save/restore supported.
> > 8. SBI v0.1 emulation for KVM Guest available.
> >
> > Here's a brief TODO list which we will work upon after this series:
> > 1. Handle trap from unpriv access in reading Guest instruction
> > 2. Handle trap from unpriv access in SBI v0.1 emulation
> > 3. Implement recursive stage2 page table programing
> > 4. SBI v0.2 emulation in-kernel
> > 5. SBI v0.2 hart hotplug emulation in-kernel
> > 6. In-kernel PLIC emulation
> > 7. ..... and more .....
>
> Please consider patches I did not comment on as
>
> Reviewed-by: Alexander Graf <graf@amazon.com>
>
> Overall, I'm quite happy with the code. It's a very clean implementation
> of a KVM target.

Thanks Alex.

>
> The only major nit I have is the guest address space read: I don't think
> we should pull in code that we know allows user space to DOS the kernel.
> For that, we need to find an alternative. Either you implement a
> software page table walker and resolve VAs manually or you find a way to
> ensure that *any* exception taken during the read does not affect
> general code execution.

I will send v6 next week. I will try my best to implement unpriv trap
handling in v6 itself.

Regards,
Anup

>
>
> Thanks,
>
> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
