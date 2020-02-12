Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE61159EA9
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h27Z9FNnR/nTOvJ7T6abMGe3071QvyjBy8U3zdnBuPc=; b=efv6gqie76PA7s
	QNez8Dt6AY/WXUP7g9pMTCWKUJ991YjTA7J3EuY5X1YBJXU53UaTOkM2OJEmLxi288ryZZwH7vbWh
	2hr+ablZKmypGOb4046g5mkbaK6yZA9sp7sJBlOl6yoPX9zQ45XdAxaFgwv3dUIZqyp4EgwYVRxuG
	2OtTPT1r5UNOfCwDtP6/NGM/f7V9gDrJYGCZTQix+Q5gPnKK1JI1oN7WtvbKO7/VQZS7b92YPi5mg
	HrzggQOoDnVUXb0kNOqZ94BmNBfpgck9lWSlNrjWhJ3go7jLfCC9bmsUVvhMKdJVMYSaMP/nyPr9A
	tIi4zaffXghS3M6ZOkOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCD-0005zt-Og; Wed, 12 Feb 2020 01:52:09 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC0-0005mO-0h
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472315; x=1613008315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5fLxqpGfQmcjZB4SEqPkjidgJg4T+I5OvAtf/YXSDv0=;
 b=Lgu3oDLOGqiMH86mwKPK3oltkmjDQlkWzjOVl1LNEA+I/pIKp7Oy7/tA
 BSZy9IWL9uDfck63osLSCxiSooZ1OSJMYIO/LrtJ2QPFnzT8sNZCPJTnS
 /inu5qvblCJqIJCW3E/gpo+m1nT513AVcTy3Q9RPpnfmkwyldPDly8aCt
 Rd/HIzGwerYtWCpvVQk/dxSQHcf6RNVbQYNwGKrZozRzWailtOAAeQRnC
 FI7Kxih6MXCdGSX6+pYTZAv/tA6UYs0FPKTmcAsrwB8hQ0c55OdWszX3j
 HEdyI+Lz1EF82LKD0lVhSIM3erT5lEJM9XYBMUQAmIu3N4Rg9gQFkZlPQ g==;
IronPort-SDR: benLdZ5udAx4KqF1EOgYUhfL9L5lnaZrP72s7z5C+jjpx6/J4xXPXre+OzJ6dugl7cFNGqcPDe
 Fgi0kYZG/qsJjOHyssvdLcH+lJkyQ7q7pDxXS20r7a0WbjwkqC3rv45D7bLRGGIS00tY3oivft
 fccFXYjL4VtsW8tUGWVfLg3qSdakv3qfPlsTGOocxk+2RUbZndBe2p8CHY22MV5OM94ivmcT/c
 f9Bbl28D+ywteXUa4D+YoczPsa4T9Gwxj17bHch1iNXJ7+R7PBxJIpxMT+RtPbNptlIsgZxEvu
 q1A=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="237648928"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:51:53 +0800
IronPort-SDR: 9psypPJ4vanMtJr2N9oyIwD+omvLTEJzBY6tyAPcrM3H0N3TpcqctsbMIibQ58RaG8Aqo4n8Cb
 /3HmJroDvIrJueVkGylhHNe3g/XCbdPdyngrGrVbfFK/jR/734U2cMZpixTbl8VEPFgT+rA1TB
 WexrxZBEPpjrUqweRL7iaP188ehDZ9ePD7HsBpyK0IuwV+h5UP3dpRGQ9EEuFVtXNs/62rlXFL
 b36ilEdwqY5rINIePjpVpVDLUyUXE5qAD7kXhOt3UrFrpv8MEbBjFjQoVnefDGmy0rmZpK2zy1
 Cu4ipxc7AQom6K+aHTbKq6GN
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:42 -0800
IronPort-SDR: Hy31uM001YTf70zkpyhY/6R96UZXmMSb9FmdW2iFY4jmZ/u3/bhslOXYMXH9BQokfwmfTvZIw+
 jdcokz2i7Kc6c0uZ6MYDa546OYxV92tnUXxnjGygFSCyaZoLB1F2R6FUAubfb+y8j1YgI8AUVP
 y/jV9R4yQdYnoYrDKIu4kwuzgqa0mNHtZ3WF/+Mj3fc0ggpm9GxAXQ8Indfr8h5H4QyAXfKzDu
 j4Og1gWpPVkspMqzBlkQhvxxdCuOCXWtNzFsGzo73PyBQwqNeT5blSASykqraIONqn59XLQXC1
 yks=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:52 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 00/11] Add support for SBI v0.2 and CPU hotplug
