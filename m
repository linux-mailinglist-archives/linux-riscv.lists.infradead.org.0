Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B3375DDE
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 06:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1jjQ+VpfUsvpu5WN1UPo8VIc9QdjvdVSES3TgklzH7o=; b=CNJ
	lnHnc5MjRZ8RXmyt5owp9d1X5PBfY6qkrA7K1JnPi5ta4/MBhPxMzXLRFA2e6qCTdzD4hcw8YNzk0
	t9s2uj6LN56TRBQWfULLFQLeOINVZe9HRNNDE7D/lcRGNOBpDApM/jbnEP6MoXgcf8b58uCX/RtNx
	BZQ2Es2DLZA9OpdspD3TQFXWD7XZpLeYKnGXE8sitk3X4D697eLgT5EUW4XDFNLA702V4ILB1uK4S
	QLMiM3hFUULcXpz2eDEr7iRdZjjGNtvlKqnz+fTxn5/5+pQqwSS24lQMUe5RpPmCRpVHWZXMgp6xh
	5Di8oNYlA9iSwr/QdSDScmj1gRLAnTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqrya-0007wz-4Z; Fri, 26 Jul 2019 04:37:04 +0000
Received: from smtp180.sjtu.edu.cn ([202.120.2.180])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqryV-0007w5-Tz
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 04:37:01 +0000
Received: from proxy01.sjtu.edu.cn (unknown [202.112.26.54])
 by smtp180.sjtu.edu.cn (Postfix) with ESMTPS id A600E1008CBC1;
 Fri, 26 Jul 2019 12:36:20 +0800 (CST)
Received: from localhost (localhost [127.0.0.1])
 by proxy01.sjtu.edu.cn (Postfix) with ESMTP id 9628C2042423E;
 Fri, 26 Jul 2019 12:36:20 +0800 (CST)
X-Virus-Scanned: amavisd-new at proxy01.sjtu.edu.cn
Received: from proxy01.sjtu.edu.cn ([127.0.0.1])
 by localhost (proxy01.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Dzxa-BXcn9VW; Fri, 26 Jul 2019 12:36:20 +0800 (CST)
Received: from xywang-pc.ipads-lab.se.sjtu.edu.cn (unknown [202.120.40.82])
 (Authenticated sender: xywang.sjtu@sjtu.edu.cn)
 by proxy01.sjtu.edu.cn (Postfix) with ESMTPA id 6BA6020424202;
 Fri, 26 Jul 2019 12:36:20 +0800 (CST)
From: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
To: 
Subject: [PATCH] pwm: avoid disabling clk twice
Date: Fri, 26 Jul 2019 12:35:49 +0800
Message-Id: <20190726043549.18034-1-xywang.sjtu@sjtu.edu.cn>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_213700_169625_038DE2FE 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.120.2.180 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 Wang Xiayang <xywang.sjtu@sjtu.edu.cn>, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Similar to commit 63fd4b94b948 ("serial: imx: fix error handling
in console_setup"), as ddata->clk has been explicitly disabled two
lines above, it should avoid being disabled for the second time.
clk_unprepare() suits here better.

Signed-off-by: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
---
 drivers/pwm/pwm-sifive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index a7c107f19e66..00f6fab5bd3b 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -312,7 +312,7 @@ static int pwm_sifive_remove(struct platform_device *dev)
 	if (is_enabled)
 		clk_disable(ddata->clk);
 
-	clk_disable_unprepare(ddata->clk);
+	clk_unprepare(ddata->clk);
 	ret = pwmchip_remove(&ddata->chip);
 	clk_notifier_unregister(ddata->clk, &ddata->notifier);
 
-- 
2.11.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
