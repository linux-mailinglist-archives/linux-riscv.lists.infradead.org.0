Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BBE97621
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 11:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1wdFtWn3ua5moZBsdgXQm35fFvK058nZOEIxjSX7l+I=; b=B3I
	L5AlQ8gDjJRQfchmL2Q88G5ga182ETsf656jLqcK5+ds9SUyhLPVIVP+AnPp/nvo4BrbBx9l0ieqK
	L3BGb6CyIiWdX3SrB9jN9e3u8ZvhnPHmhMAo63IO2R0ZB3mFVveAQBDg8dzX7wf9QG3nx3wBKw2cz
	VQPLkozrBf6PnENOuv9ELU+cmaJCxZYStqIE+EBA2Vrq66jUvKXgjxA0+hQYfrVOXfb97o8TgGOYq
	Ef+l/qrnWa2fbGNVP1LR3HKqnc1JKm1CekbksE5TEnVuLPvnxYOqCfwG92uXrlWVzUf5qx7Bi2Le+
	jtcg79aPlrWDaEpAl9Aq2385WhBn2Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MuU-0000t8-G0; Wed, 21 Aug 2019 09:28:06 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MuH-0000rT-3j
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 09:27:55 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x7L9Qxk5009298;
 Wed, 21 Aug 2019 18:26:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x7L9Qxk5009298
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566379619;
 bh=pqcPU4AECin6r3EcYqzgQUoNg5HAz9R05ah4cX2iLn4=;
 h=From:To:Cc:Subject:Date:From;
 b=c+NS490TiT/gXvHLM8uDhIkSvcIemGEtcTjpEGee/AapYXb5VC63uE31iAXAiJOpK
 v/HRhZr4IOEuR/avdcAKcoAc5IzUVc0qkTd0BNUao1elY22StnVO2uMHd9PMP+errs
 H4ZFDdX5l/jIx5lPc2qnb2fiV9OV/CzAgpLBNU7087GEEsas9fK5c/Z7tde86fsuEu
 xAHSdz/zXT1AXv/MF4P06lNWvnTngz+wejtpCzL6+XjYt4iCbvV+S5ndiFXKDcdbAG
 iDGx3BSL4xnHmF4+9pp8ik53ZXmCt8y2rePCTU9G2/OMo8Bfdl5hZoAY1YSPHTO6at
 3ImjknwD0vMvA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: add arch/riscv/Kbuild
Date: Wed, 21 Aug 2019 18:26:58 +0900
Message-Id: <20190821092658.32764-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_022753_624388_8B23303C 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use the standard obj-y form to specify the sub-directories under
arch/riscv/. No functional change intended.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/riscv/Kbuild   | 3 +++
 arch/riscv/Makefile | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/Kbuild

diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
new file mode 100644
index 000000000000..d1d0aa70fdf1
--- /dev/null
+++ b/arch/riscv/Kbuild
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += kernel/ mm/ net/
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 426d989125a8..bf4c6d914ff5 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -72,7 +72,7 @@ KBUILD_IMAGE	:= $(boot)/Image.gz
 
 head-y := arch/riscv/kernel/head.o
 
-core-y += arch/riscv/kernel/ arch/riscv/mm/ arch/riscv/net/
+core-y += arch/riscv/
 
 libs-y += arch/riscv/lib/
 
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
