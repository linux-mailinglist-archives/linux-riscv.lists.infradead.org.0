Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859481DFDCB
	for <lists+linux-riscv@lfdr.de>; Sun, 24 May 2020 11:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YrSus/NlYgo1YWE/eK/4g+x7uduOtycFZFDlyYesDb4=; b=tfPTFV/EcbPYJJ
	PcSUGXyenSQ1x8HX84rnx5TGnlXyPVPdMf3q5xO3V9xpsqbjT6ENd2XYLaKibIE9nUByyuFIOKFQt
	RBLfZyDUb5xjIixkCzhOppttKNFH0ukTWzGAW6I5R5DWRma6FDrgpUj0oIrQwYvMcjVEzPFHn3e+6
	Obt4cnZ3w+zJSghEQ+ugGOlG0IqZBji9yhI2IS65Zj5sikReMiScZ44n8rzuBL2axXy4iFGS6TDNw
	w6jjfG7k0LAnRtMMN4UpkQJXHVkoMBkPaOXgBTxpWEzNSRhJDTCrpV/R5NFQ8qhPMM1gflnyso9ys
	4lvxe1HZ01McLw+W2bnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcmeB-0001VB-61; Sun, 24 May 2020 09:10:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcme7-0001NR-Gy
 for linux-riscv@lists.infradead.org; Sun, 24 May 2020 09:10:17 +0000
X-Originating-IP: 90.112.45.105
Received: from localhost.localdomain
 (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr [90.112.45.105])
 (Authenticated sender: alex@ghiti.fr)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C468AFF804;
 Sun, 24 May 2020 09:10:09 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] Introduce sv48 support 
Date: Sun, 24 May 2020 05:10:00 -0400
Message-Id: <20200524091008.25587-1-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_021015_697823_D8025AFC 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
runtime. But as mentioned Palmer, the relocatable code generated is less         
performant.                                                                      
                                                                                 
At the moment, there is no way to build a 3-level page table non-relocatable     
64bit kernel. We agreed that distributions will use this runtime configuration   
anyway, but Palmer proposed to introduce a new Kconfig, which I will do later    
as sv48 support was asked for 5.8.                                               
                                                                                 
Finally, the user can now ask for sv39 explicitly by using the device-tree       
which will reduce memory footprint and reduce the number of memory accesses      
in case of TLB miss.

Alexandre Ghiti (8):
  riscv: Get rid of compile time logic with MAX_EARLY_MAPPING_SIZE
  riscv: Allow to dynamically define VA_BITS
  riscv: Simplify MAXPHYSMEM config
  riscv: Prepare ptdump for vm layout dynamic addresses
  riscv: Implement sv48 support
  riscv: Allow user to downgrade to sv39 when hw supports sv48
  riscv: Use pgtable_l4_enabled to output mmu type in cpuinfo
  riscv: Explicit comment about user virtual address space size

 arch/riscv/Kconfig                         |  34 ++--
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi |   4 -
 arch/riscv/include/asm/csr.h               |   3 +-
 arch/riscv/include/asm/fixmap.h            |   1 +
 arch/riscv/include/asm/page.h              |  15 ++
 arch/riscv/include/asm/pgalloc.h           |  36 ++++
 arch/riscv/include/asm/pgtable-64.h        |  97 ++++++++++-
 arch/riscv/include/asm/pgtable.h           |  30 +++-
 arch/riscv/include/asm/sparsemem.h         |   2 +-
 arch/riscv/kernel/cpu.c                    |  24 +--
 arch/riscv/kernel/head.S                   |   3 +-
 arch/riscv/mm/context.c                    |   4 +-
 arch/riscv/mm/init.c                       | 194 ++++++++++++++++++---
 arch/riscv/mm/ptdump.c                     |  49 +++++-
 14 files changed, 410 insertions(+), 86 deletions(-)

-- 
2.20.1


