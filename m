Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6C9EC2A4
	for <lists+linux-riscv@lfdr.de>; Fri,  1 Nov 2019 13:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zLnAxflKfotXLyFN3zFzHUamg/+sSaU3PhJxuCc1L+8=; b=E4FROlSypckIJf
	3LwXKI6Ishv/A5mVbJPj0M99MmRxM9osAz+T4p50OcHR1TbNHNT/PZGm/r7epfJDUjWUSoY+bueOo
	NFvl502fdU6G+lciWFOp4VTFDk8hFrD83tgOmtPeW5ypJ9vAEN6UXFPMq5cz2ROCKZn9AZ64BUN9B
	VLioSxrGf4oN/WX6rpAUb1GcMnFRudYDvpy+2tQf64V4/PcPDXphHODlggA80B6BvFfz31AbnEm4s
	jmkE4IS8YgaqBucALkOpX50H8ArNM8dcMcMjJdrV1044roxOHhiXmkBlzr56sCz9wP0Aivv9Pb7hK
	vtiV52THnLsxjHsdPUFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQVsc-0007in-S1; Fri, 01 Nov 2019 12:18:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQVsZ-0007ga-G5
 for linux-riscv@lists.infradead.org; Fri, 01 Nov 2019 12:18:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so4816625wmi.4
 for <linux-riscv@lists.infradead.org>; Fri, 01 Nov 2019 05:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZOoIzpG2z8fi2GZrvyp00RYzBAVVduBNjTY7LDpDnDA=;
 b=WMGeLp/AVcDchEPwD5VJFbDRfoXly9LNsd0siehQ54HLKyIZ8qz9gi8KhSFn/ECKpG
 4taW6nS3xhiwjHUhlKwrUKHiRbPhs2tXHJbH1qNcz50q5vHK3RsSKuYORB7lqzRv+kKs
 hlzTPidpqQOgpmDIDqPQWVRFFc279Bdiwn3Fo+zG7ZmOK3rWuWObm1y60wX26Y0lLe2R
 rxYZZwUwn6q4AWS6avO/Ttxqrm9T9MPIkI6l8saqG21Hm3uzAKNsJTZk8gGvFL4ZXobX
 QQ84THyc3nfF1poe9cx5U0FWZlISf+jXrv+zA2bXISGSyXsVB4eUT5G0vYx3eZZY9NgO
 xZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZOoIzpG2z8fi2GZrvyp00RYzBAVVduBNjTY7LDpDnDA=;
 b=gA3XyhPMphICahxfCplmkAu/jBAFT5hf8gFV3dL1f1v0DtxdNUY2g6oqa9XnmTDCB9
 xN9FCIgzZl+MKCItzSHWWNkqNq/uDcYgzM/W4rCFgZnxVpxrofYyBVbiz1uj172oOgfE
 18C3/WM0JSC5pAE0T45XVgAtLvjH7w0+IxVnpPryiATUE7Raa+a3e0XrdRVUzqqJh6rz
 aTzsOBi29c1xf0L6LqOU93HfSI9G42xrykcxM1RL9nwiyNJic+l3fCf8Yna33oHUDaKu
 oG05kmt52hXYdhZaOMh7DXupDm2dDvkiS4+43uTFkbLEuWhXGASrNRtjzTREtqGjP95q
 ILiQ==
X-Gm-Message-State: APjAAAWzzzkedB2xW4zzN4DLk6sc38Wohmiskw4wJA0Lz1RcqZ2LG4vy
 s9SuzJhssLOO+6nM2EhTr84=
X-Google-Smtp-Source: APXvYqyYGMPZVOcwrT99SjO70XvqnXNb10RZu4lXx7hjfGuoisqKxZ/u5JHTJkzyPdKNoiU5Az3ORw==
X-Received: by 2002:a1c:1d53:: with SMTP id d80mr6277323wmd.88.1572610690236; 
 Fri, 01 Nov 2019 05:18:10 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id p15sm7759400wrs.94.2019.11.01.05.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:18:09 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] spi: sifive: disable clk when probe fails and remove
Date: Fri,  1 Nov 2019 20:17:45 +0800
Message-Id: <20191101121745.13413-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_051811_536509_82E5DEA7 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The driver forgets to disable and unprepare clk when probe fails and
remove.
Add the calls to fix the problem.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/spi/spi-sifive.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
index 35254bdc42c4..f7c1e20432e0 100644
--- a/drivers/spi/spi-sifive.c
+++ b/drivers/spi/spi-sifive.c
@@ -357,14 +357,14 @@ static int sifive_spi_probe(struct platform_device *pdev)
 	if (!cs_bits) {
 		dev_err(&pdev->dev, "Could not auto probe CS lines\n");
 		ret = -EINVAL;
-		goto put_master;
+		goto disable_clk;
 	}
 
 	num_cs = ilog2(cs_bits) + 1;
 	if (num_cs > SIFIVE_SPI_MAX_CS) {
 		dev_err(&pdev->dev, "Invalid number of spi slaves\n");
 		ret = -EINVAL;
-		goto put_master;
+		goto disable_clk;
 	}
 
 	/* Define our master */
@@ -393,7 +393,7 @@ static int sifive_spi_probe(struct platform_device *pdev)
 			       dev_name(&pdev->dev), spi);
 	if (ret) {
 		dev_err(&pdev->dev, "Unable to bind to interrupt\n");
-		goto put_master;
+		goto disable_clk;
 	}
 
 	dev_info(&pdev->dev, "mapped; irq=%d, cs=%d\n",
@@ -402,11 +402,13 @@ static int sifive_spi_probe(struct platform_device *pdev)
 	ret = devm_spi_register_master(&pdev->dev, master);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "spi_register_master failed\n");
-		goto put_master;
+		goto disable_clk;
 	}
 
 	return 0;
 
+disable_clk:
+	clk_disable_unprepare(spi->clk);
 put_master:
 	spi_master_put(master);
 
@@ -420,6 +422,7 @@ static int sifive_spi_remove(struct platform_device *pdev)
 
 	/* Disable all the interrupts just in case */
 	sifive_spi_write(spi, SIFIVE_SPI_REG_IE, 0);
+	clk_disable_unprepare(spi->clk);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
