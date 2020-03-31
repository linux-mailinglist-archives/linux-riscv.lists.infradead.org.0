Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CD5199253
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 11:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1wLMVDxa6PXQvBvY5Ssw+izceFt5diPMaqIezePv6AE=; b=JIS
	bRtSO7XImdf63zmahswU2YjMR3fk2poavHH8pnzY3gUKcngc5C+EZ6XmGvPOKHF4LW2DcP6Pq6l6M
	1k2/OK9aXIXioKVQ6wGo1FZU61eijlT9IcqmNt2jlob8uN+x0v2s6QMr0I+6tlUHs1TtiXw8k9i4/
	ApZkLG4a+l2EfBht9Fv0o0xSzDRZgsdLn9QztSg6zyvbW4QEEUrJ6H0T+xipPEw/bYjh34piC77nL
	iipXNXiPDNxVphSLqGhnU9PuxmlbHUlTk+KDBX6a77B7WsOMvLqDDK+MBNoLc7+zBg6NUQZUKn0bR
	veU9YSsh7ySrse4e/uuPrFh7mVg3NMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDHd-0003qm-Rv; Tue, 31 Mar 2020 09:34:09 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDHX-0003n5-Dg
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 09:34:04 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 02V9W6MH065446;
 Tue, 31 Mar 2020 17:32:06 +0800 (GMT-8)
 (envelope-from tesheng@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 31 Mar 2020
 17:32:58 +0800
From: Eric Lin <tesheng@andestech.com>
To: <linux-riscv@lists.infradead.org>
Subject: [PATCH 0/3] Highmem support for 32-bit RISC-V
Date: Tue, 31 Mar 2020 17:32:38 +0800
Message-ID: <20200331093241.3728-1-tesheng@andestech.com>
X-Mailer: git-send-email 2.17.0
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 02V9W6MH065446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_023403_709832_FEEAF052 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: aou@eecs.berkeley.edu, gary@garyguo.net, alex@ghiti.fr,
 david.abdurachmanov@gmail.com, steven.price@arm.com, Anup.Patel@wdc.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, atish.patra@wdc.com,
 yash.shah@sifive.com, Eric Lin <tesheng@andestech.com>, palmer@dabbelt.com,
 green.hu@gmail.com, zong.li@sifive.com, paul.walmsley@sifive.com,
 akpm@linux-foundation.org, bp@suse.de, logang@deltatee.com, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

With Highmem support, the kernel can map more than 1GB physical memory.

This patchset implements Highmem for RV32, referencing to mostly nds32
and others like arm and mips, and it has been tested on Andes A25MP platform.

Eric Lin (3):
  riscv/mm: Add pkmap region and CONFIG_HIGHMEM
  riscv/mm: Implement kmap() and kmap_atomic()
  riscv/mm: Add pkmap in print_vm_layout()

 arch/riscv/Kconfig               | 18 +++++++
 arch/riscv/include/asm/fixmap.h  |  9 +++-
 arch/riscv/include/asm/highmem.h | 49 +++++++++++++++++
 arch/riscv/include/asm/pgtable.h | 27 ++++++++++
 arch/riscv/mm/Makefile           |  1 +
 arch/riscv/mm/highmem.c          | 74 +++++++++++++++++++++++++
 arch/riscv/mm/init.c             | 92 ++++++++++++++++++++++++++++++--
 7 files changed, 266 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/include/asm/highmem.h
 create mode 100644 arch/riscv/mm/highmem.c

-- 
2.17.0


