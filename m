Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C03170CBD
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 00:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=djIEdw8ANY4/stYcNyUCAg5bxeUx1iW05K2PCbQB4Xc=; b=lepsOALC6Z2E4C
	mJLDncQIiq91QxiYT89SOBLvzIVIWs+jnkdXaUYec03Cg3uT2GwKnNSMId3R02L3axvI26wGop4WM
	pysh8Mm2atpKH/qpKjZo0faBYbD9izavrofbAMYGL+7rBTHYKAyEyNguXBlZ5SM+2LWrFNnZJuaR6
	Ne7Iz8iN8SSKzt138Pyl8lab3g6xo1O4380DrkvbX5dSRGpQZSx7CWLSiQgWG+UlLO0LZYYyT4PxF
	bR7rLUyo+mVa34gXZpcuC6njK57eF0jgw3q/vZWlvkGgYSaMZslwZIfrlqaIvhfakkVffa6yFWmIB
	rvLhPQvil7SC3teIolgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j76OB-0008Rv-7H; Wed, 26 Feb 2020 23:46:51 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j76O6-0008Ql-PI
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 23:46:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 12so326263pjb.5
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 15:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=djIEdw8ANY4/stYcNyUCAg5bxeUx1iW05K2PCbQB4Xc=;
 b=Rlo5nx1PTAUXVDdYpnFkNekd6vje9me0Nm7R730e9zCmt5GtcTe5XP9GmY0rK3VPs5
 R0mrUtX4uqglI8t5qJBY3Ogq71BMF9m7bsFlJwoc/ASOMh6faKy9Ji11Ic/mVKRScJDr
 0LpMXMR90KpXWn9xhhriMUfVzC2NDGQJfG9IesjzKbVn0wM1b1t2dByUF/bPtk3g2IP+
 Gpm+kA12aw4OcOGZIwe6eQLBulL39GVFyULVOWUwNffMHvDF+sujWXAiSsQiPNE/l2Le
 8YPeLpER5zuZ9kH0QxbhpadmGnDYlRe8bwNyQqOBT5mwLATP6OiOUZLvlKZvr/sgW49B
 6mdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=djIEdw8ANY4/stYcNyUCAg5bxeUx1iW05K2PCbQB4Xc=;
 b=GPuixTjevoOmv7JRcsew5UeQY55AUGyLOZTWpDv2aAk1daPGy42ZNsLKvI4k119kfz
 3QH3UdNovidKjOaa7CwFgAYI9vDXEjkce8wsnnPYkh+MBJfRnFIfGps5tMCxlgSW/wrb
 EeV79PQKzatoevVSbanetKIn4FQ6FZKuB5PdCr2wjcv9UGqDvQb9wFc7vyJ0tD9tKOP7
 EWJ5tQe0JCENCqO2rjfnE+Jrk6t1H5w7zj0o30tpHq0FZBMw7EB0EDqv9CM9YHXMH/L+
 Hcas3iwv4F4pLkCxvJS5rgXoShfEz/GJt5l5LPCTlSfLdtxSeQrDOhgrR/fdbgRPRl0u
 qcuQ==
X-Gm-Message-State: APjAAAVRE6WUPkj0A70GixjquJ7WWZT8XCa6+g9cFUxVFCS3o9iu1FKf
 CVf3K/WUuSTnZa+VTMQleUgFSQ==
X-Google-Smtp-Source: APXvYqyeVQ8XiDhAtqRUbnJkvFlHHgzMPuVzSBSmWD0fYGVoMGMWw1rbT6oPGBkTZmrNxnWabwZ6Pw==
X-Received: by 2002:a17:902:6ac7:: with SMTP id
 i7mr1671228plt.314.1582760805540; 
 Wed, 26 Feb 2020 15:46:45 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id q6sm4185715pfh.127.2020.02.26.15.46.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:46:44 -0800 (PST)
