Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92133CF282
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 08:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Jsz+Ze4f56NN8LK6AIxUhp9JbX+LcqsElr8Oh9yBVQ=; b=Xe98QES3vn352q
	3AsmayQjPCVe7yagL8ecfasO9FyF4/STI9J/tuQBpC7su4AipGJuuuiqqMuiVGqMv7P+JOeUjbHBc
	qRu7c1cDUyS/fHKR6hIVesGr8bcjY15VLMdomL8QDt/MrzGBEqx9hKkh36CdBAH/3z5VUdUPnZ2b6
	BrlnY5ZwqRkCdoAOGirx3S5qAxDMdmpQFAuLsRwu28YC1JcJO+uKD+NK+E/klPlfSwQRsxTbDxjYJ
	Ujw177kSK1pMWSsCEacMnlu4Y7qqU7J72LqtzmEaDEHNvLPHNQF7BztB3UhaIBhC75kNrasZRVu6f
	S6VpbtoLEMi0iVN7jtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHikB-0005sy-QH; Tue, 08 Oct 2019 06:13:11 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHik7-0005r7-Eh
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 06:13:09 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x985u7EV075289;
 Tue, 8 Oct 2019 13:56:07 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 8 Oct 2019
 14:11:59 +0800
From: Nick Hu <nickhu@andestech.com>
To: <alankao@andestech.com>, <paul.walmsley@sifive.com>, <palmer@sifive.com>, 
 <aou@eecs.berkeley.edu>, <aryabinin@virtuozzo.com>,
 <glider@google.com>, <dvyukov@google.com>, <corbet@lwn.net>,
 <alexios.zavras@intel.com>, <allison@lohutok.net>,
 <Anup.Patel@wdc.com>, <tglx@linutronix.de>,
 <gregkh@linuxfoundation.org>, <atish.patra@wdc.com>,
 <kstewart@linuxfoundation.org>, <linux-doc@vger.kernel.org>,
 <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <kasan-dev@googlegroups.com>, <linux-mm@kvack.org>
Subject: [PATCH v3 0/3] KASAN support for RISC-V
Date: Tue, 8 Oct 2019 14:11:50 +0800
Message-ID: <cover.1570514544.git.nickhu@andestech.com>
X-Mailer: git-send-email 2.17.0
MIME-Version: 1.0
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x985u7EV075289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_231307_767773_5409F6F2 
X-CRM114-Status: UNSURE (   8.48  )
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

KASAN is an important runtime memory debugging feature in linux kernel
which can detect use-after-free and out-of-bounds problems.

Changes in v2:
  - Remove the porting of memmove and exclude the check instead.
  - Fix some code noted by Christoph Hellwig

Changes in v3:
  - Update the KASAN documentation to mention that riscv is supported.

Nick Hu (3):
  kasan: Archs don't check memmove if not support it.
  riscv: Add KASAN support
  kasan: Add riscv to KASAN documentation.

 Documentation/dev-tools/kasan.rst   |   4 +-
 arch/riscv/Kconfig                  |   1 +
 arch/riscv/include/asm/kasan.h      |  27 ++++++++
 arch/riscv/include/asm/pgtable-64.h |   5 ++
 arch/riscv/include/asm/string.h     |   9 +++
 arch/riscv/kernel/head.S            |   3 +
 arch/riscv/kernel/riscv_ksyms.c     |   2 +
 arch/riscv/kernel/setup.c           |   5 ++
 arch/riscv/kernel/vmlinux.lds.S     |   1 +
 arch/riscv/lib/memcpy.S             |   5 +-
 arch/riscv/lib/memset.S             |   5 +-
 arch/riscv/mm/Makefile              |   6 ++
 arch/riscv/mm/kasan_init.c          | 104 ++++++++++++++++++++++++++++
 mm/kasan/common.c                   |   2 +
 14 files changed, 173 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/include/asm/kasan.h
 create mode 100644 arch/riscv/mm/kasan_init.c

-- 
2.17.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
