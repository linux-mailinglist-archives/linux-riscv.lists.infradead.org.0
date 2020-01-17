Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9469B14048B
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 08:44:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yY7dT9Uu4EIpwCcoMVNkJiqk6krljwcG6BPRo9t5UC4=; b=WNaM6C9keX1UFd4AKos2MoBFj
	qWcc8/CeK8eaOBSl8uxPjMY480zD9EerBDYm64vir+9aUru8fEJSBVXgBylo4ljJQFVwX9/HCQx7a
	CfH69tpI2xkcvfGJ47kw+RS0P6NmlOYySOVsWCw1bO/7zhTHNLhMSDq8Xxh07kF0pdp2FD4qPQK3U
	sHTiEVdd+uoe8KoJWKl+ZEPyq6ugTVyj/u9xafApuFd5UHCqs0Kx4NO4LsZDzJUw2XXdDP2p3p50j
	xqiTBZuXSyBfjj0fQdJLPMQrEEdNVKQwbey+2KOM0DZV98xaXONzZn4DQxR6B6UVohJuZsY0Hq5N2
	fvbOEDmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMIj-0008JW-7I; Fri, 17 Jan 2020 07:44:17 +0000
Received: from mail-dm6nam11on2046.outbound.protection.outlook.com
 ([40.107.223.46] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMIe-0008Gw-PX
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 07:44:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hn/GXslAc/iyvvOXk1DFl6FX+mp42fXmtHQbwK+BiCia+2ztuIdpC/SCeG8wp1wgADQy9zKTWwk88j64I6bEaKcSfMoVXuiBGYkgklYP32Ewl5syPk5cwCemcumFc4v1Slbe9vuAAn8XKN6X5hxlPUiIr8ATssCslMnSnfmAixbdzZMIKftLLgdh4jr/nqoZRO2dfaoVQH8dcDNE1pg1R+KnmUPRA+DSgf103f05J2SWBy8qsBttgrDSg+VRDbGpXMeWo3Z8MxwtAG6p7lk8xNdMHm2YC6XgA/GiHoU3dmoXvToz96wE47fpCYiI9/FENFG3nMweR79BtgbxJx9wKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yY7dT9Uu4EIpwCcoMVNkJiqk6krljwcG6BPRo9t5UC4=;
 b=nCPrludUZhAqOWdsJaqakflSgAm4pW86Mk3sz1LRYrn7osbkO1FlyocCNq2pycApPIMiN2CKajNSoubXpZo6eYVTCS3oEbxaJ3vGvukZ4YYK/nwj1lQ/B/Q41T+ynJ/sQfpiNdRA6NVovTuypnJYkHTMsUUgWXUqECH2zL+I9NhPDbJoCu9MBDFXFwnpOGBjIbY3lotPJwIUibR14A5jpf6xcgNVnfPJ8zdEiIXPeFx8mTRLtOjrK6QCZnAi3JFMswR51ErHPjIY0C32HOw/BFo5cMnNsxYuKMTp7ndivtGMJGdb464RZ7nYMPIy2W8av2njHKe/JHvgMsJRlqTslw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yY7dT9Uu4EIpwCcoMVNkJiqk6krljwcG6BPRo9t5UC4=;
 b=mW6lK9uejF2pz0n6Q+WOGYkT53ZmV7XpGj9PgP7aWJqNsMXOTzs1NsdqfMaBlI5eD9XaG6wKZJkd+YKPO6Thz4aUEE5yZDoEqavTolHQQr3lKvtPZggBOj5D+y4K6AmmeZLeFP0iwEj27lHaWffjXehZw7Xyk2Nju7RAQg6R+NY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3765.namprd13.prod.outlook.com (20.180.15.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6; Fri, 17 Jan 2020 07:44:08 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2644.021; Fri, 17 Jan 2020
 07:44:08 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v4 1/2] riscv: cacheinfo: Implement cache_get_priv_group with
 a generic ops structure
Date: Fri, 17 Jan 2020 13:13:37 +0530
Message-Id: <1579247018-6720-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579247018-6720-1-git-send-email-yash.shah@sifive.com>
References: <1579247018-6720-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BM1PR0101CA0056.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::18) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR0101CA0056.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:19::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2644.19 via Frontend
 Transport; Fri, 17 Jan 2020 07:44:04 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77398771-fe30-42b8-2c80-08d79b2108ca
