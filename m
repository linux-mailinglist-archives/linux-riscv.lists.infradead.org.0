Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AA81F25DA
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 01:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYjHyiPUTCDyHPg+1rjl9Vb+eoyMNb0+T9weFfF8/1Y=; b=DrSK+wB0vdRAD0
	mdQcNePnynvgebnoV8ZfOVzFfzjH7H29J72M++dZK+TigWHOwEYs2plNFCUrKGPeBOiCR3WGmBi7T
	kQMjuxJg/lqGdAgpxS2NTKnUTkM4fNPBkbg9q0NSjyRxcRGA8P7fD72V75m9dCAQvxEVUf0KuYwl1
	jbZRn6ppeH/AnjaFmlrWtP4ChuZA/0LWxyGPqwhTllOJEZkr5+S6CnX397/XU1Yn6y8E8nGXr3TjV
	9g0N0sSfYofQXgLfO7zKAEHy2ZS18ZjDeh3lByzMu87kQcF/MTTOxLvprXaU1vx11HZAOlyXYJdoi
	Ci2Yn72I5mGc2xyYe8cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRGl-0008NB-Gh; Mon, 08 Jun 2020 23:33:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR1j-0004TK-6o
 for linux-riscv@lists.infradead.org; Mon, 08 Jun 2020 23:18:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16E252083E;
 Mon,  8 Jun 2020 23:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658278;
 bh=MWITYB0vR5lA3KxxO0iN6yDsjvP8KH/f4rd52IxEzSg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=obHUcP9Xa3uitrZ2Iq4W8R+yxpy+/BcEarHg+xzX96MX6+9vv5qAPUoR2AGcSHdzy
 87c9LNBkOvowQLZVV1wVJ0zY593j1g2FV0m9WovModvdG6vS0Wf5pL6DJd5u8q97uY
 gNFJLbr1+cVVD5Ccy82Pfz0b6anE6tzBEgsh9Za0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 284/606] riscv: pgtable: Fix __kernel_map_pages
 build error if NOMMU
Date: Mon,  8 Jun 2020 19:06:49 -0400
Message-Id: <20200608231211.3363633-284-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161759_288236_8F210E82 
X-CRM114-Status: UNSURE (   8.23  )
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

[ Upstream commit 9a6630aef93394ac54494c7e273e9bc026509375 ]

riscv64-none-linux-gnu-ld: mm/page_alloc.o: in function `.L0 ':
page_alloc.c:(.text+0xd34): undefined reference to `__kernel_map_pages'
riscv64-none-linux-gnu-ld: page_alloc.c:(.text+0x104a): undefined reference to `__kernel_map_pages'
riscv64-none-linux-gnu-ld: mm/page_alloc.o: in function `__pageblock_pfn_to_page':
page_alloc.c:(.text+0x145e): undefined reference to `__kernel_map_pages'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/pgtable.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 05b92987f500..31d912944d8d 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -467,6 +467,8 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 
 #define TASK_SIZE 0xffffffffUL
 
+static inline void __kernel_map_pages(struct page *page, int numpages, int enable) {}
+
 #endif /* !CONFIG_MMU */
 
 #define kern_addr_valid(addr)   (1) /* FIXME */
-- 
2.25.1


