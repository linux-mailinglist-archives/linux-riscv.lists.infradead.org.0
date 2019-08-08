Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D6985C4C
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 10:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=psUgR40EmH8TUDBse2JN7DdiSAr3tCNgkOzP/r/ZMBE=; b=twg3eFfGw1fuNqqGyq9HCeAOeq
	Qz/LH+LQ8klTpgYy6NpfwBw14rTxOyMlAD5Z9/4Ng44XFmISr7MDcHc2UvMQF3i1Sv0X1S/4qLR3C
	tsNF+CYL2kXTWOg2GAGKARd/u6GO5dfhRs2IGIxI6eoN2FvIMby4j3YSCNg6k51cm2Hl6KsEn1ZvO
	rYpEF8Z/iHpORTtiA4CcFEUrdGajDALOG7L9lvefKJGuxHp6fZwV62XOsFAVSNSRAjbnlujg8mVFd
	c36w1qKIjgikTfr9QZVTo3a08i9KRND1hbmMpt5rIPMRSbROQVqG+uuJ6rR2nvSOrxFd1sEW7BS07
	zChw6I0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdLh-0006ml-Ad; Thu, 08 Aug 2019 08:00:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdL9-0005QS-PN
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 08:00:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so43611802pgp.12
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 01:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZHlCvq7/QD+QdgO5YTqMsg9cOi9AJNwYVG4K7E83oZY=;
 b=WUCvD+Z2nlkFGqFW9gFc+esjtiW6+94cevALoUxafT0ex4G3R3j/dvQyEQoovv9RFQ
 QKiJ7rpP/A7MoxlKyQiWm9oacx6cakmmR6Fz3ywEiSUh9hF0t7EvdbPsRLWbJkj/NpNP
 ofDEH9bdClywPe4X68Wk8c44VasA5ZvcQWmH3BqNb1eur82/4EVQbEyttfzbxJyCXxEK
 iGpOtSwsAB7bJN35Zlzq5anhrPNN80u+702QXtmkrLGfs0te9OagqTlnLuMdzn3MtlY8
 RJKY1lUlio+EG+uPnzSe768J3j8VJWGbqScoOZLeK4Uiv+ClF4sjToKBUebjiDsjn9Q3
 RSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZHlCvq7/QD+QdgO5YTqMsg9cOi9AJNwYVG4K7E83oZY=;
 b=oVdYXMuCCmWjzrlJ6iZ2nBKAYfjKPeXVDK64Okj8XpQn0IDR3WLjJrxn5G2IHavoDe
 OO48jRL8JULZzc8xgtvyRE9f2rONdmTOXqmpCstqJuzEPzRpdgaPIo04RdYmudFdn0it
 8yOJvbGIjSPK8oLQ48jGh5keAUO9RKqbDbtuCUOCP8Q0CQ/NFzVp6TOxzeFBOjBXWYhz
 xWihyjRmbBLv4Jo5cMiYpc9FWU+lJpBHKyL9ixWjHTX/F/M2RbjsEQAK8xcXE61EDpLA
 R78GTjCJQ+CQQu7+Lbble6c1NUc2uN5AF3zsUjiX0yKDgxbbLAgcDboBHXDBhADlZ/K+
 FChw==
X-Gm-Message-State: APjAAAXrneCmI5znbQdwU2rLNhJx8fT7Sd9ELcvom7KoiDmEYQ7RiO5J
 UXf2VlEOEduCJi0dWoJRnT/pjw==
X-Google-Smtp-Source: APXvYqxz+Hz/5FrdhT1hx2qiHg7uaLX2nAEztIwQvYM9zGM4AC1xpxSjX5jKuSP2txI1IC+YmgjZfQ==
X-Received: by 2002:a17:90a:23ce:: with SMTP id
 g72mr2717106pje.77.1565251203056; 
 Thu, 08 Aug 2019 01:00:03 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id t8sm107697374pfq.31.2019.08.08.01.00.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 01:00:02 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@sifive.com,
	aou@eecs.berkeley.edu
Subject: [PATCH 1/2] riscv: Correct the initialized flow of FP register
Date: Thu,  8 Aug 2019 15:58:40 +0800
Message-Id: <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010003_869791_EC29975A 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  The following two reasons cause FP registers are sometimes not
initialized before starting the user program.
1. Currently, the FP context is initialized in flush_thread() function
   and we expect these initial values to be restored to FP register when
   doing FP context switch. However, the FP context switch only occurs in
   switch_to function. Hence, if this process does not be scheduled out
   and scheduled in before entering the user space, the FP registers
   have no chance to initialize.
2. In flush_thread(), the state of reg->sstatus.FS inherits from the
   parent. Hence, the state of reg->sstatus.FS may be dirty. If this
   process is scheduled out during flush_thread() and initializing the
   FP register, the fstate_save() in switch_to will corrupt the FP context
   which has been initialized until flush_thread().

  To solve the 1st case, the initialization of the FP register will be
completed in start_thread(). It makes sure all FP registers are initialized
before starting the user program. For the 2nd case, the state of
reg->sstatus.FS in start_thread will be set to SR_FS_OFF to prevent this
process from corrupting FP context in doing context save. The FP state is
set to SR_FS_INITIAL in start_trhead().

Tested on both QEMU and HiFive Unleashed using BBL + Linux.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/include/asm/switch_to.h |  6 ++++++
 arch/riscv/kernel/process.c        | 13 +++++++++++--
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 853b65e..d5fe573 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -19,6 +19,12 @@ static inline void __fstate_clean(struct pt_regs *regs)
 	regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
 }
 
+static inline void fstate_off(struct task_struct *task,
+			       struct pt_regs *regs)
+{
+	regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_OFF;
+}
+
 static inline void fstate_save(struct task_struct *task,
 			       struct pt_regs *regs)
 {
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index f23794b..e3077ee 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -64,8 +64,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
 	unsigned long sp)
 {
 	regs->sstatus = SR_SPIE;
-	if (has_fpu)
+	if (has_fpu) {
 		regs->sstatus |= SR_FS_INITIAL;
+#ifdef CONFIG_FPU
+		/*
+		 * Restore the initial value to the FP register
+		 * before starting the user program.
+		 */
+		fstate_restore(current, regs);
+#endif
+	}
 	regs->sepc = pc;
 	regs->sp = sp;
 	set_fs(USER_DS);
@@ -75,10 +83,11 @@ void flush_thread(void)
 {
 #ifdef CONFIG_FPU
 	/*
-	 * Reset FPU context
+	 * Reset FPU state and context
 	 *	frm: round to nearest, ties to even (IEEE default)
 	 *	fflags: accrued exceptions cleared
 	 */
+	fstate_off(current, task_pt_regs(current));
 	memset(&current->thread.fstate, 0, sizeof(current->thread.fstate));
 #endif
 }
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
