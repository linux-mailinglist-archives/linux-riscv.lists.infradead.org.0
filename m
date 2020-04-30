Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F601BF735
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 13:55:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cpy4bSoQh9YSQ0DyPMX475JbTHabLknSpNNUhs+wWrA=; b=F1DQFe69NNiCg9q9RzBjEUcyh
	mwFRLinpEHX3PKx+eeTexVBRysQvNXk0KzqjvfPdDzNQK4Fc7BSjDC/1jHAvlmEouWTz2cLBqAog8
	KHO18qba2+UYqWxfqRKa6luvMhVwixB7dWjoddSct1xVkzHHVqabrbQl2eEqGaqR3yWhd1zLR5yrw
	82bzOiz4iX98D0eZQqWuCp9X0Vlt8M8Wady4eqNMA7VvPZD9kz6GSiXV1O2c/kA9WNs0UeuO+NCV4
	lBPAzcgtonoT4OLJsV7cQzz+ZkdM3H6WRGRf/5Hp2s1oIhisB8O/ze8VLmN2BCMX5Y7LRHGHmO0sk
	Ro3P8lPDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7mT-0003OO-Nx; Thu, 30 Apr 2020 11:55:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7mO-0002rn-Oc
 for linux-riscv@lists.infradead.org; Thu, 30 Apr 2020 11:55:02 +0000
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
 [209.85.166.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBECD2078D
 for <linux-riscv@lists.infradead.org>; Thu, 30 Apr 2020 11:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588247699;
 bh=6exdI6IOKOvwYpX87SA9c24+CEE5P9lDZk7I86ngsIw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ntGZnwiihZSMnKCPBTHBMuN0dg57pMiYX0qVsIpKDG5M6ey7sRuy7tkTuGgTPU9X0
 94wfedYmYc5n36sG/ENE856Bq3i2uoWCPjcHcYGx4HW54ExArnK/j77Tq52ZzrUKez
 4m6CZs5lpBzfod8fEx0PLtA1CjKnpc30shXBQECg=
Received: by mail-il1-f182.google.com with SMTP id m5so1012509ilj.10
 for <linux-riscv@lists.infradead.org>; Thu, 30 Apr 2020 04:54:59 -0700 (PDT)
X-Gm-Message-State: AGi0PubmWtaJxkxRgoWblzqHYAOlv8kVmT4JPJ04T2VW/l25IkTQROr+
 BI1cSvkrlwJ0Znv3R3YQ1oKas6o+qxkt9qNMGSE=
X-Google-Smtp-Source: APiQypJeRfYTYYnm7KocjfHYpA+DLis3+KeYfVc/9Ao9m5RR0SP6bJ9dWZ0lqLUUNjnu+60n3rQPYZpA2pZnIYoUcEk=
X-Received: by 2002:a92:3c55:: with SMTP id j82mr1536736ila.258.1588247699224; 
 Thu, 30 Apr 2020 04:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAOnJCUJp12H_QSbw9zcYQxeZtNGpNxQhu8mkzzxrFAUArf9qfg@mail.gmail.com>
 <mhng-970b2596-146b-456e-be2d-9b7291775df5@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-970b2596-146b-456e-be2d-9b7291775df5@palmerdabbelt-glaptop1>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 30 Apr 2020 13:54:48 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHXaTP=GN8s9Q0DWGT7XtV+XnB_2R68yyuWguMqP3m3+w@mail.gmail.com>
Message-ID: <CAMj1kXHXaTP=GN8s9Q0DWGT7XtV+XnB_2R68yyuWguMqP3m3+w@mail.gmail.com>
Subject: Re: [GIT PULL] EFI stub loading support for RISC-V
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_045500_840402_0CD1FB90 
X-CRM114-Status: GOOD (  33.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Atish Patra <atishp@atishpatra.org>,
 Atish Patra <Atish.Patra@wdc.com>, linux-efi <linux-efi@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 at 00:52, Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 28 Apr 2020 10:57:48 PDT (-0700), atishp@atishpatra.org wrote:
> > On Sun, Apr 26, 2020 at 12:52 PM Atish Patra <atishp@atishpatra.org> wrote:
> >>
> >> On Sat, Apr 25, 2020 at 12:31 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >> >
> >> > Palmer,
> >> >
> >> > As discussed, below are the changes for v5.8 that can be taken via the
> >> > RISC-V tree to implement booting RISC-V Linux from EFI firmware.
> >> >
> >> > You can fetch and merge the signed tag directly, or merge 22090f84bc3f80
> >> > and cherry pick the 4 patches on top of it, if you see any need to do so
> >> > (but please use a topic branch in that case)
> >> >
> >> > Please be aware (as is noted in the tag) that these changes are really
> >> > the bare minimum that is needed to launch the kernel from EFI firmware.
> >> > In the current state, you may be able to boot from Uboot in EFI mode,
> >> > but Tianocore based boot will not work at all, unless you convert the
> >> > EFI memory map back to DT memory nodes in the firmware implementation,
> >> > and I can assure you that that is not something that will be accepted in
> >> > upstream Tianocore.
> >> >
> >> > So in summary, this is unfinished work, and I can only recommend merging
> >> > these changes once there is a plan in place to complete the implementation.
> >> >
> >>
> >> I have started looking into this part. My initial plan was to start
> >> looking into it right after I got
> >> the boot time services working but other things took priority. Thanks
> >> for your review and
> >> suggestion throughout the process. I will coordinate with Abner/Daniel
> >> to test RISC-V UEFI
> >> runtime services(once implemented)  with tianocore.
> >> > --
> >> > Ard.
> >> >
> >> >
> >> > The following changes since commit 22090f84bc3f8081e0ec180ccaedc85820085376:
> >> >
> >> >   efi/libstub: unify EFI call wrappers for non-x86 (2020-04-23 20:15:06 +0200)
> >> >
> >> > are available in the Git repository at:
> >> >
> >> >   git://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git tags/riscv-efi-for-v5.8
> >> >
> >> > for you to fetch changes up to 66b4ac6b9dd1fdbb8ac7a1f20a8d08066368245d:
> >> >
> >> >   RISC-V: Add EFI stub support. (2020-04-25 13:59:54 +0200)
> >> >
> >> > ----------------------------------------------------------------
> >> > EFI stub loading support for RISC-V
> >> >
> >> > This branch implements support for loading the RISC-V Linux kernel
> >> > straight from EFI firmware, by adding PE/COFF metadata to the kernel
> >> > image and incorporating the kernel's EFI stub.
> >> >
> >> > Note that this is the *bare* minimum that is needed to boot from EFI
> >> > firmware. The following pieces are still missing at this point, and
> >> > will be required for full interoperability with generic EFI firmware:
> >> > - using the EFI memory map instead of the device tree to populate the
> >> >   memblock tables
> >> > - parsing and handling of generic EFI configuration tables (such as
> >> >   SMBIOS), as well as architecture specific ones that may be defined
> >> >   for RISC-V
> >> > - runtime mapping of EFI runtime services memory and MMIO regions, and
> >> >   support for EFI runtime services (get/set time, get/set variable, reset
> >> >   system)
> >> >
> >> > ----------------------------------------------------------------
> >> >
> >> > Cc: Atish Patra <atish.patra@wdc.com>
> >> > Cc: Palmer Dabbelt <palmer@dabbelt.com>
> >> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> >> > Cc: Albert Ou <aou@eecs.berkeley.edu>
> >> > Cc: linux-riscv@lists.infradead.org
> >> >
> >> > Atish Patra (4):
> >> >       include: pe.h: Add RISC-V related PE definition
> >> >       RISC-V: Define fixmap bindings for generic early ioremap support
> >> >       RISC-V: Add PE/COFF header for EFI stub
> >> >       RISC-V: Add EFI stub support.
> >> >
> >> >  arch/riscv/Kconfig                        |  22 ++++++
> >> >  arch/riscv/Makefile                       |   1 +
> >> >  arch/riscv/configs/defconfig              |   1 +
> >> >  arch/riscv/include/asm/Kbuild             |   1 +
> >> >  arch/riscv/include/asm/efi.h              |  33 +++++++++
> >> >  arch/riscv/include/asm/fixmap.h           |  18 +++++
> >> >  arch/riscv/include/asm/io.h               |   1 +
> >> >  arch/riscv/include/asm/sections.h         |  13 ++++
> >> >  arch/riscv/kernel/Makefile                |   4 ++
> >> >  arch/riscv/kernel/efi-header.S            | 100 +++++++++++++++++++++++++++
> >> >  arch/riscv/kernel/head.S                  |  16 +++++
> >> >  arch/riscv/kernel/image-vars.h            |  53 +++++++++++++++
> >> >  arch/riscv/kernel/vmlinux.lds.S           |  22 +++++-
> >> >  drivers/firmware/efi/Kconfig              |   3 +-
> >> >  drivers/firmware/efi/libstub/Makefile     |  10 +++
> >> >  drivers/firmware/efi/libstub/riscv-stub.c | 109 ++++++++++++++++++++++++++++++
> >> >  include/linux/pe.h                        |   3 +
> >> >  17 files changed, 407 insertions(+), 3 deletions(-)
> >> >  create mode 100644 arch/riscv/include/asm/efi.h
> >> >  create mode 100644 arch/riscv/include/asm/sections.h
> >> >  create mode 100644 arch/riscv/kernel/efi-header.S
> >> >  create mode 100644 arch/riscv/kernel/image-vars.h
> >> >  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
> >>
> >>
> >>
> >> --
> >> Regards,
> >> Atish
> >
> > Hi Palmer,
> > There were few build errors for all-yes config and nommu reported by
> > 0-day tests.
> > As some of the fixes require to add some dummy declarations for efi
> > runtime related functions,
> > Ard suggested that we should drop the series for now and merge with
> > full uefi support later.
>
> OK, I'll wait for another patch set.  That makes my life a bit easier as well,
> as we don't have to do the multi-tree merge in a single release.

Yeah. Apologies for the back and forth, but I really don't want to end
up in a place where I am juggling EFI fixes and have to care about
architectures that can't even use EFI in a meaningful way.

