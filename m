Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A411CCFA0
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 04:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+h7eG4Lmw/Y3z3rvuGZZ8qXmcLKSqPRE2q/SY5FP534=; b=I/uVnQWryl4YEb
	JRmFueoK8Y4K3PKPGoFPZdR4vJte27XavnJfu0FvPHTQ2oej2kXeFFL+pdLilRJ3btXbPGvCiizLX
	4TCwA5soO8dUarEdcDbbykiJO27wGVfbJdOw1NR08h23Cvw78p1Y6tGcT/eBDVoj+H3FDkpzCQu3I
	jFyM0iKtrimtJkheRiVZOdXRengYBlXeO3QgBg+i9rxz1f/rHya7Lc31drKYf+Z+s/VBYp7zMMxlW
	Vzd0WTfhfJoLg9T4DNVWS4HhsSxfc0TOcXEH9+8mi78Imi/gLBXTSPhS1RmJO9TIvNQQ66XceToax
	7T0i++56cNnoWXtyv6cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXy0y-0000dM-Er; Mon, 11 May 2020 02:17:56 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXy0F-0008VE-OK
 for linux-riscv@lists.infradead.org; Mon, 11 May 2020 02:17:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E8809825BBDEEAECEA50;
 Mon, 11 May 2020 10:17:08 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Mon, 11 May 2020 10:17:01 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 00/10] riscv: make riscv build happier
Date: Mon, 11 May 2020 10:19:51 +0800
Message-ID: <20200511022001.179767-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191712_022071_FCEDF3E0 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When add RISCV arch to huawei build test, there are some build
issue, let's fix them to make riscv build happier :) 

Those patches is rebased on next-20200508.

Kefeng Wang (10):
  riscv: Fix unmet direct dependencies built based on SOC_VIRT
  riscv: stacktrace: Fix undefined reference to `walk_stackframe'
  riscv: Add pgprot_writecombine/device and PAGE_SHARED defination if
    NOMMU
  riscv: Fix print_vm_layout build error if NOMMU
  riscv: Disable ARCH_HAS_DEBUG_WX if NOMMU
  riscv: Disable ARCH_HAS_DEBUG_VIRTUAL if NOMMU
  riscv: Make SYS_SUPPORTS_HUGETLBFS depends on MMU
  riscv: pgtable: Fix __kernel_map_pages build error if NOMMU
  timer-riscv: Fix undefined riscv_time_val
  riscv: mmiowb: Fix implicit declaration of function 'smp_processor_id'

 arch/riscv/Kconfig                |  5 +++--
 arch/riscv/Kconfig.socs           | 17 +++++++++--------
 arch/riscv/include/asm/mmio.h     |  2 ++
 arch/riscv/include/asm/mmiowb.h   |  1 +
 arch/riscv/include/asm/pgtable.h  |  3 +++
 arch/riscv/kernel/stacktrace.c    |  2 +-
 arch/riscv/mm/init.c              |  2 +-
 drivers/clocksource/timer-riscv.c |  1 +
 8 files changed, 21 insertions(+), 12 deletions(-)

-- 
2.26.2


