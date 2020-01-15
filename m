Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF74813C6F3
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Jan 2020 16:08:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nssVaUpC9zozVuhZev2NEUAP0LO4GtNymyOE64f5XUI=; b=inWDgO6dxZLVMn
	5TPK+CsOToZSPp+Q76s0NP+mE5PcRQNJPhiBa5Zj2noFh58hef5+BQbyi2D8MNbd6mo7mbr2yAouY
	ei6mUyY2fmAtYb3bWiCa1chYxuM2vd0HkhUiLD7YADme71ls8octZHX8ORVei93uvN82C043o4URd
	Ntwa4wzXn/VwdfTkiFT8VlU7tN3nZ0EI9aOVRsv4IU4NNEUKDDs0jSqthfzn/Ko+qd0FsbUqMHlPA
	1exUliy4K1dEUIzolv8f4k9xJDP+OcnqJeYLSHJPxB/ExqHirb2Jju6gopjj38scDXkjnt9EbgWC5
	qIRxeErL/HnQTNWSBjlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkH2-0000LZ-JZ; Wed, 15 Jan 2020 15:08:00 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkGv-0000AX-Mo
 for linux-riscv@lists.infradead.org; Wed, 15 Jan 2020 15:07:58 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E3CF758C6746AF420D9C;
 Wed, 15 Jan 2020 23:07:38 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Wed, 15 Jan 2020 23:07:31 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Yash Shah <yash.shah@sifive.com>, Borislav Petkov <bp@alien8.de>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>, Tony Luck <tony.luck@intel.com>,
 "James Morse" <james.morse@arm.com>, Robert Richter <rrichter@marvell.com>,
 "Palmer Dabbelt" <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>
Subject: [PATCH]  EDAC/sifive: fix return value check in ecc_register()
Date: Wed, 15 Jan 2020 15:03:03 +0000
Message-ID: <20200115150303.112627-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_070753_916982_D844E803 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-riscv@lists.infradead.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-edac@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In case of error, the function edac_device_alloc_ctl_info() returns NULL
pointer not ERR_PTR(). The IS_ERR() test in the return value check
should be replaced with NULL test.

Fixes: 91abaeaaff35 ("EDAC/sifive: Add EDAC platform driver for SiFive SoCs")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/edac/sifive_edac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
index c0cc72a3b2be..3a3dcb14ed99 100644
--- a/drivers/edac/sifive_edac.c
+++ b/drivers/edac/sifive_edac.c
@@ -54,8 +54,8 @@ static int ecc_register(struct platform_device *pdev)
 	p->dci = edac_device_alloc_ctl_info(0, "sifive_ecc", 1, "sifive_ecc",
 					    1, 1, NULL, 0,
 					    edac_device_alloc_index());
-	if (IS_ERR(p->dci))
-		return PTR_ERR(p->dci);
+	if (!p->dci)
+		return -ENOMEM;
 
 	p->dci->dev = &pdev->dev;
 	p->dci->mod_name = "Sifive ECC Manager";




