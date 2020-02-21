Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7B9166C00
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cBCVd/K7ThlOSN7M89ePt3670U3ee5TkeBmCS3KaDfc=; b=NFx8oFQfJWjGLx
	f393o4QUNUVM6+E/k70537VGIyMCFuc787mislqQW7ATQ3XCoYhFZ5mscsf2JJSlkoKM68A4dX9Ck
	AHPDCwNpQU2cVIdTgNonwBZSwCX79GWVjmtVf3d1t+Rulli3P/tpWo6xtLKp/z08BRv8oQO90xX7Q
	9V6qk68A0aEtieyChmpp1f1rBKpvrzHwGFmoKf9LeyMDJyBCO3lN7FW7ikBNlOgxPY3sUk6pOAR0G
	dTwlKkeZFLsoUrlYHKH8AeEeuAtwGHq9JNEUnCRP/WllMYYqtoBrJqUbT0AiuOlmwH8HV77yBb5lw
	SBJgILAa9BBgVkV6pYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRb-0006HJ-5c; Fri, 21 Feb 2020 00:45:27 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wRA-0004Pt-15
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:45:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245923; x=1613781923;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mkH3jLLtkTicXkgvXT4tQe8W1GcI/fSzczfYIAf9uBI=;
 b=q5w7pUWCUSF7xBH/c7wPoeNEBe9Cfgl3qRoA+22XLVRVN/E/TXHuqFPl
 gCCLQfyQYk6JQQtb9X2HzKFrFPImXJlsui78FJ5zL8hlDez+SvJV4v6RQ
 YWnnNz5Ou/5HJgfWuL0+mc5mmzloZJV2kNZPYXt2/3QZ0M4oh9PCt1D3V
 TAzCvDXXczcKmBnXCaZHBjC0nvnSDl4xv6wTT28ovd+LmBH8SUZ4vW72e
 dJYkdj/3eh62T+bpDRr1hMoBgHFqmmmtYm0XizeKu3g4Ar3gBLFeMxxdO
 pvQPPuyulEFrpmu3wGTgurojyvJmkioZz+UYq5eif8MEDuXij7hds3Jqw Q==;
IronPort-SDR: 85pVets/yrP1jEckmil93HeG5BL06QfzlaC39Tl78WApZMmSoLlF7oeQbZCQBNe3hXruvI8oFQ
 EZM5eG5TwZ7m6VnJnW4xDWYZWD/Dnd13qURY3y1+z2bp5iAobVIkmUsQyzEyHpTq00wU4sL0hc
 mwUd2WDpjdRKGNYex1HOzrrSirwOfAMIhYEKCut7YLlDShqbwDmHa8/soSoHKI9CUxXlGUSLkg
 3oaQji7tF40JujYjoaSREpTdiXA4KZy0MyMVEGtA7Z7z9tZsJ82XQDSAZ05ZWsH1LHUz5IWJlM
 2Ds=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211043"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:01 +0800
IronPort-SDR: gAVSRusJGukhOOHDlQG1git6l4hIebiGdJo/kSNkaCG8eY5kj2VQc//aU+Xzvv746NndnMg1en
 BlfKVNru/fVbvCdaXerBBx1KVltScjZu0WTGO2dM6Bo+flgRVr0FrC+S9d0dNCYdk4TPNBBxie
 Meet7mjs38WbGMKSOSMZO2xB4MaYWKZC6b60vrKmnYgn/iB6SP21A1JW3vOuXmDjRaU8bVIyx1
 U1QNIKwjt95PeAm2MlgZszq+G3nIx7FTAlDBDfsHiXvsdoB+K855s381kEY8sgXt74WxWrb41r
 4Zc4tChulKU4ywDPSvKU6zaJ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:20 -0800
IronPort-SDR: G5zwEfdYQvKlhSAbse4AV5OdYGtseAfJTPnF5rorr3ir/WzPC6RyWAaIHIPvPNTP7S9tHaFh5g
 eTUKT9dGTuYZ6EiM6AgwggDkQFaaPOi8Ou7COIf+26oIrvh7UE1ZDWNygCkSXyXVbitD5r3MYC
 8ZfY5jUvETdPwSbpVAI6/gJ6T0gNQ7vrZd5KuN5DfbtSut2fd4Ssg3hT2Rsd16x3fESrhxAaDg
 wgmEhs7xzfsAo3Y7Gg60YVyErb8geddvKhO64HgBkcso/IIvhqbdoQwmH+Fb0LZBuf60PUL9j8
 d4M=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:44 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 00/12] Add support for SBI v0.2 and CPU hotplug
