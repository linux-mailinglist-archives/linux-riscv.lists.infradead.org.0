Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8239914AEEF
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 06:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aLvwF4MZHjfJl3MTx+48LRPrq2rycKZfEQWZnqCcbfc=; b=o1H
	DE3H7eWxcnbC/2SjISZ7flZo8BFoPicvI9j7nZ4HTuseVrOUoTlNIYoCswWpBihteLRINnqg6OTe9
	SUXxV6Z/gjc72bYCXvR54C45FKx09l0jX0xVOXZmO0D+g3qOEHKuZPPplar7jEujPLkYGE0I7NzdF
	QzJ6bWQ9Asnn8Y35YmO9VNiR+DGzNlQSui+l0c3+14iMYrEK30JhXSiKzVeBs3svkTVbIIITXxutr
	V0AfwiKXynM2WBrJs+g7pGRUXXG7jjxBaanpWjTglUQCfr4Cyp2B1iOfPgt7NdEBZ9GI+GSU550zm
	T46nF/2TLjKHWpvE0OVcZN1UPc+gD5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJMt-0000PE-9a; Tue, 28 Jan 2020 05:24:55 +0000
Received: from mail-dm6nam10on2089.outbound.protection.outlook.com
 ([40.107.93.89] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJMp-0000Ow-15
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 05:24:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VpOZznjheobWGllyKl2FNZXEX6ocZZ5i5AZNcln1BkExE9ljH5qmM5kYSyDqi5Q96E74mS+zTCO0xbXeeE/dQRXslRdWwfVZOx4xJnBfJkIDpToC1Y6lgnoiyKbC5niC8ehnPb6bdsmS6H6qqL68e19HI9xQTlySlq4vgKWjble+MvT5z84sa3c97s84mqv2ZFpAtyprZy8lwtZTLoy4MSfMT8tm0fYkQF0c2t147b61szLMYTJTjuxGxTPjw9NXkmepU+mnxS7+LXMWQsYMgnFOhJNUx6sNRuT5ua+9tK+1dMaobdWjJdGidMxAjAg7/DpCBO9q6ndQLB7AE1unhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aLvwF4MZHjfJl3MTx+48LRPrq2rycKZfEQWZnqCcbfc=;
 b=ezJkpYP69cfmhDbObg3h4j4aFYUO8pRcjfo/cwzQnEgGkcRzQ06sXFtN0+gi8jwX4IQHB2+F07KbSrfwkJJQYekVXI6w0HhS5LD+XSnsoEihW9AjV5Y/F5jjowPBspiTnBPeVqZzjjR2meFdoSBeQDE9YB1+2Uy5//Iv6ni4xLWVKU3oqNN2SsP+GsH+GHuFpZJlAElEGZZWZe+pJE5O3e6vSpl7pQMB56n6MBFTa68euTzEgE9tRw0G1O8z3e92OW80fWxkD9buD+gtWUMXc9dtP0Z2Esc59GCMwAPwIiyyAZXAd/3fzMNUdhMrfjN29w0nFc5G0BvOWvYjTQbHjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aLvwF4MZHjfJl3MTx+48LRPrq2rycKZfEQWZnqCcbfc=;
 b=R2xwrCFtHSlPb3xBdgzTY7VgjK2mDsx3c4aVcLYwOp+l+DUVJCOIjeGMIkVH+ZOdV8JCRG/T4FKi4U6ygQ4pcHPV5VkDU11gPg5Z6HnoDK0LvIwjIxuBqDHPXTohSZtI6GucUnTc3E/9KufM/f/6ucGc4+rpjBu0/xqMx9LNElc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3592.namprd13.prod.outlook.com (52.132.246.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.10; Tue, 28 Jan 2020 05:24:44 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2686.019; Tue, 28 Jan 2020
 05:24:44 +0000
From: Yash Shah <yash.shah@sifive.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com
Subject: [PATCH] gpio/sifive: fix static checker warning
Date: Tue, 28 Jan 2020 10:54:21 +0530
Message-Id: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SG2PR01CA0107.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::33) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from osubuntu003.open-silicon.com (159.117.144.156) by
 SG2PR01CA0107.apcprd01.prod.exchangelabs.com (2603:1096:3:15::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.20 via Frontend
 Transport; Tue, 28 Jan 2020 05:24:40 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [159.117.144.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cbfd3523-c66f-4e50-722a-08d7a3b2621f
X-MS-TrafficTypeDiagnostic: CH2PR13MB3592:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3592940038BD9CB8AD1837178C0A0@CH2PR13MB3592.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 029651C7A1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(366004)(396003)(39850400004)(346002)(199004)(189003)(6512007)(6636002)(44832011)(2616005)(2906002)(26005)(6666004)(6506007)(956004)(5660300002)(186003)(16526019)(6486002)(36756003)(316002)(8936002)(86362001)(52116002)(81166006)(81156014)(66556008)(66476007)(107886003)(66946007)(4326008)(8676002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3592;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DRU1csd8YWk7aHTLxkgJ9PlechIahme5Xro76KXkEU5DQ6XZcQsx1QMv7Xhanl8CK64GPveIf+Ie23bDYWqWFbhL+bL5vEFzQ/MXM5Jzx9DUy7h9bp840LAs2xlGSrVcvrwBaxC2CdnXRAu6RPTDxCSE4uR9je8ZigKy8oQx+8l0LZemUaKYx0S82VED873e9APDVOeQ2Hf5Pfj4o8QmYu3+UqIiAW8jVMAaX6Q5YbRyN57SZiKMLWoURKPUCU0bTRFPJzAyb/5/NOr4LkoV/Jq6HfWvG3p4/FVSORJbreuGPMsp+gBraF9zD1m8Vam2fhWxVdaXmEk3CDXxE27/AF5ugrtU5IPUcTWaMZqeqa+plM/YDkvL5CoxzEZxxHDtsM5HHi7Hvaa/DkTds888fWImwKHi9moPbkapqAhbZGTVXj8+weU3h1Kg1ZPkzKS4
X-MS-Exchange-AntiSpam-MessageData: C6fp+cuD8yVezJrGVrs34IGfv/l67XDx2uXKJn7SdWlJwLjbN7rkO+aAj899dna7uf1Ct5sPLbb4yM8qbvJkFKOtpHiKXCUmQ0ojJpHGO6S9EEYWRaf6zVrTCOxkwVGBG2NRX+8k22ZP9OKk/f24Fg==
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbfd3523-c66f-4e50-722a-08d7a3b2621f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2020 05:24:44.4517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ROz5AnFn5ozONxnzSmCF7P6N7FNVwUC9EeDW3PnH4h5QSRkjYcKjK8z3LtmKaw5he2bfAXGj3M9HsFd/Vy8nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3592
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_212451_140831_870B6B28 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: atish.patra@wdc.com, wesley@sifive.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Yash Shah <yash.shah@sifive.com>,
 sachin.ghadi@sifive.com, maz@kernel.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Typcasting "irq_state" leads to the below static checker warning:
The fix is to declare "irq_state" as unsigned long instead of u32.

	drivers/gpio/gpio-sifive.c:97 sifive_gpio_irq_enable()
	warn: passing casted pointer '&chip->irq_state' to
	'assign_bit()' 32 vs 64.

Fixes: 96868dce644d ("gpio/sifive: Add GPIO driver for SiFive SoCs")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/gpio/gpio-sifive.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index 147a1bd..c54dd08 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -35,7 +35,7 @@ struct sifive_gpio {
 	void __iomem		*base;
 	struct gpio_chip	gc;
 	struct regmap		*regs;
-	u32			irq_state;
+	unsigned long		irq_state;
 	unsigned int		trigger[SIFIVE_GPIO_MAX];
 	unsigned int		irq_parent[SIFIVE_GPIO_MAX];
 };
@@ -94,7 +94,7 @@ static void sifive_gpio_irq_enable(struct irq_data *d)
 	spin_unlock_irqrestore(&gc->bgpio_lock, flags);
 
 	/* Enable interrupts */
-	assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
+	assign_bit(offset, &chip->irq_state, 1);
 	sifive_gpio_set_ie(chip, offset);
 }
 
@@ -104,7 +104,7 @@ static void sifive_gpio_irq_disable(struct irq_data *d)
 	struct sifive_gpio *chip = gpiochip_get_data(gc);
 	int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
 
-	assign_bit(offset, (unsigned long *)&chip->irq_state, 0);
+	assign_bit(offset, &chip->irq_state, 0);
 	sifive_gpio_set_ie(chip, offset);
 	irq_chip_disable_parent(d);
 }
-- 
2.7.4


