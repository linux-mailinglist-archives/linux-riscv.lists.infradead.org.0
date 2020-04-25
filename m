Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBC91B88FD
	for <lists+linux-riscv@lfdr.de>; Sat, 25 Apr 2020 21:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FVx9GN8BEPOow/CcAnlWRUhY8hd4TtqSNXU6AGGlM3E=; b=JaJo+5vYDFLmSyynL4iDTbLn2J
	alETO2U1qfLb9GJTPP9Ee1Qk9Vxqfp7N0Xk//1RG04eAY+xy2LYEHR/367zZvDBKj6uCmfEWLFnMu
	lJ8gumluGkcyFyMc2/sJQ1VapoUVL/Lmjynv+GoR7dVCPcSxxZR3M+rYWzJl/t1fgVcuMwKnUwkfU
	xRmW5SKEaEnmtQczxV/lL9uwIrOkvX1xzV7uztjjmfXYm3aWrzdq8EAjs/NIKCFMyAeVWOVuXUzNH
	NCk1cu2DMsVso16VZc5TcE63+D+2Zm+xqNp7DhpMQoubPwhmco/uUW4IUkbUc6osa3QypTO4xnSTV
	ehyPy/Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQWa-0003ft-No; Sat, 25 Apr 2020 19:31:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQWX-0003f4-8M
 for linux-riscv@lists.infradead.org; Sat, 25 Apr 2020 19:31:38 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F29B206D4;
 Sat, 25 Apr 2020 19:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587843096;
 bh=bfmoVkdzNl4CYumx83A+qzJVqLVofgMrn9i8wxJ7kR8=;
 h=From:To:Cc:Subject:Date:From;
 b=GuiZWAd5gflELrH2ZHYAfGKgeEYTYCrnC4MORecUqKLiLc/+lsIgNzwNA/fJokDR8
 Saax5ZX+e2jOjnjSqYqzg6bi/TiuyWlucXj3ug3kiQtxYFbV7xEdAVG67YZP3DrDJO
 JXYRwnLnB2KAB9lmrPQFbxOwoCvQBMW+TPe8brQE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [GIT PULL] EFI stub loading support for RISC-V
Date: Sat, 25 Apr 2020 21:31:28 +0200
Message-Id: <20200425193128.25638-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_123137_335576_E55076EF 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer,

As discussed, below are the changes for v5.8 that can be taken via the
RISC-V tree to implement booting RISC-V Linux from EFI firmware.

You can fetch and merge the signed tag directly, or merge 22090f84bc3f80
and cherry pick the 4 patches on top of it, if you see any need to do so
(but please use a topic branch in that case)

Please be aware (as is noted in the tag) that these changes are really
the bare minimum that is needed to launch the kernel from EFI firmware.
In the current state, you may be able to boot from Uboot in EFI mode,
but Tianocore based boot will not work at all, unless you convert the
EFI memory map back to DT memory nodes in the firmware implementation,
and I can assure you that that is not something that will be accepted in
upstream Tianocore.

So in summary, this is unfinished work, and I can only recommend merging
these changes once there is a plan in place to complete the implementation.

-- 
Ard.


The following changes since commit 22090f84bc3f8081e0ec180ccaedc85820085376:

  efi/libstub: unify EFI call wrappers for non-x86 (2020-04-23 20:15:06 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git tags/riscv-efi-for-v5.8

for you to fetch changes up to 66b4ac6b9dd1fdbb8ac7a1f20a8d08066368245d:

  RISC-V: Add EFI stub support. (2020-04-25 13:59:54 +0200)

----------------------------------------------------------------
EFI stub loading support for RISC-V

This branch implements support for loading the RISC-V Linux kernel
straight from EFI firmware, by adding PE/COFF metadata to the kernel
image and incorporating the kernel's EFI stub.

Note that this is the *bare* minimum that is needed to boot from EFI
firmware. The following pieces are still missing at this point, and
will be required for full interoperability with generic EFI firmware:
- using the EFI memory map instead of the device tree to populate the
  memblock tables
- parsing and handling of generic EFI configuration tables (such as
  SMBIOS), as well as architecture specific ones that may be defined
  for RISC-V
- runtime mapping of EFI runtime services memory and MMIO regions, and
  support for EFI runtime services (get/set time, get/set variable, reset
  system)

----------------------------------------------------------------

Cc: Atish Patra <atish.patra@wdc.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org

Atish Patra (4):
      include: pe.h: Add RISC-V related PE definition
      RISC-V: Define fixmap bindings for generic early ioremap support
      RISC-V: Add PE/COFF header for EFI stub
      RISC-V: Add EFI stub support.

 arch/riscv/Kconfig                        |  22 ++++++
 arch/riscv/Makefile                       |   1 +
 arch/riscv/configs/defconfig              |   1 +
 arch/riscv/include/asm/Kbuild             |   1 +
 arch/riscv/include/asm/efi.h              |  33 +++++++++
 arch/riscv/include/asm/fixmap.h           |  18 +++++
 arch/riscv/include/asm/io.h               |   1 +
 arch/riscv/include/asm/sections.h         |  13 ++++
 arch/riscv/kernel/Makefile                |   4 ++
 arch/riscv/kernel/efi-header.S            | 100 +++++++++++++++++++++++++++
 arch/riscv/kernel/head.S                  |  16 +++++
 arch/riscv/kernel/image-vars.h            |  53 +++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S           |  22 +++++-
 drivers/firmware/efi/Kconfig              |   3 +-
 drivers/firmware/efi/libstub/Makefile     |  10 +++
 drivers/firmware/efi/libstub/riscv-stub.c | 109 ++++++++++++++++++++++++++++++
 include/linux/pe.h                        |   3 +
 17 files changed, 407 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/include/asm/efi.h
 create mode 100644 arch/riscv/include/asm/sections.h
 create mode 100644 arch/riscv/kernel/efi-header.S
 create mode 100644 arch/riscv/kernel/image-vars.h
 create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

