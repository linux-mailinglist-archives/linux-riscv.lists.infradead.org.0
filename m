Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AA11656A5
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 06:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yY7dT9Uu4EIpwCcoMVNkJiqk6krljwcG6BPRo9t5UC4=; b=hdEuTKDiB1kY7dpo66mNYr1XO
	67AcrgoJL0/WWh4V0p+8SBcV0ZfjXyxKPvM+XhPShPRHdeVQ5AqngOf97oOuKNUKNQSOmMvJhqhKH
	pe4RQnlS4kYoXQbmAASBWIdyLL0lFbDW/Q+Bgm7X4f2QLDQdP92NOh/1D4bF+1/GsnjqjnoKG/oAX
	L/zGCySXDkK2Ewq9Zq5EX0W0B2+0MKPcf/QMCrc3qt9DoGDRh5sj5YhQ+gerbh9B4fcY7x264mCB3
	M4XzBcxU+whzxyiw0tYJUBlZiMWLCMvu8TZDYFnuakHnekZB70u7Oiuw9rNl8KQHL1S+bqARtcIu7
	CFx41uJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eBl-0006nq-VD; Thu, 20 Feb 2020 05:15:53 +0000
Received: from mail-bn8nam11on2052.outbound.protection.outlook.com
 ([40.107.236.52] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eBh-0006lQ-66
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 05:15:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYNJj9Iw9dDPyPKU2cJAS7zYFB6C99N6M90rokzQ+e33QYWCkJslwejtsfzveATOmwLVJlsPBF3beeEV3kLTXb9OF/DUh87B/lVcv3DvMQZLLAvYI7IOqiZk61Ix4wQs+iknYQwUI6NTUBrBASUb9i5k47YzPi55DYuZxtOgTTeyvTAtd201Qk19RNCrzH/8KXCArRqr037C8ewqGdAe+navg+9mUGev03SDEBO7BW9OvVEnbj4CbiHVGwoKOTw+MQY4zBIWaHmxb4bMt+dVnp1WEpekv819phtv5LhxAg4bYgFndYaMUjo780+Rm1lvkfSQEowuEZM3YXFUNjQ3aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yY7dT9Uu4EIpwCcoMVNkJiqk6krljwcG6BPRo9t5UC4=;
 b=geAeDBDNFdh+GvSD9P5j7p4uGJgowXN6IFdinP9imBqyynWMAX2meOMisDvlsii9kTeICgsCk/ipXdI0JVRgR69SylibX5rRJi0n/7Sd7cPS2upaHwU2ltj/JdNhDGEoO3UOGYivcArKQmsuySAhTOHD/RM+4+KjR8l+hhuWcdcX8s2i7SWdwdYuYCABFMXV6K/BBgdX2oLjvemluyPUlI+TItMv2QxkJs9jsgYIuYNLHyquaIcGKVDO9L3FOPwzatIaiCpIatCJYzHShhzNkk8aBxXJuNlurau+UigfAAv3ufG1/rOnSSroApQH8cVDSyVuVU4PrQGPRh0qgNmZ4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yY7dT9Uu4EIpwCcoMVNkJiqk6krljwcG6BPRo9t5UC4=;
 b=EQsjBlzziV+F4GeQRJXST24o5K3SwG+AvQfO+NGZU3NHt//9ja5uoMDSMgAwQG5h5KZtlI/SdNIsR+pBmjD0NG/Wx+cniPGLxQ89lDSCwIAd6Ziv6jMJIywbqOQCeKL7acO4aq/VnuS9/TiBZwn00ZWpNup86D3cY28F9NG9CzI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3495.namprd13.prod.outlook.com (52.132.247.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.9; Thu, 20 Feb 2020 05:15:47 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2750.016; Thu, 20 Feb 2020
 05:15:47 +0000
From: Yash Shah <yash.shah@sifive.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com
Subject: [PATCH v5 1/2] riscv: cacheinfo: Implement cache_get_priv_group with
 a generic ops structure
Date: Thu, 20 Feb 2020 10:45:18 +0530
Message-Id: <1582175719-7401-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
References: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: PN1PR01CA0086.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:1::26) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from osubuntu003.open-silicon.com (159.117.144.156) by
 PN1PR01CA0086.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:1::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.17 via Frontend Transport; Thu, 20 Feb 2020 05:15:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [159.117.144.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6203326d-4c45-4095-b898-08d7b5c3f183
X-MS-TrafficTypeDiagnostic: CH2PR13MB3495:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3495F3FBE3EA3190BFE19F428C130@CH2PR13MB3495.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(346002)(39830400003)(136003)(396003)(376002)(366004)(199004)(189003)(4326008)(8936002)(316002)(81166006)(8676002)(5660300002)(6486002)(81156014)(52116002)(107886003)(6506007)(66946007)(2616005)(16526019)(6512007)(956004)(478600001)(2906002)(6636002)(66556008)(86362001)(186003)(6666004)(36756003)(66476007)(44832011)(26005)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3495;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b8LeWa31iW0UYbvg6T4XGoekbPIDu66xper9yQjY2QRpj1Dqg9KUPFhFKKj4RLN8o4FwXLbiYxJwT7CvlKO5eJCzVVphovvdEpFHIhHYtQvxot4IaJ9CluI8zEuYZjbkWk+fzMmuJVqgpW29mJkwsK1mdTA+WZZaIOUo4wxVgoSyA2aAZcTSbZscKMTjZIm7cn8Rm7oM/AFu8kg3j4PZ26Q16iUKNiGYP8QmXB5KqGUaLY8+uX82CBemIl8jcWhRHmk1tUXA1I+rok5X7yBpg6GCZmusOaUby5DMKmmGPXn6eIaKkH5LMfTf9Gl3hnulLdvzeoMj3CMzLRhwMTMdlq3TvHoPcLyoIF58qlqmt4R5YwVlE1tz37tDjQwQLmJQpkHhanMrQoeTNwpMZ8yc5PM4EsYo3ru78Wls+QQe8HsKwo4B9+k9uq2l7xZrLIRfyJ1UxyAcjsXxBfbusfxq4gGMNIDE+TAqJU9JbblWXzc=
X-MS-Exchange-AntiSpam-MessageData: 6yr1W+aVLGVZX/Fh48kij4YXRwUlIexVzIMdHH/LtqDubK4hpNAMW5HnTM0JH2T8NMSLoyf5Sdj2oh//LaZfyQ4wxL8WR8wMQjcLO20QEmZKxGmWldbEaV0UNOqbi4d67IuYc8Hy+UGaLUBoMC8dbQ==
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6203326d-4c45-4095-b898-08d7b5c3f183
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 05:15:47.3555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cCr22S9gRiEqlkadTeKXZcsMtvEG4q2NkV07Egcvmzac4T3mv8VntU5OGXio3sFr/Xg0IYSFi+8tDBM5jXebDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_211549_225977_FEAFF7A9 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, sachin.ghadi@sifive.com, anup@brainfault.org,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 Yash Shah <yash.shah@sifive.com>, gregkh@linuxfoundation.org,
 tglx@linutronix.de, bp@suse.de, linux-riscv@lists.infradead.org
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


