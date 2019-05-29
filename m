Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FC32E72A
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 23:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yC4Sxs4JGsEl2XTu3CR2sp77IVCrjcUNl3phWAx9Ovk=; b=i28Au/D7bJxW1D
	p5eqAYT7W/b7n35QcL0C2B3HAvTRaPIkEiqz7r0szorcmCxMvYjMahoDuAu/tX1l3uxx43HJGvlEu
	MYFvwKg8fUJ60oyHOTRnfmedPFrybCbXJ+6gvfJUwXnXWgenqonjyJP3sI2wYB2g67ZfuGqfBkynI
	jfH7DucUz9Nfmtd2oQ4CpsHjSqEyvLHmCMpbOstJKK2K0yvHH50QtIPQyIXiJA2r0YNBL22NIUXem
	JpX32UofxqaPjkMD0QCW698A7uM1qYDuY7idTz/73I7kH0hSeW8g8F9F755qa5U2thIBOK72qZWVq
	PuyMwHmwU5QnyuBiGi7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5u7-0005jK-9f; Wed, 29 May 2019 21:14:35 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5u4-0005iA-2x; Wed, 29 May 2019 21:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559164506; x=1590700506;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cwAgfUHqeRqoUhGOkggkpMSiQ/tus4AQpYKjVxtRBd4=;
 b=ITAIXJpRcF4bkf/h3qZjvGaPk3nr0wYmvnk7rOwkZr+OtbBYrhvod8dj
 MYZYWqvjVOXTSPhAUo8h9rDYc28kA5P+ffw35kDrkoPL5g4i+3K/ab8VX
 Ric9EQc1244I8IZb34Wc0cqVFpban/X7LPndGAqnbLDrIJnlU1QS9xEb3
 yJsflmArJUFldIyM2WbAojqf+GW7bKMy6yK/pcMCzaaK319eaWjK0dbKe
 FiF2y2yKMLz07e2nL8RxI9JvrMTg5eytDvmsbIrpyRGqRzr+4P8LZW4VC
 MjurOT1d4uhkPFl838h7RrOLTLCSG9NiZy18dVHmDq5CuSx2MrM6/MuUf g==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="208905628"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 05:15:03 +0800
IronPort-SDR: ONANkAw9jx9QT91EWRH+hf4s75zzZq0rQNhtQpmb8DZAvR1yM7cgxwBfn5TSe6wzY/bmzwOhi9
 PBmkajjZAMz4QfSpxn4JcP5d3Z+5p/+GiefMfaB032lhWCVjZaajbCH3322W+8YOGJmf/VhPBp
 WaWrx4SKl9B0MgIN67iPdqoW1TEo+FSGywlMUdw0VP7fGP399odcKBJL64ShqwTOVAlAZWDtX2
 gdjNIBPaU2nb7JVYGyDohe8sN5RiEgt/96Ya9qGQyD2Qe9vTUHyrcZXsiL6fkOEOTiwEHfNZ3d
 YfpzBxo7RTY0D4irb0vRUzxO
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 29 May 2019 13:49:40 -0700
IronPort-SDR: YC8bCUR58DTIbPJfzX0+z9k0MY7/SOZnQyrrSDZ737cU8+bizRT9YHJDuxjCS1KH/ry3jFwTmD
 uNr9h1DDTdMUkiPPmHOrJy/QdOeFJHltaBX0Gc7Ie/wRqmW+dUOguVt0r4URXJ4R7IQZPcD6lO
 /lowRQnQLUBmlA4nqyocjdSFjkBraOJ0NNdpuY5VOzWRJzfosDlorV5LefgjsegQzNKmQES/mu
 zZ2JndFjicoBEQgdzfMNjMQv+tdndkNo46b0+LEEwT52AxYx5duwofoBhBRz+KHRpQdgr3KcUB
 IyM=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 May 2019 14:14:30 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/7] Unify CPU topology across ARM & RISC-V 
Date: Wed, 29 May 2019 14:13:33 -0700
Message-Id: <20190529211340.17087-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_141432_186961_96411504 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
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

.../topology.txt => cpu/cpu-topology.txt}     | 134 ++++++--
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
12 files changed, 452 insertions(+), 426 deletions(-)
rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (66%)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
