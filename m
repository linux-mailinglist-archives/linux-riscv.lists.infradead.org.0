Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3D2170B07
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=otIWWSdyhF8PEaFADol1QVFLwkkSjXq0JG79N07XeZg=; b=MPjmQJvsM0L93C
	z6yKY0bvBq6exEpMRXEO3XhfldYCRaZXjt0XKCpRbxiKXriPW3DF/INK4iqBrAby2v/C+jmN3oRTk
	ffuib9cuEPQNNR3Vgd0vrpV4uJF99BDK8M6muAQtqFcCDps31V5g2v5XRo+yMcNf4lz8Z9kjCdlCt
	HxXqMjpjI2Rl0GKWFfZ5SDL0fI8lOFo4O7iXFsCb/zdDoie7lMj9lnOTtHxw2fifprKYFr4y0T9mU
	k3gPIjRWcTIqjKqkagxOjCZUIOxxv+XZLgSY7xUuOz+JC6vIOY51omtIAR0T0DqQ1VdUMdYZ0DJqe
	susJCmPLxsKotX50apfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74lE-0003sK-6F; Wed, 26 Feb 2020 22:02:32 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74l5-0003nS-SY
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754543; x=1614290543;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rBJ3vXikl+0s9E0hdVoZ5Lyza+72c1dZ4ILKvVNCaIQ=;
 b=S1pxZh2iNoEZ0bytAIjVUpdWlpMMsp4rmxzcqU95DBebW5o7yZmm5VgS
 Qp0ZJZeENUkNzN5TlqjAVdj77Zrib1QNXpa7uOwK69pgS2cl2XYvMAzzO
 +8gXjbT4/KSRao48qZ8m4Kw4j/1yVZ1IarT2SmUWkfRAuQbrnuY7IBpQ2
 skpA1AQf4DORlrx8nZzLAc5IGc5q+HVt+oMFyaIyBHzvazbusA9fVHACP
 XKcR3csP45yjtpO1w18wDovItrhBzx2evPNKMTta3EkUnxIsRcrcwjxO7
 hOZ3oq5qIRrGTN+23MO0QjUYJL24Eci9dk98wPQ9QoFRT6UG6ewXWCOHL g==;
IronPort-SDR: yX10aIIC+7gLsi/7cVELn02fGTwhbqylDc94fptt2AoIv2zja5kqC/26T4U65itCPSz7dJSToF
 jvcOkBMl6czvfal1vFlmrClTOhH5MI1KpzB4a4H4cxZos2PiA8s+1wtOu4Yl4JEobSwXHSyYGR
 vaK/Ii96fKMDVzq10Y2xlH+5qk7rfez5cLPf32qePrAVDwtsdc91qyHLTfDRy9kHbfN8ZFzePY
 pRZrpGoFMkuCTyl4qbt9T6UZOKpIiiMapHQsBVA90Yd7VT6CpEdLHRzd+0efBU42HFgccupo/Q
 br4=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981801"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:20 +0800
IronPort-SDR: jtph3wesIZSQYEKFZxHEm50kyJbNFqylglDMjrSOXoY2oHWonKH3B+zQNdOgWxAGJ1HSBjojls
 Vs9b35uXpmY5L/ONVlAUXlOiGQU3l2ELI4v++D3CvjMee8JalY+neVEDO7JihFrv8UADzfm5de
 2sAcrTg5MJ0EQYr8WgIBNwaZV9kTSPGvKoybfWfCH3iPT0b9roYHN0/LJva213QVsyzREsnbLe
 Fahn2dQTn/1r2B212GmBN0VsG2AEEO54TpPO+5mDXVZvYLTtGqx9Im8MU3l8p4WJm5OnKZY50B
 TBz16oocHPM6e16keuAu9E8p
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:44 -0800
IronPort-SDR: oFMV2Ddv2uH2253aACgS6/RJkJtsdSPO4ESG8vf4uSdEJkhNvZ2rMNL4Z2VJvS8H9FMtjnkJHv
 Sfv4+307mEfNwhlpXsh0Vav1KKzhWZbZHy2Kwj88kBulZT5krAM5u6MXV3SM/T1Tjaoebh3ohy
 0wUekIkf6wXxW8Rk22NNdAIkr/+bj9aajG8GKDkDU8NOcTYUcj71iqVCsB4XiJNg3+WjKTwg3K
 0wYOwQHBX6GAV2CsZ6fygqeWYnntGmQofvBhN+uk5DojEJA4n8uuHSl8KlfHg9ByTYkww6QKQF
 xGs=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:19 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 00/12] Add support for SBI v0.2 and CPU hotplug
Date: Wed, 26 Feb 2020 14:02:01 -0800
Message-Id: <20200226220213.27423-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140223_966002_57601DE1 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Madhavan Srinivasan <maddy@linux.vnet.ibm.com>, Zong Li <zong.li@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michael Kelley <mikelley@microsoft.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>,
 Steven Price <steven.price@arm.com>
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
The support for SBI v0.2 and HSM extension is already available in OpenSBI
master.

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

The patches are also available in following github repositery.

Linux Kernel: https://github.com/atishp04/linux/tree/sbi_v0.2_v10

Patches 1-5 implements the SBI v0.2 and unified calling convention.
Patches 6-7 adds a cpu_ops method that allows different booting protocols
dynamically.
Patches 9-10 adds HSM extension and ordered hart booting support.
Patche  11 adds cpu hotplug support.

Changes from v9->10:
1. Minor copyright fixes.
2. Renaming of HSM extension definitions to match the spec.
 
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


