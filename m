Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4701C4966
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 00:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=qXuUF5w7g6lC1n/G1lz2lM2QKdQ45opx2MhRpkEwDZw=; b=fTje1aNumfKmiH
	y8NF0RPNf+5YN9T/f7jbviW3eczL7/jSatO+mU10Zeq6aYlq1TwqGM9+m2ytyNZtPICtgqIQlCT51
	3jFolM4PSqEJ+ByO6yvsA9HAZfwWMqtFzpwtbzoB8HpKCVtysm6bW+RzU2xfz/vfZdlR3wMsE65fM
	pbxTCLGPcSm693LxBU83jA435FuGHybhCeptzgXtIeX5STAvirjYe/N28X49v8DExEDEPuxhECApx
	lADcK8MJqGFPgRmSwfqW9c3VC9jyYsZ7dAJZtfrYVZJNe3sGq9qTttJWLMTb1m/gOfHmtAqzx2Mmt
	JkW6zyTypHQi4hgGzscA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjI0-0000bu-O8; Mon, 04 May 2020 22:10:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjHv-0000Vc-Jk
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 22:10:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id y25so17897pfn.5
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 15:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=qXuUF5w7g6lC1n/G1lz2lM2QKdQ45opx2MhRpkEwDZw=;
 b=lNcqGK492oKuELZ+zYOJ8tCM2rgWb0QYqBA6mHrjcG2ELqF3+5IOKNsYaCkK4c+rdR
 RNYzBuk4iXqnG6zK/SZYkVGFPkIr/Rr58+6SlKC7OzQXePdDOUC1NeS+Gv7eswRi6xXm
 zopB+GivActa4hEsrTK0EbvskRKHp6xBZFnNrdnzecZV0/x8N8ZCgSCloEYkYx3a11VO
 5UCZZqIZcDzCUkYYWy9eSKp9YpOwtJ7VTSXmMdrwZPkL0JhiLNgWlYRb5xDxRUvzcgoE
 Uwt0n5Uunaqffo7HutIbMmv6aEV3Rm6QJZHhjAVJWjuLznOeo56ru3+80saDRUWoxLIC
 HoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=qXuUF5w7g6lC1n/G1lz2lM2QKdQ45opx2MhRpkEwDZw=;
 b=XjLVTETQxhiyDh/qH5pYwrOT87Wj6FfuPqaPkmW6Z8q940rnumDJXwXStVWzRYfXeZ
 qy2rDj5kJfEKL1pqhnjAIy06wACQh0F2+wZUVN3vJClJ6Eo3dSy8nghJNZulVlr3JgYY
 xi1cFMxVXo9emfS1meL6y+zt7ap97YctdKRWKcQvrZx7gk1jkDTVEcFyyT/EU0DH0VO/
 8eqegssSRbs0eslMisBhumb23Wk7YGsNxKoOAqgnx+/ZFEWIFKV503K4nvUdNCWilRWq
 7VtbzlIsD7jubiJW/EK4bCq/66b88/dgN7LM0+WDVj5GSms9U7NRdHd8/plbWtCNg/i7
 pavQ==
X-Gm-Message-State: AGi0PuZoWrTeyO/SaAyy8yN+L4bo6gvqBTlZ1huIwa31rRGmEXgxGGi0
 ARmhvaqHF1io0bmae/5T0whM1A==
X-Google-Smtp-Source: APiQypLoAUQvfl3jCgNmkTEiCsKB+3A79WO2BHbTvZJwWQGZmdM62j+IsCQgcN7nYGFaZ29Ie/jMVg==
X-Received: by 2002:a62:e30f:: with SMTP id g15mr56001pfh.150.1588630210901;
 Mon, 04 May 2020 15:10:10 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id v26sm67384pfe.121.2020.05.04.15.10.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 15:10:10 -0700 (PDT)
