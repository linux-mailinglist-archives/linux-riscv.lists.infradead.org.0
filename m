Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62501FABEE
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 11:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VCSnDlWQQOXLNPniN7EtyknA4nluEUqEQ0gUXSmKw8w=; b=dRZ0MGicfFgslm5WWWbK2Pt67r
	KSwzmRzyfyGJlGx7Vy8zCzWAuufxFOlIY7TXKzDAo/QwL/d0vQQFOFsDfnH6qcbV81aNyjl44Z7xJ
	2CyDlwHBkavpZouF6azJTbL2Bzk6hY1BXph2nSfSzy7X8uxV/QQPAOqr4R4gePx8J2bjThGwx7lG4
	LAhoT+GLQ/9zjrBFFQVGH+HcfikaJGgUsTtXZk9HNzOBJx4S+K9AQBxfvkvqaszO5yY76zUyiWc88
	1i9mHxZdj5oXKsEOqicid6aPKppDeI5h8fVXpCnelKoyZS6ZAPH3CI4eJ5XhQfLE1GN6wguazyQkP
	umH+uJWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7bq-0001J8-NB; Tue, 16 Jun 2020 09:10:22 +0000
Received: from sym2.noone.org ([178.63.92.236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7bn-0001Ia-Dt
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 09:10:20 +0000
Received: by sym2.noone.org (Postfix, from userid 1002)
 id 49mMSN3v8kzvjc1; Tue, 16 Jun 2020 10:53:56 +0200 (CEST)
From: Tobias Klauser <tklauser@distanz.ch>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] riscv: fix typo in asm/hwcap.h uapi header
Date: Tue, 16 Jun 2020 10:53:56 +0200
Message-Id: <20200616085356.9221-1-tklauser@distanz.ch>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_021019_616054_216F7058 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

s/userpsace/userspace/

Signed-off-by: Tobias Klauser <tklauser@distanz.ch>
---
 arch/riscv/include/uapi/asm/hwcap.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/uapi/asm/hwcap.h b/arch/riscv/include/uapi/asm/hwcap.h
index dee98ee28318..46dc3f5ee99f 100644
--- a/arch/riscv/include/uapi/asm/hwcap.h
+++ b/arch/riscv/include/uapi/asm/hwcap.h
@@ -11,7 +11,7 @@
 /*
  * Linux saves the floating-point registers according to the ISA Linux is
  * executing on, as opposed to the ISA the user program is compiled for.  This
- * is necessary for a handful of esoteric use cases: for example, userpsace
+ * is necessary for a handful of esoteric use cases: for example, userspace
  * threading libraries must be able to examine the actual machine state in
  * order to fully reconstruct the state of a thread.
  */
-- 
2.27.0


