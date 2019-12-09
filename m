Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC4A117692
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps/yL6sIyA/HzDEFUdGrtX3BgHMKWprdRozhFXs72OQ=; b=Uqa8kPZ1wpEkhG
	Ilp8zOozKt1W7gT8igRgMGBRPV1t0qh3hj9XAEqhDcrfE4JW37tw+2kBP5gmrbP1VFozZa12RCwl5
	BYVLoc/6lLy/xv4WBp8NOGENuryQGwPJwPfJFjR6FiqFbZVl7zBeJ0hwMAnO1ph6VI9dRVbVD4SMC
	qWGCgMOsAeogOtqx90KGgZfeTXMxN9w1rW4T22ClQxqawc9WeH0FmXFbDK0Ccq8XtgxZcgUl0+/eh
	nz1xO/BWZVflnskqsjfnlbCPkM5ue22HiQZDgaSljZA+ltdh9tmwnG7a9ojWFep1segt6sw93Wxj5
	/Abc4uBFKr4YIW0NiMPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePBE-0002P0-Si; Mon, 09 Dec 2019 19:58:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAf-0001iL-KW; Mon, 09 Dec 2019 19:58:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id d199so7757510pfd.11;
 Mon, 09 Dec 2019 11:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ps/yL6sIyA/HzDEFUdGrtX3BgHMKWprdRozhFXs72OQ=;
 b=TaNk4gU+Qf1rcbmjZAkQiW3/WHyVFXCi7zmDAdiZtdKbXURE12spMk6pgcjhAfd3Ro
 i0JM6AXHmKs4EjDYYp6GM5QNgAPGiJVGrzJNPp8G1ld+NZoMTP605aHNwFlMgRKgiL4w
 E6jWfIqvgrnzKW0hAr+vOBCG54aHqgBXe1H2UZhmiXkv4o0fK52AjpbkcvfVX789pO0r
 kTro2cUcvpnZmtEYPliBihUPzgqPCLYFyKLfeOBXrfVZFsBL0duPZDkOscsczOq48pKL
 Q1zNZ2uC/1chXyMS5dboUhYoAs6WHs3Tj3Wk2yK5HYKQk6r2qFEMrq7/UC3aLlsbf12a
 5tCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ps/yL6sIyA/HzDEFUdGrtX3BgHMKWprdRozhFXs72OQ=;
 b=l4ciBqeaUsUQ2tSpSKrFqdKakm1hUPMN153iNYtJJaKb1Ke+gctqkWE5fSUJue/D+R
 mAEFoxa995Mfi2Xxw+PCuAZst0g7eiwQH7VQZFwqG4BN29MJObLgUBxBIjX4QNCqb5Ax
 irl9kiuvCX7HlvKrZMHdG8uRaeEm5sYJflGD7Ny5dB4smi6rxd8wQibSH68z7ETd5YCT
 6XzOkcFfnZou+fRqvJxESsJm7Vt2K+fMLUKZCgIdCGBaKGBq2lmIMl7n9miiIqXPMbYz
 JfNbk+B9bFkUIrD3Wn9LJpnvktlAlrcr/SS9bqj0fKPn3XmcekTSuEsJaSfX+ccy32dW
 j2QQ==
X-Gm-Message-State: APjAAAXTsmy8vnH1z6JVlZBSyoOC93YB5sbcd2cXMYELdnk4GAmLW69o
 tCM5qAKmwozQN8aATCAaOyY=
X-Google-Smtp-Source: APXvYqzfh0NCFt3LIk+KUA0hhxrykBenrX9LyOzFKnUPS1uqtGFUf/GaYK5SaID3cQhSSuXJEI4UIw==
X-Received: by 2002:a62:1c88:: with SMTP id
 c130mr31355900pfc.195.1575921497176; 
 Mon, 09 Dec 2019 11:58:17 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id z64sm307501pfz.23.2019.12.09.11.58.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:16 -0800 (PST)
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
Subject: [PATCH 10/17] clk: axi-clkgen: convert to
 devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:42 +0000
Message-Id: <20191209195749.868-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115817_722744_5E984FCB 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 drivers/clk/clk-axi-clkgen.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/clk-axi-clkgen.c b/drivers/clk/clk-axi-clkgen.c
index 96f351785b41..8d0c32e81e78 100644
--- a/drivers/clk/clk-axi-clkgen.c
+++ b/drivers/clk/clk-axi-clkgen.c
@@ -412,7 +412,6 @@ static int axi_clkgen_probe(struct platform_device *pdev)
 	struct clk_init_data init;
 	const char *parent_names[2];
 	const char *clk_name;
-	struct resource *mem;
 	unsigned int i;
 	int ret;
 
@@ -427,8 +426,7 @@ static int axi_clkgen_probe(struct platform_device *pdev)
 	if (!axi_clkgen)
 		return -ENOMEM;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	axi_clkgen->base = devm_ioremap_resource(&pdev->dev, mem);
+	axi_clkgen->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(axi_clkgen->base))
 		return PTR_ERR(axi_clkgen->base);
 
-- 
2.17.1


