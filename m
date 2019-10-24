Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25F1E35E2
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 16:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADzwxb4B6UE7czYy8bkNsNMgz1ZcrkyHhgwvxazG9FA=; b=YR3Zodnra2S8sZ
	tNxdkfPFrqhxuRd11KeyQUYmvxHYpp3ukTgZ2DkqiFvC39++/YFEo4bPXu8XAo9UZZ9bfuxRJMNhu
	y9hy9NQHjH/Co0/OrzqaBR3hNtckuHoIl6nX7XygfyRWDqEi81sgT2AOH7ofm94IhDFiQngTW/drb
	YJL8s6+cpE8jCxzQKEENf4bipZ1gmjBkT+cDUv83Yjue+XqE/I9GbNLIMKDjw8ui4Kc3BnwyU+MeG
	Ylo6mWI9Zyl8GDZpbXRtMZ5Gfq3Nm3MpRDGRLsNa8/z7SUiMVFUScPqsgtTH3hCNWFi9QblwY8yiv
	bFCtO5lJtUeixOgyWZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeN7-00086e-6k; Thu, 24 Oct 2019 14:45:53 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeMp-0007wz-Rx; Thu, 24 Oct 2019 14:45:37 +0000
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x9OEj0sx031725;
 Thu, 24 Oct 2019 23:45:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x9OEj0sx031725
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1571928301;
 bh=Iz5ljsY1vmLvI0mOS7EWijhyK4tTqgM6F86vrENgiVs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=s/3XXtMPrgYa5LTI2ZQkwP+77816JFv39BTf+RDUEPgdjc4+o9Ozk+cVGMpQMboQW
 uHetnbcov/o14HFjiFEzdKc5v8rPhojKGG5pjjrUthcn3IM0gFAn1lR1/HOBzjEoYm
 Gh7cX6ByajtxTUHfmBMOGEgWTIXv8mHbIm00ldrnE6f0sH65nYGoWix74WOQTBv8jT
 MELhTa/9GWjVqIAlzpSt4OLL14Bn0If2/ISRyMIDoiVu8zbQRjsejXsI8rYfiShImS
 T9ECIGaAOQsj9cScfRlWOj+c0Oy7NHSAoh5S9XQ7usmpf3liDWQ3DQEM/kPXK0oYbQ
 P7gyusNCc5jkg==
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id q21so949520vsg.3;
 Thu, 24 Oct 2019 07:45:00 -0700 (PDT)
X-Gm-Message-State: APjAAAXfRSuHCbIOYS6lAdKON5C84CKzA+1gXuzfrM896fR3vmajm2sA
 Qa7gEa/fS4Tox1PeVV9EdkWduSlHwL3MomRfLYo=
X-Google-Smtp-Source: APXvYqwMmECxCcxI186HHSlk+trzDvWmCSjS3nuXCEEC9fv9GKq3Y9CX2QuL9vFeUeY4EpiP8jJ31MuCUnUXccmWpjo=
X-Received: by 2002:a67:e290:: with SMTP id g16mr6221500vsf.54.1571928299628; 
 Thu, 24 Oct 2019 07:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571911976.git.michal.simek@xilinx.com>
 <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
In-Reply-To: <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 24 Oct 2019 23:44:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQvZr48zXkyhii6E-wckYfakhh9gVD=DoBOt++TtPFEaw@mail.gmail.com>
Message-ID: <CAK7LNAQvZr48zXkyhii6E-wckYfakhh9gVD=DoBOt++TtPFEaw@mail.gmail.com>
Subject: Re: [PATCH 1/2] asm-generic: Make msi.h a mandatory include/asm header
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_074536_129666_40DFD97E 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Eric Biggers <ebiggers@google.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 sparclinux <sparclinux@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, Jackie Liu <liuyun01@kylinos.cn>,
 Russell King <linux@armlinux.org.uk>, Christoph Hellwig <hch@infradead.org>,
 Firoz Khan <firoz.khan@linaro.org>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>, longman@redhat.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Vineet Gupta <vgupta@synopsys.com>, Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paolo Bonzini <pbonzini@redhat.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 7:13 PM Michal Simek <michal.simek@xilinx.com> wrote:
>
> msi.h is generic for all architectures expect of x86 which has own version.

Maybe a typo?  "except"


Anyway, the code looks good to me.

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


