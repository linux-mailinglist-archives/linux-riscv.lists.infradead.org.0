Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E7B138BE1
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Jan 2020 07:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4K/TKNzZYRSZNQkHxVC9JH2J13VtcBlz5SkUO0rfFp4=; b=PjYlTMttCNejpSGebQis331oM
	1NWVBeyPbddEj/xQ/oZTqts2a2cav3bDQqBskehnkDloL2d2+gZwsiTgxsHdnrnL3NxKLl9D8A8w3
	jDKYjozWs8e6N9bTRCpalBsQNDCjYrDTG57KLTbjwjTO7MP0XQzJVIioJawtk+d1/1fRyYLN21GEX
	8bLBfHMr+nB5vDGotDZyBaAi/uI9P5kEQWEvRCyllcOnSkYuorZbJhftILamKTIsjNcaH5X2UecUx
	ShVOptpBUnKg/iOEkQ5I58B2ASNUKRZipLsgHMh4mcv+6tvOsxPNRxBsKXWrdpKzLLJNAAgBaPs5w
	6S336HHdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtNT-0002pm-7C; Mon, 13 Jan 2020 06:39:07 +0000
Received: from mail-dm6nam10on2050.outbound.protection.outlook.com
 ([40.107.93.50] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtNP-0002ns-Gk
 for linux-riscv@lists.infradead.org; Mon, 13 Jan 2020 06:39:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4iQxI3/bju0B0B+1YjMnikB3XlIx7fNGKdBRrm+K5bmW7fZ+WZcA0Am2Q9eYkrekX+aNwpR7hDQv4OiJjkm4d005QxRE50Edn9Bx2J0VNEE/xtaC2XC5YUdwoNN9wqVTNWlqWGKIY09biCz9DE52wTuoqBoThXTaQuBPsqlaGMUYfCqmCbCPqtAeyjmoXjcNm981RdPuqDbXSWLHxXHy3BRblya1TgQKtjLL4iisrv/VaL0xxohzoFM3bXAiTY08fkDcKtgEo5J2v6irFLZqYRqirzKrLWvgUc7sMVEFEFGYFoxAYGUScf4niA5WzdnpWEyWXK6Vfk9OwMNaeH8Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4K/TKNzZYRSZNQkHxVC9JH2J13VtcBlz5SkUO0rfFp4=;
 b=TAj7lgTVzHZEUpD5uPTl8JUKqzyuvYTBzaf0h5RU9FRhhP6QsSZkiLmdIAyqh5muXjZ22RL+nJnVIAYLkF34svD9xcaOrgwge/VbrhNTZ0OAnop0GRsv6GNPV9d+yuv4cMOGWisMFxkF5zB87c1cZsJCV5shoCx9NLL3y7T36fRywh7HLX7cT4R2S6fAD0rABavRxuGKu+R11U+qyZXUueTLriu/D3sDObaqO7ApxQ4zoo/2EGtfn5gNmiBh3duJKqQsxUYiyeuDeSC4fSTwYMPYCkpparpCeL9CMTQ4rCPWZ2FlK3y8N1qAY2EZTpZCsK2yg/oYijUDMy67VPnURg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4K/TKNzZYRSZNQkHxVC9JH2J13VtcBlz5SkUO0rfFp4=;
 b=Zc09Cu1zwDPK6J0HUIW/WFihTJDk86asRgF2UqNEUqEyjsbnuRj9ZHM5Mjn7hSE8bcRU4svs2oPpwphZ6w2y62xJEfYvp3rUBBUETPJQFqFT8otohZ7LpfhqiGbFYgH001vCsk7UbiqPlDgecfQerI5/26/ogaSfM6pWmG14trM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3317.namprd13.prod.outlook.com (52.132.246.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6; Mon, 13 Jan 2020 06:39:02 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2644.015; Mon, 13 Jan 2020
 06:39:02 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v3 1/2] riscv: cacheinfo: Implement cache_get_priv_group with
 a generic ops structure
Date: Mon, 13 Jan 2020 12:08:19 +0530
Message-Id: <1578897500-23897-2-git-send-email-yash.shah@sifive.com>
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
 15.20.2623.11 via Frontend Transport; Mon, 13 Jan 2020 06:38:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a38ee44-dbaf-417f-4561-08d797f346d7
X-MS-TrafficTypeDiagnostic: CH2PR13MB3317:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB331722C8264A3ABDE67D56A38C350@CH2PR13MB3317.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 028166BF91
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(39830400003)(136003)(346002)(189003)(199004)(66476007)(2906002)(6506007)(66556008)(66946007)(26005)(186003)(16526019)(44832011)(5660300002)(2616005)(956004)(86362001)(8936002)(36756003)(52116002)(7416002)(4326008)(6666004)(6486002)(81166006)(6512007)(316002)(8676002)(81156014)(478600001)(107886003)(1006002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3317;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xd28e0eodB5pyxZ7v3ZoL08X79MQbOpM5AGj8j/51b2/xDWjdBZa3Ty926EVH0irIWrtFvqPAZ5angy7WKozT6RhqWCQiGoynSLoPBuHmqcMCMyIzRNgCVIHQmqA9pfJTvaIo03kBEcWoHic/M5ur7m4l1ITIdHQanGhO7zAIpNfidP4YVeHU0+st8pVKnhDw+8NJqV7VL5OPNb+iG0KIpnD8iFSw19vjNgEzIwR+hp4YvDsXbNe+AYgtyF8iiaVKIplz9f6zSiIiCzGuPj2JA1c8UMzNp/3aOorLScSES5oTsZvjcwiIfDlFCF45UAVCnKCiNtPnTBdmMXttvd+gRpdQfd7Rgt4gIDpc3Kp2ej0PQfYfsGDvbZ8NweuLT2Qy6cPGIaYRD64Vy/F9nMAx0BdiklvYS/moTIaHRH4Hm7Pqj7UHlETDtYJFuDHs7dviblE1wJ5+fuq9yuInhV5rU7TPXqJR4hcPr9JHBF/dGo=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a38ee44-dbaf-417f-4561-08d797f346d7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2020 06:39:01.9993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GW2MjdbVB3XGVzPeipl/iEC32D574Mwlpv3mmQIb/Awp9BfS9gXMUq6HF45+1Po7nAHlj4Fj/uZLPyI6vaNpHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_223903_556977_A0FA4EC2 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.50 listed in list.dnswl.org]
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

Implement cache_get_priv_group() that will make use of a generic ops
structure to return a private attribute group for custom cache info.

Using riscv_set_cacheinfo_ops() users can hook their own custom function
to return the private attribute group for cacheinfo. In future we can
add more ops to this generic ops structure for SOC specific cacheinfo.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
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


