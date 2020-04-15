Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FDC1AB218
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 21:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=orDwB/M+V9GB2ZyynU0UNW0Ip9sb+mkDzwoPr0oiP88=; b=oAT+cYbWGQSLmC
	T3fma84USCZI/dRq1ruDyqh7ai23h+2IcDLuXQkqs0ws8e38u9X/7eoR0hKLx15nCxrArzoWkM2sh
	MFQH1BWcQ7RQQ6oAelJeYyc8sGBXKG23jJ35H3E2WRiiq+yRJqjZGuZTfI8xAWqIzewOmPxsV6dvX
	ecQp6V/Z105XQFZ879rJDMBXTXKEaO+G7SKUEJzn9zzWy7dmbdViUrI293CNf+VLBnl9crGURoAHf
	0apnfuIrip+Hs45pOL+WoackKxaIig4m6nuO/+3q/RjEZaG0Gyh7WsRTvS4A+aVyQfVAuzq7bAIDz
	45D/sMJiUT3wzJRag/vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOo7W-0007ZN-CV; Wed, 15 Apr 2020 19:54:50 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOo7Q-0007Vq-MZ; Wed, 15 Apr 2020 19:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586980484; x=1618516484;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hhsd5JtwPM12DYmkDLyIy4E1RXRHsLoMVadetZOBWkA=;
 b=Nl/y7uxvnn8XS1GrCA/41rfx2xVT3q1EBKGGPw7263MMQtwBy/Ly7hFo
 VUX6clCduLVzl6Ucr6WWi+filqVgx24FyzRYCKhnio/1hWHMIztYb5Bsx
 ky27czk+YD1Ln/SDNoUkr3xJe+otVKAUWxM4WbjKGfNh4avUk0Rau40Q3
 B7Kcpp5A5kF+/ncWlpAdrgLXKRr1Bz2H3R0RXWWGjAa7J4lkuzfQU1eWP
 BvHB8sV7q7N7OD6cc2H/64nYK/XybHnrWg1jZdj4q0QQCkQ1Ll92Mts/u
 SM2LmWVlpYC4jocPlt72mkDoeRc2Q4HTqGbMhHdp9zbXzxbpv52yAAPX/ g==;
IronPort-SDR: rh/w5uV9supeSNP+ZAiZLV1Vvjr3FmuRF2Rc4e78V1Ug4Jip0f0j6Yln+cKECayt6DDkYpdS9h
 taGxa+WKnViMPY2TwfAfcdDFTQqLydz2G/8Ht9x8j883HSUeEG3okizzG7SwTxeiBsV5hafA1i
 H4T1L5Egbnl+VwAYV4vuylBRblHqls7+eAtT69u2XEFQNNz9qsBvmwcgmJxadQR5szRNO/8bq1
 Ta6U9xP+n9uaurVT7XQNB+VMS69WUhxxv+7GytWnEyevYprVB9B3UOa79wdm31ZMTJwelcOd6+
 abc=
X-IronPort-AV: E=Sophos;i="5.72,388,1580745600"; d="scan'208";a="136848620"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Apr 2020 03:54:40 +0800
IronPort-SDR: yksVemu/B0yyyX+oCK7qjAC8Gptgdfi8lAG2r0BnoAzBw/uN1WgnJQQgi4IMphCNQb7Arqf4N1
 I7LUQTiFIWZKtpaCvxAiQ3tRyFykhrJC+rTe1bd5t7MDel2Ut8a9HddpmmwNLhH6fklkBLWKFE
 NQezd4wy0O9GV+6G9Jvqj0J7jshwR0dVWhuQjb9Y19VMvYgJE7pStPt6ma519FKPfsjgFF5bUc
 uN6xY12YBPGeGQgA8LW3CW6+xONMmkYMITmd1pvainowZgkFBW0rSx6gOG5XHUTipAmvG0UPMH
 Fdme/7CjFAG3gcVoe4B1Kdy1
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 12:45:08 -0700
IronPort-SDR: 4zlsxO4RkiT45OqVEJZYxpJPZzqj8CHvYmVLBNY/LOdQ/H1G/eqCmGl6vWjLtcH/tZit8rvf9J
 3aFsTlvTIsX7uIXQdsIdo/fQ9/h1tfKL0xL/VLUA3vNjnRRrMxDZaBvmtRYEhOr+bcfj6+MCCz
 vsLlTP/3jLqHirySbTVKexPEbPGYOsyPp/IxkyeNtxS4lYDy8Q2cZ04nxyld0tycqO98l7YVMa
 13g6swKV44qzSYs9xfv8RAswec9tgjPOMdSiHURxJubnXqxlvi0eVTjp9IaQ/mYo3U4DBwhFV/
 Dt8=
