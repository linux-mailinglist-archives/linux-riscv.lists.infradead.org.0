Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28641176D4
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmhGacrgUHbjwjf4YiCWKNLwcIuzYeR61NYEOZcH5G8=; b=Q5A0D0PhvBoiXP
	Mi9Z2RA14H51Y6VbnkGFWl0OJDEPWM4JdgRMOsH6C2zS7BUY8qWQf7fagL6mbOxrve1IVUuydUqRN
	WZEWDzZo4RuxsrkbGoTzWYIsjuvamBpdjBqDAu77NNDWTCejLWQ46fCXqZwJhJtL44PHGxjYVUTgg
	sN9/AXy1pH0ZQZVXTCY9hSCm80rEQOxK9JFvHqi9Lp5ttXTdUMUKI69hLjzAk5plt7x3nSbfUF/yL
	E4qhbZtMXPbXdVXqj4yalWofDv5w+eCcXu+fHQ+8yU+F82OlqaZY5yV7/vHBDgqsRzjRfM0KWMFUF
	VM6Xq+8hH9qqaX2XYj0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePBf-00038q-60; Mon, 09 Dec 2019 19:59:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAs-0001yD-Pf; Mon, 09 Dec 2019 19:58:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so7649057pgk.0;
 Mon, 09 Dec 2019 11:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nmhGacrgUHbjwjf4YiCWKNLwcIuzYeR61NYEOZcH5G8=;
 b=SfvmNGEz3IjWYxuwoEcO8shmSAU5du/S5aNBiDTMJpQT4XtBOnZJ1GE9W+9RvTI2WQ
 npVlDvtTnb5lU/I7kOcET6VHlpfHuyWfwymr+y2lNQnTHwHxhUbCg3I1Iah3F8KWZkMT
 nHhosGYrJRcL/sop1M5rwot8mpuORj98u5DQjFfdRlqj5xMjO/Q7SWyo6tczFUPj//sr
 hxSihWIUndCjgzbcLAPbT0zOw535wvVzN96o4I6caBStgrOFl8zsFinRAosnVOZcp3t9
 GsT/9LI6bK8nP9LOg2jpk/E7f8dIW+oBIzARXjWFoRKe/VHW8/5G+eGQq7PrH/bI9WCe
 dhOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nmhGacrgUHbjwjf4YiCWKNLwcIuzYeR61NYEOZcH5G8=;
 b=URZYu4S+QxJHRA+FQnEmQGgJwT12wIFNZZkhZ5XwzFJdZQStgzgDKTHJTa1x7t678+
 oYM2v2Ixe8kHr+ynfKrSeAR1rfsHbtfnHkc8ATQBMuNkzQGpMCK97rey30XYwHO04qZl
 o+LTvqyWNPBArfIgLCMz1ycrrlCARJdinlDbfd3q1N9e+hIc82rkmVjYRxlPzUjpHCOT
 LtYKiJltOWuaGE8/X5N6XWoYKa4dBdwjppJ2wCXP3naq4PPGWJvABtEvVu8ptImH2MDe
 3W+r1yDexXA3OLixQ3NnEMMsrgHD+ozfdwRLdmaga0WYWO8Hdne+wus1IrlHOS7DOxlr
 +KGQ==
X-Gm-Message-State: APjAAAURFBhdspunH/9TWVfJ+svLBSpiC+RHt0OmyQ9wuS7ywUHzX5Ec
 qCS8ea0zQQELUZBbqDmWc0w=
X-Google-Smtp-Source: APXvYqzDVcsF4Khq7eE4x0IkNwfLh0WRPmgIHhrLa7Br8O4RSImpU5KOUcjmHxIETkRz+zep0mS+Ww==
X-Received: by 2002:a62:1c4:: with SMTP id 187mr17758703pfb.184.1575921510177; 
 Mon, 09 Dec 2019 11:58:30 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s18sm316906pfm.27.2019.12.09.11.58.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:29 -0800 (PST)
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
Subject: [PATCH 17/17] ARC: clk: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:49 +0000
Message-Id: <20191209195749.868-17-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115830_841769_B4B786EE 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 drivers/clk/clk-hsdk-pll.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/clk-hsdk-pll.c b/drivers/clk/clk-hsdk-pll.c
index 97d1e8c35b71..155f2af65361 100644
--- a/drivers/clk/clk-hsdk-pll.c
+++ b/drivers/clk/clk-hsdk-pll.c
@@ -299,7 +299,6 @@ static const struct clk_ops hsdk_pll_ops = {
 static int hsdk_pll_clk_probe(struct platform_device *pdev)
 {
 	int ret;
-	struct resource *mem;
 	const char *parent_name;
 	unsigned int num_parents;
 	struct hsdk_pll_clk *pll_clk;
@@ -310,8 +309,7 @@ static int hsdk_pll_clk_probe(struct platform_device *pdev)
 	if (!pll_clk)
 		return -ENOMEM;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pll_clk->regs = devm_ioremap_resource(dev, mem);
+	pll_clk->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pll_clk->regs))
 		return PTR_ERR(pll_clk->regs);
 
-- 
2.17.1


