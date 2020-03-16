Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047261862B7
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 03:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxPFHBpYiMtSbVRN9JmIcnhWS6BkkpJPk6wt0T9nsQc=; b=paYnqgEQb2CW3z
	QsODLBK9YBROY1dAHiebmgZuZ6Yp9unFh5IvSqPqzFncctfGdXz6oX9vL2LvOF46F6kT/9f2Wm1yo
	laeAUVbvBEPaui26h22ymsdCrmpwqSsHawfXkIWh8DhYRHXKDi1/O7P/QJk8QCXTC862GODnjg3fL
	WYT2fKuDkBVGwNBWhJ620AnPp2XgOP5SNrnWgeW4XieqXKaGTCy4waDwbnzXDlUeuZZB9ikYbLGta
	GYV5MzJaEg1sQubYUdHH4AChrGPWfDoj6Fw81pRzLvXaG7Hc/+ff+vfdAm3SbXeKz+GsirLTrzUQg
	rud78yHpGbvEcsYmoutw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfey-0008T7-Uw; Mon, 16 Mar 2020 02:39:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfZm-0002Xm-LM
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 02:34:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EABB206E9;
 Mon, 16 Mar 2020 02:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326038;
 bh=C2+1CgEyCzXyL6jcSaddsVFkd/pDIlYfQqXchjpjooI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eU+t03gkoeJhoXLg3o01vQ12Xm23rSwMJEaToLssXLnirrp26t6Qo++oo8gobnn/o
 K6Y5hsJf3Sf+b8Bv5mSWO3Af6BhAyLwO+ly48P7qTd0UmMaM8zTJ7ySqRab8pKVmxr
 0zJPtQR5hWZbTEiIFv9W3+3X5Yn7pnRBrfhZJ81I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 32/41] riscv: Fix range looking for kernel image
 memblock
Date: Sun, 15 Mar 2020 22:33:10 -0400
Message-Id: <20200316023319.749-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023319.749-1-sashal@kernel.org>
References: <20200316023319.749-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193358_839965_42465546 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alexandre Ghiti <alex@ghiti.fr>

[ Upstream commit a160eed4b783d7b250a32f7e5787c9867abc5686 ]

When looking for the memblock where the kernel lives, we should check
that the memory range associated to the memblock entirely comprises the
kernel image and not only intersects with it.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Anup Patel <anup@brainfault.org>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 965a8cf4829ca..fab855963c730 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -131,7 +131,7 @@ void __init setup_bootmem(void)
 	for_each_memblock(memory, reg) {
 		phys_addr_t end = reg->base + reg->size;
 
-		if (reg->base <= vmlinux_end && vmlinux_end <= end) {
+		if (reg->base <= vmlinux_start && vmlinux_end <= end) {
 			mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
 
 			/*
-- 
2.20.1