Date: Mon, 04 May 2020 15:10:10 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 15:08:02 PDT (-0700)
Subject: Re: [GIT PULL] EFI stub loading support for RISC-V
In-Reply-To: <CAMj1kXHXaTP=GN8s9Q0DWGT7XtV+XnB_2R68yyuWguMqP3m3+w@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ardb@kernel.org
Message-ID: <mhng-4513bd18-556a-4b92-a16a-04be757776ed@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_151011_655754_A6C49427 
X-CRM114-Status: GOOD (  31.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, atishp@atishpatra.org,
 Atish Patra <Atish.Patra@wdc.com>, linux-efi@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 04:54:48 PDT (-0700), ardb@kernel.org wrote:
> On Thu, 30 Apr 2020 at 00:52, Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> On Tue, 28 Apr 2020 10:57:48 PDT (-0700), atishp@atishpatra.org wrote:
>> > On Sun, Apr 26, 2020 at 12:52 PM Atish Patra <atishp@atishpatra.org> wrote:
>> >>
>> >> On Sat, Apr 25, 2020 at 12:31 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>> >> >
>> >> > Palmer,
>> >> >
>> >> > As discussed, below are the changes for v5.8 that can be taken via the
>> >> > RISC-V tree to implement booting RISC-V Linux from EFI firmware.
>> >> >
>> >> > You can fetch and merge the signed tag directly, or merge 22090f84bc3f80
>> >> > and cherry pick the 4 patches on top of it, if you see any need to do so
>> >> > (but please use a topic branch in that case)
>> >> >
>> >> > Please be aware (as is noted in the tag) that these changes are really
>> >> > the bare minimum that is needed to launch the kernel from EFI firmware.
>> >> > In the current state, you may be able to boot from Uboot in EFI mode,
>> >> > but Tianocore based boot will not work at all, unless you convert the
>> >> > EFI memory map back to DT memory nodes in the firmware implementation,
>> >> > and I can assure you that that is not something that will be accepted in
>> >> > upstream Tianocore.
>> >> >
>> >> > So in summary, this is unfinished work, and I can only recommend merging
>> >> > these changes once there is a plan in place to complete the implementation.
>> >> >
>> >>
>> >> I have started looking into this part. My initial plan was to start
>> >> looking into it right after I got
>> >> the boot time services working but other things took priority. Thanks
>> >> for your review and
>> >> suggestion throughout the process. I will coordinate with Abner/Daniel
>> >> to test RISC-V UEFI
>> >> runtime services(once implemented)  with tianocore.
>> >> > --
>> >> > Ard.
>> >> >
>> >> >
>> >> > The following changes since commit 22090f84bc3f8081e0ec180ccaedc85820085376:
>> >> >
>> >> >   efi/libstub: unify EFI call wrappers for non-x86 (2020-04-23 20:15:06 +0200)
>> >> >
>> >> > are available in the Git repository at:
>> >> >
>> >> >   git://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git tags/riscv-efi-for-v5.8
>> >> >
>> >> > for you to fetch changes up to 66b4ac6b9dd1fdbb8ac7a1f20a8d08066368245d:
>> >> >
>> >> >   RISC-V: Add EFI stub support. (2020-04-25 13:59:54 +0200)
>> >> >
>> >> > ----------------------------------------------------------------
>> >> > EFI stub loading support for RISC-V
>> >> >
>> >> > This branch implements support for loading the RISC-V Linux kernel
>> >> > straight from EFI firmware, by adding PE/COFF metadata to the kernel
>> >> > image and incorporating the kernel's EFI stub.
>> >> >
>> >> > Note that this is the *bare* minimum that is needed to boot from EFI
>> >> > firmware. The following pieces are still missing at this point, and
>> >> > will be required for full interoperability with generic EFI firmware:
>> >> > - using the EFI memory map instead of the device tree to populate the
>> >> >   memblock tables
>> >> > - parsing and handling of generic EFI configuration tables (such as
>> >> >   SMBIOS), as well as architecture specific ones that may be defined
>> >> >   for RISC-V
>> >> > - runtime mapping of EFI runtime services memory and MMIO regions, and
>> >> >   support for EFI runtime services (get/set time, get/set variable, reset
>> >> >   system)
>> >> >
>> >> > ----------------------------------------------------------------
>> >> >
>> >> > Cc: Atish Patra <atish.patra@wdc.com>
>> >> > Cc: Palmer Dabbelt <palmer@dabbelt.com>
>> >> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> >> > Cc: Albert Ou <aou@eecs.berkeley.edu>
>> >> > Cc: linux-riscv@lists.infradead.org
>> >> >
>> >> > Atish Patra (4):
>> >> >       include: pe.h: Add RISC-V related PE definition
>> >> >       RISC-V: Define fixmap bindings for generic early ioremap support
>> >> >       RISC-V: Add PE/COFF header for EFI stub
>> >> >       RISC-V: Add EFI stub support.
>> >> >
>> >> >  arch/riscv/Kconfig                        |  22 ++++++
>> >> >  arch/riscv/Makefile                       |   1 +
>> >> >  arch/riscv/configs/defconfig              |   1 +
>> >> >  arch/riscv/include/asm/Kbuild             |   1 +
>> >> >  arch/riscv/include/asm/efi.h              |  33 +++++++++
>> >> >  arch/riscv/include/asm/fixmap.h           |  18 +++++
>> >> >  arch/riscv/include/asm/io.h               |   1 +
>> >> >  arch/riscv/include/asm/sections.h         |  13 ++++
>> >> >  arch/riscv/kernel/Makefile                |   4 ++
>> >> >  arch/riscv/kernel/efi-header.S            | 100 +++++++++++++++++++++++++++
>> >> >  arch/riscv/kernel/head.S                  |  16 +++++
>> >> >  arch/riscv/kernel/image-vars.h            |  53 +++++++++++++++
>> >> >  arch/riscv/kernel/vmlinux.lds.S           |  22 +++++-
>> >> >  drivers/firmware/efi/Kconfig              |   3 +-
>> >> >  drivers/firmware/efi/libstub/Makefile     |  10 +++
>> >> >  drivers/firmware/efi/libstub/riscv-stub.c | 109 ++++++++++++++++++++++++++++++
>> >> >  include/linux/pe.h                        |   3 +
>> >> >  17 files changed, 407 insertions(+), 3 deletions(-)
>> >> >  create mode 100644 arch/riscv/include/asm/efi.h
>> >> >  create mode 100644 arch/riscv/include/asm/sections.h
>> >> >  create mode 100644 arch/riscv/kernel/efi-header.S
>> >> >  create mode 100644 arch/riscv/kernel/image-vars.h
>> >> >  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>> >>
>> >>
>> >>
>> >> --
>> >> Regards,
>> >> Atish
>> >
>> > Hi Palmer,
>> > There were few build errors for all-yes config and nommu reported by
>> > 0-day tests.
>> > As some of the fixes require to add some dummy declarations for efi
>> > runtime related functions,
>> > Ard suggested that we should drop the series for now and merge with
>> > full uefi support later.
>>
>> OK, I'll wait for another patch set.  That makes my life a bit easier as well,
>> as we don't have to do the multi-tree merge in a single release.
>
> Yeah. Apologies for the back and forth, but I really don't want to end
> up in a place where I am juggling EFI fixes and have to care about
> architectures that can't even use EFI in a meaningful way.

No problem, I just wanted to make sure I understood correctly as it was going
to be my first time trying to handle a multi-tree patch set like this so I'm a
bit lost.