Date: Tue, 11 Feb 2020 17:48:11 -0800
Message-Id: <20200212014822.28684-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175156_570641_0B0C4DF8 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Vincent Chen <vincent.chen@sifive.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Mao Han <han_mao@c-sky.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Supervisor Binary Interface(SBI) specification[1] now defines a
base extension that provides extendability to add future extensions
while maintaining backward compatibility with previous versions.
The new version is defined as 0.2 and older version is marked as 0.1.

This series adds support v0.2 and a unified calling convention
implementation between 0.1 and 0.2. It also add other SBI v0.2
functionality defined in [2]. The base support for SBI v0.2 is already
available in OpenSBI v0.5. It also adds SBI HSM extension and cpu-hotplug
support for RISC-V which requires additional patches[3] in OpenSBI.

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
[2] https://github.com/riscv/riscv-sbi-doc/pull/27
[3] http://lists.infradead.org/pipermail/opensbi/2020-January/001050.html

The patches are also available in following github repositery.

OpenSBI     : https://github.com/atishp04/opensbi/tree/sbi_hsm_v1
Linux Kernel: https://github.com/atishp04/linux/tree/sbi_v0.2_v8

Changes from v7->v8:
1. Refactored to code to have modular cpu_ops calls.
2. Refactored HSM extension from sbi.c to cpu_ops_sbi.c.
3. Fix plic driver to handle cpu hotplug.

Changes from v6->v7:
1. Rebased on v5.5
2. Fixed few compilation issues for !CONFIG_SMP and !CONFIG_RISCV_SBI
3. Added SBI HSM extension
4. Add CPU hotplug support

Changes from v5->v6
1. Fixed few compilation issues around config.
2. Fixed hart mask generation issues for RFENCE & IPI extensions.

Changes from v4->v5
1. Fixed few minor comments related to static & inline.
2. Make sure that every patch is boot tested individually.

Changes from v3->v4.
1. Rebased on for-next.
2. Fixed issuses with checkpatch --strict.
3. Unfied all IPI/fence related functions.
4. Added Hfence related SBI calls.

Changes from v2->v3.
1. Moved v0.1 extensions to a new config.
2. Added support for relacement extensions of v0.1 extensions.

Changes from v1->v2
1. Removed the legacy calling convention.
2. Moved all SBI related calls to sbi.c.
3. Moved all SBI related macros to uapi.

Atish Patra (11):
RISC-V: Mark existing SBI as 0.1 SBI.
RISC-V: Add basic support for SBI v0.2
RISC-V: Add SBI v0.2 extension definitions
RISC-V: Introduce a new config for SBI v0.1
RISC-V: Implement new SBI v0.2 extensions
RISC-V: Move relocate and few other functions out of __init
RISC-V: Add cpu_ops and modify default booting method
RISC-V: Add SBI HSM extension
RISC-V: Add supported for ordered booting method using HSM
irqchip/sifive-plic: Initialize the plic handler when cpu comes online
RISC-V: Support cpu hotplug

arch/riscv/Kconfig                   |  19 +-
arch/riscv/include/asm/cpu_ops.h     |  46 +++
arch/riscv/include/asm/sbi.h         | 194 ++++++----
arch/riscv/include/asm/smp.h         |  24 ++
arch/riscv/kernel/Makefile           |   6 +
arch/riscv/kernel/cpu-hotplug.c      |  87 +++++
arch/riscv/kernel/cpu_ops.c          |  48 +++
arch/riscv/kernel/cpu_ops_sbi.c      | 113 ++++++
arch/riscv/kernel/cpu_ops_spinwait.c |  42 +++
arch/riscv/kernel/head.S             | 179 +++++----
arch/riscv/kernel/sbi.c              | 524 ++++++++++++++++++++++++++-
arch/riscv/kernel/setup.c            |  24 +-
arch/riscv/kernel/smpboot.c          |  56 +--
arch/riscv/kernel/traps.c            |   2 +-
arch/riscv/kernel/vmlinux.lds.S      |   5 +-
drivers/irqchip/irq-sifive-plic.c    |  34 +-
include/linux/cpuhotplug.h           |   1 +
17 files changed, 1227 insertions(+), 177 deletions(-)
create mode 100644 arch/riscv/include/asm/cpu_ops.h
create mode 100644 arch/riscv/kernel/cpu-hotplug.c
create mode 100644 arch/riscv/kernel/cpu_ops.c
create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c

--
2.24.0


