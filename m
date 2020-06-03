Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391DA1ED382
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jun 2020 17:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PkxkQAgWYCT7856H+1yGm/0POeuSOxtWg8tx411FaGk=; b=pbmKvBinr0/l6S
	5PME8LKgIEZH883KwzrFt8Oopl7Uh3fxzqQFxJv1wQBL+EKMTyEyQWk+Up5sc4cLFGDX77+0unqnu
	fkUopIAKuhf9MqCEdhT34cEOREFHe4DbD7fbGikYO2mGq0UsIUsVF1aqK4Bg8DOAnWxMu+/tdvVrh
	6HaQUyVrBft7kgLNopbLjsbm/+CWGY9BP+zQn2Qc51RiyNfw6Pt4XOZxqtwIE0RQwlWYWlTQEFbI5
	7DSbNX/PU2Qz1qmrHVJPdHDthv8yBlU47F/L0lxq9dm7QHtL+PACw/HlP3fOyM05AdQ/7dftVrPAf
	V94BqI0uTh6PRKtYmQRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVRF-0002Da-Jh; Wed, 03 Jun 2020 15:36:21 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVRC-0002DA-8i
 for linux-riscv@lists.infradead.org; Wed, 03 Jun 2020 15:36:19 +0000
X-Originating-IP: 90.112.45.105
Received: from debian.home (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CE2A5FF811;
 Wed,  3 Jun 2020 15:36:14 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>,
 Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] PUD/PGDIR entries for linear mapping 
Date: Wed,  3 Jun 2020 11:36:06 -0400
Message-Id: <20200603153608.30056-1-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_083618_440704_B8570507 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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

This small patchset intends to use PUD/PGDIR entries for linear mapping
in order to better utilize TLB.

At the moment, only PMD entries can be used since on common platforms
(qemu/unleashed), the kernel is loaded at DRAM + 2MB which dealigns virtual
and physical addresses and then prevents the use of PUD/PGDIR entries.
So the kernel must be able to get those 2MB for PAGE_OFFSET to map the
beginning of the DRAM: this is achieved in patch 1.

But furthermore, at the moment, the firmware (opensbi) explicitly asks the
kernel not to map the region it occupies, which is on those common
platforms at the very beginning of the DRAM and then it also dealigns
virtual and physical addresses. I proposed a patch here:

https://github.com/riscv/opensbi/pull/167

that removes this 'constraint' but *not* all the time as it offers some
kind of protection in case PMP is not available. So sometimes, we may
have a part of the memory below the kernel that is removed creating a
misalignment between virtual and physical addresses. So for performance
reasons, we must at least make sure that PMD entries can be used: that
is guaranteed by patch 1 too.

Finally the second patch simply improves best_map_size so that whenever
possible, PUD/PGDIR entries are used. 

Below is the kernel page table without this patch on a 6G platform:

---[ Linear mapping ]---
0xffffc00000000000-0xffffc00176e00000    0x0000000080200000 5998M PMD     D A . . . W R V 

And with this patchset + opensbi patch:

---[ Linear mapping ]---
0xffffc00000000000-0xffffc00140000000 0x0000000080000000         5G PUD     D A . . . W R V
0xffffc00140000000-0xffffc00177000000    0x00000001c0000000 880M PMD     D A . . . W R V

Alexandre Ghiti (2):
  riscv: Get memory below load_pa while ensuring linear mapping is PMD
    aligned
  riscv: Use PUD/PGDIR entries for linear mapping when possible

 arch/riscv/include/asm/page.h |  8 ++++
 arch/riscv/mm/init.c          | 69 +++++++++++++++++++++++++++++------
 2 files changed, 65 insertions(+), 12 deletions(-)

-- 
2.20.1