Date: Thu, 20 Feb 2020 16:44:01 -0800
Message-Id: <20200221004413.12869-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164500_155341_61868BC3 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Nick Hu <nickhu@andestech.com>,
 Vincent Chen <vincent.chen@sifive.com>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Supervisor Binary Interface(SBI) specification[1] now defines a
base extension that provides extendability to add future extensions
while maintaining backward compatibility with previous versions.
The new version is defined as 0.2 and older version is marked as 0.1.

This series adds following features to RISC-V Linux.
1. Adds support for SBI v0.2
2. A Unified calling convention implementation between 0.1 and 0.2. 
3. SBI Hart state management extension (HSM)
4. Ordered booting of harts
4. CPU hotplug 

Dependencies:
The base support for SBI v0.2 is already available in OpenSBI v0.5.
It also adds SBI HSM extension and cpu-hotplug support for RISC-V
which requires additional patches[3] in OpenSBI.

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
[3] http://lists.infradead.org/pipermail/opensbi/2020-January/001050.html

The patches are also available in following github repositery.

OpenSBI     : https://github.com/atishp04/opensbi/tree/sbi_hsm_v1
Linux Kernel: https://github.com/atishp04/linux/tree/sbi_v0.2_v9

Patches 1-5 implements the SBI v0.2 and unified calling convention.
Patches 6-7 adds a cpu_ops method that allows different booting protocols
dynamically.
Patches 9-10 adds HSM extension and ordered hart booting support.
Patche  11 adds cpu hotplug support.

Changes from v8->v9:
1. Added a sliding window hart base method to support larger hart masks.
2. Added a callback to disable interrupts when cpu go offline.
3. Made the HSM extension series more modular.

Changes from v7-v8:
1. Refactored to code to have modular cpu_ops calls.
2. Refactored HSM extension from sbi.c to cpu_ops_sbi.c.
3. Fix plic driver to handle cpu hotplug.

Changes from v6-v7:
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

Atish Patra (12):
RISC-V: Mark existing SBI as 0.1 SBI.
RISC-V: Add basic support for SBI v0.2
RISC-V: Add SBI v0.2 extension definitions
RISC-V: Introduce a new config for SBI v0.1
RISC-V: Implement new SBI v0.2 extensions
RISC-V: Move relocate and few other functions out of __init
RISC-V: Add cpu_ops and modify default booting method
RISC-V: Export SBI error to linux error mapping function
RISC-V: Add SBI HSM extension definitions
RISC-V: Add supported for ordered booting method using HSM
RISC-V: Support cpu hotplug
irqchip/sifive-plic: Initialize the plic handler when cpu comes online

arch/riscv/Kconfig                   |  19 +-
arch/riscv/include/asm/cpu_ops.h     |  46 +++
arch/riscv/include/asm/sbi.h         | 194 +++++----
arch/riscv/include/asm/smp.h         |  24 ++
arch/riscv/kernel/Makefile           |   6 +
arch/riscv/kernel/cpu-hotplug.c      |  87 ++++
arch/riscv/kernel/cpu_ops.c          |  46 +++
arch/riscv/kernel/cpu_ops_sbi.c      | 115 ++++++
arch/riscv/kernel/cpu_ops_spinwait.c |  42 ++
arch/riscv/kernel/head.S             | 179 +++++----
arch/riscv/kernel/sbi.c              | 567 ++++++++++++++++++++++++++-
arch/riscv/kernel/setup.c            |  24 +-
arch/riscv/kernel/smpboot.c          |  53 +--
arch/riscv/kernel/traps.c            |   4 +-
arch/riscv/kernel/vmlinux.lds.S      |   5 +-
drivers/irqchip/irq-sifive-plic.c    |  38 +-
include/linux/cpuhotplug.h           |   1 +
17 files changed, 1275 insertions(+), 175 deletions(-)
create mode 100644 arch/riscv/include/asm/cpu_ops.h
create mode 100644 arch/riscv/kernel/cpu-hotplug.c
create mode 100644 arch/riscv/kernel/cpu_ops.c
create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c

--
2.25.0


