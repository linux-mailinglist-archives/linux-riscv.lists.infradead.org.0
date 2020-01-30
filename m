Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E9C14D543
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 03:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eVR1nsUvA+s0Il5EaHeRxaRkecDegUphjHSyTVxP/SQ=; b=gpBn0uJ3ZGqBELpb+R4oJO7qw
	sRZ9KFbQPxgIWGsANSfkbbRSRHVhJugXyF32lUzZCJx3VJ4dpPg/L4OeX/gYnMqjH8kDWV5q8JZxv
	wT68yF2QKzCDGjC6yQ0b+pWD+iycdCbFralQemnBio0NAsJHDX0D4RFF1h3r0j1mehFCvEkRcXCmQ
	KTNDVRfzchzzM39/vmLST5qz3WArYB8Yt1mDogjKMM9/AZGvwgwHSU/grcTbM7953SsY2JOU1Api2
	oo1aRODPeF18d62p1OhPv934Dg9hYes5bRc68gQELXWwppMB3ZCNVgKTihbXMSw2rMm6WQlqIpSzr
	3nL5jJBHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwzjP-0003dn-4P; Thu, 30 Jan 2020 02:38:59 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwzjM-0003dR-AS
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 02:38:57 +0000
Received: by mail-qv1-xf42.google.com with SMTP id o18so793968qvf.1
 for <linux-riscv@lists.infradead.org>; Wed, 29 Jan 2020 18:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eVR1nsUvA+s0Il5EaHeRxaRkecDegUphjHSyTVxP/SQ=;
 b=H0kmFT5wg6xK0knevGdhZq6KEPxr2CvGgazjfGO6/mFR7kxYaxBFiGJI6NEy01/31a
 S0P0IllTSTp2hxVHo4e3KX7MG3j4pV9hJ7Ma7Jojj4WJIsUskFSzqQLoaGXzh3sSVGQ9
 XKRCOXSm3aEu3n9qYv9afIQ489fVF2AbW/cT8KRhCIjhSKjhE47SozKBkhE2dTMlqsQb
 RU96+KWo7qr84eTowLvwgovR4iH9TqNSZU1lTIoWk69pM+VMLPTtr0+5n5fHCGBTiGFE
 1gszZ0YgxRO+GJmiUWfRXzV++JiUN5kFZN6+nHyds1TPSn7dPALxo6wARUEtpqA6+TX+
 Cl1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eVR1nsUvA+s0Il5EaHeRxaRkecDegUphjHSyTVxP/SQ=;
 b=h7SXZtcRsphXEjJuw0TCE4PcTQq94JEJqSS4SgK2eRRQlMhwftwOdTeNtY564kk5iR
 RdzIz/udF0OW6ZQe9lxIFYX0HGJREoVOo/SCIsU4xtCq1orkusiz+z3fLfUOBKf4c86a
 z+5h0qiILVtrX8k8E3W3kBtcxBYFh21oE6xfc4jgxD2UnCSbugnJlsBr0d3X8Z3l5IND
 vDLD0zhGDdzN3IjPUcvH+YyOUMUxSgq5lo0hcUeeej1EFAhbiLY/RyPcVJTe+MuYmvmD
 5Pv4N6/BW4Ky8bH1UpnSCkGOVeuKEg1RC2fvyIuT5x7fwsTP5BWAUvaKlqL7PNYStbFQ
 VRMg==
X-Gm-Message-State: APjAAAULB1Gbz5LnGjbtaqK/7jPP2qdHx5xZMAC5evbhubwC0hwri3SU
 jMhcf64NtteWBP8LCUFMWbeX0i2MZF4xY2PHmflGyQ==
X-Google-Smtp-Source: APXvYqwvNrCWRxI0SRrw2gl1XFrxAN3MN3gTMWJ/iumpdrLBGck/yfYyoHwGK3oxng6zWVpYQPZZbjvfgF+TK5fgXAI=
X-Received: by 2002:ad4:424e:: with SMTP id l14mr2525732qvq.118.1580351934494; 
 Wed, 29 Jan 2020 18:38:54 -0800 (PST)
