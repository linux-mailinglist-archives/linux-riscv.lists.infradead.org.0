Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6861B19CE50
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 03:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cih+hn03up9st3RS65QpZFbWvs3Zege+0uDG2KPZoUU=; b=f6E1MTNh2/d+uW
	ZR4V5cqZCGZjxnv06jC66wKbTbvKm+Tipj42d4bJZ5q4Q315K7agzUqNvs0CMMcKAMCc+ZzfI4KJ5
	BKsP6OZ3V717XliPD7b0zGgk7tFgrmd0KXz7EQsKxZSwCsoxWo61CNPdRA+aQK0ATz5JyMbZlTfkP
	bvjhRW0h4BUAS2SQT9urdVmWwwyBeGwrM2NKLfIDATP8y5k7XElauHmy3DYQfD2nAZKQdwEOL1wRo
	0wTkCkzU8AhxRj9vFtd+kSFoAW/CKlERjUnWY/AwULMMj2AC9synrHYso1j4c+PmkCNk2GzPrQDoY
	XBs9FjxBd29aX6FzzL3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKBPU-0006hq-TK; Fri, 03 Apr 2020 01:46:16 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKBPR-0006gl-Km
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 01:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585878373; x=1617414373;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sXzY6X7y/HJOV8eyJ7EyKZ7Q9GvaNwIs3iD8jdW9I3A=;
 b=dlHXw1la+t1ReYaAEOijMFkTPf6ad9R9zFGrxT+ehddAOMyoPEFfv3qx
 mjDRSwMTOhuUYWmiJDa/CaG/NRJrpjjSN5VUTEHk0609KfBRBbpwduwnh
 T1zKYyEFY3ALw3vJWK3z+b/Bd3pc99eWyBnTC8q90B7gDaBpID6JhqEZd
 n1T32p6SyrdQ6eBOb/LbhcB5e3Txt7do6HazsncjL+ICOi/xc6jSKFG6U
 ZVN7jMACEshmaN0YGqBVo5kxrsJxzwk33i/P1tGkP0gcfbF/DTX+pilko
 +30FBeWm38hSuzo0ob1HPVIyNWFZq/ga8OuPa1v7cYYhFduAPmkySJqOw A==;
IronPort-SDR: FAZjmbuCE4fB0QpBbEqHkuAhDbTZ4cQEeFclWTTJKG1YmjXI5j/TB0uY9pLoxamxBt1m5EepZP
 18ShvtgFJePlS9LDRC5yVVtr1MlPD3dRFa9JBhmu16Zo2+NGLlJef8B9R2zZ4RBGzzLH70l1i2
 yOkBH1rEe/cugjLk6UFftD/y1MjZ4FJ7oAx/ZYcPOTaEPdpQzOtT7kg0DbplyGHpd5d92qBPxd
 IcKQembUrY2a/KogbLQ45U68TTzu/hcdF/P1zXxFCcP5GXmtVlZhA2BYFRwQjKWBLnN/IvoqXv
 aGg=
X-IronPort-AV: E=Sophos;i="5.72,337,1580745600"; d="scan'208";a="135917736"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Apr 2020 09:46:10 +0800
IronPort-SDR: FnIWn7yi+YTu3NC8P1CXIz9ZrFi80vuYzZXhGd8Uv8epL3U1GN4RF6a3RPU049V1m7ORr7pjp/
 umXn+hBvrAWmqDUCyxJUX1JUsOfLPL0ShFM76RlNZxHBn/sZn7xqxAPx+c8DuzB7y2OFmscgDJ
 2Mi9o4c/2agDBvoannb278sttbWZKxpMNX61hppUJLJ37w163Tg3QMKJ7oH3Wkip2bujnLGoUw
 lq0TIZDoNcNqDkVCV4FIgVstFgi0SUk39I+xNPCkT+p5MnYNgdZEW29fUiqfOu2tKa9cTtUrld
 Ggp4MNberJY4/0l3GYGU4dXg
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 18:37:01 -0700
IronPort-SDR: ZAP/86deKbIkcrM7fGbTYi3JBhvMWizQVQ+sVBUZ+C9VlVOhubJ5WIm8d89j3VAGd0ilAEJ70s
 g9qEgSzrNx/ZvR/3xNdL9yT4Z2jkaZxnyMGv9VkGzF2J3yS7Sii8aR6/ckOAHG10e32sqzV4zb
 +t3u6OJe5ZBIHaqO6wLNuy/GaLFQ+DhtzNzFRZFfHZyQPaeo5bDi2dWoGjyiz38k1NxbMcFQZR
 Bp1Yueq5YC1cuW83W8C4eDtvKvpUGtTcChQJZjIUGooois9pihtCB8WjR8mlczKVkSHvx49mdh
 O/8=
WDCIronportException: Internal
Received: from usa002249.ad.shared (HELO yoda.hgst.com) ([10.86.55.19])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 Apr 2020 18:46:10 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] irqchip/sifive-plic: Fix maximum priority threshold value
Date: Thu,  2 Apr 2020 18:46:09 -0700
Message-Id: <20200403014609.71831-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_184613_739013_F794B42B 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the PLIC specification, maximum priority threshold value is 0x7
not 0xF. Even though it doesn't cause any error in qemu/hifive unleashed,
there may be some implementation which checks the upper bound resulting in
an illegal access.

Fixes: ccbe80bad571 (irqchip/sifive-plic: Enable/Disable external
		     interrupts upon cpu online/offline)
Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index c34fb3ae0ff8..d0a71febdadc 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -56,7 +56,7 @@
 #define     CONTEXT_THRESHOLD		0x00
 #define     CONTEXT_CLAIM		0x04
 
-#define	PLIC_DISABLE_THRESHOLD		0xf
+#define	PLIC_DISABLE_THRESHOLD		0x7
 #define	PLIC_ENABLE_THRESHOLD		0
 
 struct plic_priv {
-- 
2.25.1


