Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B521AEC8
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 04:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6UvSJXY0Q8FXIiOyfxVsNYdKg9iudRbiq6SjwbhU6Po=; b=ufP
	D+yOWSKIoBUP1wGdvw/O4/Zy++ZnkfspJBiFF9Fb5ewNdfAssbIC3pmGynm2T0rFdDqbplzbGWd9e
	bR4e48T6VaDAmpRQU07N/GAiAsG0/bkLbdgkqdZzZ4b726/sMhbyB6tr16WjyxtBKEWxqCQlaWn8V
	dmNDZd3/EPZ30f2u4EJzcVFOCnK3PseWA6+sJ+x4eesByRNt03HNggoEaHApzxXCNFWefZHWVkZ0t
	p3gQ9Evjp/B0lVkMRzFQ8nEPY7X8Kf7MeEh52zjv4/UTSvaiTQa8XSF/+nXSHLNNZRP/VODolJVDc
	4eOngjy+6Yp4MeeIkF9T3BB2BXn06sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ0Rk-0004OF-5u; Mon, 13 May 2019 02:12:08 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ0Rf-0004Nw-Js
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 02:12:05 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x4D2BJwo025732;
 Mon, 13 May 2019 11:11:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x4D2BJwo025732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557713482;
 bh=Ki33WvIZU3LaqBjqYiKvhfq/zDFbB4ISi/hM3l/rztg=;
 h=From:To:Cc:Subject:Date:From;
 b=k/5Reo06TUdR1kj56Zht7D154bedNwvBghzFabexspXt8JTRklu+oWGrEEBg9dne8
 zhOqKbE6Wl3RRYbFv7zEi1LVPpS2pFArvYXb4M+1grNhrxZGF+U8VsPxRQFQGvoyOR
 INejwQ4yo8ZSVeD58tQp3yMjN+hTZwl8XLPbLb22lv1SfeMsDA+VhVKQWDv5yYW54j
 nJep+VnOy6HM84BR8GWXDczQ3zVZgINsEFIdM1a8APWZGhQFURizRqbe3snYFtV9oQ
 WHDB1x1LeLXLgFbJdyfTSrtkOAF4QhQ1yMlNV3KaODW9UUYDPqL532kZY/bPAZwrxJ
 cJ5DC/+IqbXMA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-s390@vger.kernel.org
Subject: [PATCH] s390: move arch/s390/defconfig to arch/s390/configs/defconfig
Date: Mon, 13 May 2019 11:11:16 +0900
Message-Id: <20190513021116.12191-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_191203_990203_651FE640 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guo Ren <guoren@kernel.org>, Greentime Hu <green.hu@gmail.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As of Linux 5.1, alpha and s390 are the last architectures that
have defconfig in arch/*/ instead of arch/*/configs/.

  $ find arch -name defconfig | sort
  arch/alpha/defconfig
  arch/arm64/configs/defconfig
  arch/csky/configs/defconfig
  arch/nds32/configs/defconfig
  arch/riscv/configs/defconfig
  arch/s390/defconfig

The arch/$(ARCH)/defconfig is the hard-coded default in Kconfig,
and I want to deprecate it after evacuating the remaining defconfig
into the standard location, arch/*/configs/.

Define KBUILD_DEFCONFIG like other architectures, and move defconfig
into the configs/ subdirectory.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/s390/Makefile                | 2 ++
 arch/s390/{ => configs}/defconfig | 0
 2 files changed, 2 insertions(+)
 rename arch/s390/{ => configs}/defconfig (100%)

diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index df1d6a150f30..de8521fc9de5 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -10,6 +10,8 @@
 # Copyright (C) 1994 by Linus Torvalds
 #
 
+KBUILD_DEFCONFIG := defconfig
+
 LD_BFD		:= elf64-s390
 KBUILD_LDFLAGS	:= -m elf64_s390
 KBUILD_AFLAGS_MODULE += -fPIC
diff --git a/arch/s390/defconfig b/arch/s390/configs/defconfig
similarity index 100%
rename from arch/s390/defconfig
rename to arch/s390/configs/defconfig
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