X-MS-TrafficTypeDiagnostic: CH2PR13MB3765:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3765F002E5F7321D3EE1F5BB8C310@CH2PR13MB3765.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0285201563
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(39850400004)(366004)(396003)(376002)(189003)(199004)(6512007)(2616005)(107886003)(316002)(956004)(5660300002)(52116002)(36756003)(16526019)(1006002)(6666004)(26005)(66476007)(66946007)(66556008)(186003)(6486002)(86362001)(8936002)(6506007)(44832011)(8676002)(81156014)(81166006)(4326008)(478600001)(7416002)(2906002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3765;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QczVaYO2FIVaPbRRINN0oxy1XhfhN5JYMejIbDTkKDCZTW0vtOnifvUSNX4kYe1YAO+NXSbLeYRIko1q2XAVqw8C/x6wNoI6SVCcOb9+bi3ISji3KGs48weK10fVdtqOS02pmTrRjTsUHRrCCAFmIN/Nm0aEtlNDAvyHxD5hWtrsYdCEt0x3rAJGuzgP8CoPPsIsVJdVRjIZaloGcQlD4w95pP4bHmLC4zDFOxN2UvLEpeeyFCPHtrhrRZiQw3AvByo4klc0c6NqIgFr7mFpyOycPlRaUwS7wadPHav2PjpUOWZoN7gTxdUWjnGUYqUQM8bhuZb1qDq1DPWxrN6NLFL9tZWbveMNX6nzayeia4sX56HmiV7RfZTGcD9tU4iM2Xu7a9vkgHRvR9d1y9cy3EUlHbuFNtd164ssgjLZZy/QPU32Tv4TtNRdRnw794dICC7z8DkmyGKikoqy0FjJrBaSHMVThHhNky9iKYn2OTI=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77398771-fe30-42b8-2c80-08d79b2108ca
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2020 07:44:08.1557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ywxWHEW4GKCSgyWSsVW1wo0p7C91cjGap/iPI1QeSZLzp2i0Mvi9wdu7OpIv9GAEIO0hU3bd7qj9KO2P3DPBYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_234412_835838_351BA48D 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Implement cache_get_priv_group() that will make use of a generic ops
structure to return a private attribute group for custom cache info.

Using riscv_set_cacheinfo_ops() users can hook their own custom function
to return the private attribute group for cacheinfo. In future we can
add more ops to this generic ops structure for SOC specific cacheinfo.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/cacheinfo.h | 15 +++++++++++++++
 arch/riscv/kernel/cacheinfo.c      | 17 +++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 arch/riscv/include/asm/cacheinfo.h

diff --git a/arch/riscv/include/asm/cacheinfo.h b/arch/riscv/include/asm/cacheinfo.h
new file mode 100644
index 0000000..5d9662e
--- /dev/null
+++ b/arch/riscv/include/asm/cacheinfo.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _ASM_RISCV_CACHEINFO_H
+#define _ASM_RISCV_CACHEINFO_H
+
+#include <linux/cacheinfo.h>
+
+struct riscv_cacheinfo_ops {
+	const struct attribute_group * (*get_priv_group)(struct cacheinfo
+							*this_leaf);
+};
+
+void riscv_set_cacheinfo_ops(struct riscv_cacheinfo_ops *ops);
+
+#endif /* _ASM_RISCV_CACHEINFO_H */
diff --git a/arch/riscv/kernel/cacheinfo.c b/arch/riscv/kernel/cacheinfo.c
index 4c90c07..bd0f122 100644
--- a/arch/riscv/kernel/cacheinfo.c
+++ b/arch/riscv/kernel/cacheinfo.c
@@ -7,6 +7,23 @@
 #include <linux/cpu.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <asm/cacheinfo.h>
+
+static struct riscv_cacheinfo_ops *rv_cache_ops;
+
+void riscv_set_cacheinfo_ops(struct riscv_cacheinfo_ops *ops)
+{
+	rv_cache_ops = ops;
+}
+EXPORT_SYMBOL_GPL(riscv_set_cacheinfo_ops);
+
+const struct attribute_group *
+cache_get_priv_group(struct cacheinfo *this_leaf)
+{
+	if (rv_cache_ops && rv_cache_ops->get_priv_group)
+		return rv_cache_ops->get_priv_group(this_leaf);
+	return NULL;
+}
 
 static void ci_leaf_init(struct cacheinfo *this_leaf,
 			 struct device_node *node,
-- 
2.7.4


