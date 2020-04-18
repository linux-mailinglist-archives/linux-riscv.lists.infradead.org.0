Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44591AF4D1
	for <lists+linux-riscv@lfdr.de>; Sat, 18 Apr 2020 22:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybffadE8dqAJo382dZkDBzwR2ts70k1w2gIXA5Uhhzw=; b=G3Z/LC4R4eI+WN
	RO+h3AUBCkEof7fKT4MSWEgBFylE5DEkEIe/NoBpt/6o4dtg14oOvNkANxnGSJ8w8i5ZzoGGIfLQP
	iUmpxmEV99A0gzLL2ZEpiOIhAh8lJykjFRAiL5fIJSOfuUlpdbRGlKmZCV6C6oVAWZeF8iFmOqXOO
	8+cxze86CYc1y3oeC5JmShEPsJTInLd6ONVBXh0yZzHPkNNY+sM7gRNPtA/WRqbH1Fsr708WG+DsU
	gJ+hdsoy2W1/dPjhHSlRhnIziIVigFB7l8qFc7eBfuaiePNTsjTI/hBVOqSycT03Px5MYNRHvnhP3
	FP8QctVFFmy7P7hIhntg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtyw-00062r-IX; Sat, 18 Apr 2020 20:22:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwy-0004CW-EX
 for linux-riscv@lists.infradead.org; Sat, 18 Apr 2020 20:20:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so7186245wrx.4
 for <linux-riscv@lists.infradead.org>; Sat, 18 Apr 2020 13:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ybffadE8dqAJo382dZkDBzwR2ts70k1w2gIXA5Uhhzw=;
 b=iZHz5P399RHWKayzJ9qhD1e4JsSZ67BJPWz35fMSi+5VfWXH3u7MezAMmPUnrNInK6
 V9gYot/f+iEEBeTzY9MiRQifCbNvawCYDgFzi26hgPhMjiBZBVEDIKiu9aVk8DxJJ4y9
 KxHw6gAG3Dz9EbMNGQ3nl+xzWbuKYXLOJP6iV4RC+JDPcSVIcqKv6OY4J53IYVqeXCBy
 oryOCx51hk7QYCd3Dyjnl2pTaotPog1JhIQW5lsCot1Z5vSuQAv7N/Rs6WQ/BNAz9qrc
 0yyk1FdT+UCgcn4cAEENMdOcrXCRrK/83CGuTNUvEDIqJEEWouhjGPwJgVaR8jsuepKC
 GalA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ybffadE8dqAJo382dZkDBzwR2ts70k1w2gIXA5Uhhzw=;
 b=ZrazGJZ4a+js8KDpnzRb1PQsYW7EC6ct298cp51PlpvEl9nP6pfwU6X6TyUs9ZmW/2
 SMZlp4UVY0bu2SVei8n7XY0sE8oPP2mpyKzjxoAUc4c2mNIIGCd9/27x1xIuurrCzybE
 EWG3kf4FSIWoSvQnhhLj474e+qfEsXl7bIK/nd76kP8K84I7ziZwpE/qB78O5piWJpXM
 83/N0yUSXSu8U0ejOOzBKsSZ1CKDw/emHaksOc0WyGwhbz2DZ1btlz1wXUtRoOVoTKIY
 yKpHvmUvTDrm1Q8texvghmym5yM39DLVlh6QcQfwhpAdAEq9U8kpP8+Fou9O6fmB6F55
 aRcA==
X-Gm-Message-State: AGi0Pubo+RH7pJOdRvEwYHOQqf6niRrTVXLUUYYvxRdi4Lj2t64gQUV+
 O3A9QVVTX09i/Bu2VQuRxjtr+Q==
X-Google-Smtp-Source: APiQypIe0nED3rMPLTQENe6HaS/vs2AUCMRZNrcnsR+mudM1rommFYQcpSXtLZ73oHRLDO4iH1Z8YA==
X-Received: by 2002:adf:ce0a:: with SMTP id p10mr10089157wrn.89.1587241227000; 
 Sat, 18 Apr 2020 13:20:27 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.20.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:20:26 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 27/50] riscv: Add show_stack_loglvl()
Date: Sat, 18 Apr 2020 21:19:21 +0100
Message-Id: <20200418201944.482088-28-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132028_556187_B7A88137 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Ingo Molnar <mingo@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-riscv@lists.infradead.org
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/riscv/kernel/stacktrace.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index eeee844fb93d..05bf537310a8 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -99,16 +99,23 @@ static void notrace walk_stackframe(struct task_struct *task,
 
 static bool print_trace_address(unsigned long pc, void *arg)
 {
-	print_ip_sym(KERN_DEFAULT, pc);
+	const char *loglvl = arg;
+
+	print_ip_sym(loglvl, pc);
 	return false;
 }
 
-void show_stack(struct task_struct *task, unsigned long *sp)
+void show_stack_loglvl(struct task_struct *task, unsigned long *sp,
+		       const char *loglvl)
 {
 	pr_cont("Call Trace:\n");
-	walk_stackframe(task, NULL, print_trace_address, NULL);
+	walk_stackframe(task, NULL, print_trace_address, (void *)loglvl);
 }
 
+void show_stack(struct task_struct *task, unsigned long *sp)
+{
+	show_stack_loglvl(task, sp, KERN_DEFAULT);
+}
 
 static bool save_wchan(unsigned long pc, void *arg)
 {
-- 
2.26.0


