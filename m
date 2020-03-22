Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79FD18E832
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Mar 2020 12:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PD45gpLQprj+XyLjSdUELKM6avVVVmzAswmUhXyeh+4=; b=XJLJpN3uyksKyG
	WB2ZDhIkU0FvKDDe3JsOzch4WM3QZ5Tbz1nJ+I/ofdG6YUTqD/PSlFRc1G+ZvTEAgncsLCL25Ayei
	iaru0fY4Kjdc8T+aAjT/LCbJvzrEw45C2nB8weJ3IYSkmCKe5jzoV/gvDZmz9ggRoUI2+Qxqyi5ay
	PSFuhm0qPbv0BHHndXgyZGngNHXEGDszU8N1KlR/BmlhO+Vr2M3Ly+0/XraeWLAoc9IFD7vfWTt3V
	3W2NA2+ZwWPYSTiCBzslOJAzDBIamn1ZDloq08vzbVY3tL8BddKSTfb1ErxewzVqdp9j+UYWEXfKS
	L5IBURae/xCAgLBCOpLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyLS-00073X-HG; Sun, 22 Mar 2020 11:00:42 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyLN-0006wu-Lv
 for linux-riscv@lists.infradead.org; Sun, 22 Mar 2020 11:00:39 +0000
Received: from localhost.localdomain (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id DD5E224000A;
 Sun, 22 Mar 2020 11:00:32 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/7] Introduce sv48 support 
Date: Sun, 22 Mar 2020 07:00:21 -0400
Message-Id: <20200322110028.18279-1-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_040037_865256_2E2CD00C 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset implements sv48 support at runtime. The kernel will try to
boot with 4-level page table and will fallback to 3-level if the HW does not
support it.

The biggest advantage is that we only have one kernel for 64bit, which
is way easier to maintain.

Folding the 4th level into a 3-level page table has almost no cost at
runtime.

At the moment, there is no way to enforce 3-level if the HW supports
4-level page table: early parameters are parsed after the choice must be
made.

It is based on my relocatable patchset v3 that I have not posted yet,
you can try the sv48 support by using the branch
int/alex/riscv_sv48_runtime_v1 here:

https://github.com/AlexGhiti/riscv-linux

Any feedback appreciated,

Thanks,

Alexandre Ghiti (7):
  riscv: Get rid of compile time logic with MAX_EARLY_MAPPING_SIZE
  riscv: Allow to dynamically define VA_BITS
  riscv: Simplify MAXPHYSMEM config
  riscv: Implement sv48 support
  riscv: Use pgtable_l4_enabled to output mmu type in cpuinfo
  dt-bindings: riscv: Remove "riscv,svXX" property from device-tree
  riscv: Explicit comment about user virtual address space size

 .../devicetree/bindings/riscv/cpus.yaml       |  13 --
 arch/riscv/Kconfig                            |  34 ++---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |   4 -
 arch/riscv/include/asm/csr.h                  |   3 +-
 arch/riscv/include/asm/fixmap.h               |   1 +
 arch/riscv/include/asm/page.h                 |  15 +-
 arch/riscv/include/asm/pgalloc.h              |  36 +++++
 arch/riscv/include/asm/pgtable-64.h           |  98 +++++++++++-
 arch/riscv/include/asm/pgtable.h              |  24 ++-
 arch/riscv/include/asm/sparsemem.h            |   2 +-
 arch/riscv/kernel/cpu.c                       |  24 +--
 arch/riscv/kernel/head.S                      |  37 ++++-
 arch/riscv/mm/context.c                       |   4 +-
 arch/riscv/mm/init.c                          | 142 +++++++++++++++---
 14 files changed, 341 insertions(+), 96 deletions(-)

-- 
2.20.1


