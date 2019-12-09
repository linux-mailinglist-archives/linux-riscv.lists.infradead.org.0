Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F21176AB
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyE91jsZAP5JpR1vW4Julj8lDuf0La64PECRRoFBxZo=; b=JRAaQ/o0UR2AkU
	okSsvuGgIg4BtyhthNu0REvd++KBNYiVGOmjT35W3GaP9PQeXHDGuVayll3Iv+dKAbkN/lrOm5zTx
	kY2KqMWh1ifSdNONwSDnSAiCE6FUgiKksVSWAcLsXfsOiTCodKCPbdELsK4zHbq/EUJYzZwKgUjdX
	CaXzitqecFOf5gbOvsZaDrI9Sr68n/o5AxMeRdF4jnwD9r8PiBKKlKIrdoRITYS6RL5chnmsS4XK8
	evftA525rtty+c/IzVtjZzPpN09m1xTBwxsWtq6DqxLw1ezn35TRH2slAufUIfg0My/Qy+srwScoo
	yuTmkt8QRThI1rfMqTCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePBQ-0002ju-E2; Mon, 09 Dec 2019 19:59:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAl-0001pd-IA; Mon, 09 Dec 2019 19:58:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id k20so6219734pll.13;
 Mon, 09 Dec 2019 11:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZyE91jsZAP5JpR1vW4Julj8lDuf0La64PECRRoFBxZo=;
 b=CCfDbZXmu13SPymCWITnSTOML5WPbRVrTGApg5UmfCZHcEOPETnSQVCveR7/W+o2a+
 qor7hZSTQQfKDL5by514ripTgEWP+meMNrMmWqzP3x4a1QCzu3EgAzlp7Swb8ku2Q5+Z
 p1oUekJQCKB5DyCWusZL5/bPYoCwXe6bBmftn1xyOqu+teC0ds7dqG4oGrAcCam8PYHW
 hoY01PI6z9XPnOdWjg7dC7pGm2h6/d/kLhS4ADtwI0ORNpYzQnkLeVLrbNrB+McL5VF6
 QR8+XurF8EvCE6davNfcy+LEmjNUkvmXB3DzElXAKXWk6azefe7qPAWGnQG+mo5gtk3A
 uMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZyE91jsZAP5JpR1vW4Julj8lDuf0La64PECRRoFBxZo=;
 b=ol915Fn7n3AdCuwi33mSow2zDJ4072oHaJoMyL4mMEFDS5M/ns3JiOWEmF9VJVHBcb
 ZQM2zoJ1DO0KP+ETjTyvNaVMtXR7gxyBGNLbX3EL/qSI3guIwacGd0sxS7q7UyAWzgbh
 oHfs72Mj2qHolgIx0TS1DLu5MRbrdNbDWMzqTZFFRq3HJLZ5OrZtv97eN8EjSx+0894k
 mkwpXtgaHrZ7721k+1oGe58M4FZPlNHJknJvG0WE+2DIVy08trENvGXcxr8x7brq4bSH
 DD4qZsM9yKDwTbiLLa5XTcXIKvdVSdE8TJFdSsz1jhiGFwjkspd/Fw8zmNtu8QkjJ8nS
 iLJQ==
X-Gm-Message-State: APjAAAVc2LdMd8PeJxVk/EJXv5zInoPR3YDTvVGFvDJMyUfUesLkWtmO
 smZXhGNbGsi9v8R+PsDPp5g=
X-Google-Smtp-Source: APXvYqzVde8W7TVt0r7e2n3/0zTHRFhCsTrszUtbv0mgbzWPoD9QO1rfKS+Ar6eiXvKpF0LKb2LT5w==
X-Received: by 2002:a17:90a:634a:: with SMTP id v10mr923372pjs.4.1575921502812; 
 Mon, 09 Dec 2019 11:58:22 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id h16sm292614pfn.85.2019.12.09.11.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:22 -0800 (PST)
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
Subject: [PATCH 13/17] clk: gemini: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:45 +0000
Message-Id: <20191209195749.868-13-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115823_727110_C689563D 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/clk/clk-gemini.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/clk-gemini.c b/drivers/clk/clk-gemini.c
index b51069e794ff..0184ff9bd206 100644
--- a/drivers/clk/clk-gemini.c
+++ b/drivers/clk/clk-gemini.c
@@ -276,7 +276,6 @@ static int gemini_clk_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	unsigned int mult, div;
-	struct resource *res;
 	u32 val;
 	int ret;
 	int i;
@@ -286,8 +285,7 @@ static int gemini_clk_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* Remap the system controller for the exclusive register */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.17.1


