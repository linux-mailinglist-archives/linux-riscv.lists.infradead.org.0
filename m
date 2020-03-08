Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9411917D2FD
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 10:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxhDnHcjaoiiytTgEu1ggofaLba2rO4IJ5qnHmVBJ24=; b=Aw51D8B+mm8lQ7
	+qgiZ31ueRIaUIBNNztw6ueUhFvg4UZYouY1+Z+EZedHbTo9ce8Kugntj3N9THR/JBmueAzWyEAEH
	FwFIR1dk2WJNxgb8UUQi0CYHEy9Blfs5jOGaU9x6fBFqk+0STZ/93h4mg9BNnaBSv0zSQY/8G++AU
	qnEZKvRe6EUege+O+rLQJwgGZ5g4IHPeRjVvcnFXAIRO1AJ2T05SZbdhuTZV/RAMJa9HqpJWIxr7d
	cAEp4q2jK1jlb1QvSmdPRU4WXR+a04cSKtSFhAuiH4ihrlH8snHGnG4QWm4QX3Qvv7r58APz1gHnt
	IDQrUv9EwH4vuHeq0hWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAsck-00028S-MB; Sun, 08 Mar 2020 09:53:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAscf-000265-4M
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 09:53:26 +0000
Received: from localhost.localdomain (unknown [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8E4C20848;
 Sun,  8 Mar 2020 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583661204;
 bh=HM4Ww0uWHBrydUOUYxNwt5jptdKmQsMTeZBPstuaVQE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WeKMEkTuKD7iOgpr5jw2zTvo1TUCqFYm1IuvQSsQ0YQhXtYd52WGFNizPCBNV213q
 mWwBpGN4ms4i7FE+SttanGNhum/JWnt9Y4BrE1asn5GQJD8ggxnEzAsl3uX/2ihmE2
 5lWFY3HZkskcIdUL70Dm0snQYzz/Jj5tFpKJOfMQ=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, Anup.Patel@wdc.com,
 greentime.hu@sifive.com
Subject: [RFC PATCH V3 02/11] riscv: Rename __switch_to_aux -> fpu
Date: Sun,  8 Mar 2020 17:49:45 +0800
Message-Id: <20200308094954.13258-3-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
References: <20200308094954.13258-1-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_015325_190998_DFEBE179 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 linux-riscv@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

From: Guo Ren <ren_guo@c-sky.com>

The name of __switch_to_aux is not clear and rename it with the
determine function: __switch_to_fpu. Next we could add other regs'
switch.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/switch_to.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 407bcc96a710..b9234e7178d0 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -44,7 +44,7 @@ static inline void fstate_restore(struct task_struct *task,
 	}
 }
 
-static inline void __switch_to_aux(struct task_struct *prev,
+static inline void __switch_to_fpu(struct task_struct *prev,
 				   struct task_struct *next)
 {
 	struct pt_regs *regs;
@@ -60,7 +60,7 @@ extern bool has_fpu;
 #define has_fpu false
 #define fstate_save(task, regs) do { } while (0)
 #define fstate_restore(task, regs) do { } while (0)
-#define __switch_to_aux(__prev, __next) do { } while (0)
+#define __switch_to_fpu(__prev, __next) do { } while (0)
 #endif
 
 extern struct task_struct *__switch_to(struct task_struct *,
@@ -71,7 +71,7 @@ do {							\
 	struct task_struct *__prev = (prev);		\
 	struct task_struct *__next = (next);		\
 	if (has_fpu)					\
-		__switch_to_aux(__prev, __next);	\
+		__switch_to_fpu(__prev, __next);	\
 	((last) = __switch_to(__prev, __next));		\
 } while (0)
 
-- 
2.17.0


