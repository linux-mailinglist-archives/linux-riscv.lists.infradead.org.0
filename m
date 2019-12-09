Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EEF117691
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/xw/4DU6R/wwAQXOSaREMBJ7MJ6SzjE/v+O35UsN0I=; b=rXflkcLG/TVUpO
	t3R97jjzIfE9Sw0rgh+ZDGQb89bhSHDhN7sf98KqZi2QJq7UUMbcpuGevv0r8hfBHbGQmW3ygLUcV
	TUpqPahP+fXHjHPgzoE+GHCOO4WIPBOHWMyPptyDKt74wOw70AWtujlsLvlhTuMwziE0ZpSWf+l4S
	61j54SqM3k3XzgxCd8EwTrh5gpGGLtLQCGADrLCVmVS+OsMgKOQRE2KFU89UGsmw0SpShBirFXNke
	xJpJ6akrbYQhImJaohGXsaj9N/7oI470D98HRTq1GVZUDRjTEC1pAi0aDjvv+tR4H7AV06zXtjetv
	yukYZRimf7Y7HLMXhe1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePBB-0002LM-W2; Mon, 09 Dec 2019 19:58:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAd-0001gN-WC; Mon, 09 Dec 2019 19:58:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id s18so7757751pfd.8;
 Mon, 09 Dec 2019 11:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e/xw/4DU6R/wwAQXOSaREMBJ7MJ6SzjE/v+O35UsN0I=;
 b=RXmVdRBEPDoF3rwjV8HCt2/y7yrz0sWN0CCE+wTL4LBZk1SPdgMEvRR2Ry9YXy46hq
 GVwnLz0DEU3+FhOwG1DB/2RRvOdIwQm8HoDC8uOCalGUOGtBD0XuyYkc8u9FkcrdG8k6
 6g6N8DmMTaj9b/gnD7PCHsDg1i5oDebstS77oQzmQU30DxZOt1qAeTLXNEwYEdL3/aan
 9lq3KEYU3DTp90PGWtqJ5uN0JTt6iOPdvssOtlt7HdduSDktyUFuAEvjVfff7bSkzyG2
 ohoslBU8NiAw8wh6CNHlM4yMQLxiLqFzZLU6dtLUPt1c4Zo7cTUHZwTEgmEtbgOjKXh3
 G0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e/xw/4DU6R/wwAQXOSaREMBJ7MJ6SzjE/v+O35UsN0I=;
 b=Ol8tZr9UJ9jRBIxOyTFk4bBnlu274o/RhDp2qid1M1Yc+bbXBJVuapLo0chTAPEWUm
 ycwBb5YApjX2l93HKHggppzWfGy9OEpmVurU5OR2gWIUR4YUMr0x79i8vcpcndO1lodV
 mIDJdEB2XU5k+AB1YiZpf7eHQ1rhhu8iiYpXPn+ILUNM6tsrIUGhL6EWknD/nXIjoqrj
 hl6i8INl9LDTcuHz0Qd6BATaJOiSsUutiQGbRGUp+LvpuoQD8/JkDVobFHZAgBQjLJYQ
 nLWlRpiLKvagA9YPiQVMQltjUWhtg+E1rk4ut2Yykl/rKk2Z5aB97kOd4zu4YuB47t+v
 zZSw==
X-Gm-Message-State: APjAAAXrAzBKe/2RuFTDsaHnukYN14x2ldIz7ty/SQVFeCjsodYfhD4I
 9qFDbl/xKipEGKVi0rkQ6tc=
X-Google-Smtp-Source: APXvYqx/xVThTCf89p72LZFA4UzOdBkyyKi9dguN+2zd9txD/+pD++B6QJgrWwAPA+xTEfTBozXgEA==
X-Received: by 2002:aa7:86c5:: with SMTP id h5mr30662267pfo.259.1575921495225; 
 Mon, 09 Dec 2019 11:58:15 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id bo9sm193008pjb.21.2019.12.09.11.58.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:14 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 mturquette@baylibre.com, sboyd@kernel.org, Eugeniy.Paltsev@synopsys.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com,
 kgene@kernel.org, krzk@kernel.org, palmer@sifive.com,
 paul.walmsley@sifive.com, dinguyen@kernel.org, mripard@kernel.org,
 wens@csie.org, emilio@elopez.com.ar, pdeschrijver@nvidia.com,
 pgaikwad@nvidia.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
 matthias.bgg@gmail.com, rfontana@redhat.com, gregkh@linuxfoundation.org,
 t-kristo@ti.com, john@phrozen.org, tglx@linutronix.de, allison@lohutok.net,
 kstewart@linuxfoundation.org, swinslow@gmail.com, aisheng.dong@nxp.com,
 robh@kernel.org, daniel.baluta@nxp.com, weiyongjun1@huawei.com,
 wangyan.wang@mediatek.com, chunhui.dai@mediatek.com,
 miquel.raynal@bootlin.com, heiko@sntech.de, jcmvbkbc@gmail.com,
 nsekhar@ti.com, geert+renesas@glider.be
Subject: [PATCH 09/17] clk: sifive: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:41 +0000
Message-Id: <20191209195749.868-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115816_130736_0D9D288D 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/clk/sifive/fu540-prci.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/sifive/fu540-prci.c b/drivers/clk/sifive/fu540-prci.c
index 6282ee2f361c..ececee273d32 100644
--- a/drivers/clk/sifive/fu540-prci.c
+++ b/drivers/clk/sifive/fu540-prci.c
@@ -582,7 +582,6 @@ static int __prci_register_clocks(struct device *dev, struct __prci_data *pd)
 static int sifive_fu540_prci_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	struct __prci_data *pd;
 	int r;
 
@@ -590,8 +589,7 @@ static int sifive_fu540_prci_probe(struct platform_device *pdev)
 	if (!pd)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pd->va = devm_ioremap_resource(dev, res);
+	pd->va = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pd->va))
 		return PTR_ERR(pd->va);
 
-- 
2.17.1


