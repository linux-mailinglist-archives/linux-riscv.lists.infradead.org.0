Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2517EF31D
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 02:59:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OTSdcEC4oqwvwWFxkahFwgOeizpQrVYKetBehSm8rz0=; b=atHZfe5XIf9n0GJKdXwjw42NCN
	7GdK+JpxJox0rA1yi46tJ233OENrS9ZdOGaEWdyLfDmzJpnDCCTr9RTU4qZJz6V0ETHSpZ7aiExjN
	StmPwucIlow6UfvA7AINyk02rIDEaeBjWUyVL78k7l1WfolhjYMA/GiyFuCS8FIKRtqSX1jnyxkTz
	H9FFgjZsUbcTZKPk6n3JaPgoxmH163xwuwpa6tSwsgbPvvJZKP74uzGg/tA0JxuvgiJK20AyYM5Pk
	II2A/zy4+gRQP6tQVSTd0wRj5jlLd5D9vLLB5IqPJRpbq9sqpiTnt1xJpen+7P+pLvQWaTlV1fSYN
	ZXH3sODw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRo7g-0001JG-BK; Tue, 05 Nov 2019 01:59:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRo7c-0001GV-QV
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 01:59:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id x6so8581806pln.2
 for <linux-riscv@lists.infradead.org>; Mon, 04 Nov 2019 17:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uB6oddDs4B5MJUkexIrktz0z9v6D2XtXOnfbRUzfnas=;
 b=JfPVSDAMfTA2eMXc/IL3xyiHo3mb7M/6Zkl0ebPXOqVQUX1Z6N9HPojRpc10M8MJ5e
 BrqyyOCA84XGdHYx8nMTpWIOZB1q1SkEb99dm08S8uYonB1HpRaeL64CPpN6pW5vt5R5
 WAWuvQEWuLhK9EMmM0M8OHvrANih4vMeO+NMz1oEGVm2hdjAwdhLGeAUEFew5NT/pExL
 SXct7bQ4YHmc8TKg12jqs44pidAteVYINOXxGeaggGl/s++jHp5ijZiT0AvyGa4KRg76
 A7ZFtxyGZsCofHCgKds9wForYwWutoVdffuzG55r1RgbUUDe0N6rUiV5xxtNgmN2AOBM
 5iig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uB6oddDs4B5MJUkexIrktz0z9v6D2XtXOnfbRUzfnas=;
 b=BsnIrOIsIdKxRFYtf8HrcdoRZsE/aiZQwlQGMgvEeOKTuyvbbCW4KcCv0KBJmrBn3f
 2/OsUGVAr3/2ipAdTO5IIBbImiSPHEyxIy8/JCiY/M6fTjqNF0TBT+HNpK+fYqx3h4A1
 GHfk+1OMKmpf4ED9xUf89wTswQooO6EJKDHz27c/vtJTBLkt1J+nnH/yLcffxlCNI2Ff
 v6LRe/IntTEBZx/28YqclaYiaw1Auv0Efx7b9QYlGJUQXr4ieUlJExJGV7/RsSkWtIE6
 TiIkRSrXopTgHnjQASGdhJwd0rAENdvcNO1cTuZswWfcvk0DR6+osq5qjAB8z6iduLPo
 LHYQ==
X-Gm-Message-State: APjAAAXSMr3oC3dH8WWvd6WrCO55r8duM6hV/8BO7ohGkf1jCkhl+VNB
 IGqEb6PvS3f9wVyLcTWgoAQp2A==
X-Google-Smtp-Source: APXvYqwj2vCMWOZqVejxLCFtTPImCwciXJJhVXdprxtdj6wBJEQXejbBfy5C/bGV8Je3oDYo5g5ZRw==
X-Received: by 2002:a17:902:47:: with SMTP id 65mr30306290pla.81.1572919144304; 
 Mon, 04 Nov 2019 17:59:04 -0800 (PST)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id j6sm16484444pfa.124.2019.11.04.17.59.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 04 Nov 2019 17:59:03 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	mathieu.desnoyers@efficios.com
Subject: [PATCH 2/3] riscv: Add support for restartable sequence
Date: Tue,  5 Nov 2019 09:58:33 +0800
Message-Id: <1572919114-3886-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
References: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_175904_860461_F5F67523 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 linux-kselftest@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add calls to rseq_signal_deliver(), rseq_handle_notify_resume() and
rseq_syscall() to introduce RSEQ support.

1. Call the rseq_handle_notify_resume() function on return to userspace
   if TIF_NOTIFY_RESUME thread flag is set.

2. Call the rseq_signal_deliver() function to fixup on the pre-signal
   frame when a signal is delivered on top of a restartable sequence
   critical section.

3. Check that system calls are not invoked from within rseq critical
   sections by invoking rseq_signal() from ret_from_syscall(). With
   CONFIG_DEBUG_RSEQ, such behavior results in termination of the
   process with SIGSEGV.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Kconfig         | 1 +
 arch/riscv/kernel/entry.S  | 4 ++++
 arch/riscv/kernel/signal.c | 3 +++
 3 files changed, 8 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d5bbf4223fd2..58759a4f8dff 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -62,6 +62,7 @@ config RISCV
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select HAVE_ARCH_MMAP_RND_BITS
 	select HAVE_REGS_AND_STACK_ACCESS_API
+	select HAVE_RSEQ
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 8ca479831142..00e9eaa02969 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -212,6 +212,10 @@ ENTRY(handle_exception)
 handle_syscall:
 	 /* save the initial A0 value (needed in signal handlers) */
 	REG_S a0, PT_ORIG_A0(sp)
+#ifdef CONFIG_RSEQ_DEBUG
+	move a0, sp
+	call rseq_syscall
+#endif
 	/*
 	 * Advance SEPC to avoid executing the original
 	 * scall instruction on sret
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index d0f6f212f5df..f2f6017f92d0 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -219,6 +219,8 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
 	sigset_t *oldset = sigmask_to_save();
 	int ret;
 
+	rseq_signal_deliver(ksig, regs);
+
 	/* Are we from a system call? */
 	if (regs->scause == EXC_SYSCALL) {
 		/* Avoid additional syscall restarting via ret_from_exception */
@@ -302,5 +304,6 @@ asmlinkage __visible void do_notify_resume(struct pt_regs *regs,
 	if (thread_info_flags & _TIF_NOTIFY_RESUME) {
 		clear_thread_flag(TIF_NOTIFY_RESUME);
 		tracehook_notify_resume(regs);
+		rseq_handle_notify_resume(NULL, regs);
 	}
 }
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
