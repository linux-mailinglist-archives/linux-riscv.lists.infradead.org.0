Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B7A130592
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Jan 2020 03:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TKP9+3FRATdkzatF5psXupfInHGzo8rl0jxRHyNFyDI=; b=qB2+CbiYWy+4frGkTAF5MnR39m
	vG1vO0vMjLZoBl4u5SjrfZjBWN1Sk8GFadvCuB2gqsMnvmzd1NQR6LBFBzdIpCnZjjgsAAGBgdm/x
	WrxLAsUNROWfU4Mj9vTw8G9Ix90yyFxtgUgIsW8djdJI9yhTq14leV7DKfNhqFSTOPWhR8hRH1nFc
	sDgiHASyrAEm74wJP3XTCSnuZrsvdm5XpzSI/fkJykZqGQqKZONYFYXmtLmAkWxTrgTD7gfL+WxnD
	QGjxszUlmAN1etKlwRTnbRcfue6HEjy/FUwKV7DJT6fYpCu7ntiMxubeA6UViiRJnp5NJn00fbcOa
	heQuPdGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inw1m-0003y7-6f; Sun, 05 Jan 2020 02:52:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inw1j-0003xC-98
 for linux-riscv@lists.infradead.org; Sun, 05 Jan 2020 02:52:28 +0000
Received: from localhost.localdomain (89.208.247.74.16clouds.com
 [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DA31215A4;
 Sun,  5 Jan 2020 02:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578192746;
 bh=14ajwVbMlY0SfFFuMpMoc9Aw5UqL29m6fRijmZpEQCY=;
 h=From:To:Cc:Subject:Date:From;
 b=UYYAYWFGK/QyuziUyK+QU8wQ1n3K8ToZplVGhLa2n2Kc2aqyLcQp92Cheif2CajGy
 X7XGulwYMsGiiu7Z1JRaA8xujippXhXXxmeu3i4X73zfrZbMvFW/sUwwWdiKCr5RE0
 20JZhuQv664UIt1DPTDMGmiLsIwyCiZuOjuACS7M=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 Anup.Patel@wdc.com, vincent.chen@sifive.com, zong.li@sifive.com,
 greentime.hu@sifive.com, bmeng.cn@gmail.com, atish.patra@wdc.com
Subject: [PATCH 1/2] riscv: Fixup obvious bug for fp-regs reset
Date: Sun,  5 Jan 2020 10:52:14 +0800
Message-Id: <20200105025215.2522-1-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_185227_342875_D88E04D8 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, Guo Ren <ren_guo@c-sky.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <ren_guo@c-sky.com>

CSR_MISA is defined in Privileged Architectures' spec: 3.1.1 Machine
ISA Register misa. Every bit:1 indicate a feature, so we should beqz
reset_done when there is no F/D bit in csr_msia register.

Signed-off-by: Guo Ren <ren_guo@c-sky.com>
---
 arch/riscv/kernel/head.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 797802c73dee..2227db63f895 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -251,7 +251,7 @@ ENTRY(reset_regs)
 #ifdef CONFIG_FPU
 	csrr	t0, CSR_MISA
 	andi	t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
-	bnez	t0, .Lreset_regs_done
+	beqz	t0, .Lreset_regs_done
 
 	li	t1, SR_FS
 	csrs	CSR_STATUS, t1
-- 
2.17.0


