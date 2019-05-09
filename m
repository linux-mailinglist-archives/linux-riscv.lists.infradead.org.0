Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822B618673
	for <lists+linux-riscv@lfdr.de>; Thu,  9 May 2019 10:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lwpRwqmBxOsl5LwI0mSX1Psxvo612HmeQAa9yHQ9SMQ=; b=kdj
	1tEAh809QvuE/aOwid3XXldNrdYgDUCOz75XI9Fx8zOIYSZKIlHoUw+NPpl4xM51KW1tcf3L/yM3P
	ZlByPnE1SdM43FQn1YmbKqvqnE2Nzl/5R5OtO77LiFSxMRxCey1yiiCIl6W4ajQg04+QZ0zHg4TiS
	iUZcEu1N3/xS/ugB4oaBOgJGfl/DbjDVbwjJjwQahyM5SPA4rXeDhmmIO1u+62lMKS39ehtuCwdOh
	YY7DcsmjC75VuAivSTxg0lyrKmg/l1ffub32/C7IdbcN34DtrstIWOv5k6f7okoyw7M45JggPX8Dq
	3e+hSij882Juol/dYRfBqdmHsAZm5tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdyz-0003l8-ES; Thu, 09 May 2019 08:00:49 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdyv-0003kZ-J2
 for linux-riscv@lists.infradead.org; Thu, 09 May 2019 08:00:47 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id x497xj2q012573;
 Thu, 9 May 2019 16:59:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x497xj2q012573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557388786;
 bh=jub7bB0RFseuMn3f9vTFge0BDW0edV2DzaD6c3dAiQA=;
 h=From:To:Cc:Subject:Date:From;
 b=gZou6hCj3tbogxwjicKwMCixLy35m9sNFb8Dmpz2aK4xYQrkVyYiZo/DkZgQkNEpz
 zcem2So5e6G5IrKS+bzKlVHtzPP1kHIPA5S5WSPdkFNlUuT5PvQyA/rd9YIpxq50UT
 SqbrvmSvrvooJKtMuNSq1l1hVHstwznIQHQdbzGEZ7I6gn9sKP3f0SP4gjxAqJNmb7
 wu03p5mEpDt/pZPyWzv7rudw7YIx3uyiNX/Scy3stjMSLIXlHl1MzfhMBbvnfHzNhR
 n/uZdlXeIjx5vwCuBbrhoBgtAWNhqj0KuPLMH6PqiGLEb2I09Nrblyqwko1WiV28fl
 /3zJI3cVHzCGA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] arch: remove dangling asm-generic wrappers
Date: Thu,  9 May 2019 16:59:34 +0900
Message-Id: <20190509075934.12185-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_010045_954389_53AE5397 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 uclinux-h8-devel@lists.sourceforge.jp, Vincent Chen <deanbo422@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-xtensa@linux-xtensa.org,
 Max Filippov <jcmvbkbc@gmail.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, linux-riscv@lists.infradead.org,
 Chris Zankel <chris@zankel.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

These generic-y defines do not have the corresponding generic header
in include/asm-generic/, so they are definitely invalid.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/csky/include/asm/Kbuild   | 4 ----
 arch/h8300/include/asm/Kbuild  | 1 -
 arch/nds32/include/asm/Kbuild  | 3 ---
 arch/riscv/include/asm/Kbuild  | 4 ----
 arch/xtensa/include/asm/Kbuild | 1 -
 5 files changed, 13 deletions(-)

diff --git a/arch/csky/include/asm/Kbuild b/arch/csky/include/asm/Kbuild
index a9b63efef416..c1a6c0f31150 100644
--- a/arch/csky/include/asm/Kbuild
+++ b/arch/csky/include/asm/Kbuild
@@ -1,6 +1,5 @@
 generic-y += asm-offsets.h
 generic-y += bugs.h
-generic-y += clkdev.h
 generic-y += compat.h
 generic-y += current.h
 generic-y += delay.h
@@ -29,15 +28,12 @@ generic-y += local64.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
 generic-y += module.h
-generic-y += mutex.h
 generic-y += pci.h
 generic-y += percpu.h
 generic-y += preempt.h
 generic-y += qrwlock.h
-generic-y += scatterlist.h
 generic-y += sections.h
 generic-y += serial.h
-generic-y += shm.h
 generic-y += timex.h
 generic-y += topology.h
 generic-y += trace_clock.h
diff --git a/arch/h8300/include/asm/Kbuild b/arch/h8300/include/asm/Kbuild
index 123d8f54be4a..63e5ab115e3c 100644
--- a/arch/h8300/include/asm/Kbuild
+++ b/arch/h8300/include/asm/Kbuild
@@ -38,7 +38,6 @@ generic-y += pci.h
 generic-y += percpu.h
 generic-y += pgalloc.h
 generic-y += preempt.h
-generic-y += scatterlist.h
 generic-y += sections.h
 generic-y += serial.h
 generic-y += shmparam.h
diff --git a/arch/nds32/include/asm/Kbuild b/arch/nds32/include/asm/Kbuild
index 5bd2b4ee951f..6897045e7be5 100644
--- a/arch/nds32/include/asm/Kbuild
+++ b/arch/nds32/include/asm/Kbuild
@@ -4,10 +4,8 @@ generic-y += bitops.h
 generic-y += bug.h
 generic-y += bugs.h
 generic-y += checksum.h
-generic-y += clkdev.h
 generic-y += cmpxchg.h
 generic-y += compat.h
-generic-y += cputime.h
 generic-y += device.h
 generic-y += div64.h
 generic-y += dma.h
@@ -26,7 +24,6 @@ generic-y += kdebug.h
 generic-y += kmap_types.h
 generic-y += kprobes.h
 generic-y += kvm_para.h
-generic-y += limits.h
 generic-y += local.h
 generic-y += local64.h
 generic-y += mm-arch-hooks.h
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index cccd12cf27d4..f86d68dabaf0 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -1,7 +1,6 @@
 generic-y += bugs.h
 generic-y += checksum.h
 generic-y += compat.h
-generic-y += cputime.h
 generic-y += device.h
 generic-y += div64.h
 generic-y += dma.h
@@ -11,7 +10,6 @@ generic-y += emergency-restart.h
 generic-y += exec.h
 generic-y += fb.h
 generic-y += hardirq.h
-generic-y += hash.h
 generic-y += hw_irq.h
 generic-y += irq_regs.h
 generic-y += irq_work.h
@@ -21,10 +19,8 @@ generic-y += kvm_para.h
 generic-y += local.h
 generic-y += local64.h
 generic-y += mm-arch-hooks.h
-generic-y += mutex.h
 generic-y += percpu.h
 generic-y += preempt.h
-generic-y += scatterlist.h
 generic-y += sections.h
 generic-y += serial.h
 generic-y += shmparam.h
diff --git a/arch/xtensa/include/asm/Kbuild b/arch/xtensa/include/asm/Kbuild
index 35f83c4bf239..f1686d919178 100644
--- a/arch/xtensa/include/asm/Kbuild
+++ b/arch/xtensa/include/asm/Kbuild
@@ -27,7 +27,6 @@ generic-y += preempt.h
 generic-y += qrwlock.h
 generic-y += qspinlock.h
 generic-y += sections.h
-generic-y += socket.h
 generic-y += topology.h
 generic-y += trace_clock.h
 generic-y += vga.h
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
