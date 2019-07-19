Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B90C26E4C2
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 13:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F1/DiiMIQBdpt53tAVxM8xzcCRf3n01j4388ULNxrF4=; b=kz8xJII1Q8uNx4vBfKo+nxS+ra
	NhJPcmm6h8VhUN5xlZX8qweZ0RjfidRiq94UmQHRm73ianKb7lGgqgNHLVRaFLcVh0cgqgiJvbdqX
	aBOPaWD10nO9y6aciHk/2q4BRui+0t0fl8oebJj0gz9MhzcnyqiFdvd1VqpZQuXuRHEbloGDlOlbb
	jYx6aiqSS9C4DRHqLi6CfAjotyQE0RYvdA4H/ca9D8d5SyRfivJ4S5p4UQ5dot3cOChfsMMguI6ZC
	4wW9xGu5linnrvkMiU+4HeAOsqmYDdFWC0IHqTq1REgOxNO2LPeEqhLr3wznnoV7mndFqbBJ05cJp
	/nZGcdRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQnB-00059Q-V5; Fri, 19 Jul 2019 11:11:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQn7-00058l-QR
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 11:11:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so8101246pgc.1
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jul 2019 04:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2LpUwCj6ex4EuWz7pYkskzS9o+TUIY6ouJ6SDTvkm7g=;
 b=KNJ5AgUP+nhPQ0XA7JUBTUfni+1LDf7ptqmqWjY4nHFvVJPbmRnXMaTt/uMUXACEhr
 /cDC9w7z4WcGkB+Wp1lxULdRT+MX3mCZD3zopQaSaPBccY9CGUqu0Qc8bPHmPOAIM+EM
 2D3ApY6uxLfR5xv3LQt/vSWubpw8VMEv7/gSg7gNLGZIZhQG4qVeDjG7atcT2M+6SuXq
 RE9wro+b9iZLBNbloz4S6nGLPJRhsGheB7E2fMFI49EqLaybFhE3IXsRSoge9BRnWbYv
 7T404jj5YKtXvD3EyjyRefxifVbXztSZvgM1z0uT3YhkpXUqyoZ8CDv7I5vY1vjTR8Fc
 NWbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2LpUwCj6ex4EuWz7pYkskzS9o+TUIY6ouJ6SDTvkm7g=;
 b=QWxW2wRtwl9QPe9WK/tOW2bzG1AUf02ZhRVcgpbucwNnDgXxAeVBVMKRft5BqrdenU
 5HFw1ak9xYRwXzZvwJVrj55AtU9dVU7sKy3sqUA65wkUNbvNyGI14A5UqiEqabFz2TF3
 hDNZtJEIekpK1VMKeLgd7onGzqU3irSI6cH5HQjGxeN7mFSSD1vSqI8Bokp+xfJo+S/L
 l9+VGl+vk5oYtFXYOF5Pmqs43KmaEEmpkzoduSLQdqDcPh1Yr41sv5tz2z8cnY/cOthI
 EnTsH5fSwBg9eaoB40OGnW+H0QsUmXOLE6NA48io1MDSp8tF4ICfHDNUwVCXACqA2HeY
 EmmA==
X-Gm-Message-State: APjAAAX6g23L/PpbtTMpQyYXYQfe753VPOEPBmaJ0c2eGFNyH/utBBrS
 nA7FFa+JGPHtCCznLBcRpqQDfQ==
X-Google-Smtp-Source: APXvYqxYl9DggRwywYgz894WYfruJqLA9GZZwTOMXKLsPkulca1u7VdoxE+L79pLVGQQ0g6uCpIRsQ==
X-Received: by 2002:a63:2b0c:: with SMTP id r12mr53596123pgr.206.1563534668955; 
 Fri, 19 Jul 2019 04:11:08 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id i9sm10196872pgg.38.2019.07.19.04.11.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 04:11:08 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, robh+dt@kernel.org, paul.walmsley@sifive.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH 2/3] macb: Update compatibility string for SiFive FU540-C000
Date: Fri, 19 Jul 2019 16:40:30 +0530
Message-Id: <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_041109_860561_BA717FF9 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update the compatibility string for SiFive FU540-C000 as per the new
string updated in the binding doc.
Reference: https://lkml.org/lkml/2019/7/17/200

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 15d0737..305371c 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4112,7 +4112,7 @@ static int fu540_c000_init(struct platform_device *pdev)
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
