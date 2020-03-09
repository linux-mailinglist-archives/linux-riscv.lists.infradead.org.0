Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B858C17D92D
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 07:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+hTR+7VvTDLQnJx4TPpX3zsg18nGz2QIJoewTIxG0A=; b=mlXVxrxCVacTxi
	HBRvNPSfjaqrX0Y/Z/m+ACEwglqxA4q0AmsQLel5NsQFY3bxNVBBP/i9S0XgpKVk6BQVV8SRj+sdC
	TPp4PaUOEjnshEXON9NQTuq4WiYQvf06m7Uru5l1bYi7GeHTfw9YYQYroD5eqMUPmGL4NkOZctYDd
	Zbg80cHCLYcbwHhKa3jH2IVlnvXc2WR5ujrNaXh8j9jDLoauQ/PPLKfSI/WGQyDoQs/V2GoVHiZOK
	dZiVmSoUNdjqtbUkn1rcQqEb0B9hXYsr5RIU/U+UIrCG/XtlJGkmsZMfgtICy6/ZMKMaZLd+H+jp7
	eIacIkIjmpNVoR8j5L5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBBSf-0001CS-Fg; Mon, 09 Mar 2020 06:00:21 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBBSa-00017Q-JW
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 06:00:18 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l41so3931803pjb.1
 for <linux-riscv@lists.infradead.org>; Sun, 08 Mar 2020 23:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N+hTR+7VvTDLQnJx4TPpX3zsg18nGz2QIJoewTIxG0A=;
 b=e9geQ2AvMExcxxSUXQJuKfsa6E76GJ88u2xkkl/c9vfcWI0ZL9bpehHVBO3UOMHHHU
 tQa4PbgR9PzVJtLP7fiS//JL4ZZVJEVo4pCl/o7CaPHOeVnQAE7Vc3pTfhZM8LQdAchC
 vgIHNpqVDpvcmei29nimf33urv8jIfxVAi78wW6QIy4LVTerYdiyOjop1BdRQEdTBqdC
 418MTn/Fcuk4T871vG6QL4cuI7ZZFj+qg3C36lIUNpD4FGLmHBaXxTPpQt5QzTOqu9xv
 0CsW4LWavfmFQs+VgpoJ4B02jJm+k2gGLY+fjjEzdwsxyOF+bnm1ljejqXDu3a1oifsL
 sAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N+hTR+7VvTDLQnJx4TPpX3zsg18nGz2QIJoewTIxG0A=;
 b=pAXBHBnzJKnWbNcqhA1KJ9uGGYxJpSMmBSr6/aOD6uUHyRjvKAJWi1rdfQxmouZifn
 YnfWa9P1OH5i7wpcO26/BGmvNKCgc01nVrXB6U82+YfhGVkxmafh9Y0BcokFvc0Ukgo1
 grOL070jRfhyHC8Lu9LYP66Elf8509oTOwmOprzCOYsA/G4BIG87u+4GORwQxmi2kVhF
 zOYpJmXX+6cfJ70I+x/ArhTl2Erl34mYdJf0Gm39/eWSRokjgQVOAsvoa6rT1qhJT89d
 M64BGwWxn0BSFw/T3oRv0qxMJMjzSAjXVRSZDL0kMOaenuHVjMcfVQbW0gjB9Zk6Y2kj
 I0XA==
X-Gm-Message-State: ANhLgQ2W847HEi0Kfn8Wfufq8fdZH7JVIUSwxObL9YmjMAJYd9WPccBD
 DI38DYxl99sMnWepOObA6IAdig==
X-Google-Smtp-Source: ADFU+vt8s60i8D4FK04Ht3isNmz46Gz2cNkJjQx3vQtINL2NFoFZ/KoFkID4G3S/KUvt7cf8ZnS28g==
X-Received: by 2002:a17:90a:2:: with SMTP id 2mr17157466pja.16.1583733613758; 
 Sun, 08 Mar 2020 23:00:13 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id nh4sm3033061pjb.39.2020.03.08.23.00.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Mar 2020 23:00:13 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 mathieu.desnoyers@efficios.com
Subject: [PATCH V2 2/3] riscv: Add support for restartable sequence
Date: Mon,  9 Mar 2020 13:59:51 +0800
Message-Id: <1583733592-22873-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583733592-22873-1-git-send-email-vincent.chen@sifive.com>
References: <1583733592-22873-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_230016_644177_246F19E1 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kselftest@vger.kernel.org
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
 arch/riscv/kernel/signal.c | 2 ++
 3 files changed, 7 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index fa98b279257e..ded32979d33d 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -67,6 +67,7 @@ config RISCV
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
 	select HAVE_REGS_AND_STACK_ACCESS_API
+	select HAVE_RSEQ
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index bad4d85b5e91..89d3713b0aef 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -214,6 +214,10 @@ ENTRY(handle_exception)
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
index 17ba190e84a5..d939c5de41c4 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -234,6 +234,7 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
 	sigset_t *oldset = sigmask_to_save();
 	int ret;
 
+	rseq_signal_deliver(ksig, regs);
 	/* Are we from a system call? */
 	if (regs->cause == EXC_SYSCALL) {
 		/* Avoid additional syscall restarting via ret_from_exception */
@@ -316,5 +317,6 @@ asmlinkage __visible void do_notify_resume(struct pt_regs *regs,
 	if (thread_info_flags & _TIF_NOTIFY_RESUME) {
 		clear_thread_flag(TIF_NOTIFY_RESUME);
 		tracehook_notify_resume(regs);
+		rseq_handle_notify_resume(NULL, regs);
 	}
 }
-- 
2.7.4


