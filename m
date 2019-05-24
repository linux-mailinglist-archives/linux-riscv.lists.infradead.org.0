Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410D828E2B
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 02:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r31mUIFUV5dZj1HFV2JUq2PtU7A0f0XL2qitOqiD/6E=; b=TIZKFeCRmumfFh
	OaZI99bEMKkqrIODVPUyY4+b7SQdinGr8WUjuX4Pw3KO2jOjjsqYJI3lsIgdhq//gcZ+NqLfdVN0T
	UoxualRmjdOloW2ZFPQtfAwv53K4b3Tvy40jOPCkWfN51T2e47X8oDm96bkJoXaJD5S7ka+69b/EJ
	KSLDvlDnuNfR+79QYhY0TQJHYCwLsucRydcv8Tdk8Y8q0D8zZo1ZHKEUeOLzXwbSKAHGxG60VSuTg
	ktng8pLvv9dgpP9r1q+Fvr9TyFD20or4rXPL86BhzWoavjI04+qs/pbM2NzLc/MSOZe2dzmOLfPmx
	fSdBgK1J+k6SSPaiGALw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxk9-00009y-Pb; Fri, 24 May 2019 00:07:29 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxk6-00008d-Rc; Fri, 24 May 2019 00:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558656481; x=1590192481;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LSOwfC4cbYJ0j98wN25Yv8d8VqJ1wUG9SMGFdxybDGA=;
 b=UgCox8eyXtBA6Cf1Izup71jD3RrnyZUXENn5+gcKDEw9fPKlFA+jkSyx
 r9+cPyKDj2UAPS9a7t6coGWIdLdIj+FGkSE3xKVGQYT0LhKk9IRN8uLsZ
 IibP/3mxFdlJVd+0rrhn0si/oES61mYf5nS7Mqf3q/HLyyHKToHO3vbd9
 rgCpfJNjhBa/hMlbFwUNiH2R0EBtHP9Wc3UdvRxMdkuUGnmeXG30aqrX8
 DGhMIboHrVfJb2obXJ6jo0awBeRv3TbFf2oxp+ow+tCP+3remkAa+3ww5
 R9xKKhdhKaOh5F/WtHWR6XneSBUkp7HzBjg7OJFYC1iiAT7NJON0VAGCl g==;
X-IronPort-AV: E=Sophos;i="5.60,505,1549900800"; d="scan'208";a="208480800"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 08:08:00 +0800
IronPort-SDR: ve2em1mPp36FZZeFrzlHclCNbhREuacFnrsPIWuqnGUUjFnQ/eAC5d+JQ6KshhWZDbCvFv1AKe
 13+FjxxRy+bQrZbWmJh2COmZ59skZylisfOjVPgrHWx/0o2LzZJYLXdyvkRUnEaA8X2h28ldrl
 nG2QsW18Y/CJpZMewJrSEDU1wPLamFB9a/e+jYty9yOtWHhO9R6VIFbWmL7uY7gmDQmuUQIOLp
 Xh70XUBBRQ7IAy/0fL64VLeRwU/Mum+tIOq1S3iwMHE+b252SToM9T//FhbDZYn46c21DpGAv9
 CuNnKU7wTIU2pj4aVWhreSXv
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 23 May 2019 16:42:46 -0700
IronPort-SDR: VcAjlWyhrUmApDzJanM4Dp4zOOK9Obpa0fPsjcqxS3qx30cgihTszdbsUaHJ9IY4X0rKJQZx5M
 S5aAe3LLtPrPz15pm0R1nU5yAGAB3qsKrkWvAhl8ygttkgvVknRnY/nv4SmZBT5/JUcZXKV++M
 0inDP/9cQ8W39io95mF56MiQlquQPdUAE0H5I+Z7agEDuvuVaZxgVJSQff+4JYz2QjZmA9YeVI
 YWUbKRHei8uberUca5/AzjPhItHix9OWdpx6LFOsxbBbtXxcX5aH+jrelUvNHtW4UscaZksn4O
 tjM=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 May 2019 17:07:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFT PATCH v5 0/5] Unify CPU topology across ARM & RISC-V 
Date: Thu, 23 May 2019 17:06:47 -0700
Message-Id: <20190524000653.13005-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_170726_963624_CD898BA2 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The cpu-map DT entry in ARM can describe the CPU topology in much better
way compared to other existing approaches. RISC-V can easily adopt this
binding to represent its own CPU topology. Thus, both cpu-map DT
binding and topology parsing code can be moved to a common location so
that RISC-V or any other architecture can leverage that.

The relevant discussion regarding unifying cpu topology can be found in
[1].

arch_topology seems to be a perfect place to move the common code. I
have not introduced any significant functional changes in the moved code.
The only downside in this approach is that the capacity code will be
executed for RISC-V as well. But, it will exit immediately after not
able to find the appropriate DT node. If the overhead is considered too
much, we can always compile out capacity related functions under a
different config for the architectures that do not support them.

There was an opportunity to unify topology data structure for ARM32 done
by patch 3/4. But, I refrained from making any other changes as I am not
very well versed with original intention for some functions that
are present in arch_topology.c. I hope this patch series can be served
as a baseline for such changes in the future.

The patches have been tested for RISC-V and compile tested for ARM64,
ARM32 & x86.

The socket change[2] is also now part of this series.

[1] https://lkml.org/lkml/2018/11/6/19
[2] https://lkml.org/lkml/2018/11/7/918

QEMU changes for RISC-V topology are available at

https://github.com/atishp04/qemu/tree/riscv_topology_dt

HiFive Unleashed DT with topology node is available here.
https://github.com/atishp04/opensbi/tree/HiFive_unleashed_topology

It can be verified with OpenSBI with following additional compile time
option.

FW_PAYLOAD_FDT="unleashed_topology.dtb"

Changes from v4-v5
1. Removed the arch_topology.h header inclusion from topology.c and arch_topology.c
file. Added it in linux/topology.h.
2. core_id is set to -1 upon reset. Otherwise, ARM topology store function does not
work.

Changes from v3->v4
1. Get rid of ARM32 specific information in topology structure.
2. Remove redundant functions from ARM32 and use common code instead. 

Changes from v2->v3
1. Cover letter update with experiment DT for topology changes.
2. Added the patch for [2].

Changes from v1->v2
1. ARM32 can now use the common code as well.

Atish Patra (4):
dt-binding: cpu-topology: Move cpu-map to a common binding.
cpu-topology: Move cpu topology code to common code.
arm: Use common cpu_topology structure and functions.
RISC-V: Parse cpu topology during boot.

Sudeep Holla (1):
Documentation: DT: arm: add support for sockets defining package
boundaries

.../topology.txt => cpu/cpu-topology.txt}     | 134 ++++++--
arch/arm/include/asm/topology.h               |  20 --
arch/arm/kernel/topology.c                    |  60 +---
arch/arm64/include/asm/topology.h             |  23 --
arch/arm64/kernel/topology.c                  | 303 +-----------------
arch/riscv/Kconfig                            |   1 +
arch/riscv/kernel/smpboot.c                   |   3 +
drivers/base/arch_topology.c                  | 298 +++++++++++++++++
include/linux/arch_topology.h                 |  26 ++
include/linux/topology.h                      |   1 +
10 files changed, 444 insertions(+), 425 deletions(-)
rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (66%)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
