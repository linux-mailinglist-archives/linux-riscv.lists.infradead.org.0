Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B810457C83
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdBmcKTg8wujS+Cu4PIYtUw/PdcdswRUQwzYGTceuv8=; b=U5t8iKGrmM7AE/
	EfE6Ma457XLCigRnK5vEG2tl17bOLrVo4yRk7lPONFSr4RREYeR9DoPBjcHkWYzhL62kO69N7ELPb
	kidSDNrxX7duMVICMXpPUAh13nj/O8KkdcZhNPjvejh3vC/Yb/3apvXVJuOfR1Ah9pmm+EltlbH2m
	7rFEsy3XxxXPrpHy5+sBdgkduK+pLrRTIB6fv1ohUfLTnSHqD9N+Mbhe4qqxXzsDvUe9MB4/dViLi
	TlXExB7YUVqgPBper7UTrA7H1dC9utPa+iZnGErDha+r9R9wiDvpyc4YoW3lc7q2MvQe+tCIFlwQZ
	m6m3/9Ra/ar3delZCKAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOHR-0008F6-VF; Thu, 27 Jun 2019 06:53:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8n-0006KM-EK
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DZ4Gzv9fZhFyx9vfZpzs5+LNYjJ019BQrBcaIo26GVM=; b=NrSJTT/5SU+122nClxl5kyA8By
 t5KE06V2vuML/h5BnTWAfd6HNInq4/M3oNNJzltTH5LxTnQ305huXkf25b737RNoggS4WJKXuZtfL
 Bv3+1K/hbJbA7sMu0PxawIgRsQqIIreguTH4RhszQ7pGKAIBncieHKUDDW/zdWXUJ+jt9anKv8/Vq
 Q28gIHbTkgQWL3R8935TTJP5XVUrIOJ+OZzDlQaL9cKZwX0ohvEPnNytbpG7AQa2Xx5mml7qivVcW
 rNpkHsDiaTQS75QBnpoURDiIP6adJwlQ7jmvDHtOhl0JyQL1FHDpPq1GIa5xmSZKEOCFHuePcUSpy
 9fAGOXzQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIQM-0004Bg-TH
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 00:38:03 +0000
Received: from sasha-vm.mshome.net (unknown [107.242.116.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D42BE2187F;
 Thu, 27 Jun 2019 00:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561595881;
 bh=ukyT0zWO949yq54aqPCDMCmxrnUPIEiL8DdNMkXKvSk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=y1A0+Y/ld+SeWEylhkeaRE23tMv5+M6d5RkiRihhOB9rf2X8WUT59s1gj5W4HWCz8
 Jt0PZWtnDUmsB2Cptj92nqF6ZrZBc2O96MnNaVlJUzdjd+LXmKhzizjMeYXKhQxEW6
 WVh49DbCHgT+KrXTAEZ/WS/QyJCDpAHHQL3Bg0W8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 34/60] riscv: Fix udelay in RV32.
Date: Wed, 26 Jun 2019 20:35:49 -0400
Message-Id: <20190627003616.20767-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627003616.20767-1-sashal@kernel.org>
References: <20190627003616.20767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, Nick Hu <nickhu@andestech.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Nick Hu <nickhu@andestech.com>

[ Upstream commit d0e1f2110a5eeb6e410b2dd37d98bc5b30da7bc7 ]

In RV32, udelay would delay the wrong cycle. When it shifts right
"UDELAY_SHIFT" bits, it either delays 0 cycle or 1 cycle. It only works
correctly in RV64. Because the 'ucycles' always needs to be 64 bits
variable.

Signed-off-by: Nick Hu <nickhu@andestech.com>
Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
[paul.walmsley@sifive.com: fixed minor spelling error]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/lib/delay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/lib/delay.c b/arch/riscv/lib/delay.c
index dce8ae24c6d3..ee6853c1e341 100644
--- a/arch/riscv/lib/delay.c
+++ b/arch/riscv/lib/delay.c
@@ -88,7 +88,7 @@ EXPORT_SYMBOL(__delay);
 
 void udelay(unsigned long usecs)
 {
-	unsigned long ucycles = usecs * lpj_fine * UDELAY_MULT;
+	u64 ucycles = (u64)usecs * lpj_fine * UDELAY_MULT;
 
 	if (unlikely(usecs > MAX_UDELAY_US)) {
 		__delay((u64)usecs * riscv_timebase / 1000000ULL);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
