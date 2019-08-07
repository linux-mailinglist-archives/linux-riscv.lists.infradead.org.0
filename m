Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F5784591
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 09:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aHVfqjkhauYHvEPVxV7KasOHrPUyGYoLSh0AZ3B+5qA=; b=SXLocmJ1+HjlOf
	IuTDwbcBQLObH79kDGlxDrXtW7/1MoXb2vjIyTAvs+BvNyutbn7jwn56YgKNFqU4ELKtbspvNIpiS
	2ahxRVdo38W9thj5o9/ZljyzQ1g2c+CiRq0Gju+SZpxhFFjdemGlqGvzUInv9gMA8qZP4zapUH9iF
	gsnEuSMw7Omz5xWktx+32IKsAIeWcUb6fz6TFjFCh7ZNydf+J6Xwyl75m7GuYCd+YbcuUhsmyTgGf
	RCvRn6clCH5RfDUcp9SgJBI6ON9vnBjvyee9Y86GwS3OezTV+VLRlMudOcoC4gONXzgkNKxxZlpXS
	tl9XINKFMhX/DeLFYczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGFC-0004WT-2I; Wed, 07 Aug 2019 07:20:22 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGF8-0004VR-28
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 07:20:19 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7778Nlw027022;
 Wed, 7 Aug 2019 15:08:23 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 7 Aug 2019
 15:19:21 +0800
From: Nick Hu <nickhu@andestech.com>
To: <alankao@andestech.com>, <paul.walmsley@sifive.com>, <palmer@sifive.com>, 
 <aou@eecs.berkeley.edu>, <green.hu@gmail.com>, <deanbo422@gmail.com>,
 <tglx@linutronix.de>, <linux-riscv@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <aryabinin@virtuozzo.com>,
 <glider@google.com>, <dvyukov@google.com>, <Anup.Patel@wdc.com>,
 <gregkh@linuxfoundation.org>, <alexios.zavras@intel.com>,
 <atish.patra@wdc.com>, <zong@andestech.com>, <kasan-dev@googlegroups.com>
Subject: [PATCH 0/2] KASAN support for RISC-V
Date: Wed, 7 Aug 2019 15:19:13 +0800
Message-ID: <cover.1565161957.git.nickhu@andestech.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7778Nlw027022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_002018_366168_03AE212F 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Nick Hu <nickhu@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

KASAN is an important runtime memory debugging feature
in linux kernel which can detect use-after-free and out-of-
bounds problems.

There are two patches in this letter:
1. Porting the memmove string operation.
2. Porting the feature KASAN.

Nick Hu (2):
  riscv: Add memmove string operation.
  riscv: Add KASAN support

 arch/riscv/Kconfig                  |    2 +
 arch/riscv/include/asm/kasan.h      |   26 +++++++++
 arch/riscv/include/asm/pgtable-64.h |    5 ++
 arch/riscv/include/asm/string.h     |   10 ++++
 arch/riscv/kernel/head.S            |    3 +
 arch/riscv/kernel/riscv_ksyms.c     |    4 ++
 arch/riscv/kernel/setup.c           |    9 +++
 arch/riscv/kernel/vmlinux.lds.S     |    1 +
 arch/riscv/lib/Makefile             |    1 +
 arch/riscv/lib/memcpy.S             |    5 +-
 arch/riscv/lib/memmove.S            |   64 ++++++++++++++++++++++
 arch/riscv/lib/memset.S             |    5 +-
 arch/riscv/mm/Makefile              |    6 ++
 arch/riscv/mm/kasan_init.c          |  102 +++++++++++++++++++++++++++++++++++
 14 files changed, 239 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/include/asm/kasan.h
 create mode 100644 arch/riscv/lib/memmove.S
 create mode 100644 arch/riscv/mm/kasan_init.c


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
