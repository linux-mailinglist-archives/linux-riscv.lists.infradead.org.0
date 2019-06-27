Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC9A57C85
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdBmcKTg8wujS+Cu4PIYtUw/PdcdswRUQwzYGTceuv8=; b=N6QbCg+kFB4Nht
	Js59F59KCVQDZ8lr2AUW/Re5xhUB0Zs3ReIG3LVeTejF3A71S25kJc6aP9DvkbLA2p/se8iSAVJIJ
	yZhfgD5fvU52n3ffu0xNpljyee7dHn+p4HXd80XH47APkADvYXO03WNxAJf3+VQe6N1XSc9mbEztd
	1d86uxxxrlEuDUYG/VXpmNDmMqWSv5as2C020DwnXvzPwF4Dnnd5UAgBvZO9zr9z7HNpZH6Z4kZDF
	CcJh2HdBgxhqb1wNYDXUabTXgICnn+T09OPuyXxgp9d9l2cqYUtCzKtN2zWbBoec2b8E+4pc11cds
	AvFj8ex2RV3lIIMaL+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOHi-0008SQ-UQ; Thu, 27 Jun 2019 06:53:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8q-0006KM-RJ
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DZ4Gzv9fZhFyx9vfZpzs5+LNYjJ019BQrBcaIo26GVM=; b=J7nexU+bcZc2fcxisYo2z2dpMY
 uAsP71EEYyZhLFph+fbvcWfgjPXGH1I5rda+YYvwznQLdwpuPpfjj16CgCyTGbRsHP2lYnm2jrKtm
 hu113sHq3b5pZEu/9Bvvwt9ALJ/39UamfeHi/fMRqwGDrWVqwFHDEGmh2VWCCjn1oc/uzCZyUbx3d
 aMH9tG+D/lV4fcIUV9KoCW1YlbxPGFwG5HAQXaRvgEE2Lk3M4E0/4JdVTRa72aryepweJuz+d0wgs
 5I/KhKehk4Er4jBjVEjJ6H2MzlFOPEdk9TXQPNwenSlD/gmdCVLvKRmv54FnE67Kbcqtuhd5tnIx7
 816Y+EZA==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgILn-00040q-Fp
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 00:33:20 +0000
Received: from sasha-vm.mshome.net (unknown [107.242.116.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99BB920815;
 Thu, 27 Jun 2019 00:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561595598;
 bh=ukyT0zWO949yq54aqPCDMCmxrnUPIEiL8DdNMkXKvSk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BQFHBas04Ro7vrqtkA0ZDNNPBN9LvHtTyTNBtqZZesXLGp6VKlcR4tXnF+mWKV7eT
 8+H/Ua0k0/V5+BbKWQ379iAInvZ5jC9vw8T0U2Nm8mAuPeSCjTFSrBRRBcvw3Xyqp9
 CRFSd3qgaY1E8sj+55wjJtO//2bpLYMfkWk2wMVI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 52/95] riscv: Fix udelay in RV32.
Date: Wed, 26 Jun 2019 20:29:37 -0400
Message-Id: <20190627003021.19867-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627003021.19867-1-sashal@kernel.org>
References: <20190627003021.19867-1-sashal@kernel.org>
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
