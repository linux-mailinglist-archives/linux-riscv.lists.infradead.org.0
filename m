Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABB98F41C
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 21:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+6S8SJ4wzl3SFRrMCDP4nY9kng/R2KFEZqKjL+iros=; b=MNaR7kp2iaUJMR
	mjnGxX2qk985mrHjZYJX+qZpAa7dv49ZzOtRQNO8byG+zFYzTXPtEqb/t29WF6BHaOOmHZ/hwaR6S
	4HYHQ/VP64sSC7P1Mithq+yHMCDiAxFUcrtzvATB0CIFRTFshPuwvC9XO5X1nzpGXfrJeQs7b4FkB
	iGGqoHx84x7NwwxnEFGoXmPV/OBIMhzy8kBurYku1X+2yBVYpa506PSazJnrCD/1SXIky0RbHzQTE
	88DJ/m/2KgArhKQSUpyPusCObGX0NRt4up5a43HeCTgHsEJCuNZ53cqwhkp/xvI9qGDFSGCY9esxh
	cq8W9Y1fPlFL6VNdoE/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyL6I-0001wE-LH; Thu, 15 Aug 2019 19:07:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyL6D-0001vP-Tk
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 19:07:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id f72so2127309wmf.5
 for <linux-riscv@lists.infradead.org>; Thu, 15 Aug 2019 12:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tBsH6G8xDjPBbisE7eK6/VhgX2T7A81OIBqCI71i9iE=;
 b=ZuC4bGhBIxaw602HwL2nG7CszOYB/j/jg7zfW/vAtooqvzLSy5coyIVbfLXpdQJPOE
 hIr3vw5kp1le/bMabqLo04ZAZK2+XL4P3YbU7RtASqoVHIfD5BAxVhnNnVXn9baaDYtC
 QNcCtfCr1ys3MSbWF5pCajgJyRCqKzLjkZpWeI0S7O+AhohlUdJvq8Qgv8J+VOKLy+oN
 TTmJB0/xF0yZnPddTvSrzd50vIx9K60EQPN9vuJ/cYVTQ+ICDAG2qes8lpBSkdv4ZTXq
 dAUTfKPQPmQDdi3BPm14+sO5GPrEUrjZULshsKxox5FTAzCdJU+RT1u1y4hP70ZggfBF
 Ocfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tBsH6G8xDjPBbisE7eK6/VhgX2T7A81OIBqCI71i9iE=;
 b=GazP9/ajZ9ApbNsija7+DPqYw+EPFyiWjByiKXtV+wU50MWT8N9LULQsVVKQaZld6+
 Ega3j+OQSeN2zuhieUqGsAKEw1MY8nHnPpVX2SqsQDfk6F2QjulRECWd93AAZjUOy2RO
 pLtghLdcDF1WpcJfvIc8lMl+e5TpDH9ecssjascOZgKWvDEUpw7jC/RlC2aD8WvaiSFm
 EdgAO/PkTEcJALifURujDJpVUhazk584nKY7wxYUu+7qhrXAvnm0QNwuABC1TVN26jNo
 nhOyI17OL3G69Kr942PMi9s3GjLqqIidr8/gP0BZoeyzxg3/OD9bu2r5vbfUesXXkI+Y
 obOA==
X-Gm-Message-State: APjAAAWevN3MQ6RU6jD286CHGvrwT/vXY9NtvCo1MVXVTFtmLCQNoTTg
 XzI+ols85VYmN7+asMV45nuTIMC26CKjgAd8ETA=
X-Google-Smtp-Source: APXvYqzix+51pj/isYyBNzDTtniw3OSI93Yr9WWrLDxkyOFIqVAGlLrFW9olHXKW77n3t8voZ6YSbWP2ti34O5rcEj0=
X-Received: by 2002:a1c:f90f:: with SMTP id x15mr3934778wmh.69.1565896067843; 
 Thu, 15 Aug 2019 12:07:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190607060049.29257-1-anup.patel@wdc.com>
 <20190607060049.29257-3-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1907101703150.3422@viisi.sifive.com>
 <847fb8c879bbd2c3fd41dc1e428b3217253acebb.camel@wdc.com>
