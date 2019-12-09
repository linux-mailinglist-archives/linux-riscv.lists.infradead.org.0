Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047FE1176C9
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAdSgK+fA9O9lrhwBZTqgcNqv06lLo3k3bNN7t0UXYE=; b=RODQNLv0dHgtQa
	CMnGXEEKUIC9GeG9HsZGAU4CjnJ8yXLPyRh8pHz56dqWzWqUy7YOfhDN2CFKhE8FQwj2hz17mWfne
	ofziUYIx7tLSDFps61PL1Gtr0wOnFp0V9pSvbl7EDTpTnmugyu5jUlFtoBP2CPWuT9XwurwQMtBuD
	n9JlmgNctZvDEwdccXjRTZc76UA7TlMysLhHcy2k+nlLOneMvF1O04wOKBbcYLBQWaHG9dkE8/mr2
	e5InXZPkdtsfYAuidlrAFoy4U5RIGuigh8zAMaaRZlNSVdoIm0ElfSimUeQUnSPRA0FOr0Nh8b9H8
	cqin9kbSw0JFxxuwi8sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePBb-00033Z-9p; Mon, 09 Dec 2019 19:59:15 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAr-0001wG-13; Mon, 09 Dec 2019 19:58:30 +0000
Received: by mail-pj1-x1044.google.com with SMTP id z21so6316354pjq.13;
 Mon, 09 Dec 2019 11:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UAdSgK+fA9O9lrhwBZTqgcNqv06lLo3k3bNN7t0UXYE=;
 b=Mwbxp0czb6jYm+pO8RpQXolWKF3fYchQpf977sKp3QQe0/1Xoll3kTO0oeuKkJMEQM
 9luwwdLQdELK86X2RgmMzwDI3ftyzzFTMAnoZLUzxtOMgBq0i+78V6/Tmj6xkhHDOuLB
 gaxDsmEPNX0tLNVGXjCUXdAdcj7yqzFHFSGKIpsw/bulIANe5HNzHJCPluplGWA/kl4Y
 A2FjJ8cpS0CkZzDyGKTaPgKok111l8khZ5BfREE/kyK1a+/ahan3g8fcWi6dVlyPYjaF
 P10gSquZqtb+CxoTfgmaoF8/4ELsnC6MxZ16heLocA/JMCQysQxIi0fgrCn7UKsFOXvM
 smfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UAdSgK+fA9O9lrhwBZTqgcNqv06lLo3k3bNN7t0UXYE=;
 b=lxx8GN7vv4KYpSzCG1cOwQbX96ZKgqi1j5+f68kQHRr6irAooTHjWegIuoCuUUn9cx
 EQ09UQoo/bXyekFrOe60eUPsa7A0pUrWk0XBgzOyl8VGYKT5oi9WOUeEDQ+3fjpC1xnT
 5hL7Lxhg9xaGLugPG9H6RZGa71My2h+CAXAPWZT2xRsi+xYUGdLk7TXwxWrexhIR5cJd
 dCPuI9airXqX0NwQPIlEYtuNWi9uxL8Y7n17m2L8BAWNQyTFm2mAgPmHX1JzAZetW1fd
 TGHPK0hzJxWBkRx/301E26jabeQq5hstFj0PP/yHT1LxiXK/6OCTEdDGi8EbPMwnNKPy
 FBnw==
X-Gm-Message-State: APjAAAWSd5UecdwWF7eJhLgBpzwR7orti93JujakEuoFNBcc66Gkcw8C
 CbiOVraBZ9iO4hsxHYPETu9qSdL3esZftBrx
X-Google-Smtp-Source: APXvYqyseXSQX0ezUzN6Yi60A6N87H983r9c3N5Vir6VF3q9LGo5GM8Zzd8pYnVRLd5PmOxkjr62+w==
X-Received: by 2002:a17:902:b609:: with SMTP id
 b9mr30695044pls.70.1575921508180; 
 Mon, 09 Dec 2019 11:58:28 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r20sm358961pgu.89.2019.12.09.11.58.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:27 -0800 (PST)
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
Subject: [PATCH 16/17] clk: actions: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:48 +0000
Message-Id: <20191209195749.868-16-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115829_191106_0F3722AE 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 drivers/clk/actions/owl-common.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/actions/owl-common.c b/drivers/clk/actions/owl-common.c
index 4de97cc7cb54..9e98e8a92ad7 100644
--- a/drivers/clk/actions/owl-common.c
+++ b/drivers/clk/actions/owl-common.c
@@ -43,10 +43,8 @@ int owl_clk_regmap_init(struct platform_device *pdev,
 {
 	void __iomem *base;
 	struct regmap *regmap;
-	struct resource *res;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.17.1


