Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD65189380
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7XKvLw+a+2H8UHUObN01NomM2aSmIQM5OVvgAPcYLQ8=; b=fX8rnzgGoKJ5Mc
	By759G/MFQ/HJ/gJhTnIuxM5ZfY8sx2Em32sYZSPIFJ51MDPEM3uPu34rMl0LyoChG6LeLGBohB2d
	dQu1y3BkeA2cOcGiYZhY/LiXFJPFv3W7bTWv/7CrFfPZkb4SnGv+ObGTCN81KlbeqG8SS2Ew43jyH
	jo6Bvccs/HW25ErOjNeuDcBqs1us9MUTVpSLVWHeqYK0mJ28Kao8/PMCp9jA/Eqnlzv6Huov1YR+G
	pVkmGIOQK8IXIHHZR0ixzWNKwLWDoCSnIyJxPCfh270kXcdlJ+Fyal6T4xAMlp3hwQ4s5rx92CxXN
	yCJxwP3aPD0M1mqTRwvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFh-0006zo-7N; Wed, 18 Mar 2020 01:12:09 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFa-0006um-Pm
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493923; x=1616029923;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8pxP/BuUx1Cb/JJqnsQKZD4DVP0eHuvECuwKFXk3e00=;
 b=CjrmdTRW1QxbLk6f5FomUQfRpl0dCflIO9r4HfHNc9qH6BOhyNnAqEEB
 YLVaSMtO9V2wal7ygHuO0A2KLlZGFsBr5+K6iC2sZA+ubfGVhr5Ewqjmj
 zCnOaLPgawam2ln9VmV58sMG9vtT80xWT5Na5h0wz77V6jfrqzKHSJMmp
 nMoGxw8/fcHo3l62pTRCfkhE8uLOugJj0QLrxNrQNXl8N+iJs1k+t9T12
 ZE2b61wzr055AWRkWL1xbGMzv/2kcYLQevoG74PQZGAYPJIWT8EfkqpRA
 rP8kNYpUZYTPJBXCsBo2G++4F1Oe//5ejdH5m6votDvfy8taq/uMBPukj g==;
IronPort-SDR: AG1uRs61kR4bNJdH8hLIVf+DYSWtEVvF20XbN+aLyIVNkzHuNAeAD6FC4jzsHD3VPOtJA7E5Gt
 8m50QkyPY/HLi+V1EQ9ZGbv59aZEFUWHdsQkiSicpzBs/50oGc/LOcwWbH3rEXRTzsa5U366hq
 ZQoIXV/bF2kfydnQ8KcBVJKSlwYaFbH5MkYt6v1zeSKqsA21xE/zPL3r6hL2lLhhLMgCMEqH3X
 CnCVugxxrWhwXICH/eb6lbmv5XXOkVx7Vcp6DS660JWEaK8Uzt8xs4AnEqgEoKOU1m0j7J6cws
 JMU=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242139"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:11:55 +0800
IronPort-SDR: gO1PWG05qnr5t/MCCua/6fmUKsPPVi/8bw4OokSSYxvsyK3z+dQiM1UUkzDQUd+0AbbItjV2na
 dtjJzV7zm+qkbG/YE6DiaOCbiGPTBz09cgiU4a0noVDLUtG2seU6je5ldwfmH7cAyy3ad90ze9
 btf96+TaEKdTYSRquA5q6KsMhYncV//uSWazWjC8iHDGyeHFHpPIGpan4V/tv1Fb48t4qTfXht
 fOEBc+B5cmS0R1vEJHfRpH2BUnxnSezXxUSmGPJFUGl2Oh9lgnEMlZ2dvGkA5sT2ommIXFpkVt
 YFvK1WBpcIQkoWcmOJ+2yHvU
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:22 -0700
IronPort-SDR: N8pvCLGlTe2Hbx22znWWdyj0AV5CalyBuj//ERe+jv+gA/SelJsqIBgzHogpcNoShp/tHzsBH8
 qvBB+KqZvmuJN7fikypjll8SsqTW1wGtqx/oIqB75hxSJHgoxe2S6N4rSWd38QP6dGoVHaxzjb
 ALlAlOT2T27Eli3cVdEzwPxOMxiTThPaP9sYZVb/pdE6+M6JWKHx+DoYiMwEDsER1QDdcWRqeo
 44fSbIfl3X4JjD/HfqxoyAQ/7MEPjZnuOKZMvoSTAaTp8IyDWL9eAybiFmYV7DQf6x3nkPX+RJ
 VTs=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:55 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 00/11] Add support for SBI v0.2 and CPU hotplug
Date: Tue, 17 Mar 2020 18:11:33 -0700
Message-Id: <20200318011144.91532-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181202_878118_CD2B03E5 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
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

Linux Kernel: https://github.com/atishp04/linux/tree/sbi_v0.2_v11

Patches 1-5 implements the SBI v0.2 and unified calling convention.
Patches 6-7 adds a cpu_ops method that allows different booting protocols
dynamically.
Patches 9-10 adds HSM extension and ordered hart booting support.
Patche  11 adds cpu hotplug support.

Changes v10->v11:
1. Addressed few nitpick comments.
2. Dropped plic patch as it is taken through IRQ tree.

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

Atish Patra (11):
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

arch/riscv/Kconfig                   |  19 +-
arch/riscv/include/asm/cpu_ops.h     |  46 +++
arch/riscv/include/asm/sbi.h         | 195 +++++----
arch/riscv/include/asm/smp.h         |  24 ++
arch/riscv/kernel/Makefile           |   6 +
arch/riscv/kernel/cpu-hotplug.c      |  87 ++++
arch/riscv/kernel/cpu_ops.c          |  46 +++
arch/riscv/kernel/cpu_ops_sbi.c      | 115 ++++++
arch/riscv/kernel/cpu_ops_spinwait.c |  43 ++
arch/riscv/kernel/head.S             | 179 +++++----
arch/riscv/kernel/sbi.c              | 575 ++++++++++++++++++++++++++-
arch/riscv/kernel/setup.c            |  24 +-
arch/riscv/kernel/smpboot.c          |  53 ++-
arch/riscv/kernel/traps.c            |   2 +-
arch/riscv/kernel/vmlinux.lds.S      |   5 +-
15 files changed, 1249 insertions(+), 170 deletions(-)
create mode 100644 arch/riscv/include/asm/cpu_ops.h
create mode 100644 arch/riscv/kernel/cpu-hotplug.c
create mode 100644 arch/riscv/kernel/cpu_ops.c
create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c

--
2.25.1


