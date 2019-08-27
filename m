Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5679DCFE
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 07:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UsTru1txaH/5B7zC2KkNW6QQFSYwZbTJM64jsQoCJZQ=; b=RnczCowKajP5IxvBTqiKzA7+pb
	cEN+UCgg17arfHsWCZaYh7OVRQu8NN4ovH15hSHWMrz+RcsCG3Rq62i6/MYKze9SbZhwbg/6GA/jA
	KotU3ktsqJ8ZHNpm++gWod0ie0qdi+0VW1YfLYS65ctTZ4ctVu1nSMHW4o7JfkyejkcKvb0CNSTiT
	1yZQrICGgM6VQU9TWwnELW3q7aENecsEHA3P6RaeqyirAgnSqSBlyvEFnVp2QPA/+iX6CL8Mwprgu
	GyJfE0xol97cteDbUmrXg3j/Rr/jeZ+Jrl+jnw7oUMLc1gSJtmuQFtlBMFwvI2/GyNf81FWGOS4qe
	eDjx+ltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Tgx-0007Qm-Kv; Tue, 27 Aug 2019 05:06:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Tgs-0007PZ-V5
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 05:06:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so11144953plr.11
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 22:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xGYf3jT/OywcihGiyF5DuZOJxtPVxDOHX/P0bgLTLJc=;
 b=bgTanDysTxIvjBPOAptfkieUGdxGxP94KRoDugwTLGzJP4TXWmq18fatIv4CJ5hkjF
 6cB1s70XskgYvExXIuFERiMKnvZz7Kmclh/GC6dS04oECEoG56Wgtmclg6T5RcHxcuQM
 nxf+xWUqVtcZeQtrpd4LYPmS2P+v1XFduGiK9o86lVazMsCy+VtVWxLDP3OA9wbruKOM
 fnXUF73OpQdJqyNo82WuTSZu+gWo7svhNl8ywdWvb259klOLtpcUKOk1SsiM++cP2s7N
 xwQzFwCURx1JBmrHrYuWvugEA9iTS5j+IOWxwAROpMjxaM36lkPuTQU8Vt5jx+fUReRC
 fCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xGYf3jT/OywcihGiyF5DuZOJxtPVxDOHX/P0bgLTLJc=;
 b=OCkwKQdU4Vjl6hq1Ko/Y/TSaSrFIEmy50vUrwedelILGpdCh+Jl1U1Rfle2cKQ1WiB
 oXpu6H6FaT4uGG4wteACIUUK7q3xwUQGKV7uXksTggpkCs/G2ODbbAouLjPMdni/LFLB
 neQy6PM+DZuTZ1L10LmNMenie6iTPhTck4XQotTv6towK2Zl9hmowcRiR/KdixPtNi/7
 xf4cGWokZm8/9jVfnDeaeoQn2sCCFuZ1iWeq+KVjyE6Dfx4LuTGn/m70JYO/QED6AWR4
 R3eEL4+dSFqzQ5LL+FFPoADTvtLfKgU8kVEmd+eFPXNljxHv/Kq/0NQWm9hznUDNsIWT
 /5YA==
X-Gm-Message-State: APjAAAUqMwyviC3M6nK993gC09YTBgAPvsSOhl+Y4Jfs2YniKvooxYc/
 YFUTKHGZJsVg7/7nXXmHFRFkJQ==
X-Google-Smtp-Source: APXvYqzjLiuejY0DazschLAZMfhXglu+wZbQBz00aBmRwNg7xBm8uxbhlOxf9U8si4Lr0KVQVQntcA==
X-Received: by 2002:a17:902:a714:: with SMTP id
 w20mr22158808plq.135.1566882406319; 
 Mon, 26 Aug 2019 22:06:46 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id q8sm896414pjq.20.2019.08.26.22.06.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 26 Aug 2019 22:06:45 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 2/2] macb: Update compatibility string for SiFive FU540-C000
Date: Tue, 27 Aug 2019 10:36:04 +0530
Message-Id: <1566882364-23891-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
References: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_220647_005471_3710C2CA 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, palmer@sifive.com, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com, ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update the compatibility string for SiFive FU540-C000 as per the new
string updated in the binding doc.
Reference:
https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 5ca17e6..35b59b5 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4154,7 +4154,7 @@ static int fu540_c000_init(struct platform_device *pdev)
 	{ .compatible = "cdns,emac", .data = &emac_config },
 	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
 	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
-	{ .compatible = "sifive,fu540-macb", .data = &fu540_c000_config },
+	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, macb_dt_ids);
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
