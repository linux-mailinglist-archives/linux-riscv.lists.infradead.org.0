Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E121BC752
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 19:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5lOQR/0LhdL7Cn40m4Omd/1YL4MKB8xUQs57NlDuHek=; b=oaaUVD8Rc1HcVRi5br+TeadVM
	YwmAzOmUfe7NAlQeN5NZrwseWyzKjoL4SQWDqxHNqEROKsT2IcpzbeWPQWa+5rhOlETHX6Y3sDKhP
	m1HmKWxdFc9IACCP3lxIlavgsp9atvkUi+HfZB4NJN9VhJL2fwNv76ydt4GqDWno8GVQ8P9As1zVR
	HE37sywu7xiiurCFUSBF+E+DghrdfqZIuhCxY2RTWhJeTwsuRF2HIsckBti9COLBMbu0CmUrf/NmB
	Y1hKV28oLPcqCHAzamwrE6r2cWY7EiaL191yrc85YjQLnMHEWA+EvZbjM2bSP1RGF6vdOVhhVo8NS
	e13e/JxfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUUg-0003ot-8F; Tue, 28 Apr 2020 17:58:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUUb-0003o1-JX
 for linux-riscv@lists.infradead.org; Tue, 28 Apr 2020 17:58:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so25003232wrt.5
 for <linux-riscv@lists.infradead.org>; Tue, 28 Apr 2020 10:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5lOQR/0LhdL7Cn40m4Omd/1YL4MKB8xUQs57NlDuHek=;
 b=LQzvdqLM0oAZv3fkh6QdWruitiuJ8wS90F5YLeN+LjB+Cr4EK7t8TJCzxLIpRe8GTa
 tXIFSunSbn7/lJlK0l5Yn78GRhtJS8ep29w6Mh/maQgdvrtOBf8wQOB3I/Y1RuHji5iR
 H8QnB8AxX1FoW4LF+NGNF6uQFqliwu4k0yWPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5lOQR/0LhdL7Cn40m4Omd/1YL4MKB8xUQs57NlDuHek=;
 b=T8IpURNVZOubVUGlz4L+ZzQj2fjVOOw/MZG+l9q0LXNyTX3yA8rAhFE74SPYMZLw0v
 g53phmwPUb4gyjQ/qA+907UGXSkXoptojbzSFIATL7PtmUpSH5IhddKSMMswSkbTvmPT
 QheLdR0DNodRtc6dyeCIYWAlOzUZ12TMsAp4fBFDIpjILjWSYM7PoDD7vnzyRazvLczZ
 ULUJ75Lvc4TEDh/+M5P3YtjE2XIDnne9p29e9sM2BQMtaF/jJcmGRX+g6DSctifLHF42
 U6pCGN/ZgZvZFaHJui7OMZPURT51ESt8z/NVHNJPDNQsnrLUK8ogF/jd17YXXh8ITOyc
 k9zQ==
X-Gm-Message-State: AGi0PubdCf2Dt2Nsv+NtY4CwLmVXMtTqEIhuZ4Ynr9qe8WReq5d1T+C1
 XLpci3+fxYG5ioULe7gwSWXF46TZ2CPt9M6y7s5J
X-Google-Smtp-Source: APiQypKWJk01qLF2xkgo+QNE09A4kSBGEaG2H+m491sR6fEG52tfyM+gNyaDBuhPUd7YMpcrFO4ZpKQBDDix1isnEv0=
X-Received: by 2002:adf:ab5c:: with SMTP id r28mr34098877wrc.384.1588096679681; 
 Tue, 28 Apr 2020 10:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200425193128.25638-1-ardb@kernel.org>
 <CAOnJCUJpGUyK09x0oc8Ci+SdFV-cCMPxLqvD4trx0nb+ub3Yvg@mail.gmail.com>
