Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A6E1E104E
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 16:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d6W6iF1uDCez9Xr47dAIaNJRAgKXY0uUrTt3JsSJlq4=; b=BXRvdzOuzD5iPO7UlPUm8XM+/5
	axX/+Dvs5cZAAjD/fe2Fjmfi17xnuQ7b+Km6N1+s9BWDkfRc4KfIgtgSZ/a4tunObO5VpqB0JUU24
	YUZ4fWGBjY1deO7lfccGXApw7XFaWV8M1yNnzWS6Sr1AgfkHbbCQnlK+LciCYTuTohbDPtQZgtEgD
	yiTQ2gQ54U/R9EZt7y8LX7pVaqu2juLRrGEoXGrNqM+NweFx0SSrYUgwtQV0iK08lXJagm+l4S0ht
	x+6gpkEDtB3gJ2mw8Rt08kmNFfpxTcfRn3A4n9xVgr/waclxC2kVppWNjf/8LsjNBdacGc2nvnDBx
	Yd5BiXmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdDwF-0003wg-L8; Mon, 25 May 2020 14:18:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdDw7-0003mt-6c
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 14:18:40 +0000
Received: from localhost.localdomain (unknown [42.120.72.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1A2B208A7;
 Mon, 25 May 2020 14:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590416317;
 bh=boEYvuFZgzF1dk665cIlE8LztYbfHpvHAl5Gif5KGSo=;
 h=From:To:Cc:Subject:Date:From;
 b=ZHENXbnG2hbFsP3eU5DBavKi06wsIU3kamBYuvdPB1hknyqZr08kLrGHRWfnzmJ44
 QRW5TIbyDVQGJjj3o19wCxeijWwgSHTAH7VR5tMAh21HUQMpJ7Jb8csW17v2WmxZV3
 hjAWLGkVy1honrNkHtkrCDqSDQmdm4f9KDoZTBKU=
From: guoren@kernel.org
To: tycho@tycho.ws, keescook@chromium.org, palmerdabbelt@google.com,
 paul.walmsley@sifive.com, anup@brainfault.org
Subject: [PATCH] riscv: Remove unnecessary path for syscall_trace
Date: Mon, 25 May 2020 14:18:26 +0000
Message-Id: <1590416306-66453-1-git-send-email-guoren@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_071839_280920_FCF9773C 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

Obviously, there is no need to recover a0-a7 in reject path.

Previous modification is from commit af33d243 by Tycho, to
fixup seccomp reject syscall code path.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
Cc: Tycho Andersen <tycho@tycho.ws>
Cc: Kees Cook <keescook@chromium.org>
Cc: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/entry.S | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 56d071b..ea3444d 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -306,7 +306,7 @@ work_resched:
 handle_syscall_trace_enter:
 	move a0, sp
 	call do_syscall_trace_enter
-	move t0, a0
+	bnez a0, ret_from_syscall_rejected
 	REG_L a0, PT_A0(sp)
 	REG_L a1, PT_A1(sp)
 	REG_L a2, PT_A2(sp)
@@ -315,7 +315,6 @@ handle_syscall_trace_enter:
 	REG_L a5, PT_A5(sp)
 	REG_L a6, PT_A6(sp)
 	REG_L a7, PT_A7(sp)
-	bnez t0, ret_from_syscall_rejected
 	j check_syscall_nr
 handle_syscall_trace_exit:
 	move a0, sp
-- 
2.7.4


