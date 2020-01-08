Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDC133B8C
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Jan 2020 07:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=peLYY282PBg7aicRw1OrSAXJys5aHQoyp7o10RRemB8=; b=C27
	oeFlDp43qDWJDNn16U9C+kmQXfCjUiesh6OwnKkuVvLYFwsNouhCWX0P8COw9XWtSMGibO1FfqKRW
	CG91sDJm5BhUcSfXDNSp7ZkAH0ZQI/WRckWN9waugkShfjNdWEbekOjbpDT9vkhwFYifGpcdzLjkQ
	vsX2v3AjsZcbjfVhhZAx7VATHSdP+HvHfQmO+pKYTA/Gvz+b6ZXjsfUGToqIEBDkpRqcdkJNzyacb
	QhklNSKOjqv1b6jk6py4oftKriQ1RSUIFeQ33p7A4F+qWTaK0cq9w2ADuVNJpEMzw5UcvhTvPC+cn
	fmFIxsOUJCodkKSIu9c940ZYSQNC+nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip4X6-0005AR-Um; Wed, 08 Jan 2020 06:09:32 +0000
Received: from mail-bn8nam12on2041.outbound.protection.outlook.com
 ([40.107.237.41] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip4X2-00059S-LA
 for linux-riscv@lists.infradead.org; Wed, 08 Jan 2020 06:09:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2RpV9OQLCcWBAuHfyxVd6MiHjHWMWFPzqFlHr1VUFHwJWN/qQf7fb9sG6lBgoyY6hCv+CoXGWIcTGgfcDICXWbe6qcFtQv35loh5gkAdi6EKai9zrxXou3ceUCXAgyij8R5cKxHT+JFgjIZQEbsf8M9QuZewkqGQsiRp/VBSdEVTSDblW7/mJV135+E0OaHbKKVWTiz1wTIrCL/MF0cH4ugohXX43gyMtrhNFN0631vgYNd+RZ0H+xySi3ElQOkXMgzr/YFKc2DcLqSZl3XkAe/ItJt0gdHbFv9nkQdium4Szr+VRfqW42q0ANJxPkG3eCWaeYFxAmT6xOKkCOATw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=peLYY282PBg7aicRw1OrSAXJys5aHQoyp7o10RRemB8=;
 b=FIMi/OliCehzuZHOMURE0p24vhQqanWUMfMMx75W/fZ7FFTkP4j67IvkiSMBvp7LkubekehsArv78ckpW171Ug6pViiFAWfGma/wZMAiNvpCaZrL8FaILa1DZaQgcHEVyagYaWgpXl87Z2ySTiYslseun7wmQpn8pLkdNZ1tSraXT61mHh2ejt/uGk3GOD4+rRDu1wuScdRjUUdxlxvJ0grZyu3AIlaVbRwBViyP+N/lmBqrxR3Uz7oEFcfD5w2pdPx42GyUmt2Mmd8ijddqgyFSPnp+mgSSG0oX4letIOTQoKMUOv4AzbaCHc1rB+exhMUY+833r+By5Z2tjLlpJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=peLYY282PBg7aicRw1OrSAXJys5aHQoyp7o10RRemB8=;
 b=pISRR3ltCMYpYi7WEFtPW/Yany0+9uV//gVbc8cy/CXKyxetANdRuCCGje1ZFzcONJmiAylB3oZa/OmHxZdxaS36H0yWcwo8PT+8P29qcqZnEUB9OHq0qLwH+Gx6Fyuo7j/vYrGCWmzbnz1Gc6+Eq+1pV++rNW6m/lPupDzmp0U=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3767.namprd13.prod.outlook.com (20.180.13.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.5; Wed, 8 Jan 2020 06:09:21 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2623.008; Wed, 8 Jan 2020
 06:09:21 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH] riscv: move sifive_l2_cache.h to include/soc
Date: Tue,  7 Jan 2020 22:09:06 -0800
Message-Id: <1578463746-25279-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0035.namprd08.prod.outlook.com
 (2603:10b6:a03:100::48) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from betel.internal.sifive.com (64.62.193.194) by
 BYAPR08CA0035.namprd08.prod.outlook.com (2603:10b6:a03:100::48) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2602.15 via Frontend
 Transport; Wed, 8 Jan 2020 06:09:20 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0f547482-cd75-4838-62a1-08d794014db5