MIME-Version: 1.0
References: <20200109031740.29717-1-greentime.hu@sifive.com>
 <mhng-f4b42a19-22f3-43f3-9750-58b994e23246@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-f4b42a19-22f3-43f3-9750-58b994e23246@palmerdabbelt-glaptop1>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Thu, 30 Jan 2020 10:38:43 +0800
Message-ID: <CAHCEeh+4a0O7tpp4dRXKudc6bmdJct=-H0SrPt=HbOs00T3-Hg@mail.gmail.com>
Subject: Re: [PATCH] riscv: set pmp configuration if kernel is running in
 M-mode
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_183856_395078_0C91ACF6 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: greentime@kernel.org, linux-riscv <linux-riscv@lists.infradead.org>,
 Gt <green.hu@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 3:23 AM Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>
> On Thu, 09 Jan 2020 03:17:40 GMT (+0000), greentime.hu@sifive.com wrote:
> > When the kernel is running in S-mode, the expectation is that the
> > bootloader or SBI layer will configure the PMP to allow the kernel to
> > access physical memory.  But, when the kernel is running in M-mode and is
> > started with the ELF "loader", there's probably no bootloader or SBI layer
> > involved to configure the PMP.  Thus, we need to configure the PMP
> > ourselves to enable the kernel to access all regions.
> >
> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > ---
> >  arch/riscv/include/asm/csr.h | 12 ++++++++++++
> >  arch/riscv/kernel/head.S     |  6 ++++++
> >  2 files changed, 18 insertions(+)
> >
> > diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> > index 0a62d2d68455..0f25e6c4e45c 100644
> > --- a/arch/riscv/include/asm/csr.h
> > +++ b/arch/riscv/include/asm/csr.h
> > @@ -72,6 +72,16 @@
> >  #define EXC_LOAD_PAGE_FAULT  13
> >  #define EXC_STORE_PAGE_FAULT 15
> >
> > +/* PMP configuration */
> > +#define PMP_R                        0x01
> > +#define PMP_W                        0x02
> > +#define PMP_X                        0x04
> > +#define PMP_A                        0x18
> > +#define PMP_A_TOR            0x08
> > +#define PMP_A_NA4            0x10
> > +#define PMP_A_NAPOT          0x18
> > +#define PMP_L                        0x80
> > +
> >  /* symbolic CSR names: */
> >  #define CSR_CYCLE            0xc00
> >  #define CSR_TIME             0xc01
> > @@ -100,6 +110,8 @@
> >  #define CSR_MCAUSE           0x342
> >  #define CSR_MTVAL            0x343
> >  #define CSR_MIP                      0x344
> > +#define CSR_PMPCFG0          0x3a0
> > +#define CSR_PMPADDR0         0x3b0
> >  #define CSR_MHARTID          0xf14
> >
> >  #ifdef CONFIG_RISCV_M_MODE
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index 5c8b24bf4e4e..f8f996916c5b 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -60,6 +60,12 @@ _start_kernel:
> >       /* Reset all registers except ra, a0, a1 */
> >       call reset_regs
> >
> > +     /* Setup a PMP to permit access to all of memory. */
> > +     li a0, -1
> > +     csrw CSR_PMPADDR0, a0
> > +     li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
> > +     csrw CSR_PMPCFG0, a0
>
> These should be guarded by some sort of #ifdef CONFIG_M_MODE, as they're not
> part of S mode.

Hi Palmer,

This code segment is guarded by CONFIG_RISCV_M_MODE

#ifdef CONFIG_RISCV_M_MODE
        /* flush the instruction cache */
        fence.i

        /* Reset all registers except ra, a0, a1 */
        call reset_regs

        /* Setup a PMP to permit access to all of memory. */
        li a0, -1
        csrw CSR_PMPADDR0, a0
        li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
        csrw CSR_PMPCFG0, a0

        /*
         * The hartid in a0 is expected later on, and we have no firmware
         * to hand it to us.
         */
        csrr a0, CSR_MHARTID
#endif /* CONFIG_RISCV_M_MODE */

