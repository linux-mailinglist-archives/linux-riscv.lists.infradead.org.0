Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47A61A6E51
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 23:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pgYHeekWbOie97Kaclt/kv6qD6s0zVwVTSH97KRJgvY=; b=NjTrjVyn42S+YJ
	vV84nnV/6H1+UBtiEc4B3B8baZmShFdTQ3x1j4P0DaOoxTa3eT8xWEJ+OHjuZtZu1sf7sSjWVTW41
	o6xfRoah1fhvjRJ0NI9JUnDX4gSEYz9kV4cIV7TImH+kmYb+UXZI92UMcfVJxXcjhK/3rnGcZHKl4
	VNQFsTXexD1wV7VW+jfx7aJBSufwc8WdLT5yQf5gFnthUdkzykKJvv0RyPcGcZBaDXobXcjMSGdbo
	0sQP5QXGP5oCldBc86EHICOuIc1XihbBcu5WePfuZQ+JWdbqZR4nfTjXfjazg4EPkr54Zgk/TpYKY
	JIq37lbgmKTP81ffn2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6fR-0003gq-2R; Mon, 13 Apr 2020 21:30:57 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6eQ-0000Oh-LZ; Mon, 13 Apr 2020 21:29:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586813395; x=1618349395;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VGLGVChtgkugJ2Zf+S/wgEqmmZg5+pWj+SDm9AjhtcA=;
 b=ToRn96IM9fYjMktGCPJUj1LvwWaqtFBG7CrFdyCOzcYTzJcDXAlS10he
 6yooPBuze0cRmd5Z16omXigCmgo1NEdXIdil6OAqniZaljBbHAKl9s2In
 U5elZQDA2RqKBHPZLPPqLe7DJtCIQq4CZQmq8yPQ4vAJmw7bC7vUOyG40
 LEU6AShcfyIpkBD7XVGEVTFQ00IQjwvASaeqC4jGuIgLkhcbMOlfTF87m
 bIHLliajpGDb42Iczz4rp99pF2xUIZr3kghaLBdKXhQKxxC55xVfzX671
 LF9kYk+SMJQzAt5jsphSQ7UO05fWAzSJEfLU0AN+6+Rar6Zl4vsUSi2Js w==;
IronPort-SDR: 0n/pQ3OPed9yjxyLpyHjiIcjuUBISbJn57kK4Ey4rn1Kg7oSRrt5whu3zunrJHrCBvQwEgX8X1
 Dx++iVHYDknn3IL7fFdBTH/0/2aE08gSFePpYDjynMNPCJJIOwC1pmOM61iAtbVpMqDH7LwJF7
 OEj1BHZSFyjajoMsKHMl0tPkrpKxNcqPIeu9iRQK/4F4daP2dnH+3aWLZV3V2DseXVhzm77lOs
 DemRLa0Vf/3VMlglJyFp9dF7noXh9Ot0mXnpoOllZhdeh6sNyDmvNXCdpmdpOdM1BiLmIgavw2
 6+I=
X-IronPort-AV: E=Sophos;i="5.72,380,1580745600"; d="scan'208";a="136683322"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 05:29:30 +0800
IronPort-SDR: 2DqTme9wRYxx/xyQ1XHnDaHQ1N7lAPNETDNdkuyb8Y/n/y2Cyc7FEu9NW5xenHt4tzoN5HogU5
 woRUZWC3ILRGnuLQSdadFFlWzQg8MfHdb5svmxC4neHCRFdI6vKbkyr2py0DroNceArA6eTXWD
 5hdwugZrJk2e3vyHZB9N/jEbVtt1+6APMaZDjubUf5LeG+3pN/s7sQ07wxcywHW5nDEBNmv7Rf
 njc2Z31gS/zM4RqKh6zcYwxv3EatfHW9Kb9dxiiRVUBFK+vTa+1JYaq8NdIlzYDJm0rcRvMHX9
 OTeV+s/4Bz3Jp2yTLW36ryMd
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 14:20:00 -0700
IronPort-SDR: WT5XDCFN81cADlBdOKDjic6ONVXHu3nS0Q+aL5T9UZa8LcDQ4YTXdhXRPIAv5q7nBEeBBLSrPh
 pEcJJEK7lUvjOI5ZmkXx/2g0RkbihNkPpV6qbaOpzJmxVDraTlUlUQ6OuRSCSabH9V2nskYlLZ
 Yfr5pie0rwXElQ33RRu85DkExbBxfpVL8JuCFvS/9bSBqqYIGlnD5vf1RzzkIxGotZuztB1Vsh
 ty8HgLZKEX3u9zuXuzq13KH6YOE0aWf65iPB8xpFeNnAiXZiNxTgy8jxECq68SL3nO1W5sszxQ
 mIM=
WDCIronportException: Internal
Received: from 9dg4l72.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.26])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 Apr 2020 14:29:29 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH 0/5] Add UEFI support for RISC-V 
Date: Mon, 13 Apr 2020 14:29:02 -0700
Message-Id: <20200413212907.29244-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_142954_786655_331489A0 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
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

https://github.com/atishp04/linux/tree/wip_uefi_riscv_v2

The patches have been verified on Qemu using bootefi command in U-Boot.

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
arch/riscv/Kconfig                            |  21 +++
arch/riscv/Makefile                           |   1 +
arch/riscv/configs/defconfig                  |   1 +
arch/riscv/include/asm/Kbuild                 |   1 +
arch/riscv/include/asm/efi.h                  |  45 ++++++
arch/riscv/include/asm/fixmap.h               |  18 +++
arch/riscv/include/asm/io.h                   |   1 +
arch/riscv/include/asm/sections.h             |  13 ++
arch/riscv/kernel/Makefile                    |   4 +
arch/riscv/kernel/efi-header.S                |  99 +++++++++++++
arch/riscv/kernel/head.S                      |  16 +++
arch/riscv/kernel/image-vars.h                |  53 +++++++
arch/riscv/kernel/vmlinux.lds.S               |  22 ++-
drivers/firmware/efi/Kconfig                  |   4 +-
drivers/firmware/efi/libstub/Makefile         |  20 ++-
.../efi/libstub/{arm-stub.c => efi-stub.c}    |   0
drivers/firmware/efi/libstub/riscv-stub.c     | 131 ++++++++++++++++++
include/linux/pe.h                            |   3 +
20 files changed, 445 insertions(+), 12 deletions(-)
create mode 100644 arch/riscv/include/asm/efi.h
create mode 100644 arch/riscv/include/asm/sections.h
create mode 100644 arch/riscv/kernel/efi-header.S
create mode 100644 arch/riscv/kernel/image-vars.h
rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)
create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

--
2.24.0


