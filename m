Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA8F1B1CE4
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 05:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XE6XrXsamka5ShHubOTRxEVjQS4NRISfJ7CpiyGjqkU=; b=RjcRdUyltgAEXN
	OIbzcarWWs7jNJmFzHI0GoP5DeOUjoJndzM42eCMvn6FSa77nxxuMRgnQxJ06abpIFKoOVfxzJcdz
	St6aQ9JMbbAzA6BxSYvNDJ2NQp8nSWXMOZB5xisDRmv+KoUaL+eAEpGxSWdCBm/Lor561zzh+woms
	9E5x+2VqVTZGoEmtR4OmwgW+ZZPdiiCV/YGhxr2l8n5kjLEuGrapKzuB8O+QPxzfpvEYsoVY42OVD
	jhtZuH5Mp6CTjNcVVVFL5hKYaGX76oc05N+wGnPbk2gvDSMpQIx/+JBqx90pP3Y1F1IYJrNvzbhEw
	4WXgJ1WRXsUvhkm+4l0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjgP-0005JX-JR; Tue, 21 Apr 2020 03:34:49 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjgL-0005Hj-Tb
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 03:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587440085; x=1618976085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GjTTpLTWGYCXUfvIMno62LIuH07aVZwFi+V4pOUKReY=;
 b=mOrqqeQVhnM+JpnmksfefvOU6gOK/YAbegia8Drh4h5iIxWVlgrOaxK4
 nBs0WsLGVQlcyPGXThuAphwD3NOp3LCD458kyuxtju49UdqQIDCRgDzdY
 kYe12W3FEz/cZp+t1ZAMbLSeRBQFMIF+vl6R0trqHXbHyF0qQY15DJmjG
 PlIMMbkW85I8SJ148d8hubIqT212Uzju5J1QazPQdb2I2pIr1XSLlT7jj
 4HN8k7bsIchlK0RIf9LdnnlPQFJV9CprPS/LOpAJJc2XLu8qvukQVzvls
 j5tTiJHBQ3HpMBWvDa2iGFuJGfnNqzaN+wfAWM7VLfJuGKmw6c8vEjxPm A==;
IronPort-SDR: j/mfmAy7pIhG28K3cwpfe5aQ4orRn1oKa6TDxVRtqTPAXMO4/Ry9U3T5uGLHKWlCm8CFdD/V2v
 t66hu5oroq2Q9rSPqFDLMUwG/e5ZZDglxIdyhEJGHoP+qZumvHqmTvEISFTT/aooUpYY/p3ed6
 H+RN8G/OrzWA3yEG0vqtPKrg2sORk3QDuMbe8msLse5nxCbvFY/ErTl/WNOXtfHQziGjYTkjxe
 02bR8sutnFtRAT+PtUn6GsUBP9JnFYYPPRvUW1dIVDAyU6DLqXQtbXjScQOsZGImwGlrFXgCoM
 A2E=
X-IronPort-AV: E=Sophos;i="5.72,408,1580745600"; d="scan'208";a="244467797"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Apr 2020 11:34:40 +0800
IronPort-SDR: mgXLJ3Ex4e+aHVtBGPsiYJ2mEHVEuQtVgS7UPNAvD87W1Y2fo8cDOG2s16ULKjz9qQ2UKrHmJJ
 hcBpRl4/fDDKF/I7ILAnca6T3zKzQi3Dg=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 20:25:32 -0700
IronPort-SDR: lO7btBcWjrqFJtn8pnNC/QtT/FXAyKDOK8vNC0ORN4WSfJuUKDUKxwBo4E+EPTJqyazL7MQOIh
 v3q9juxzrKMg==
WDCIronportException: Internal
Received: from hqe220030.ad.shared (HELO jedi-01.hgst.com) ([10.86.56.34])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Apr 2020 20:34:41 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v4 PATCH 0/3] Add UEFI support for RISC-V 
Date: Mon, 20 Apr 2020 20:33:33 -0700
Message-Id: <20200421033336.9663-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_203445_968892_98EA7CDC 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Masahiro Yamada <masahiroy@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Ard Biesheuvel <ardb@kernel.org>
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

https://github.com/atishp04/linux/tree/wip_uefi_riscv_v4

The patches have been verified on Qemu using bootefi command in U-Boot.

Changes from v3->v4:
1. Rebased on top of efi-next.
2. Dropped patch 1 & 2 from this series as it is already queued in efi-next.
Changes from v2->v3:
3. Improved handle_kernel_image() for RISC-V.

Changes from v1->v2:
1. Rebased on 5.7-rc1.
2. Fixed minor typos and removed redundant macros/comments.

Changes from previous version:
1. Renamed to the generic efi stub macro.
2. Address all redundant comments.
3. Supported EFI kernel image with normal booti command.
4. Removed runtime service related macro defines.

Atish Patra (3):
RISC-V: Define fixmap bindings for generic early ioremap support
RISC-V: Add PE/COFF header for EFI stub
RISC-V: Add EFI stub support.

arch/riscv/Kconfig                        |  21 +++++
arch/riscv/Makefile                       |   1 +
arch/riscv/configs/defconfig              |   1 +
arch/riscv/include/asm/Kbuild             |   1 +
arch/riscv/include/asm/efi.h              |  44 +++++++++
arch/riscv/include/asm/fixmap.h           |  18 ++++
arch/riscv/include/asm/io.h               |   1 +
arch/riscv/include/asm/sections.h         |  13 +++
arch/riscv/kernel/Makefile                |   4 +
arch/riscv/kernel/efi-header.S            |  99 ++++++++++++++++++++
arch/riscv/kernel/head.S                  |  16 ++++
arch/riscv/kernel/image-vars.h            |  53 +++++++++++
arch/riscv/kernel/vmlinux.lds.S           |  20 +++-
drivers/firmware/efi/Kconfig              |   2 +-
drivers/firmware/efi/libstub/Makefile     |  10 ++
drivers/firmware/efi/libstub/riscv-stub.c | 106 ++++++++++++++++++++++
16 files changed, 407 insertions(+), 3 deletions(-)
create mode 100644 arch/riscv/include/asm/efi.h
create mode 100644 arch/riscv/include/asm/sections.h
create mode 100644 arch/riscv/kernel/efi-header.S
create mode 100644 arch/riscv/kernel/image-vars.h
create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

--
2.24.0


