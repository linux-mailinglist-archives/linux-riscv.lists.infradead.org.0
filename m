Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D1112F3CC
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Jan 2020 05:14:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fZnzEye4mDUndjZtkD5HwLujVqlcczl4F5lMO8haL74=; b=JAcJg6sUODDFBhiLhFcWbwD5V
	5kaBu2xdKbJ/MmqDJqZylK+2+7ItVFoGSotk+DJVWchJYQ0nHPv5jpiuvc/o4GLststsUmDW8Enpm
	gxSfvNrMnHpl1AZr5KhfTLiVnXWrMEO3SsipF0Oo9r40Bw1LY+HFKh02js9fGuPyn2X/O2qiGyeln
	opiTz9WfHhEse+Npit+ZJvgx9Hd/m1VBtC3sJKZf1uwxfaldgrAqb/J6OEE//1Jo9qe5jRGRCzYoY
	k36CRk1XyTNWtZ1HDnEU9KAd9Pk8S5a6vmgyNCGEbhvtJ27/f+yP/SgTwDTOW2b0ZXSVZUqcZ9uqB
	qU16qB8bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inELc-0002bM-KE; Fri, 03 Jan 2020 04:14:04 +0000
Received: from mail-bn8nam11on2061.outbound.protection.outlook.com
 ([40.107.236.61] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inELY-0002Zd-Tg
 for linux-riscv@lists.infradead.org; Fri, 03 Jan 2020 04:14:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WIhLCk/r9h3KrF+4yLXhDnPwY7pFEoPwfBSXiUPHceta582u2VKljg6M1u4t4bmacQXjnfc+8lep4avuNFHV4Ex76iWkdu6RsplcFNBhvslk6mOOxRrPFhb/r7D1bmWul1Y6KYGErOjmY4X/pO487OETicj15FuBaOrHrGbVWWBc4ej2HmynsRaTiEqlvSn0P6Wirh/6FUl0mAkZqfVSjWg8W5YQczWPBSQYORPM0KYD+7kQyksW781knKUXDiHLw2f4iINbMmc3dgXwSfGCB7JH4wTb0BzDR2uMtLFIoShxW9pjZxz4K3iViNK7za/NbCnVeCK7gKKq53QhGH+78A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fZnzEye4mDUndjZtkD5HwLujVqlcczl4F5lMO8haL74=;
 b=QRZknZv5Q0kyfOKRdOJHjdl+vlP3otDZ5U2BjVHX35V1Wetf+Su+BYPWp4FRKu9thaUmfxDk2oVZOqokzy+8v2h6PfXAiE1LyCfHzuAOKWQkbk7bK5EvuoYm7ClK8OzmCay1TyGz/2U23tETiGH5BZ0WXPiHSazvLgmJXSQ1Sa1aN5wOi5RMUCIcK2O+ZMkOd0ruK9gOYLDeQba/gg4KpVolofaKugtIrtMCeBN38en5m4Cpe329B11o5Senl5iIqtzfagNvVT6Z5PS7B3pMTsoV16hJQgO7bhcNEZEWi6M6xd/4lYM4GFIm7Hjtoz71tTpB9lhnwpSDQ9kZJISSfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fZnzEye4mDUndjZtkD5HwLujVqlcczl4F5lMO8haL74=;
 b=FsdfYR4Co+hyTCYfie8YMp4jfDkt2PLKi+B/eDb1VVruEy2NOumOqvVpUZ19UBbM62oawVidUyf5TjEFDJgXiYi48+br0ZaZuK53f7C/x9VAgSz4QQ8GUNqLz51k6JkZ+SRW0t5NjFh7/nduzx/age9avCwdyzLU2lCg1CvUtY4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3799.namprd13.prod.outlook.com (20.180.12.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.4; Fri, 3 Jan 2020 04:13:58 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 04:13:58 +0000
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, paul.walmsley@sifive.com,
 palmer@dabbelt.com
Subject: [PATCH v2 2/2] riscv: cacheinfo: Add support to determine no. of L2
 cache way enabled
Date: Fri,  3 Jan 2020 09:43:21 +0530
Message-Id: <1578024801-39039-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
References: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BM1PR0101CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::29) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR0101CA0043.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:1a::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2602.12 via Frontend
 Transport; Fri, 3 Jan 2020 04:13:54 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56f3fe2c-9d14-4168-6fc7-08d790035b4b
X-MS-TrafficTypeDiagnostic: CH2PR13MB3799:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB379937E117ED4C2B320ADF2C8C230@CH2PR13MB3799.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0271483E06
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(39840400004)(346002)(396003)(366004)(376002)(136003)(189003)(199004)(6666004)(36756003)(1006002)(66946007)(66476007)(66556008)(107886003)(44832011)(52116002)(7416002)(4326008)(2906002)(6506007)(86362001)(81156014)(81166006)(8936002)(6486002)(2616005)(26005)(8676002)(16526019)(186003)(478600001)(316002)(6512007)(956004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3799;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b88KAMvOpL755393EADJczhZy8TAJpSv4vUrKsJa/9HoVe1A7VvA9D+192gwY3tBK69KyE9j8rT6T/l9xFL2UDPncKrdXgnWgWqsJFuIc2EnfyZYQ4Lj1/xqV9IhBCfD8Vno69Hg/YHXATr2K/3f/aYBtpDr29P+LOlfFUUsfye5wTz+6BYkRHyPrhyN37ZZd4252L9fo1n+cc9e0u9wdu3cWUG1Hy4ijFQuDaZL7Z2N9zUIvDAXQGbOzCXs+C/5S5P+b7tD9BmB583u0FhGqaWLBMxAml8Tz97KJ7D1nbJDFQ4aKVoTUYMHbWSZb5DlHsv+l9xhvDlPnY6OzTlGxN6MMh+rzUvGRyl/fXxvQM3rI7G7lDDUSKFDA1VXjyyol2VXOuJRCxBv4q0n7KvqGbT4xgd9UN2KARabyFWG7CfAn3/qmN80TXnFlrGBEiKM
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f3fe2c-9d14-4168-6fc7-08d790035b4b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2020 04:13:58.8635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wtecBjbv1HI++3ZHvdV98HS6ZxvFBMhgis+OP4x2XeE79T+Ww6n8AeuK+b5I/p4ZDGrWhRKWys2/mjmcqPqr8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_201400_960838_B70A1CD7 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, sachin.ghadi@sifive.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, green.wan@sifive.com,
 alexios.zavras@intel.com, Yash Shah <yash.shah@sifive.com>, bp@suse.de,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In order to determine the number of L2 cache ways enabled at runtime,
implement a private attribute using cache_get_priv_group() in cacheinfo
framework. Reading this attribute ("number_of_ways_enabled") will return
the number of enabled L2 cache ways at runtime.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/include/asm/sifive_l2_cache.h |  2 ++
 arch/riscv/kernel/cacheinfo.c            | 31 +++++++++++++++++++++++++++++++
 drivers/soc/sifive/sifive_l2_cache.c     |  5 +++++
 3 files changed, 38 insertions(+)

diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
index 04f6748..217a42f 100644
--- a/arch/riscv/include/asm/sifive_l2_cache.h
+++ b/arch/riscv/include/asm/sifive_l2_cache.h
@@ -10,6 +10,8 @@
 extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
 extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
 
+int sifive_l2_largest_wayenabled(void);
+
 #define SIFIVE_L2_ERR_TYPE_CE 0
 #define SIFIVE_L2_ERR_TYPE_UE 1
 
diff --git a/arch/riscv/kernel/cacheinfo.c b/arch/riscv/kernel/cacheinfo.c
index 4c90c07..29bdb21 100644
--- a/arch/riscv/kernel/cacheinfo.c
+++ b/arch/riscv/kernel/cacheinfo.c
@@ -7,6 +7,7 @@
 #include <linux/cpu.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <asm/sifive_l2_cache.h>
 
 static void ci_leaf_init(struct cacheinfo *this_leaf,
 			 struct device_node *node,
@@ -16,6 +17,36 @@ static void ci_leaf_init(struct cacheinfo *this_leaf,
 	this_leaf->type = type;
 }
 
+#ifdef CONFIG_SIFIVE_L2
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
+const struct attribute_group *
+cache_get_priv_group(struct cacheinfo *this_leaf)
+{
+	/* We want to use private group for L2 cache only */
+	if (this_leaf->level == 2)
+		return &priv_attr_group;
+	else
+		return NULL;
+}
+#endif /* CONFIG_SIFIVE_L2 */
+
 static int __init_cache_level(unsigned int cpu)
 {
 	struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index a9ffff3..f1a5f2c 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -107,6 +107,11 @@ int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
 }
 EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
 
+int sifive_l2_largest_wayenabled(void)
+{
+	return readl(l2_base + SIFIVE_L2_WAYENABLE);
+}
+
 static irqreturn_t l2_int_handler(int irq, void *device)
 {
 	unsigned int add_h, add_l;
-- 
2.7.4


