Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70A8B4A19
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 11:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:From:To:Date:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TIKjhGVM690S4V4THsx4nndLDj6BcJMiR5CCseffO74=; b=CPSJUltqPAR0d1
	WJpoBdc9IeVYW/JJhKFpYO1rdyxyOluMemBubMQH6zID30CCLfgo+8hNeHMcp61uDfFI/ulKrQbGH
	hwn0NZhGZpxhyzgYxGA3jqorHRfEZe/ORGxFailRpODKeLu1eivguCZQqNHwtPMdaD/KtuJ1VxAJL
	gejPFT8cnQzXsk7V5KfFbigmH2Q2TLyk6BhY3N+j8BxLYzig+3vzfJWC3GDih1ZCYKqJ7q79eBfPG
	+qbKzXmt/w6CCcEbON/8qaybWnCEMnLKfHn4RYaFso9VaR2qto0qZqCE5Ygy6t4hjFjgEUtyNmIbp
	wGTctGBAn8ZN11T5eO5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9XE-0004Ct-OE; Tue, 17 Sep 2019 09:12:32 +0000
Received: from mail4.protonmail.ch ([185.70.40.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9XA-0004C9-N5
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 09:12:30 +0000
Date: Tue, 17 Sep 2019 09:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568711541;
 bh=ZKYIzKdgRRtrB7OyOmWDzTMGg6uay9ipjlu1WQonyTU=;
 h=Date:To:From:Cc:Reply-To:Subject:Feedback-ID:From;
 b=eQjSy21KM5OSXxxHfL1Q0qHO98l3ynqXu8fnUA4rHJu0AHrC6MQbLJr3PyVby+VLd
 HftIbwWlow6/FRq+UwbpO4l5ArWqYTCd+B5WEmp/Ozjw7Y/szu+/yOmVBRq/qx4u4A
 NkAgdHx082bP+SO2K8f2zMj/58ejxv+TrWH7LCa4=
To: broonie@kernel.org, palmer@sifive.com, paul.walmsley@sifive.com
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: [PATCH] spi: sifive: check return value for platform_get_resource()
Message-ID: <20190917091207.4925-1-mail@aurabindo.in>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021228_916961_296FD66C 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Reply-To: Aurabindo Jayamohanan <mail@aurabindo.in>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

platform_get_resource() may return NULL. If it is so, return -ENXIO

Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>
---
 drivers/spi/spi-sifive.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
index 93ec2c6cdbfd..67485067a694 100644
--- a/drivers/spi/spi-sifive.c
+++ b/drivers/spi/spi-sifive.c
@@ -308,6 +308,12 @@ static int sifive_spi_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, master);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "no IOMEM resource found\n");
+		ret = -ENXIO;
+		goto put_master;
+	}
+
 	spi->regs = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(spi->regs)) {
 		ret = PTR_ERR(spi->regs);
-- 
2.23.0



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