Date: Wed, 26 Feb 2020 15:46:44 -0800 (PST)
X-Google-Original-Date: Wed, 26 Feb 2020 15:46:36 PST (-0800)
Subject: Re: [RFC PATCH 0/5] Add UEFI support for RISC-V 
In-Reply-To: <20200226011037.7179-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-2fe6e2a0-9291-4810-b42c-af69b8dbaa06@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_154646_962068_67514CF7 
X-CRM114-Status: GOOD (  24.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kstewart@linuxfoundation.org, linux-efi@vger.kernel.org,
 catalin.marinas@arm.com, linus.walleij@linaro.org, linux@armlinux.org.uk,
 Atish Patra <Atish.Patra@wdc.com>, mchehab+samsung@kernel.org,
 linux-riscv@lists.infradead.org, rppt@linux.ibm.com, will@kernel.org,
 mingo@kernel.org, abner.chang@hpe.com, michal.simek@xilinx.com,
 ardb@kernel.org, greentime.hu@sifive.com, bp@suse.de, han_mao@c-sky.com,
 daniel.schaefer@hpe.com, aou@eecs.berkeley.edu, keescook@chromium.org,
 Arnd Bergmann <arnd@arndb.de>, alexios.zavras@intel.com, agraf@csgraf.de,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 allison@lohutok.net, leif@nuviainc.com, Greg KH <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 17:10:32 PST (-0800), Atish Patra wrote:
> This series adds UEFI support for RISC-V. Currently, only boot time
> services have been added. Runtime services will be added in a separate
> series. This series depends on some core EFI patches
> present in current in efi-next and following other patches.
>
> U-Boot: Adds the boot hartid under chosen node.
> https://lists.denx.de/pipermail/u-boot/2020-February/401227.html
>
> Linux kernel: SBI v0.2 and HSM extension support. This series is a mandatory
> pre-requisite for UEFI support as only single core can boot EFI stub and
> Linux via UEFI. All other cores are brought up using SBI HSM extension.
> http://lists.infradead.org/pipermail/linux-riscv/2020-February/008513.html
>
> OpenSBI: master (commit: ge3f69fc1e934)
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
> https://github.com/atishp04/linux/tree/wip_uefi_riscv
>
> The patches have been verified on Qemu using bootefi command in U-Boot.
> Here is a boot log.
>
> Atish Patra (5):
> efi: Move arm-stub to a common file
> include: pe.h: Add RISC-V related PE definition
> RISC-V: Define fixmap bindings for generic early ioremap support
> RISC-V: Add PE/COFF header for EFI stub
> RISC-V: Add EFI stub support.
>
> arch/arm/Kconfig                              |   2 +-
> arch/arm64/Kconfig                            |   2 +-
> arch/riscv/Kconfig                            |  21 +++
> arch/riscv/Makefile                           |   1 +
> arch/riscv/configs/defconfig                  |   1 +
> arch/riscv/include/asm/Kbuild                 |   2 +-
> arch/riscv/include/asm/fixmap.h               |  21 ++-
> arch/riscv/include/asm/io.h                   |   1 +
> arch/riscv/include/asm/sections.h             |  13 ++
> arch/riscv/kernel/Makefile                    |   4 +
> arch/riscv/kernel/efi-header.S                | 107 ++++++++++++++
> arch/riscv/kernel/head.S                      |  15 ++
> arch/riscv/kernel/image-vars.h                |  52 +++++++
> arch/riscv/kernel/vmlinux.lds.S               |  27 +++-
> drivers/firmware/efi/Kconfig                  |   6 +-
> drivers/firmware/efi/libstub/Makefile         |  20 ++-
> .../efi/libstub/{arm-stub.c => efi-stub.c}    |   7 +-
> drivers/firmware/efi/libstub/riscv-stub.c     | 135 ++++++++++++++++++
> include/linux/pe.h                            |   3 +
> 19 files changed, 420 insertions(+), 20 deletions(-)
> create mode 100644 arch/riscv/include/asm/sections.h
> create mode 100644 arch/riscv/kernel/efi-header.S
> create mode 100644 arch/riscv/kernel/image-vars.h
> rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (98%)
> create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

I'm in favor of adding EFI support, and I'd rather have it sooner than later so
we don't paint ourselves into a corner.  I'm not sure what happened to the
RISC-V EFI spec process, though, which would be my only worry here (also I
haven't looked at the code :)).  Do we have enough of a spec through the EFI
process that this is all kosher on their end?

Given that this definately isn't for these RCs, I'm going to leave it in my
review queue.  It might be best to get the "move stuff to generic" work merged
on its own, as then we can carry less diff around.

Thanks!

