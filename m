Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A179186D85
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 15:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Isoz3LwZmPnBDo0625f8t5ukU0k8QDgmY80SxT2TERc=; b=pDDxvWoSsy7jC6
	GMJlU6Zd02s2UH2nP49nB3YLl8gb8jDIzxxfpWtI+X/M7WuRsANxUJs5ap4hGOtF1sTUkN6EszPVT
	KtiHqTb/I9VjEALNsOt68oFvhN4LefHfuJsnu7dViJQ+7BdL4AdyAj5Y123NESDXmUSH8nxPtLt6T
	Jllb77Fd++ecplahNH2r/p5t9DwofAa2diVSFK7hTsCT92mCbjtPHbU9Gm/j2BbPAFJorgPF+4wDE
	Cbg2QWHOZp4NpGDOLl8XH9iFHBvcWTQ7Vh8cG3FydowlbUJOoPzfYAUR1knsUQNA1ArrF7dsAs/AD
	9/0iiujQaG80JWmThl7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqwl-000456-KL; Mon, 16 Mar 2020 14:42:27 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqw6-0003Om-0g
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 14:41:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id nu11so5571466pjb.1
 for <linux-riscv@lists.infradead.org>; Mon, 16 Mar 2020 07:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Isoz3LwZmPnBDo0625f8t5ukU0k8QDgmY80SxT2TERc=;
 b=aoP/I5iM2ugMfowB7bjyytMydk/n6aoWtTLmJLR8uMHzaJ4mr8K9tJSBBDUKy74L7Z
 s6a5fi9h+uxYy1VnJCGW0vBqf//8lzMyCybRm6Bcdblh4mUWGOZmniWaegZhdnWEsQXd
 f9Qw94PIr2vwe+bsKzrYPA7N5EtI2PDM6NQdCar4p7visX00pwUMDLv5iyEJgI77LhKs
 Hr7vtd/xWaP/8ggYhkOAAV0LpwskLWUy3FoTFQT9mIm59SvCchuWs7Gish+6ModLS6Dy
 RyTI+yLyj0a0dUrvLgqQ03bUVpNAdjfu1VnQkucNqGm6avCMTDvRYxv9C2IJFKw/3Kuy
 nR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Isoz3LwZmPnBDo0625f8t5ukU0k8QDgmY80SxT2TERc=;
 b=EO2AaQ0aalrXl/ow1qswfqOPmYOskJzt3HsJCUrIwnTDNGtZh2j9mKUNPopPs1oCb1
 6QG6VjJPqdU6+Nz47xuXPQkOqgm5wyMUzKf9JwEJPBLq+g6plNRcRucXrrLYniEX8Ndd
 BdyVM/OpYdZezcuR4050ajEnyGq3078/IcXNMVxTg8BGBT3Y7NIysJDeUOo18aPVGmVD
 uGHflb1EAeVfHpn/RGwo2kss4H6CBWCCoI7rHV3F6kS1zqiQiM4SUO4xTiBOXG9UjOxR
 oxWfdwI6Lujc9B6ZAnUT2GofdQJB46NQnJEEhwYVnEZ2/+N7R910yMKWY2U6ouaAWCiI
 Vszw==
X-Gm-Message-State: ANhLgQ0X0YFUH45fAF5O8b138dd6BpcqmQsFwllqtxzcYmt9pWYrxQs9
 Wz9pirMrZED1y3fkw6etwUpaDw==
X-Google-Smtp-Source: ADFU+vuL0nf/DJlLIyAc8NRzlpOV3mETsruswkGU8JdK7McgdYDmy379i5WqPUbtpaiE3utrMzyUxQ==
X-Received: by 2002:a17:90a:23cc:: with SMTP id
 g70mr11019823pje.122.1584369703895; 
 Mon, 16 Mar 2020 07:41:43 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.41.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:41:43 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 27/50] riscv: Add show_stack_loglvl()
Date: Mon, 16 Mar 2020 14:38:53 +0000
Message-Id: <20200316143916.195608-28-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074146_640549_4C7B4201 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
2.25.1