> Enabling MSI by including msi.h to architecture Kbuild is just additional
> step which doesn't need to be done.
> The patch was created based on request to enable MSI for Microblaze.
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> https://lore.kernel.org/linux-riscv/20191008154604.GA7903@infradead.org/
> ---
>  arch/arc/include/asm/Kbuild     | 1 -
>  arch/arm/include/asm/Kbuild     | 1 -
>  arch/arm64/include/asm/Kbuild   | 1 -
>  arch/mips/include/asm/Kbuild    | 1 -
>  arch/powerpc/include/asm/Kbuild | 1 -
>  arch/riscv/include/asm/Kbuild   | 1 -
>  arch/sparc/include/asm/Kbuild   | 1 -
>  include/asm-generic/Kbuild      | 1 +
>  8 files changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/arch/arc/include/asm/Kbuild b/arch/arc/include/asm/Kbuild
> index 393d4f5e1450..1b505694691e 100644
> --- a/arch/arc/include/asm/Kbuild
> +++ b/arch/arc/include/asm/Kbuild
> @@ -17,7 +17,6 @@ generic-y += local64.h
>  generic-y += mcs_spinlock.h
>  generic-y += mm-arch-hooks.h
>  generic-y += mmiowb.h
> -generic-y += msi.h
>  generic-y += parport.h
>  generic-y += percpu.h
>  generic-y += preempt.h
> diff --git a/arch/arm/include/asm/Kbuild b/arch/arm/include/asm/Kbuild
> index 68ca86f85eb7..fa579b23b4df 100644
> --- a/arch/arm/include/asm/Kbuild
> +++ b/arch/arm/include/asm/Kbuild
> @@ -12,7 +12,6 @@ generic-y += local.h
>  generic-y += local64.h
>  generic-y += mm-arch-hooks.h
>  generic-y += mmiowb.h
> -generic-y += msi.h
>  generic-y += parport.h
>  generic-y += preempt.h
>  generic-y += seccomp.h
> diff --git a/arch/arm64/include/asm/Kbuild b/arch/arm64/include/asm/Kbuild
> index 98a5405c8558..bd23f87d6c55 100644
> --- a/arch/arm64/include/asm/Kbuild
> +++ b/arch/arm64/include/asm/Kbuild
> @@ -16,7 +16,6 @@ generic-y += local64.h
>  generic-y += mcs_spinlock.h
>  generic-y += mm-arch-hooks.h
>  generic-y += mmiowb.h
> -generic-y += msi.h
>  generic-y += qrwlock.h
>  generic-y += qspinlock.h
>  generic-y += serial.h
> diff --git a/arch/mips/include/asm/Kbuild b/arch/mips/include/asm/Kbuild
> index c8b595c60910..61b0fc2026e6 100644
> --- a/arch/mips/include/asm/Kbuild
> +++ b/arch/mips/include/asm/Kbuild
> @@ -13,7 +13,6 @@ generic-y += irq_work.h
>  generic-y += local64.h
>  generic-y += mcs_spinlock.h
>  generic-y += mm-arch-hooks.h
> -generic-y += msi.h
>  generic-y += parport.h
>  generic-y += percpu.h
>  generic-y += preempt.h
> diff --git a/arch/powerpc/include/asm/Kbuild b/arch/powerpc/include/asm/Kbuild
> index 64870c7be4a3..17726f2e46de 100644
> --- a/arch/powerpc/include/asm/Kbuild
> +++ b/arch/powerpc/include/asm/Kbuild
> @@ -10,4 +10,3 @@ generic-y += local64.h
>  generic-y += mcs_spinlock.h
>  generic-y += preempt.h
>  generic-y += vtime.h
> -generic-y += msi.h
> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> index 16970f246860..1efaeddf1e4b 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -22,7 +22,6 @@ generic-y += kvm_para.h
>  generic-y += local.h
>  generic-y += local64.h
>  generic-y += mm-arch-hooks.h
> -generic-y += msi.h
>  generic-y += percpu.h
>  generic-y += preempt.h
>  generic-y += sections.h
> diff --git a/arch/sparc/include/asm/Kbuild b/arch/sparc/include/asm/Kbuild
> index b6212164847b..62de2eb2773d 100644
> --- a/arch/sparc/include/asm/Kbuild
> +++ b/arch/sparc/include/asm/Kbuild
> @@ -18,7 +18,6 @@ generic-y += mcs_spinlock.h
>  generic-y += mm-arch-hooks.h
>  generic-y += mmiowb.h
>  generic-y += module.h
> -generic-y += msi.h
>  generic-y += preempt.h
>  generic-y += serial.h
>  generic-y += trace_clock.h
> diff --git a/include/asm-generic/Kbuild b/include/asm-generic/Kbuild
> index adff14fcb8e4..ddfee1bd9dc1 100644
> --- a/include/asm-generic/Kbuild
> +++ b/include/asm-generic/Kbuild
> @@ -4,4 +4,5 @@
>  # (This file is not included when SRCARCH=um since UML borrows several
>  # asm headers from the host architecutre.)
>
> +mandatory-y += msi.h
>  mandatory-y += simd.h
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
