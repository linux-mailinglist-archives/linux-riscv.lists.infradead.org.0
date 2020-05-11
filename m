Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F931CCF9F
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 04:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7j936KbEx3ky4EHJ4M/s+MZ1C3dTY8TYNy8TeswQQFc=; b=b/qyEQUhqPnUpfwX4lKTMbMhB
	/4dtkaXktzEVjNtb5wxpqgpGkmoLPqpYZupQKF8vJ5MOuHwKAirkUU77+LsE1ZIxsuLI4C07qkPRw
	kzrFtOXiJXP9naXPAxRNmKMkrjbMCXvlp1PEZHXPioAMIfWzyAgWJm/VaPOU5gHtbPbRzAVzypHv5
	F7fCMvZQ4fGv6EJXPXsQcwkrrMXeLV7+Ll9pvlXmQpB46SK/UA7S1rSPVxnrCljH1w0j1oVchY0tz
	WLB21fRqOf3PvPxLOHntTaeCpLkBp1FIYTSFkB4C370ANysWfbwEcTB1KnnDHE7Cf9Ak97/lnKgxR
	y03ZYTyxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXy0s-0000Y4-0Q; Mon, 11 May 2020 02:17:50 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXy0F-0008VV-OL
 for linux-riscv@lists.infradead.org; Mon, 11 May 2020 02:17:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 02B05291D18D29504945;
 Mon, 11 May 2020 10:17:09 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Mon, 11 May 2020 10:17:02 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 02/10] riscv: stacktrace: Fix undefined reference to
 `walk_stackframe'
Date: Mon, 11 May 2020 10:19:53 +0800
Message-ID: <20200511022001.179767-3-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511022001.179767-1-wangkefeng.wang@huawei.com>
References: <20200511022001.179767-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191712_014199_E48B674B 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Hulk Robot <hulkci@huawei.com>, Kefeng Wang <wangkefeng.wang@huawei.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Drop static declaration to fix following build error if FRAME_POINTER disabled,
  riscv64-linux-ld: arch/riscv/kernel/perf_callchain.o: in function `.L0':
  perf_callchain.c:(.text+0x2b8): undefined reference to `walk_stackframe'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/riscv/kernel/stacktrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 38141a3c70f7..595342910c3f 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -65,7 +65,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
 
 #else /* !CONFIG_FRAME_POINTER */
 
-static void notrace walk_stackframe(struct task_struct *task,
+void notrace walk_stackframe(struct task_struct *task,
 	struct pt_regs *regs, bool (*fn)(unsigned long, void *), void *arg)
 {
 	unsigned long sp, pc;
-- 
2.26.2


