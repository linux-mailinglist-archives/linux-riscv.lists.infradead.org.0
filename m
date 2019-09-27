Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2BFC00BC
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Sep 2019 10:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:
	References:In-Reply-To:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzZzDrp+eJBTnufu6RXOIrjHC+rOxqyjIkCduSfKDtQ=; b=U74AXRVA/DS7GZ
	Yq/bkWflSyqkcAP5hx1Fk1GOq0CC0PQs/H7ISzL5rmQtDJ5ldhAH/Oe/O+aGmZQdzFdI2qq1982bg
	nihD6Lm0ff8VP/lD6JZbWJToCyQzHgptvYeJCUofe5gPna5TF9UIrOuQqdCZYDltuldEnSyQLxYXe
	4GehTf6N+MQkks+FCE15CQco9glP1ygUGhD+lF7/fBQNAqVtc+7c2a2nbVCHN+6D/f2UtFhXK9yYN
	8k1T8u8SMGANsRP6/+FHNyevJx997dwVgwAdl6mpLTOA2WwJSRCqbkVoOk1ddBen7fc/1sxZwGBK3
	noujtymUsz1iliTX5+mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlL5-0002Bm-Sk; Fri, 27 Sep 2019 08:10:55 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlL2-00020S-MI
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 08:10:54 +0000
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tip-bot2@linutronix.de>)
 id 1iDlKs-0005aX-2A; Fri, 27 Sep 2019 10:10:42 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
 by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 863DE1C0740;
 Fri, 27 Sep 2019 10:10:41 +0200 (CEST)
Date: Fri, 27 Sep 2019 08:10:41 -0000
From: "tip-bot2 for Valentin Schneider" <tip-bot2@linutronix.de>
To: linux-tip-commits@vger.kernel.org
Subject: [tip: sched/urgent] sched/core: Fix preempt_schedule() interrupt
 return comment
In-Reply-To: <20190923143620.29334-2-valentin.schneider@arm.com>
References: <20190923143620.29334-2-valentin.schneider@arm.com>
MIME-Version: 1.0
Message-ID: <156957184150.9866.17072165851925129764.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from
 these emails
Precedence: bulk
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_011052_876914_BE00AF8E 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Reply-To: linux-kernel@vger.kernel.org
Cc: uclinux-h8-devel@lists.sourceforge.jp,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, linux-m68k@lists.linux-m68k.org,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Valentin Schneider <valentin.schneider@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following commit has been merged into the sched/urgent branch of tip:

Commit-ID:     a49b4f4012ef233143c5f7ce44f97851e54d5ef9
Gitweb:        https://git.kernel.org/tip/a49b4f4012ef233143c5f7ce44f97851e54d5ef9
Author:        Valentin Schneider <valentin.schneider@arm.com>
AuthorDate:    Mon, 23 Sep 2019 15:36:12 +01:00
Committer:     Ingo Molnar <mingo@kernel.org>
CommitterDate: Wed, 25 Sep 2019 17:42:32 +02:00

sched/core: Fix preempt_schedule() interrupt return comment

preempt_schedule_irq() is the one that should be called on return from
interrupt, clean up the comment to avoid any ambiguity.

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: linux-m68k@lists.linux-m68k.org
Cc: linux-riscv@lists.infradead.org
Cc: uclinux-h8-devel@lists.sourceforge.jp
Link: https://lkml.kernel.org/r/20190923143620.29334-2-valentin.schneider@arm.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
---
 kernel/sched/core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 83ea23e..00ef44c 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -4218,9 +4218,8 @@ static void __sched notrace preempt_schedule_common(void)
 
 #ifdef CONFIG_PREEMPTION
 /*
- * this is the entry point to schedule() from in-kernel preemption
- * off of preempt_enable. Kernel preemptions off return from interrupt
- * occur there and call schedule directly.
+ * This is the entry point to schedule() from in-kernel preemption
+ * off of preempt_enable.
  */
 asmlinkage __visible void __sched notrace preempt_schedule(void)
 {
@@ -4291,7 +4290,7 @@ EXPORT_SYMBOL_GPL(preempt_schedule_notrace);
 #endif /* CONFIG_PREEMPTION */
 
 /*
- * this is the entry point to schedule() from kernel preemption
+ * This is the entry point to schedule() from kernel preemption
  * off of irq context.
  * Note, that this is called and return with irqs disabled. This will
  * protect us against recursive calling from irq.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
