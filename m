Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6FC1B93C5
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 21:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vT/zsKORE2iDsOOIAsxzv0lVgu+AfWvwogQmIgzzmJ4=; b=MelmFCpOX2A82dsWiCeHg0is4
	wzgvYL4lCV1CXzDwcWFZTYg5H+XxuCg41CGXhTqHDKkViud6Gk+RqhqSHWqEdPeN5UCfyAZQ6JAgy
	XH/Dmf/crO2E/T/zgXvI1dJCdqDS6XwspN3W3cWXIA4v12+LIQxs+tvTpaRzM9Y6LnrrxtmxU+7HK
	Da99AFzRIasakkNJgOArsH6r9aDREeOm610xHCF65LaSnWXT1ltSjmC/3m5zMUHr8LmfoHwJG41c5
	zAxMyAtLZaz4Md899+Uh0HKLeHodONd3YY5k99UGCBS+96GVGfbQwBs6JljLh78czlFZzzvSmYdYc
	mRj6AZTXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSnKZ-0002vi-33; Sun, 26 Apr 2020 19:52:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSnKV-0002uZ-09
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 19:52:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id k13so18079694wrw.7
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 12:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vT/zsKORE2iDsOOIAsxzv0lVgu+AfWvwogQmIgzzmJ4=;
 b=rtJdJLtQldx1i8iCxZ5rDUF6CblbODdnDCgbNspbA0Ujnt6AyXZxpsgdlkh8mwzoXF
 KMrX+3oUGxKMSD2hLYMf5QwNUMDkMkaEyu8LaiTGPoi5gcnYJhug+ZtdkNBLLXxJYjER
 UUXfj2Dh60IM3DVXfvj4SGqeqxlDRpK9pAYDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vT/zsKORE2iDsOOIAsxzv0lVgu+AfWvwogQmIgzzmJ4=;
 b=YvbkCnoZrEhjO5oKfGYDU0I4qlOIPIIPThi8P07rG2Z9JDFzKa7xEOkqmMeZKTzAru
 2nXeyH+Bu+ihQd/m3p4BLULIqya/6ttNALVzoza+jKDSE6ZaUmX39N2f9vveBZsyP3Cs
 LkX+Y5ZeNMum8ah13sy0NCPD265OrRUGYD82HmCEltB4eW1RG5XGHjvIUXkwbd+BCyUa
 Fu/Ie2bB2y/07xdseDFTWBgaHkB1JdPihsENjsAj2CyGwoewOwEpRXA2ymVzXLN4+R8q
 MVBpMQ0pruGJk8mk3KShH6z3hoefB8Ta7MIIc9QxnGOWwUaMjlK7TdvOfuJTx+1viPRp
 HZvg==
X-Gm-Message-State: AGi0Puarl2BfF/zgUEiMx2VbKlMF2zijuVz+K6iImmDuHebBhCT0v0U5
 otMnwy/UH6cMscmSB7k6p3nGR2oQRLSEkgElmPhDCLHlyA==
X-Google-Smtp-Source: APiQypKlNYYpznrgIJwjt7cPENrof5+eRXXkEEBqLmoeRkhHUZQbLY/80ziELYDLrwHGr19YLPps7TrvHWU6Pl3PhwU=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr23080870wrr.162.1587930760934; 
 Sun, 26 Apr 2020 12:52:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200425193128.25638-1-ardb@kernel.org>