In-Reply-To: <847fb8c879bbd2c3fd41dc1e428b3217253acebb.camel@wdc.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 15 Aug 2019 12:07:11 -0700
Message-ID: <CAEn-LTpz_iL0Ts5GG9J6oESN76DcjBaNs-Oz-c9CcpbmRiN5Sw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
To: Alistair Francis <Alistair.Francis@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_120749_982914_7A284F14 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 11:57 AM Alistair Francis
<Alistair.Francis@wdc.com> wrote:
>
> On Wed, 2019-07-10 at 17:05 -0700, Paul Walmsley wrote:
> > On Fri, 7 Jun 2019, Anup Patel wrote:
> >
> > > Currently, the setup_vm() does initial page table setup in one-shot
> > > very early before enabling MMU. Due to this, the setup_vm() has to
> > > map
> > > all possible kernel virtual addresses since it does not know size
> > > and
> > > location of RAM. This means we have kernel mappings for non-
> > > existent
> > > RAM and any buggy driver (or kernel) code doing out-of-bound access
> > > to RAM will not fault and cause underterministic behaviour.
> > >
> > > Further, the setup_vm() creates PMD mappings (i.e. 2M mappings) for
> > > RV64 systems. This means for PAGE_OFFSET=0xffffffe000000000 (i.e.
> > > MAXPHYSMEM_128GB=y), the setup_vm() will require 129 pages (i.e.
> > > 516 KB) of memory for initial page tables which is never freed. The
> > > memory required for initial page tables will further increase if
> > > we chose a lower value of PAGE_OFFSET (e.g. 0xffffff0000000000)
> > >
> > > This patch implements two-staged initial page table setup, as
> > > follows:
> > > 1. Early (i.e. setup_vm()): This stage maps kernel image and DTB in
> > > a early page table (i.e. early_pg_dir). The early_pg_dir will be
> > > used
> > > only by boot HART so it can be freed as-part of init memory free-
> > > up.
> > > 2. Final (i.e. setup_vm_final()): This stage maps all possible RAM
> > > banks in the final page table (i.e. swapper_pg_dir). The boot HART
> > > will start using swapper_pg_dir at the end of setup_vm_final(). All
> > > non-boot HARTs directly use the swapper_pg_dir created by boot
> > > HART.
> > >
> > > We have following advantages with this new approach:
> > > 1. Kernel mappings for non-existent RAM don't exists anymore.
> > > 2. Memory consumed by initial page tables is now indpendent of the
> > > chosen PAGE_OFFSET.
> > > 3. Memory consumed by initial page tables on RV64 system is 2 pages
> > > (i.e. 8 KB) which has significantly reduced and these pages will be
> > > freed as-part of the init memory free-up.
> > >
> > > The patch also provides a foundation for implementing strict kernel
> > > mappings where we protect kernel text and rodata using PTE
> > > permissions.
> > >
> > > Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
> > > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> >
> > Thanks, updated to apply and to fix a checkpatch warning, and
> > queued.
> >
> > This may not make it in for v5.3-rc1; if not, we'll submit it later.
>
> I'm seeing this failure on RV32 which I bisected to this patch:
>
> [    1.820461] systemd[1]: systemd 242-19-gdb2e367+ running in system
> mode. (-PAM -AUDIT -SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP
> -LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS
> +KMOD -IDN2 -IDN -PCRE2 default-hierarchy=hybrid)
> [    1.824320] Unable to handle kernel paging request at virtual
> address 9ff00c15
> [    1.824973] Oops [#1]
> [    1.825162] Modules linked in:
> [    1.825536] CPU: 0 PID: 1 Comm: systemd Not tainted 5.2.0-rc7 #1
> [    1.826039] sepc: c05c3c78 ra : c04b5a74 sp : df047ce0
> [    1.826514]  gp : c07a1038 tp : df04c000 t0 : 000000fc
> [    1.826919]  t1 : 00000002 t2 : 000003ef s0 : df047cf0
> [    1.827322]  s1 : df7090f8 a0 : 9ff00c15 a1 : c072166c
> [    1.827723]  a2 : 00000000 a3 : 00000001 a4 : 00000001
> [    1.828104]  a5 : df6f8138 a6 : 0000002f a7 : de62a000
> [    1.828534]  s2 : c072166c s3 : 00000000 s4 : 00000000
> [    1.828931]  s5 : c07a2000 s6 : 00400cc0 s7 : 00000400
> [    1.829319]  s8 : de491018 s9 : 00000000 s10: fffff000
> [    1.829702]  s11: de491030 t3 : de62b000 t4 : 00000000
> [    1.830090]  t5 : 00000000 t6 : 00000080
> [    1.830392] sstatus: 00000100 sbadaddr: 9ff00c15 scause: 0000000d
> [    1.831616] ---[ end trace 49a926a1a5300c00 ]---
> [    1.835776] Kernel panic - not syncing: Attempted to kill init!
> exitcode=0x0000000b
> [    1.836575] ---[ end Kernel panic - not syncing: Attempted to kill
> init! exitcode=0x0000000b ]---
>
> Does anyone else see this?
>
> A simple revert of this patch on 5.3-rc4 fixes the issue for me.

Yes, I do see those in Fedora/RISCV build farm every morning, but with
riscv64 and 5.2.0-rc7 kernel.

You also seem to run 5.2.0-rc7 kernel.

fedora-riscv-4 login: [178876.406122] Unable to handle kernel paging
request at virtual address 0000000000012a28
fedora-riscv-7 login: [17983.074847] Unable to handle kernel paging
request at virtual address 0fffffdff5e14700

david

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