In-Reply-To: <CAOnJCUJpGUyK09x0oc8Ci+SdFV-cCMPxLqvD4trx0nb+ub3Yvg@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 28 Apr 2020 10:57:48 -0700
Message-ID: <CAOnJCUJp12H_QSbw9zcYQxeZtNGpNxQhu8mkzzxrFAUArf9qfg@mail.gmail.com>
Subject: Re: [GIT PULL] EFI stub loading support for RISC-V
To: Ard Biesheuvel <ardb@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_105801_704398_7A7B4376 
X-CRM114-Status: GOOD (  30.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 linux-efi <linux-efi@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 12:52 PM Atish Patra <atishp@atishpatra.org> wrote:
>
> On Sat, Apr 25, 2020 at 12:31 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Palmer,
> >
> > As discussed, below are the changes for v5.8 that can be taken via the
> > RISC-V tree to implement booting RISC-V Linux from EFI firmware.
> >
> > You can fetch and merge the signed tag directly, or merge 22090f84bc3f80
> > and cherry pick the 4 patches on top of it, if you see any need to do so
> > (but please use a topic branch in that case)
> >
> > Please be aware (as is noted in the tag) that these changes are really
> > the bare minimum that is needed to launch the kernel from EFI firmware.
> > In the current state, you may be able to boot from Uboot in EFI mode,
> > but Tianocore based boot will not work at all, unless you convert the
> > EFI memory map back to DT memory nodes in the firmware implementation,
> > and I can assure you that that is not something that will be accepted in
> > upstream Tianocore.
> >
> > So in summary, this is unfinished work, and I can only recommend merging
> > these changes once there is a plan in place to complete the implementation.
> >
>
> I have started looking into this part. My initial plan was to start
> looking into it right after I got
> the boot time services working but other things took priority. Thanks
> for your review and
> suggestion throughout the process. I will coordinate with Abner/Daniel
> to test RISC-V UEFI
> runtime services(once implemented)  with tianocore.
> > --
> > Ard.
> >
> >
> > The following changes since commit 22090f84bc3f8081e0ec180ccaedc85820085376:
> >
> >   efi/libstub: unify EFI call wrappers for non-x86 (2020-04-23 20:15:06 +0200)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git tags/riscv-efi-for-v5.8
> >
> > for you to fetch changes up to 66b4ac6b9dd1fdbb8ac7a1f20a8d08066368245d:
> >
> >   RISC-V: Add EFI stub support. (2020-04-25 13:59:54 +0200)
> >
> > ----------------------------------------------------------------
> > EFI stub loading support for RISC-V
> >
> > This branch implements support for loading the RISC-V Linux kernel
> > straight from EFI firmware, by adding PE/COFF metadata to the kernel
> > image and incorporating the kernel's EFI stub.
> >
> > Note that this is the *bare* minimum that is needed to boot from EFI
> > firmware. The following pieces are still missing at this point, and
> > will be required for full interoperability with generic EFI firmware:
> > - using the EFI memory map instead of the device tree to populate the
> >   memblock tables
> > - parsing and handling of generic EFI configuration tables (such as
> >   SMBIOS), as well as architecture specific ones that may be defined
> >   for RISC-V
> > - runtime mapping of EFI runtime services memory and MMIO regions, and
> >   support for EFI runtime services (get/set time, get/set variable, reset
> >   system)
> >
> > ----------------------------------------------------------------
> >
> > Cc: Atish Patra <atish.patra@wdc.com>
> > Cc: Palmer Dabbelt <palmer@dabbelt.com>
> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > Cc: linux-riscv@lists.infradead.org
> >
> > Atish Patra (4):
> >       include: pe.h: Add RISC-V related PE definition
> >       RISC-V: Define fixmap bindings for generic early ioremap support
> >       RISC-V: Add PE/COFF header for EFI stub
> >       RISC-V: Add EFI stub support.
> >
> >  arch/riscv/Kconfig                        |  22 ++++++
> >  arch/riscv/Makefile                       |   1 +
> >  arch/riscv/configs/defconfig              |   1 +
> >  arch/riscv/include/asm/Kbuild             |   1 +
> >  arch/riscv/include/asm/efi.h              |  33 +++++++++
> >  arch/riscv/include/asm/fixmap.h           |  18 +++++
> >  arch/riscv/include/asm/io.h               |   1 +
> >  arch/riscv/include/asm/sections.h         |  13 ++++
> >  arch/riscv/kernel/Makefile                |   4 ++
> >  arch/riscv/kernel/efi-header.S            | 100 +++++++++++++++++++++++++++
> >  arch/riscv/kernel/head.S                  |  16 +++++
> >  arch/riscv/kernel/image-vars.h            |  53 +++++++++++++++
> >  arch/riscv/kernel/vmlinux.lds.S           |  22 +++++-
> >  drivers/firmware/efi/Kconfig              |   3 +-
> >  drivers/firmware/efi/libstub/Makefile     |  10 +++
> >  drivers/firmware/efi/libstub/riscv-stub.c | 109 ++++++++++++++++++++++++++++++
> >  include/linux/pe.h                        |   3 +
> >  17 files changed, 407 insertions(+), 3 deletions(-)
> >  create mode 100644 arch/riscv/include/asm/efi.h
> >  create mode 100644 arch/riscv/include/asm/sections.h
> >  create mode 100644 arch/riscv/kernel/efi-header.S
> >  create mode 100644 arch/riscv/kernel/image-vars.h
> >  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>
>
>
> --
> Regards,
> Atish

Hi Palmer,
There were few build errors for all-yes config and nommu reported by
0-day tests.
As some of the fixes require to add some dummy declarations for efi
runtime related functions,
Ard suggested that we should drop the series for now and merge with
full uefi support later.

-- 
Regards,
Atish

