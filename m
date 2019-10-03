Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F72C97F4
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjIR8OSobY7Gnz+ia1vRYSDCq72gi24O9J9tOJFU6Wo=; b=saaVnfbg9203RH
	v1SanxRFmqeoIjN8HAEKg479b9ApYWd57A5vgbIV9G+4jWyqkBfPY1yDRjlA0lpRcGLmlZXIX8kN6
	KrN5ynPosRhDZ0rAAjhn+5g5k7OAwZap5N+zVl6JJaXAWd5ZOBtgohnnvwV7QpHO8TKZkozfP+cAg
	lETI5+EZVd2bqogam3ak4ESr6+23fA3vMxLAErTMLEQr6X7NsHMA5wBSYRHQfahprw6zC0D+EJsjC
	c5WeV0D73ZK5z1rDCgTu8ZqcG6kasN57Lft2CLVAfAd4jGjPJi2i701jg6SRibfidfXIhbVSXnkrW
	SOa2TyqCNDu7DxSpALHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtgz-0004Wn-9J; Thu, 03 Oct 2019 05:30:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtgw-0004WJ-Kx
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:30:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id p14so468406wro.4
 for <linux-riscv@lists.infradead.org>; Wed, 02 Oct 2019 22:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NKOOmFJoWYoEPN+uqtmhf6aauubkx5IFocgXqh0aQII=;
 b=DXp0N9M7YUJCq9IoMUwGmDeleNVsb98z4MSfodW+tVsnEydckKyJ1XMHTsB0rbtdNU
 sP/qSwdvfNgwx9qtCNSaU2CNk6CQgNuJ+a0xYGD9F+ZgzkBZgVULfUCN6nlKnHyMEqiq
 LlChvZ+diAcyvscPqIMfNJX/mYJfiVB56j1kUHWiXk0L34LWrOdxqjuz3zfewRRnLt9Z
 Ci7Fl2OHWikQrTFBx2qnwebIA+UoRSwoKdS1AVRSmDfG8cp/nYoHHiMMiQ5Y0+rooK7N
 4/Fnj/zul2VDdZfUblpZ+zGa19KM1dmWsZVZnMA/YTORlIuq0SQvAamA92VPAkIBHTv/
 HXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NKOOmFJoWYoEPN+uqtmhf6aauubkx5IFocgXqh0aQII=;
 b=ppu7R0ErNm8nNlhXQYIkfBAPyvb/Gncf8ielpWezGrzRio+Xl7RGbnFXEFvZS8LvgI
 M7+THXR+utaSgrgo+7Gl+uFhLFrEfxgPsX0YH2mvDMnmq5MTCO22aIUbI6iPffguRztk
 cZlQ3nZrBYRcKAL81vWJ8txZ8zw7NiZA/ODJGtkKICeURtf4s7p/x0DizLjXiQpjLKdf
 26A164Q8rguGrhLAAGwKOx2uQjaZXAbG/qZZT66iPaib9SjU2Y9wtZd0Kp8ZakyjuQYP
 XilePZ/o30zJuRtsd6V6nlD9IOKOw+Qfu2UBxShrfaCuFVXm1L1/IihSpa8W4V5gmE/K
 2cwg==
X-Gm-Message-State: APjAAAW1H1w+NCKmwVVXDMcx5gB6DELtHNFxXS/L7SVZBVKVrH/kd71J
 9H3qgrTzd+o+CJwW0FQDwRD+6oDpd3iFWAax6x4cyg==
X-Google-Smtp-Source: APXvYqyYtSNsSITbR86n+CKf4F746HTQXw8m95TdwzKZpdisLevGSmmfp17GxGe1VP6NycjkRGhyI8T3BFH/Gmk9qzc=
X-Received: by 2002:adf:ef12:: with SMTP id e18mr1611901wro.65.1570080616914; 
 Wed, 02 Oct 2019 22:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190927000915.31781-1-atish.patra@wdc.com>
 <20190927000915.31781-4-atish.patra@wdc.com>
 <20190927222107.GC4700@infradead.org>
In-Reply-To: <20190927222107.GC4700@infradead.org>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 3 Oct 2019 11:00:05 +0530
Message-ID: <CAAhSdy2kAze4bt17kVA3tB4H6qXPMSUroi5ybPcTvFB_=p48oQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] RISC-V: Move SBI related macros under uapi.
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_223018_690132_A51A1C66 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 3:51 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Thu, Sep 26, 2019 at 05:09:15PM -0700, Atish Patra wrote:
> > All SBI related macros can be reused by KVM RISC-V and userspace tools
> > such as kvmtool, qemu-kvm. SBI calls can also be emulated by userspace
> > if required. Any future vendor extensions can leverage this to emulate
> > the specific extension in userspace instead of kernel.
>
> Just because userspace can use them that doesn't mean they are a
> userspace API.  Please don't do this as this limits how we can ever
> remove previously existing symbols.  Just copy over the current
> version of the file into the other project of your choice instead
> of creating and API we need to maintain.

These defines are indeed part of KVM userspace API because we will
be forwarding SBI calls not handled by KVM RISC-V kernel module to
KVM userspace (QEMU/KVMTOOL). The forwarded SBI call details
are passed to userspace via "struct kvm_run" of KVM_RUN ioctl.

Please refer PATCH17 and PATCH18 of KVM RISC-V v8 series.

Currently, we implement SBI v0.1 for KVM Guest hence we end-up
forwarding CONSOLE_GETCHAR and CONSOLE_PUTCHART to
KVM userspace.

In future we will implement SBI v0.2 for KVM Guest where we will be
forwarding the SBI v0.2 experimental and vendor extension calls
to KVM userspace.

Eventually, we will stop emulating SBI v0.1 for Guest once we have
all required calls in SBI v0.2. At that time, all SBI v0.1 calls will be
always forwarded to KVM userspace.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
