Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5F4A80BB
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 13:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xzgWk53rJsn4PKnvghdsncU3643G5dsPQOv+ZHAUZBA=; b=ggQ/d+SZEvNpzm
	Dkz9OWp+XIpXEmtm5UG0GDL9nmnvqUAXkSsNp8z/giMm4NpfXW7hpQKv/5YC90E1TnYQAYGIS1oWF
	saWsGRWMLxmSAz2DwD7ETGLBRkyqXIkWASq30MyPge7x85F7GTag8TeLlvDT6ZBRDkFeyIpyfaZvD
	8wweo7YkkHx+j7RCfBQZmDYs3SAobOOCBpERRcY6ylb30AtAwjYHzUTbLIDmeAbTXhhmp3TXzSlPF
	rULWVYXpxTxX7TPohILzLAs+tKtu86TxEqBg9HqaIeIQrEVvjzXxuPhTtjPps2iuJEfWM0uvEprmM
	kzCE4G2+N9UbO4cTqxYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5T27-0003H7-3w; Wed, 04 Sep 2019 11:01:03 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5T23-0002zf-CF
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 11:01:00 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7ADE3D2E674B83DB96E7;
 Wed,  4 Sep 2019 19:00:48 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 4 Sep 2019 19:00:39 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Thierry Reding <thierry.reding@gmail.com>, Palmer Dabbelt
 <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH -next] pwm: sifive: Remove redundant dev_err call in
 pwm_sifive_probe()
Date: Wed, 4 Sep 2019 11:18:36 +0000
Message-ID: <20190904111836.122616-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_040059_590029_A2A3F458 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-riscv@lists.infradead.org, Wei Yongjun <weiyongjun1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There is a error message within devm_ioremap_resource
already, so remove the dev_err call to avoid redundant
error message.

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/pwm/pwm-sifive.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index a7c107f19e66..8fcd05e74581 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -250,10 +250,8 @@ static int pwm_sifive_probe(struct platform_device *pdev)
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ddata->regs = devm_ioremap_resource(dev, res);
-	if (IS_ERR(ddata->regs)) {
-		dev_err(dev, "Unable to map IO resources\n");
+	if (IS_ERR(ddata->regs))
 		return PTR_ERR(ddata->regs);
-	}
 
 	ddata->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(ddata->clk)) {




_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
