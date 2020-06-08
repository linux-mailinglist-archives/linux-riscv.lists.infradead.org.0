Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2A11F25D8
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 01:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWOgM88ot0DrjWUTF+svco3B4ydk4E/7ymbAD36Uosw=; b=ikiNdllMdcZILK
	78P8E9+8gbwa1a/wRoB+l2MEH1KIHCy1eMw1t9v4R3jGBAc19mh5CUMZ6K7AAKsxCDjREGgkvIBmS
	bnw93lGQD/cW6aBxvaYIpMCCMcpKU+6gY/Z7d5Ht2bUcSWcw9VTv01FfkeV8ERp1pdraNZr7cjpVz
	Yy9Ja22PGq7w6KItVInP4RCt+BiBbMgaggDWKN9jz9UbqHnm9EHVuXce1surFyaN+OjyIhShPBNFy
	Q3u+WsbjTwQSI8lgo/8sq1i5CCbcVeG9CqSEnOu811H6537MczQySuzwOX42FurkQJwYu4cJNY6z8
	VOkZ1jjaSMgYbo0BLPbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRGb-0008Ad-PE; Mon, 08 Jun 2020 23:33:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR1a-0004Lu-8i
 for linux-riscv@lists.infradead.org; Mon, 08 Jun 2020 23:17:54 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF10F2089D;
 Mon,  8 Jun 2020 23:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658269;
 bh=SSr626oosF3ax4S4mvuIs1Z3CkLSI8JeRhlwsAREDNo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zp8Q7U5+G4d9AlbCfqsWmhHE4lFxv1n92EMnZCGILl1XF13Lh55s79ipvIfuGd/kI
 WjlLlki/VrEj429Nh1ugHrTtYFdIlcumdK2dvx1jwAG4i8H+sBYNKa1WJZcQ87F7Zr
 a4Gnnk6pm1JpM7OeroZfGhI6ifLJ8+1QyKP5W064=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 276/606] riscv: stacktrace: Fix undefined
 reference to `walk_stackframe'
Date: Mon,  8 Jun 2020 19:06:41 -0400
Message-Id: <20200608231211.3363633-276-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161750_421872_6CF6F9D1 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Hulk Robot <hulkci@huawei.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Kefeng Wang <wangkefeng.wang@huawei.com>

[ Upstream commit 0502bee37cdef755d63eee60236562e5605e2480 ]

Drop static declaration to fix following build error if FRAME_POINTER disabled,
  riscv64-linux-ld: arch/riscv/kernel/perf_callchain.o: in function `.L0':
  perf_callchain.c:(.text+0x2b8): undefined reference to `walk_stackframe'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/kernel/stacktrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 0940681d2f68..19e46f4160cc 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -63,7 +63,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
 
 #else /* !CONFIG_FRAME_POINTER */
 
-static void notrace walk_stackframe(struct task_struct *task,
+void notrace walk_stackframe(struct task_struct *task,
 	struct pt_regs *regs, bool (*fn)(unsigned long, void *), void *arg)
 {
 	unsigned long sp, pc;
-- 
2.25.1


