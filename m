Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F0E138BE4
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Jan 2020 07:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eQtPDRbFbaih1fOsfTcYkS+ik74owJbwd6ks6yKbmKw=; b=GKTmq1P1M20w9Fo5yRaesPCpC
	4nj3laGcdLSSOEjs/pRnTxRkcasXCZeAFaIn12F7SuqINh5W9mhqiIp0j1tz7r31jsp3fHJjTlAfa
	6FdeVBPXaBo6MgULCW5rLhaI/qJXi8sL87gHMdn+41ucPPnFZk+gNlq4jiEcb91IDWN4uz8qZawKY
	JetWmHFAZmt5J/AYlWIHYO2kjq7KhlcJknFvRfh7wxVoEIOE/pwclzQ7wtB9C5Gz2YYVjiYbEB4yW
	fSNUNbhRrGGvD6O+LxVjSrG+akrmVUeGR9ZipQg6QRja9sKqhaUxnEBCCLANxGmcbaiu7ifegQo+b
	WquguvSIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtNa-0002vE-JI; Mon, 13 Jan 2020 06:39:14 +0000
Received: from mail-co1nam11on2041.outbound.protection.outlook.com
 ([40.107.220.41] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtNW-0002tw-Pt
 for linux-riscv@lists.infradead.org; Mon, 13 Jan 2020 06:39:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYSa+uhpi2NxRcnUCQDmDbBBPnvcI+cFxXQJpwKyFA4wXJmJvdFi160UqBVbbOtXJLaGhUSYdfbubnCxF6pNpOajsygcXhThcgkNnxmbnIv8AKNbhbXAUxc00CmJ/UwnrL5T4KwxRuI8yJVLP+e9a4UdZZPd3ZNaZuhSF0jfn0sJbmPL5eR/syZz+3F+B1053miNLP8Tid6JkFPIqrUcQ7W5tshHlFdMbMvdUq5/sZJGYq8Dj0UZ2A9U2Yy3V08iMuMzjw8kcCbTlDcezb7LDH8GU6dBh+9OZYmq6o8rjxzr0rKfgUG2Wt22oi4A4ECr38Vvr3tDmqaiqLm0LEPDvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQtPDRbFbaih1fOsfTcYkS+ik74owJbwd6ks6yKbmKw=;
 b=FgnCdj41P1lqi3zMi0iOZZEIQSPz48mIHFDYyPQUTeTfwZqRX1eJvmTpn/EkRGxl4V05VL4Y+7Y37K4jTwshTXE7H2VttTYnqCN0v4O35X6G6QpxOxksIhuyIgcw1SWReHeu/CJEUjJpLJjyhzuOcUDm9gpNffvoSOrjxLOSd6S18laDz4+WpsO0YrZUef2ZYyDO1OeRJc+tSn/0fJi3UoiwAhI406rKiNjz+rJb8N8sePcx+sGFrYnzEL+/p6RUA2/n7bGKlC+50Wls2//b2nfCslFZc2tzx2pR+l0/qLQJ873cK0+R3XWefDcMfn/WFWD+iAf+PeX5kd7WAp2EVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQtPDRbFbaih1fOsfTcYkS+ik74owJbwd6ks6yKbmKw=;
 b=YxutbpvqvJSoJZzCWAb9Yq6LhKHKoEkGnKvUo6tE88U5IYCFS/jJQqEQk0O5drh8wu5XOnLMG3XJUqY3FRU2MeA485n3xk/AacBihzX95ZZPrkvD2my2tUhzTOZesnWKjOMOwaQQhLVe8CsiS0Nds2O6dBeFN6OA+CEySTKds9c=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3317.namprd13.prod.outlook.com (52.132.246.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6; Mon, 13 Jan 2020 06:39:09 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2644.015; Mon, 13 Jan 2020
 06:39:09 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v3 2/2] riscv: Add support to determine no. of L2 cache way
 enabled
Date: Mon, 13 Jan 2020 12:08:20 +0530
Message-Id: <1578897500-23897-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578897500-23897-1-git-send-email-yash.shah@sifive.com>
References: <1578897500-23897-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: PN1PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:1::21) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 PN1PR01CA0081.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:1::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.11 via Frontend Transport; Mon, 13 Jan 2020 06:39:05 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40a152fb-4669-4d52-bb4a-08d797f34b0f
X-MS-TrafficTypeDiagnostic: CH2PR13MB3317:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3317E1707176001BB74255F98C350@CH2PR13MB3317.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 028166BF91
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(39830400003)(136003)(346002)(189003)(199004)(66476007)(2906002)(6506007)(66556008)(66946007)(26005)(186003)(16526019)(44832011)(5660300002)(2616005)(956004)(86362001)(8936002)(36756003)(52116002)(7416002)(4326008)(6666004)(6486002)(81166006)(6512007)(316002)(8676002)(81156014)(478600001)(107886003)(1006002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3317;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2U6fIBz93qIdgznRq6c73N8PQPnEeRH5nsz/7JYTEd4unp2+MhJo3Osss8rJdBHdTXJlksfY7XXzB8M0IuhYcs+W3aA2U+VqpL1EWDHWq0ak9IXFWAdpUpbTP0Vsmx7lG0rJUoGHOwcery7A0x+289Div8TzO58kvFUME4OsHfjVDKz6+4Y1BVm0D20EnHXf7O8WYxhs4QAzAMXvF8UEh5/i8EB9HNHWkrMGzDgBlxI6m7egI+Fd3T7EtuLafKdRj/H4i9fTzwmEcO5z1drqkTBL4ZMbt/TBA6Flf5mL882Y+EK0j1CDJ1h+ZwAGr2nYKzBijcSrbZZBDJLZjJeEIIn+F+ANjOGORt25axTib+M7nafXDgu+qY/6QMLNHC3HqWdV50fXM02ib+De8LcbC5WYLo3qMoS9NzkKB8hBk6rt5FvcpjbuStFhydPLzBIO
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a152fb-4669-4d52-bb4a-08d797f34b0f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2020 06:39:09.0842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2onyMJ6jSSEqFEILKpw6z81Pu9yCtvnQT0dnK1fprTk0YoqIvdjKEVQ8Zy8ap5VaYbOd4sf+MHZGgs5/8I1j6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_223910_857215_B2F73C4E 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aou@eecs.berkeley.edu, sachin.ghadi@sifive.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 Yash Shah <yash.shah@sifive.com>, anup@brainfault.org, tglx@linutronix.de,
 bp@suse.de, linux-riscv@lists.infradead.org, allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In order to determine the number of L2 cache ways enabled at runtime,
implement a private attribute ("number_of_ways_enabled"). Reading this
attribute returns the number of enabled L2 cache ways at runtime.

Using riscv_set_cacheinfo_ops() hook a custom function, that returns
this private attribute, to the generic ops structure which is used by
cache_get_priv_group() in cacheinfo framework.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/soc/sifive/sifive_l2_cache.c | 38 ++++++++++++++++++++++++++++++++++++
 include/soc/sifive/sifive_l2_cache.h |  2 ++
 2 files changed, 40 insertions(+)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index a506939..8741885 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -9,6 +9,8 @@
 #include <linux/interrupt.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
+#include <linux/device.h>
+#include <asm/cacheinfo.h>
 #include <soc/sifive/sifive_l2_cache.h>
 
 #define SIFIVE_L2_DIRECCFIX_LOW 0x100
@@ -31,6 +33,7 @@
 
 static void __iomem *l2_base;
 static int g_irq[SIFIVE_L2_MAX_ECCINTR];
+static struct riscv_cacheinfo_ops l2_cache_ops;
 
 enum {
 	DIR_CORR = 0,
@@ -107,6 +110,38 @@ int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
 }
 EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
 
+int sifive_l2_largest_wayenabled(void)
+{
+	return readl(l2_base + SIFIVE_L2_WAYENABLE);
+}
+
+static ssize_t number_of_ways_enabled_show(struct device *dev,
+					   struct device_attribute *attr,
+					   char *buf)
+{
+	return sprintf(buf, "%u\n", sifive_l2_largest_wayenabled());
+}
+
+static DEVICE_ATTR_RO(number_of_ways_enabled);
+
+static struct attribute *priv_attrs[] = {
+	&dev_attr_number_of_ways_enabled.attr,
+	NULL,
+};
+
+static const struct attribute_group priv_attr_group = {
+	.attrs = priv_attrs,
+};
+
+const struct attribute_group *l2_get_priv_group(struct cacheinfo *this_leaf)
+{
+	/* We want to use private group for L2 cache only */
+	if (this_leaf->level == 2)
+		return &priv_attr_group;
+	else
+		return NULL;
+}
+
 static irqreturn_t l2_int_handler(int irq, void *device)
 {
 	unsigned int add_h, add_l;
@@ -170,6 +205,9 @@ static int __init sifive_l2_init(void)
 
 	l2_config_read();
 
+	l2_cache_ops.get_priv_group = l2_get_priv_group;
+	riscv_set_cacheinfo_ops(&l2_cache_ops);
+
 #ifdef CONFIG_DEBUG_FS
 	setup_sifive_debug();
 #endif
diff --git a/include/soc/sifive/sifive_l2_cache.h b/include/soc/sifive/sifive_l2_cache.h
index 92ade10..55feff5 100644
--- a/include/soc/sifive/sifive_l2_cache.h
+++ b/include/soc/sifive/sifive_l2_cache.h
@@ -10,6 +10,8 @@
 extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
 extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
 
+int sifive_l2_largest_wayenabled(void);
+
 #define SIFIVE_L2_ERR_TYPE_CE 0
 #define SIFIVE_L2_ERR_TYPE_UE 1
 
-- 
2.7.4


