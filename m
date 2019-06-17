Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387D048D3D
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gwtQT2+QSlvQFSelsu+IXJZAns0mAndq8Wkr/a81inc=; b=NB76ZacHNHMuZQ
	TGPR2AivCjxkMdR+WjBHPaQ/1gnRcpwxRAgugrqisaI52+nbvk/7deL6WkmnjaTjfwAk9NGoi06oQ
	4vignX2//1Qn9/q3V7eV/P8svqiiy0K+KFPm7h4f/zp3t5TRfl4jBgmAjWZN9M7z+xgNYfNihj20u
	XTlnsX+LQEUSDeYHXAzl8qBCGlaNpZDnplI+Xt4tkLMmmE0Iz8yGVYH6pgInlYLSJ117nNLFCkrO6
	xAI8xoEg+aIVnCVfcnrWJPr7Na9r0yxCx3nBpoyrCpCFI1MAqfVpXvULJi4XZ+Cd/ZwAO0npePQG1
	ncKDn708zSArrzz0QbIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwsH-0003YS-P3; Mon, 17 Jun 2019 19:01:01 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwrL-0001go-2k; Mon, 17 Jun 2019 19:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560798004; x=1592334004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4gsxyypkDkZeEPMfmtQxEkRSX1iwXhYxZdPR6g9XGVc=;
 b=V4ArLp27qLF2YCUtVaOWMQWfT96Q78ju1cy2b5wG5VetcN/VoILtUXM2
 KIC2lrvDfsSRAqBrYrwjpcqeSEvFY8XmJEeUmI9J8g9PgWUpq80RQjWY1
 fWw/9czfD0MOalcZChF1XfH0lF3fNmoBzWr9aeB8lOJ6F8x22VM5pi+Hc
 C97cNfE5zkVziexXL5wjBNzUCS3xMveMRXXrMzCeJ4HAh48VVwKCDHNK5
 3l1BmO6fsMfvMjYOIzcqBAHTizMBQ5sSEclyvxQ9mPWeZ1uhieLkXEqGI
 +T3C/RKG2QyeiiVeQCWEQbBey635W8UAa68ya8t1mbKMDOu7QhIoLoefT A==;
X-IronPort-AV: E=Sophos;i="5.63,386,1557158400"; d="scan'208";a="115695371"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jun 2019 02:59:56 +0800
IronPort-SDR: Ud8on+IaMVIIUVjByxdNoKU18mrGM3M5wfD+he5Kio+keycg/cF8KClDFD8tdGNfPCrlU+8DZu
 cVT40pzz9fvcJ1BkSvTleMlggtGl8mXqZPe82e05FiIPylExDKrlsMUT2Q89C32/dTKp8IpMQU
 jR5cXs3XxXkxqi/GgTXe0I5bnJZciyoCM4WTP6xC0Cb3q7O/uUFfZXxy8gh434FHL+XQ8p2svp
 Rf7RTg4auNMwn23j6+zAvS6LZLhNEAIPGh+CQi4r2B6EFyXC4YbRa8cJsKITQ4dadSxsWyQWPd
 8zHEdcsFwQ01mfdVIcLWrn0z
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 17 Jun 2019 11:59:26 -0700
IronPort-SDR: rf9zdZSYllUoDZSjIGKlJyFrk3+jHCW0uMuhJDcO3oUablZz06zS5vUYxDAc1e5wHt0RVBa1Yj
 vpJC9lvyV0577zFg84pDpuJ4wLIPPVz9YQY5yIAdeGL7rU3pOU80+hl6B4jfSVaHG3H8svdDMg
 ROnzXWVSVLq7HPYqWwNVwVHbXwHziHw5B0DydW3hbiCAT+C+dnKVqqthxRyUKywWtqHTgHB8bb
 lrs3Rjkz9SwyIjaR4F6FZyLZSlm0I1/K9xL+82zj/gud4kvW0R7yiaiLVQ/XaOzNxTMue+7nE/
 /OQ=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Jun 2019 11:59:54 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/7] Unify CPU topology across ARM & RISC-V 
Date: Mon, 17 Jun 2019 11:59:13 -0700
Message-Id: <20190617185920.29581-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_120003_253062_5199DE73 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Atish Patra <atish.patra@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
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

From Jeremy,

"I applied these to 5.2rc2, along with my PPTT/MT change and verified the 
system & scheduler topology/etc on DAWN and ThunderX2 using ACPI on arm64.
They appear to be working correctly.

so for the series,
Tested-by: Jeremy Linton <jeremy.linton@arm.com>"

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

Changes from v6->v7
1. Added socket to HiFive Unleashed topology example.
2. Added Acked-by & Reviewed-by.

Changes from v5->v6
1. Added two more patches from Sudeep about maintainership of arch_topology.c
   and Kconfig update.
2. Added Tested-by & Reviewed-by
3. Fixed a nit (reordering of variables)

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

Sudeep Holla (3):
Documentation: DT: arm: add support for sockets defining package
boundaries
base: arch_topology: update Kconfig help description
MAINTAINERS: Add an entry for generic architecture topology

.../topology.txt => cpu/cpu-topology.txt}     | 136 ++++++--
MAINTAINERS                                   |   7 +
arch/arm/include/asm/topology.h               |  20 --
arch/arm/kernel/topology.c                    |  60 +---
arch/arm64/include/asm/topology.h             |  23 --
arch/arm64/kernel/topology.c                  | 303 +-----------------
arch/riscv/Kconfig                            |   1 +
arch/riscv/kernel/smpboot.c                   |   3 +
drivers/base/Kconfig                          |   2 +-
drivers/base/arch_topology.c                  | 298 +++++++++++++++++
include/linux/arch_topology.h                 |  26 ++
include/linux/topology.h                      |   1 +
12 files changed, 454 insertions(+), 426 deletions(-)
rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (66%)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
