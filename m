Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4603F0C93
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 04:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w1qSJBW09a9pwhLGeOhJQLc+y4IhYlp69FK6Z5JN0Y=; b=sLbda2tL0JPMlG
	BekNm79+zqcA1EdJ45avnaRpudoFuDeRaDajSFvvuOn9N9S7iswVDCyvI0rszF1MoxV6RRUJVO99G
	tWF8cbldRS91YKdvcss4rW0RAHev3+HKJbYCZVRmFWiQ//VUoJqKbQSmXjppynFG2lC6qbjBeOV8g
	bOq4rgJj86CtSep9H7TgGFY2uknaoCiRgwgcIp+Vtjsk+WPP+EhFajCfNj9EtCbtr18uKjlLmiv7N
	A9/iwp+gc0OnmWx3Wj8RN96qCCJEJNBDCyvovHaXYMkIbok/n7yP9n/oISR+iGE4DKL7DGdnpsig0
	2EaX8tTuLZR95aVbGXyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBgW-0003jM-AV; Wed, 06 Nov 2019 03:08:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBfm-00035w-EP
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 03:07:56 +0000
Received: by mail-pf1-x441.google.com with SMTP id n13so6016432pff.1
 for <linux-riscv@lists.infradead.org>; Tue, 05 Nov 2019 19:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tLGrjQosLZG8AHjWDn6T7sZjbAuo85EaMbn+8AzIsvA=;
 b=nFDnOQimmLsCdYbzvwdZR3kSUFKSCbsDAcAhhLy1AfE+1h7HrFowUUat3j4zmKmMRs
 vwzll5hy/B6Mu794RrgX239Pj3JIVk56xQ/ws8tK+uBdJ1v0sCSCZYMH8l48XyoWWMfS
 zg+DAMyffxkpKb/kX9sujF5cbm8qvcRMO6lM/wYKYVAZUzA6W88Cr1zBF2P7by9WhrQB
 IJe7S3htDNq9cheKp8p4wEtqDH9FuoZAU5hkMYoPH64ci5PnXKpZiV3OcFGDIkjtNF3s
 89LihHClZaQnAJfvpB5wJd+J2n4Hzmyanj9jWy76c6s5mHdv+hT0ztUI9y5YKeuMq+79
 Zupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tLGrjQosLZG8AHjWDn6T7sZjbAuo85EaMbn+8AzIsvA=;
 b=gmDpbGOYozgU5/1pSCk4rzv5kuz9zyI27zyAecPE/v82HaMtIAqOvVPA1+RWHLaaeN
 N3RYeFkHi4lYbBzIrkCSAqnc09lZ65EWnvaVoLn19bRRk9faGQEWcvzh7v/YfxhnLr5l
 mx/mmXjmaKPsRk+u4bElJD1Qzw2fdmPu2A29cVa3iyHfyxSHrd5LNdOg00ntWFP2yyXl
 YYJSwPeDdoymE2YKz8UdJJ3YwuQmS/2iMlk3713pTOGn9XWjDZu+LOlm+Oh6mjV5YYeY
 O5F+U+qcBc/lUs1TXRqLjR37BYIz4pFBbSWu8dUzhXQIn3xiTIQbxhPxdNiZGP0vkLgb
 Ltrg==
X-Gm-Message-State: APjAAAW0Cabr7dUjHhOv8u70TRXc+8O1UPhyBtJePc+qzd4+WpsHSFu2
 JPuJjQdZ0iD4Bf7cpvQoe+m/AA==
X-Google-Smtp-Source: APXvYqwZzJawIa8XHmLjpIkoPKKxJ5LPLMIed9NU/O2RBZWz40TcqGklpLg1gbhPjPOYH5TCQuFIzg==
X-Received: by 2002:a65:5a02:: with SMTP id y2mr76403pgs.104.1573009672260;
 Tue, 05 Nov 2019 19:07:52 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:07:51 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 27/50] riscv: Add show_stack_loglvl()
Date: Wed,  6 Nov 2019 03:05:18 +0000
Message-Id: <20191106030542.868541-28-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190754_766018_2B1050AF 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
index a76892b48fff..5b414ba9848b 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -98,16 +98,23 @@ static void notrace walk_stackframe(struct task_struct *task,
 
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
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
