Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D81B1FBA
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 09:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NVh2e6/ifTcXX26EUZlsLHFUZWJInI/s/oH8jutqP40=; b=syczsUxgsDKXVgDbkLDyhm/ou
	S2ODPP4aqHvaSWVPEAc5kUZw65BidewHSm2caEjwNW5FqmwMg91y+ajvcRJHEVSQd0KZqiL4sxntt
	xs9V4OoInTovLXa+LNeA1k3u+leis1BJNx7OdFd+IyQvZbzKuoNFuDYHaYbTWMOVhyPst0jOocv/q
	4u76YQaagw/KPbdQJyLSH85mku1HiBC6CFp6OSwFQs34U7yOzO0zrG5acn+lRWi+eEX6UMeEQgHud
	eP1r01UNZ9FCUbwMY7lOJo6k+mSxTA/X3u/kNcWvyjO7GVCU0v+b6A7tDEHpf+iwCcvAPJJiasPQb
	pBD7u6+xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnGW-00043i-O3; Tue, 21 Apr 2020 07:24:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnGT-00042d-4O
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 07:24:19 +0000
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 510A82074B
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 07:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587453856;
 bh=6zceOSWqwAhK0DKj/24rioNk8lT8HlLw+8jDXzMcwu4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZhKfsthw72RYzNNwt/UQWcOXo5c6OTyhBhIs+q+IZ3lQ/X8hwX/9GVV9KVKGKdZky
 ttGLRzjR4PGtnOMUEmEfP+DmkjqbBPpl981HAjr8bk/B7mpWg9hKApfYRHTpQkv5AW
 BStXSzf/nkAbo2uRyrnWwz4e7+4yyxwy1oL+CkS8=
Received: by mail-io1-f52.google.com with SMTP id o127so13995803iof.0
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 00:24:16 -0700 (PDT)
X-Gm-Message-State: AGi0PuY0lGkYRAejind9g2d1TorMVuArlo8OkCUWzjWzZm5Ua8Vg2PA4
 Z03w4iBnWxXu6eLzbKIfPeZvP+SWapRvCMsfWW8=
X-Google-Smtp-Source: APiQypLLHbqrAD1vb/WetErR87p9iw/49ROjWxRdn0kjV+DQlfDNrQQnbn+LbFZuM8xMBV08/FbGIw1Y0KIeou/Aw6Y=
X-Received: by 2002:a6b:5904:: with SMTP id n4mr19828247iob.142.1587453855746; 
 Tue, 21 Apr 2020 00:24:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200421033336.9663-1-atish.patra@wdc.com>
In-Reply-To: <20200421033336.9663-1-atish.patra@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 21 Apr 2020 09:24:04 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEXTq8RhD-AM4i3ZmXRcLDTW8waNDbWNa0V8V1nz4zb_A@mail.gmail.com>
Message-ID: <CAMj1kXEXTq8RhD-AM4i3ZmXRcLDTW8waNDbWNa0V8V1nz4zb_A@mail.gmail.com>
Subject: Re: [v4 PATCH 0/3] Add UEFI support for RISC-V
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_002417_211394_8B0E484A 
X-CRM114-Status: GOOD (  23.28  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 at 05:34, Atish Patra <atish.patra@wdc.com> wrote:
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
> https://github.com/atishp04/linux/tree/wip_uefi_riscv_v4
>
> The patches have been verified on Qemu using bootefi command in U-Boot.
>
> Changes from v3->v4:
> 1. Rebased on top of efi-next.
> 2. Dropped patch 1 & 2 from this series as it is already queued in efi-next.
> Changes from v2->v3:
> 3. Improved handle_kernel_image() for RISC-V.
>

Thanks Atish. This looks nice and simple now.

I will need an ack from the RISC-V maintainers on these, and it is up
to them to consider whether the changes to core kconfigs and makefiles
are likely to cause trouble or not. If so, I am happy to work out a
way to merge this via a shared stable branch.



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
> Atish Patra (3):
> RISC-V: Define fixmap bindings for generic early ioremap support
> RISC-V: Add PE/COFF header for EFI stub
> RISC-V: Add EFI stub support.
>
> arch/riscv/Kconfig                        |  21 +++++
> arch/riscv/Makefile                       |   1 +
> arch/riscv/configs/defconfig              |   1 +
> arch/riscv/include/asm/Kbuild             |   1 +
> arch/riscv/include/asm/efi.h              |  44 +++++++++
> arch/riscv/include/asm/fixmap.h           |  18 ++++
> arch/riscv/include/asm/io.h               |   1 +
> arch/riscv/include/asm/sections.h         |  13 +++
> arch/riscv/kernel/Makefile                |   4 +
> arch/riscv/kernel/efi-header.S            |  99 ++++++++++++++++++++
> arch/riscv/kernel/head.S                  |  16 ++++
> arch/riscv/kernel/image-vars.h            |  53 +++++++++++
> arch/riscv/kernel/vmlinux.lds.S           |  20 +++-
> drivers/firmware/efi/Kconfig              |   2 +-
> drivers/firmware/efi/libstub/Makefile     |  10 ++
> drivers/firmware/efi/libstub/riscv-stub.c | 106 ++++++++++++++++++++++
> 16 files changed, 407 insertions(+), 3 deletions(-)
> create mode 100644 arch/riscv/include/asm/efi.h
> create mode 100644 arch/riscv/include/asm/sections.h
> create mode 100644 arch/riscv/kernel/efi-header.S
> create mode 100644 arch/riscv/kernel/image-vars.h
> create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>
> --
> 2.24.0
>