X-MS-TrafficTypeDiagnostic: CH2PR13MB3767:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3767A8E73EF088A2BC503ED88C3E0@CH2PR13MB3767.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:264;
X-Forefront-PRVS: 02760F0D1C
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(346002)(39850400004)(376002)(199004)(189003)(52116002)(86362001)(2616005)(478600001)(16526019)(7696005)(316002)(26005)(186003)(8936002)(107886003)(4326008)(6486002)(2906002)(44832011)(7416002)(66476007)(66556008)(81166006)(81156014)(36756003)(66946007)(5660300002)(8676002)(6666004)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3767;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SVmVN+zJ04bL+s/n3XjpSeKJa4KLBHjh+H2vyOfJt5tDyCXeIjtyorGAKBZJ2+eBqpi/p4WyWz0L0LdepjpuGiDNwqfP4wHVV7wedBxwmXwjpM7dGHFCT+e8GeeTKVmGjyejiOTW0P6wVO+dFA3YbuSw4EgPnfXJ5f9/AnOLQh+kDXli8EgzY+L6MnSp71L2PHUyzRyY8gxEs9+polgGOh29sqnqMG3UdbcM07HN6ttI6uCDaUKnLMmZGLseXY/+yqUsyFgICE0QOkWtIZVjpaS6Dlw7Oq6Xguv1g/Xl3R9mE5/jUOTLC3wuc9L5vvwatJEtbTw7QRHnLjhl10AerHNpQveqAtFUKcPvzB9WlZuFV1h4k592OCbz+BbdDt233XCF7ySe3hPtbwOAcbUAzcKbcN1hisaPNw05COvvFSkonksfOnoGeYWOgaSaywJC
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f547482-cd75-4838-62a1-08d794014db5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2020 06:09:21.7714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mxDdelZdoNZ1OFbJSgE6LDRDaSWnsptMfcWiVeVUu7ceS+7jK4vnyvaDlPRjDW9Z9woILj9yPAW+Rm19vwWV1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3767
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_220928_696377_627CD9E0 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, tony.luck@intel.com, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, rrichter@marvell.com, james.morse@arm.com,
 bp@alien8.de, linux-riscv@lists.infradead.org, mchehab@kernel.org,
 linux-edac@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The commit 9209fb51896f ("riscv: move sifive_l2_cache.c to drivers/soc")
moves the sifive L2 cache driver to driver/soc. It did not move the
header file along with the driver. Therefore this patch moves the header
file to driver/soc

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/include/asm/sifive_l2_cache.h | 16 ----------------
 drivers/edac/sifive_edac.c               |  2 +-
 drivers/soc/sifive/sifive_l2_cache.c     |  2 +-
 include/soc/sifive/sifive_l2_cache.h     | 16 ++++++++++++++++
 4 files changed, 18 insertions(+), 18 deletions(-)
 delete mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
 create mode 100644 include/soc/sifive/sifive_l2_cache.h

diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
deleted file mode 100644
index 04f6748..0000000
--- a/arch/riscv/include/asm/sifive_l2_cache.h
+++ /dev/null
@@ -1,16 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * SiFive L2 Cache Controller header file
- *
- */
-
-#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
-#define _ASM_RISCV_SIFIVE_L2_CACHE_H
-
-extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
-extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
-
-#define SIFIVE_L2_ERR_TYPE_CE 0
-#define SIFIVE_L2_ERR_TYPE_UE 1
-
-#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
index 413cdb4..c0cc72a 100644
--- a/drivers/edac/sifive_edac.c
+++ b/drivers/edac/sifive_edac.c
@@ -10,7 +10,7 @@
 #include <linux/edac.h>
 #include <linux/platform_device.h>
 #include "edac_module.h"
-#include <asm/sifive_l2_cache.h>
+#include <soc/sifive/sifive_l2_cache.h>
 
 #define DRVNAME "sifive_edac"
 
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index a9ffff3..a506939 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -9,7 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
-#include <asm/sifive_l2_cache.h>
+#include <soc/sifive/sifive_l2_cache.h>
 
 #define SIFIVE_L2_DIRECCFIX_LOW 0x100
 #define SIFIVE_L2_DIRECCFIX_HIGH 0x104
diff --git a/include/soc/sifive/sifive_l2_cache.h b/include/soc/sifive/sifive_l2_cache.h
new file mode 100644
index 0000000..04f6748
--- /dev/null
+++ b/include/soc/sifive/sifive_l2_cache.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * SiFive L2 Cache Controller header file
+ *
+ */
+
+#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
+#define _ASM_RISCV_SIFIVE_L2_CACHE_H
+
+extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
+extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
+
+#define SIFIVE_L2_ERR_TYPE_CE 0
+#define SIFIVE_L2_ERR_TYPE_UE 1
+
+#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
-- 
2.7.4


