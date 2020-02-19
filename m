Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFCC163B39
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 04:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PFrPzzwmpyAD/udwXE359rvjJD5ZEgk+K9aOBrdRGe4=; b=S6vdK9/cplhkP04clj1Xr0gNd
	3Ub8K5RvD/agxCZ4YQSBKlazpdd/W+++C9NKrBUTKNRi6fYDgQxRtzNNciQ/o9dzpusQVF66/WCg3
	4HZG8VQw1NfK+l9dPwrrHx0uUniwvfE81e5vmsBjXM/ocXL8g+b6PRSHixCg6l7fdm6Ckpf0RydoV
	IXThiGKBDMydYY8LgYqLClvtHaK6gRcHTEA4QgViT2d6/2cBJ3s1BG0dU4Y9grL9oYQmaxltP5JS/
	9lSPJrFVkLtO1537HkPjXMXhih+WnrGYp0JdJeRblWqIrixbLbRZDzDq4kRWqUYm0U/YHm0xwEJ94
	LXK7k1ghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4G2i-0002w4-Ny; Wed, 19 Feb 2020 03:28:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4G2f-0002vK-0V
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 03:28:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id t23so4881813wmi.1
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 19:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PFrPzzwmpyAD/udwXE359rvjJD5ZEgk+K9aOBrdRGe4=;
 b=ZTcpg9Zvzm2Ac6+wAF372I1lGI//y+yRBrSU5kW2wA6VNPv3yptFR4gnP4NusurYX5
 E0Cyoe8S7d6FO50mtLaC/cDuQY9YtxgAglsLaKO+DuxNfOuBfuWUTfpxOFZn4Cnc39dk
 zlwhIpXITMnDYQuHmMuU5piaWl2f36nsUSq5cl6kr72sVhr4RZLDzsrHXidZCV9UrBYq
 seqSSXu1TEksjZLUk2AKA6e7vl7vJL8cfJGP3xLCpsEg+hVjCS0RQczc3Yfot+LKTh96
 p7p6ePUP+BwF2yl4uIDAY1g9zyOq1kn9ib/TbSTt1qSMHIgoqNWwT+93OKlkbsyKyqoq
 WDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PFrPzzwmpyAD/udwXE359rvjJD5ZEgk+K9aOBrdRGe4=;
 b=CuSKvUEDSKzhjw9dkQzFSb42g1p2pzBpYN6zEEJYIYpjsoD+bGHc4hhwNuM9yG+1UG
 uDRKcNKRH3ioIzZPMMgG7Ub4y6aTgqx/owFfoEglROQdf7CRebJ4Vxk0VOsYeUzuxULp
 +uhcMupa6op9Mmd7OgABTHxYk4jAnf7LPIWLtBnhF8Llq/FdAMiQnCai+bdgja/MAqwi
 U6eMCQ2ffZmrl/tKYSb6upgN4SBCLOZtz96AgWanznJbSjKrqZCE5m6L33lueLstfYae
 v6gLehmCneKgUBbut187faF+yNLROL4nHfQPoGWJPXXxPKku8kUenCZ+r6LLqt6pWOrh
 TBSA==
X-Gm-Message-State: APjAAAWQeHTNYYtqsPw67CROuN+yT0iGH8ZmJI1+hhxfUS/ycr/STX4P
 uQ1++yxixjSroIJUThoahOebQCs7PRglWCd7YvH2EA==
X-Google-Smtp-Source: APXvYqxSVPM8kfU6Iae8q2VWGU/sIXjjlqOBO7h73TYwMqPDl2u3Q1WJfEz4BPOyClmmzeP2Q3AidC1kme6QlYOAk0c=
X-Received: by 2002:a05:600c:285:: with SMTP id
 5mr6773557wmk.120.1582082929545; 
 Tue, 18 Feb 2020 19:28:49 -0800 (PST)
MIME-Version: 1.0
References: <CAOnJCU+_CnH6XcXbVrf4LCg3s830n6x6OyWckzoBC-kG2yFpwQ@mail.gmail.com>
 <mhng-afe8915b-f34a-49e5-86fd-92f5de4100ed@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-afe8915b-f34a-49e5-86fd-92f5de4100ed@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 19 Feb 2020 08:58:38 +0530
Message-ID: <CAAhSdy15mLGz3Xtu_Q7vOCP5Y2hQjWEosU1v8o8FxKfiLDx4qQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Don't enable all interrupts in trap_init()
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_192853_053418_77764178 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Atish Patra <atishp@atishpatra.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 12:06 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Sun, 02 Feb 2020 03:48:18 PST (-0800), atishp@atishpatra.org wrote:
> > On Sun, Feb 2, 2020 at 3:06 AM Anup Patel <anup.patel@wdc.com> wrote:
> >>
> >> Historically, we have been enabling all interrupts for each
> >> HART in trap_init(). Ideally, we should only enable M-mode
> >> interrupts for M-mode kernel and S-mode interrupts for S-mode
> >> kernel in trap_init().
> >>
> >> Currently, we get suprious S-mode interrupts on Kendryte K210
> >> board running M-mode NO-MMU kernel because we are enabling all
> >> interrupts in trap_init(). To fix this, we only enable software
> >> and external interrupt in trap_init(). In future, trap_init()
> >> will only enable software interrupt and PLIC driver will enable
> >> external interrupt using CPU notifiers.
>
> I think we should add a proper interrupt controller driver for the per-hart
> interrupt controllers, as doing this within the other drivers is ugly -- for
> example, there's no reason an MMIO timer or interrupt controller driver should
> be toggling these bits.

I have always been in support of having per-hart interrupt controller driver.

I will rebase my RISC-V INTC driver upon latest kernel and send it again.
Of course, now the situation has changed the RISC-V INTC driver will
have to consider NOMMU kernel as well.

The last version of RISC-V INTC driver can be found in riscv_intc_v2
branch of https://github.com/avpatel/linux.git

>
> >> Cc: stable@vger.kernel.org
> >> Fixes: 76d2a0493a17 ("RISC-V: Init and Halt Code)
>
> I'd argue this actually fixes the M-mode stuff, since that's the first place
> this issue shows up.  I've queued this with
>
> Fixes: a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs machine mode")
>
> instead, as that's the first commit that will actually write to MIE and
> therefor the first commit that will actually exhibit bad behavior.  It also has
> the advantage of making the patch apply on older trees, which should make life
> easier for the stable folks.

Sure, no problem.

>
> >> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> >> ---
> >>  arch/riscv/kernel/traps.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> >> index f4cad5163bf2..ffb3d94bf0cc 100644
> >> --- a/arch/riscv/kernel/traps.c
> >> +++ b/arch/riscv/kernel/traps.c
> >> @@ -156,6 +156,6 @@ void __init trap_init(void)
> >>         csr_write(CSR_SCRATCH, 0);
> >>         /* Set the exception vector address */
> >>         csr_write(CSR_TVEC, &handle_exception);
> >> -       /* Enable all interrupts */
> >> -       csr_write(CSR_IE, -1);
> >> +       /* Enable interrupts */
> >> +       csr_write(CSR_IE, IE_SIE | IE_EIE);
> >>  }
> >> --
> >> 2.17.1
> >>
> >>
> >
> > Looks good.
> > Reviewed-by: Atish Patra <atish.patra@wdc.com>
>
> Tested-by: Palmer Dabbelt <palmerdabbelt@google.com> [QMEU virt machine with SMP]
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> I consider this a bugfix, so I'm targeting it for RCs.  It's on fixes and
> should go up this week.
>
> Thanks!

Thanks,
Anup

