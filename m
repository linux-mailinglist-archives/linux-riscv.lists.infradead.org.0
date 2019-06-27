Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFA658B39
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sLIj5GOjOr+5BheAAMYYn7Yldqw+BRWxn40L/HBVZjM=; b=JdjrDSHL+vvMO+
	88V9v/6jGd7+V8NcDloEmHOXjvB+41C+c1jRgtscq8JmpB3WNPz1RT7y2ArecbG/t2izeYnL7kPjg
	jaFPARQgEpD0FmUeAsnUIE4MHxFFR16hl4r0wvFD73an9IK8b/pzpHieG9IR5ZYG9cFBRJpwnPPOP
	Qyh9vEfAmPNYqgJI60mRDS43UIoWFIEhjcBikYId4XXhmmNvnThmB2Cu/UsKQE8SPMwxgTiLMG0ad
	zeOydWJPL4/WecYTTX9KDbh/WPUtA708FvDVtmU1DQ0KGV7m+V0kBFSSxaz+Oo0pWYeMJIgmsFwT0
	zgyxKkeIRXRda92g8b2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaV3-0004j5-T8; Thu, 27 Jun 2019 19:56:05 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUR-0004KW-F1; Thu, 27 Jun 2019 19:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665328; x=1593201328;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OBRreVPl8/1uZ8733sksixlMzFip9pXYBiHmIUFSRKk=;
 b=CFZU4tkXEs3AAl+bNyFx9kwrsUhQ1h45sRQhhJ2qL7DC9bMdTtv6OqnV
 Oxm8caeaijRgSlGOVq948xrwJ2fp7uhlQ6S1GuRckHDsfKUooXr8J5WBy
 LdA+/X1yVJDRUnPUBnz/EO6EELbWQqRWUeY7rmZFlZNL9zTN5j833fLH4
 bWckhz4Z1dgJ0lG9y07Szl0khg+2HKqzRQgdOY0q1N+5d+zJomnHbQBTi
 TQ2xMzNOPw/d565MOVQTTdSCY3KORtTgE08FFNuX+yb/yJpnEuVUCz1id
 hJFK8zN+imZebtY88LvIhPziqSaR214xsMBQQvV1pw+hDWzSAQjlBiP5e w==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353770"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:24 +0800
IronPort-SDR: DxFELLZ2LWEycymhU/OuMdCLxk2KJ1MBGL4OKkQwk85kB2UB99/svO/hXfyH+a/a8rhd05ctbV
 N5VM1Cn/BB+n74aeiDjoYnVNfwbsHe9phWky5KQpRUuksQoI5SO4+d3HJVkzbY/EBqWwR/yXBP
 Hrm6L5Awj9taHjwrb/cYyr3UGQPVrMXuaqafKFA75ZcSaYymHBIG3ZqSRBwI5BWLj26Nbbi/H+
 IS2ko9Pv0/umZbgB5VpJj/eUYLnEz/BhsYdAtKL/H2RUWPy+K2f9q5dzInlOYmf1yrAeZlSsxD
 IZJ7tKl79KsVMTjq2y44HqBW
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:37 -0700
IronPort-SDR: QZfOZnobUoIlq7QA0oz41TT5jgDsxp1aB5nnN69VvT8K1DSzCnndUMF1HY+s5RqvAZhZkmY3GM
 VeO1OT8mI7wZ8eNBVoevsc8J4zeiVtbeP4YuEDFs+vyzRxulRFVm1xKLfyFoRel7EPkrWt+r1s
 Gr0RKX4GZwvu7o3r8YE903nVlo7x9/xuzE48qkgcppHDtM5y4R0iEBPW36hKiSlJqf1vmAMgdo
 Tu3PwJnlsUqC3/ImjypBeOVyoY6LLqCMolukiGhrI2NsOAFHrEkRr5N9Y2Jfrq/x/bt30aPhzA
 EzI=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:23 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
Date: Thu, 27 Jun 2019 12:52:55 -0700
Message-Id: <20190627195302.28300-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125527_541763_18B5BE3F 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
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

The patches have been tested for RISC-V, ARM64, ARM32 & compile tested for
x86.

From Jeremy,

"I applied these to 5.2rc2, along with my PPTT/MT change and verified the 
system & scheduler topology/etc on DAWN and ThunderX2 using ACPI on arm64.
They appear to be working correctly.

so for the series,
Tested-by: Jeremy Linton <jeremy.linton@arm.com>"

The socket change[2] is also now part of this series.

[1] https://lkml.org/lkml/2018/11/6/19
[2] https://lkml.org/lkml/2018/11/7/918

This patch series can also be found at
https://github.com/atishp04/linux/tree/5.2-rc6_topology

QEMU changes for RISC-V topology are available here
https://lists.nongnu.org/archive/html/qemu-devel/2019-06/msg05974.html

HiFive Unleashed DT with topology node is available here.
https://patchwork.kernel.org/patch/11014313/

Changes from v7->v8
1. Regenerated the patch series without -b option in git format-patch.
   Without that, git apply from email won't work because ignored space
   changes.
 
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

.../topology.txt => cpu/cpu-topology.txt}     | 256 ++++++++++-----
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
12 files changed, 514 insertions(+), 486 deletions(-)
rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (66%)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
