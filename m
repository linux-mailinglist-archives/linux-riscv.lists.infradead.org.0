Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262AC1862B6
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 03:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98GRVwXABUGfZCn1yMZ6/PWwY6ybQRQbDxjsLHaqZds=; b=nKtfmZgTHKKjJU
	ZepFnmUQtV8BMAdgI5WwhBWC1mHLm7+Cnz0XXktuh4FnByADe9XRE6xjzvZlo6GqTgDlOQoxzjKp7
	5AbUbtdIKZabFnsJJukjTmdE7DXxB1QFJACE4myBuld2/+4eWQhlHJDAQDJX6V0pTVyp3xDaUsg68
	+fEXtJ2NGB20x6yj93mibhRRXtd3NRxcaPFFUr8vgkhPcSDSrDs2qifB5U65K7Sm0bUf9u/OFDLnr
	qlCaNgQNe2Irv6rWp4hJBcgtTZfvJ/ezERyU2tTv1Q2i/Eio3AK0MwYCKv7jzSp0c79y85KQV91v4
	dGfckr/gQFUjyNg2qEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfet-0008L3-VQ; Mon, 16 Mar 2020 02:39:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfZl-0002X5-Vl
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 02:33:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31F3620724;
 Mon, 16 Mar 2020 02:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326036;
 bh=bsVMTFks6CJCc2U67i947WHYTc+3oSIbcH7Igvdr4us=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zKj1YwkXUQU1tVfMLZs14qppngKtSxaaOwz56K7esXKGWlKffo+njCJlqHJ4mCqUm
 +b2jnbuyB5ynzfMWRPJFBknOH4RHYnc5+9V6b3Amu+EC7X5GhjKBsHz0PQstNMXenY
 dit02wInk5vMLwtU/GSxTUG0r3zP8H7ryf8TV5KU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 31/41] riscv: Force flat memory model with no-mmu
Date: Sun, 15 Mar 2020 22:33:09 -0400
Message-Id: <20200316023319.749-31-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023319.749-1-sashal@kernel.org>
References: <20200316023319.749-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193358_123850_E25AED30 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
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
 Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Damien Le Moal <damien.lemoal@wdc.com>

[ Upstream commit aa2734202acc506d09c8e641db4da161f902df27 ]

Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for
a nommu kernel. Since the sparsemem model does not make sense anyway
for the nommu case, do not allow selecting this option to always use
the flatmem model.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index fa7dc03459e7f..1be11c23fa335 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE
 
 config ARCH_SPARSEMEM_ENABLE
 	def_bool y
+	depends on MMU
 	select SPARSEMEM_VMEMMAP_ENABLE
 
 config ARCH_SELECT_MEMORY_MODEL
-- 
2.20.1


