Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3A58CE4D
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 10:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=op08/G9b27Gp3hFF6bo/y9wujmIHCoHnhNNDJFNtqG8=; b=U24ysNTFdbt5UO4tltOwuSxDKm
	K/aaUUL9aotlJlubOSNR8XMhZV33eO4v8urV60DbNckWRY0ROOdxlFyYLg+M6lktee7BzMeOYMFmD
	Ocvv+BG9V7kBhfCU8F8KdNzErxpZxCJk5/goQDJZKjE9wCycyClG1vUbSaLNTONhPLSKRbzZ9HQzF
	DDolwE5QHgXTBmDNpFZeKVkuR5+QD7XMzDBaRIfp65CGR6KbWSAWeLII2FHcgJtKAbv3fXfnfrnfX
	WR8hnZjnH5hs1R265fnD1DZNz2pwwwwwGhvzn57ADEXTr2lao8aM/gqBy0QkxRyLupTQv+eilR6eB
	h1gqGbPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoZg-0002KG-1C; Wed, 14 Aug 2019 08:24:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoZb-0002Hh-Pm
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 08:24:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so52714362pgl.11
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 01:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=355/fM8G6OID12UiIjtTxx4G3WOw7wrHVjqcAOVdVjM=;
 b=ZfvFzV82vpyyn+70V/08TU9H+meQN6zQkx8KP1zphiFbhxeeSxdBYZf8SGiM2El89/
 VaGw1EczgJ2KWru4TAyQEKsc6cCufq6NsaqtrZAkXM10TrzDPzz2TxDee6VQI+sRB99/
 1Rp5NtJyscgRoFzyuFG+ujdvNWzsKUyXGQlWT5FyX/L31Yu4Zj3g/4UyObiOlVkijRen
 lCragje8ySbRcq/IRtDGeEiWQ+c1A2QEspRdnzkB5iyrqx5MBV6JXnR+8/zWbaQt0r0R
 2ROiYSEovMAVEYGeYf69soEIq5t5rorhMUenmWnDQjyRHcvzW2HAkW4zNPXzMTRz96B6
 HhPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=355/fM8G6OID12UiIjtTxx4G3WOw7wrHVjqcAOVdVjM=;
 b=nJzXMolW1LWK73l538A3FlhtBoJAJMV+xPLmT3VLF3DTm0BaVsAsi80m6x9txItViM
 I4z3wUUndmwBjJ3Ra2KZZDvUT/+88ujdHTsABUOEfFoNmuN6ePvPkK5xtofaOUlSmghk
 4SG6QBfxb8bdCSwjv4ngMBugPTkaeE172KtyaLFba6p0oRfHBtHJzAvrVkmeExVs8fDU
 OaFi4+X7vqfz8UpTXnk9gRU0sb51RyZkeyWCuvDYcwMVDL1/JPGKe04Lv++fHO7o+Nvo
 2Zh2VCh3srPmTA2R1zXVfxlFIVZ0Sb55izx8omD4ZI0KMpiNZin9JPQrsGJW20wDbL32
 3JeA==
X-Gm-Message-State: APjAAAVFe9fCfS0WrrdxtkKBlFYJzYbRNROGgWI95uCIU5TXEP1WnvSo
 nlPbOrcejcD4Ka34QynRlGUIkg==
X-Google-Smtp-Source: APXvYqywRx18R0hMG2RnROTtsgpH40TUafc/j8X3By4v7TBusOlcABsMHZE9qz0KUcqdzr7Mh5i54w==
X-Received: by 2002:a63:61cd:: with SMTP id
 v196mr38524614pgb.263.1565771039143; 
 Wed, 14 Aug 2019 01:23:59 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id f205sm12359152pfa.161.2019.08.14.01.23.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 14 Aug 2019 01:23:58 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH v2 1/2] riscv: Correct the initialized flow of FP register
Date: Wed, 14 Aug 2019 16:23:52 +0800
Message-Id: <1565771033-1831-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565771033-1831-1-git-send-email-vincent.chen@sifive.com>
References: <1565771033-1831-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012359_858674_6C718DC0 
X-CRM114-Status: GOOD (  12.80  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>

---
 arch/riscv/include/asm/switch_to.h |  6 ++++++
 arch/riscv/kernel/process.c        | 11 +++++++++--
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 853b65e..0575b8a 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -19,6 +19,12 @@ static inline void __fstate_clean(struct pt_regs *regs)
 	regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
 }
 
+static inline void fstate_off(struct task_struct *task,
+			       struct pt_regs *regs)
+{
+	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_OFF;
+}
+
 static inline void fstate_save(struct task_struct *task,
 			       struct pt_regs *regs)
 {
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index f23794b..fb3a082 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -64,8 +64,14 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
 	unsigned long sp)
 {
 	regs->sstatus = SR_SPIE;
-	if (has_fpu)
+	if (has_fpu) {
 		regs->sstatus |= SR_FS_INITIAL;
+		/*
+		 * Restore the initial value to the FP register
+		 * before starting the user program.
+		 */
+		fstate_restore(current, regs);
+	}
 	regs->sepc = pc;
 	regs->sp = sp;
 	set_fs(USER_DS);
@@ -75,10 +81,11 @@ void flush_thread(void)
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
