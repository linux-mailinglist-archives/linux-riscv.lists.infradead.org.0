Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9337A6503D
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 04:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OQ9IbuGBXa3q3sx8/Ri9XCNb2PvN5bFPHSNy0iBhYD8=; b=VsT
	Owe1jQy2ya/7yTwjl+Roo4qeGhmAtUMopIuEzfjBuD59vWPZRxbKeUq0lmfrEo5yTFsI/O0CpsBea
	boCt51twZbtxV9+HNi/VJcUZGgfHKovmrjjRKmN5czLFJU1SVADA5iQsuo08BSkuxCDT9m/B8ubzk
	XukY4trWIE2B3D/+IKRjnR9DVSH/oKDBrLTgRWXE3WLmH1ZcrMw2joZ/f5e54yYsqur/VH3Mlxkbz
	sTsZOmoKXe1KXvq+BOSSXU69wzlQxh3dr7+6utzkwdirB7iZGYS41kjfE4T3ORvct/TyyvY0QApfj
	6DILUU5iFPwvhOIaIBZ51iEBEK10Etg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlP0b-0008Fq-4i; Thu, 11 Jul 2019 02:40:33 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlP0W-0008Es-HU
 for linux-riscv@lists.infradead.org; Thu, 11 Jul 2019 02:40:30 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.09366905|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.0744421-0.00954207-0.916016; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03267; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=7; RT=7; SR=0;
 TI=SMTPD_---.Evp2QQa_1562812820; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.Evp2QQa_1562812820) by smtp.aliyun-inc.com(10.147.40.7);
 Thu, 11 Jul 2019 10:40:20 +0800
From: Mao Han <han_mao@c-sky.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] riscv: Fix perf record without libelf support
Date: Thu, 11 Jul 2019 10:38:40 +0800
Message-Id: <96b979a523210628de8a8a3d6e48492f6f1ff02d.1562812381.git.han_mao@c-sky.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_194028_733835_3599D9FB 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-csky@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Mao Han <han_mao@c-sky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch fix following perf record error by linking vdso.so with
build id.

perf.data      perf.data.old
[ perf record: Woken up 1 times to write data ]
free(): double free detected in tcache 2
Aborted

perf record use filename__read_build_id(util/symbol-minimal.c) to get
build id when libelf is not supported. When vdso.so is linked without
build id, the section size of PT_NOTE will be zero, buf size will
realloc to zero and cause memory corruption.

Signed-off-by: Mao Han <han_mao@c-sky.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
---
 arch/riscv/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index f1d6ffe..49a5852 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -37,7 +37,7 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 # these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
-	-Wl,--hash-style=both
+	-Wl,--build-id -Wl,--hash-style=both
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
