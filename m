Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FEE1ABA32
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 09:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UwysS21lGwcOk9sdt+bD5rkRiZn/Dl2cmSHq9rD8tBU=; b=TxGJ4EeWV1USHA2h7IC+3KNZv
	l69OhlkzfJb2oe8ma2iHwXA2z0B+pf25prOb/OS9myZAocd3mhvUVFYZuud4TciEWSeKbCURhgYrw
	1Lg3RSIg1jrA2VaF4AdQon9j+2FbHP6XvngN9TLywoLrFdJPmTAhT7uyRPxQy9ekwg3wPtlZGUN9g
	xSjLcL0v3ABB+VRjKwbsPIFNNip3MZNGsclzw8PYOJB1irBXqfaQXJEM2qOg8n5y/q8Y7xx6s7sVP
	ocOuIZWAoa8JBldGGMnYHCfipoPIQ1syPvu0P6FrUsCLf/R+E/P4a9E0Ovh7CX7iXi/Y8ZD6fZzCn
	QHAh/bzDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzD8-00026p-W5; Thu, 16 Apr 2020 07:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzCm-0007qa-KF; Thu, 16 Apr 2020 07:45:02 +0000
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 426F320771;
 Thu, 16 Apr 2020 07:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587023100;
 bh=hE1B/GqPyAwbhU6GurhlP98Cp3yFkzngF+v28Ae6CuY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SefdfvWwUvkpCeZp632BCeHzCD1E+eBxMDa0onCAH2Tli/pzkNVZABj0lO3n08pjY
 VmCQN2x6QO95MKY5BUqMKZ4c1AH4K5buh1gDeCK6qDQM8rcrHaQo2cDaCTUluNRYae
 GB4jKKXt3Dw279ToHWFpWHh8k1UkuKegrxexBgm4=
Received: by mail-io1-f49.google.com with SMTP id i3so19997339ioo.13;
 Thu, 16 Apr 2020 00:45:00 -0700 (PDT)
X-Gm-Message-State: AGi0Puaff2cecEVUQQh8W/TOxXDcMgZFlbsEzkh03oSeNFo6XdNXhIj1
 Yo5uy0nku4mE2jKKQwRmRQ2f9v+zUQIYBx7HNqA=
X-Google-Smtp-Source: APiQypLeNbjPF2bsg5mHsKG6G7YQ+2nbEUjMovAnSywp2+B1+QAFYCPiz1sV8RVxrQ6TQUjDzT1dDy7DHtl2X6Sr8S8=
X-Received: by 2002:a02:3341:: with SMTP id k1mr20976288jak.74.1587023099650; 
 Thu, 16 Apr 2020 00:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200415195422.19866-1-atish.patra@wdc.com>
In-Reply-To: <20200415195422.19866-1-atish.patra@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Apr 2020 09:44:48 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEJGED_uumBR3V-cVjmCpJZu9mwW42gc9hptw+YS-004w@mail.gmail.com>
Message-ID: <CAMj1kXEJGED_uumBR3V-cVjmCpJZu9mwW42gc9hptw+YS-004w@mail.gmail.com>
Subject: Re: [v3 PATCH 0/5] Add UEFI support for RISC-V
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_004500_705663_9C01EEDE 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

(+ Arvind)

On Wed, 15 Apr 2020 at 21:54, Atish Patra <atish.patra@wdc.com> wrote:
>
> This series adds UEFI support for RISC-V. Currently, only boot time
> services have been added. Runtime services will be added in a separate
> series. This series depends on some core EFI patches
> present in current in efi-next and following other patches.
>
> U-Boot: Adds the boot hartid under chosen node.
> https://lists.denx.de/pipermail/u-boot/2020-April/405726.html
>
> Linux kernel: 5.7-rc1
>
> OpenSBI: master
>
> Patch 1 just moves arm-stub code to a generic code so that it can be used
> across different architecture.
>
> Patch 3 adds fixmap bindings so that CONFIG_EFI can be compiled and we do not
> have create separate config to enable boot time services.
> As runtime services are not enabled at this time, full generic early ioremap
> support is also not added in this series.
>
> Patch 4 and 5 adds the PE/COFF header and EFI stub code support for RISC-V
> respectively.
>
> The patches can also be found in following git repo.
>
> https://github.com/atishp04/linux/tree/wip_uefi_riscv_v3
>
> The patches have been verified on Qemu using bootefi command in U-Boot.
>
> Changes from v2->v3:
> 1. Rebased on top of latest efi patches.
> 2. Improved handle_kernel_image().
>
> Changes from v1->v2:
> 1. Rebased on 5.7-rc1.
> 2. Fixed minor typos and removed redundant macros/comments.
>
> Changes from previous version:
> 1. Renamed to the generic efi stub macro.
> 2. Address all redundant comments.
> 3. Supported EFI kernel image with normal booti command.
> 4. Removed runtime service related macro defines.
>
> Atish Patra (5):
> efi: Move arm-stub to a common file
> include: pe.h: Add RISC-V related PE definition
> RISC-V: Define fixmap bindings for generic early ioremap support
> RISC-V: Add PE/COFF header for EFI stub
> RISC-V: Add EFI stub support.
>

I had some comments regarding patch #5, but the other ones look fine.

Given that there are two series in flight now that touch the same
code, I am going to merge the patches #1 and #2 of this series into
efi/next.

Once the remaining changes are good to go, I can take them as well,
but I'll need one of the RISC-V maintainers to ack them first.


> arch/arm/Kconfig                              |   2 +-
> arch/arm64/Kconfig                            |   2 +-
> arch/riscv/Kconfig                            |  21 ++++
> arch/riscv/Makefile                           |   1 +
> arch/riscv/configs/defconfig                  |   1 +
> arch/riscv/include/asm/Kbuild                 |   1 +
> arch/riscv/include/asm/efi.h                  |  44 +++++++
> arch/riscv/include/asm/fixmap.h               |  18 +++
> arch/riscv/include/asm/io.h                   |   1 +
> arch/riscv/include/asm/sections.h             |  13 ++
> arch/riscv/kernel/Makefile                    |   4 +
> arch/riscv/kernel/efi-header.S                |  99 ++++++++++++++++
> arch/riscv/kernel/head.S                      |  16 +++
> arch/riscv/kernel/image-vars.h                |  53 +++++++++
> arch/riscv/kernel/vmlinux.lds.S               |  20 +++-
> drivers/firmware/efi/Kconfig                  |   4 +-
> drivers/firmware/efi/libstub/Makefile         |  19 ++-
> .../efi/libstub/{arm-stub.c => efi-stub.c}    |   0
> drivers/firmware/efi/libstub/riscv-stub.c     | 111 ++++++++++++++++++
> include/linux/pe.h                            |   3 +
> 20 files changed, 421 insertions(+), 12 deletions(-)
> create mode 100644 arch/riscv/include/asm/efi.h
> create mode 100644 arch/riscv/include/asm/sections.h
> create mode 100644 arch/riscv/kernel/efi-header.S
> create mode 100644 arch/riscv/kernel/image-vars.h
> rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)
> create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>
> --
> 2.24.0
>