In-Reply-To: <20200425193128.25638-1-ardb@kernel.org>
From: Atish Patra <atishp@atishpatra.org>
Date: Sun, 26 Apr 2020 12:52:29 -0700
Message-ID: <CAOnJCUJpGUyK09x0oc8Ci+SdFV-cCMPxLqvD4trx0nb+ub3Yvg@mail.gmail.com>
Subject: Re: [GIT PULL] EFI stub loading support for RISC-V
To: Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_125243_068066_AD514922 
X-CRM114-Status: GOOD (  25.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Apr 25, 2020 at 12:31 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Palmer,
>
> As discussed, below are the changes for v5.8 that can be taken via the
> RISC-V tree to implement booting RISC-V Linux from EFI firmware.
>
> You can fetch and merge the signed tag directly, or merge 22090f84bc3f80
> and cherry pick the 4 patches on top of it, if you see any need to do so
> (but please use a topic branch in that case)
>
> Please be aware (as is noted in the tag) that these changes are really
> the bare minimum that is needed to launch the kernel from EFI firmware.
> In the current state, you may be able to boot from Uboot in EFI mode,
> but Tianocore based boot will not work at all, unless you convert the
> EFI memory map back to DT memory nodes in the firmware implementation,
> and I can assure you that that is not something that will be accepted in
> upstream Tianocore.
>
> So in summary, this is unfinished work, and I can only recommend merging
> these changes once there is a plan in place to complete the implementation.
>

I have started looking into this part. My initial plan was to start
looking into it right after I got
the boot time services working but other things took priority. Thanks
for your review and
suggestion throughout the process. I will coordinate with Abner/Daniel
to test RISC-V UEFI
runtime services(once implemented)  with tianocore.
> --
> Ard.
>
>
> The following changes since commit 22090f84bc3f8081e0ec180ccaedc85820085376:
>
>   efi/libstub: unify EFI call wrappers for non-x86 (2020-04-23 20:15:06 +0200)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git tags/riscv-efi-for-v5.8
>
> for you to fetch changes up to 66b4ac6b9dd1fdbb8ac7a1f20a8d08066368245d:
>
>   RISC-V: Add EFI stub support. (2020-04-25 13:59:54 +0200)
>
> ----------------------------------------------------------------
> EFI stub loading support for RISC-V
>
> This branch implements support for loading the RISC-V Linux kernel
> straight from EFI firmware, by adding PE/COFF metadata to the kernel
> image and incorporating the kernel's EFI stub.
>
> Note that this is the *bare* minimum that is needed to boot from EFI
> firmware. The following pieces are still missing at this point, and
> will be required for full interoperability with generic EFI firmware:
> - using the EFI memory map instead of the device tree to populate the
>   memblock tables
> - parsing and handling of generic EFI configuration tables (such as
>   SMBIOS), as well as architecture specific ones that may be defined
>   for RISC-V
> - runtime mapping of EFI runtime services memory and MMIO regions, and
>   support for EFI runtime services (get/set time, get/set variable, reset
>   system)
>
> ----------------------------------------------------------------
>
> Cc: Atish Patra <atish.patra@wdc.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: linux-riscv@lists.infradead.org
>
> Atish Patra (4):
>       include: pe.h: Add RISC-V related PE definition
>       RISC-V: Define fixmap bindings for generic early ioremap support
>       RISC-V: Add PE/COFF header for EFI stub
>       RISC-V: Add EFI stub support.
>
>  arch/riscv/Kconfig                        |  22 ++++++
>  arch/riscv/Makefile                       |   1 +
>  arch/riscv/configs/defconfig              |   1 +
>  arch/riscv/include/asm/Kbuild             |   1 +
>  arch/riscv/include/asm/efi.h              |  33 +++++++++
>  arch/riscv/include/asm/fixmap.h           |  18 +++++
>  arch/riscv/include/asm/io.h               |   1 +
>  arch/riscv/include/asm/sections.h         |  13 ++++
>  arch/riscv/kernel/Makefile                |   4 ++
>  arch/riscv/kernel/efi-header.S            | 100 +++++++++++++++++++++++++++
>  arch/riscv/kernel/head.S                  |  16 +++++
>  arch/riscv/kernel/image-vars.h            |  53 +++++++++++++++
>  arch/riscv/kernel/vmlinux.lds.S           |  22 +++++-
>  drivers/firmware/efi/Kconfig              |   3 +-
>  drivers/firmware/efi/libstub/Makefile     |  10 +++
>  drivers/firmware/efi/libstub/riscv-stub.c | 109 ++++++++++++++++++++++++++++++
>  include/linux/pe.h                        |   3 +
>  17 files changed, 407 insertions(+), 3 deletions(-)
>  create mode 100644 arch/riscv/include/asm/efi.h
>  create mode 100644 arch/riscv/include/asm/sections.h
>  create mode 100644 arch/riscv/kernel/efi-header.S
>  create mode 100644 arch/riscv/kernel/image-vars.h
>  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c



-- 
Regards,
Atish