WDCIronportException: Internal
Received: from 6hj08h2.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.244])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Apr 2020 12:54:40 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v3 PATCH 0/5] Add UEFI support for RISC-V 
Date: Wed, 15 Apr 2020 12:54:17 -0700
Message-Id: <20200415195422.19866-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_125444_834207_AA335593 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds UEFI support for RISC-V. Currently, only boot time
services have been added. Runtime services will be added in a separate
series. This series depends on some core EFI patches
present in current in efi-next and following other patches.

U-Boot: Adds the boot hartid under chosen node.
https://lists.denx.de/pipermail/u-boot/2020-April/405726.html

Linux kernel: 5.7-rc1

OpenSBI: master

Patch 1 just moves arm-stub code to a generic code so that it can be used
across different architecture.

Patch 3 adds fixmap bindings so that CONFIG_EFI can be compiled and we do not
have create separate config to enable boot time services. 
As runtime services are not enabled at this time, full generic early ioremap
support is also not added in this series.

Patch 4 and 5 adds the PE/COFF header and EFI stub code support for RISC-V
respectively.

The patches can also be found in following git repo.

https://github.com/atishp04/linux/tree/wip_uefi_riscv_v3

The patches have been verified on Qemu using bootefi command in U-Boot.

Changes from v2->v3:
1. Rebased on top of latest efi patches.
2. Improved handle_kernel_image().

Changes from v1->v2:
1. Rebased on 5.7-rc1.
2. Fixed minor typos and removed redundant macros/comments.

Changes from previous version:
1. Renamed to the generic efi stub macro.
2. Address all redundant comments.
3. Supported EFI kernel image with normal booti command.
4. Removed runtime service related macro defines.

Atish Patra (5):
efi: Move arm-stub to a common file
include: pe.h: Add RISC-V related PE definition
RISC-V: Define fixmap bindings for generic early ioremap support
RISC-V: Add PE/COFF header for EFI stub
RISC-V: Add EFI stub support.

arch/arm/Kconfig                              |   2 +-
arch/arm64/Kconfig                            |   2 +-
arch/riscv/Kconfig                            |  21 ++++
arch/riscv/Makefile                           |   1 +
arch/riscv/configs/defconfig                  |   1 +
arch/riscv/include/asm/Kbuild                 |   1 +
arch/riscv/include/asm/efi.h                  |  44 +++++++
arch/riscv/include/asm/fixmap.h               |  18 +++
arch/riscv/include/asm/io.h                   |   1 +
arch/riscv/include/asm/sections.h             |  13 ++
arch/riscv/kernel/Makefile                    |   4 +
arch/riscv/kernel/efi-header.S                |  99 ++++++++++++++++
arch/riscv/kernel/head.S                      |  16 +++
arch/riscv/kernel/image-vars.h                |  53 +++++++++
arch/riscv/kernel/vmlinux.lds.S               |  20 +++-
drivers/firmware/efi/Kconfig                  |   4 +-
drivers/firmware/efi/libstub/Makefile         |  19 ++-
.../efi/libstub/{arm-stub.c => efi-stub.c}    |   0
drivers/firmware/efi/libstub/riscv-stub.c     | 111 ++++++++++++++++++
include/linux/pe.h                            |   3 +
20 files changed, 421 insertions(+), 12 deletions(-)
create mode 100644 arch/riscv/include/asm/efi.h
create mode 100644 arch/riscv/include/asm/sections.h
create mode 100644 arch/riscv/kernel/efi-header.S
create mode 100644 arch/riscv/kernel/image-vars.h
rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)
create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

--
2.24.0


