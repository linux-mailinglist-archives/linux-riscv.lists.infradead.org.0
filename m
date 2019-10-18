Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4075CDBF81
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YS3TeYws4BDPv6bCVuM8vIrFdMBXfJhLaBSZazHgkiM=; b=cXzj/51tz67fq3
	Hj/xKVf8nr/GCut0Y9BDJ3mykUYMjcfp481JntmRtegTWZ3lsXE54yHXAlD1ZHocPEu4mphMz9jf9
	do0W2FgD2zH+F71BnG7nmsTg9tBzr/3L85g1LXk6MVvrAk7E5RfEZRzqwBn+hy7QnKIRKVuXqoG/o
	CMf82K9JFpR4oM/K2Rwd12j85QAiq8l+31pSVindNl61DiT75X0D20h5kb4kKvTCCwLBlE55XxRPD
	1DEka2IelDXarmMShtxCT/7hj225p1pBdBXIpDAUGnwEu9RLOCZIB+Xy4QXZbFlDV/6tLGKWI1Gpa
	x6PDvgSWdr32+rgKRzFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNK0-00087k-TD; Fri, 18 Oct 2019 08:09:16 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNJl-0007qV-BL
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:09:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id t18so2274524iog.2
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/rqN9u0/2+ao+d3JFwKTj45TNXeBg3DCl+L7bcDO5L0=;
 b=AgRnIqMPI9/c78JU0tZ2ukpZmzDiY3JwBESuXLef+ZlyuwPVl0hWk/I4aTbZ37Yz2t
 wBXespQ6ClJkWurhzK8+z7L3vufj/oD3RDQaBgd+c/seJgwQQwIKdHefZrlyFJm1PCaP
 D8yAK7khexd85MvufOeWx+kF8/B+8jToNlCiBDxueaWGhck1V9xJ4TPeI5auXeWOPr7D
 /bsc8iL44mCKAVSzpqLdIvfiQe2wwwpzVWof8Jj3K1Dqhnqb2ZcckbrUGMk0ZRnFupa8
 GN/mgsOHEg6SeW83zbui+yitvxqgYKaHLceFXsigsvd3STC1fivnrdZuoJgP1eEir9aV
 7k8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/rqN9u0/2+ao+d3JFwKTj45TNXeBg3DCl+L7bcDO5L0=;
 b=tY8J1mrv0/tLRfy88aCUxBRGnsh1i5bemQ6lMwu5CBTGgAHS/ZAX7bq8OXuateItyg
 pKMl778+3eq2NyFsGAUrOCfH4eJcRHMkEivDHpZLA6NuLIWx0vzZCNrB+ukGAE1eW0ck
 M+j4TtF5VLdOlf6wxee5npqwMiptrUv3zm6dtwEMuPEMroAxOGtr5TDpT8lavIHkSa5p
 0quAqjMqn/N4ZHNDbEZ/268flcpMUquW/h+kYI/xAR4sEgUXT6R6zzCULt8huh9VtLWz
 FiQoTPQFVM8K1GA8PuBHplLK/9OuizPb40BxF+dCk0PTG5PZVgSMhUzHVknvYDT7D4sd
 ha6Q==
X-Gm-Message-State: APjAAAXezcrDeTYQB7HhjCtMPmdGa5Ay8tMiX6NFqcw/AE5wHknIQnn2
 44Olp0kG5BzFtcdcjI5wCv90XFvMreo=
X-Google-Smtp-Source: APXvYqxG7epqlIJRSyy/8bM9quGUJjMyJ24lYOlQwYCPAW5aHjJzro/76ki7t3mpduRVDdN14r7s+g==
X-Received: by 2002:a6b:5a09:: with SMTP id o9mr7397346iob.241.1571386140466; 
 Fri, 18 Oct 2019 01:09:00 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z86sm2121026ilf.73.2019.10.18.01.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:09:00 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v3 8/8] riscv: for C functions called only from assembly,
 mark with __visible
Date: Fri, 18 Oct 2019 01:08:41 -0700
Message-Id: <20191018080841.26712-9-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018080841.26712-1-paul.walmsley@sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010901_395428_57929CE0 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Rather than adding prototypes for C functions called only by assembly
code, mark them as __visible.  This avoids adding prototypes that will
never be used by the callers.  Resolves the following sparse warnings:

arch/riscv/kernel/ptrace.c:151:6: warning: symbol 'do_syscall_trace_enter' was not declared. Should it be static?
arch/riscv/kernel/ptrace.c:175:6: warning: symbol 'do_syscall_trace_exit' was not declared. Should it be static?

Based on a suggestion from Luc Van Oostenryck.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
---
 arch/riscv/kernel/ptrace.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
index 63e47c9f85f0..0f84628b9385 100644
--- a/arch/riscv/kernel/ptrace.c
+++ b/arch/riscv/kernel/ptrace.c
@@ -148,7 +148,7 @@ long arch_ptrace(struct task_struct *child, long request,
  * Allows PTRACE_SYSCALL to work.  These are called from entry.S in
  * {handle,ret_from}_syscall.
  */
-void do_syscall_trace_enter(struct pt_regs *regs)
+__visible void do_syscall_trace_enter(struct pt_regs *regs)
 {
 	if (test_thread_flag(TIF_SYSCALL_TRACE))
 		if (tracehook_report_syscall_entry(regs))
@@ -172,7 +172,7 @@ void do_syscall_trace_enter(struct pt_regs *regs)
 	audit_syscall_entry(regs->a7, regs->a0, regs->a1, regs->a2, regs->a3);
 }
 
-void do_syscall_trace_exit(struct pt_regs *regs)
+__visible void do_syscall_trace_exit(struct pt_regs *regs)
 {
 	audit_syscall_exit(regs);
 
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
