Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A171185E1
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 12:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YbCalaTn2X7HF4eRtvgddainZMNLa53BndvIrXNSIWM=; b=jkF1YQW14AYKvuHs54Knt3IDt
	qIGEE7ujaQrXggPp9iIIYXyds+RkQELc7zd6OA/9lVycmAUpISNryvysmekWyHLTuCBh/PAQ3T2KS
	ciJNSeDx/U0O3d3LHt/dpa61z4KKkYEg0iMUJ8YRvmrC0qTdXcwAzuL7F0fnnn67tV8AhZQ2FbfuE
	2pqE/3KY8fUuZJOajKhHs3neHfWu/3BhR+enmRctXa1JmXZg+YFWroZ4tIhA+nZGQec7j5Q4P/riZ
	C76zFVXA/MVUqas6FBK+JrC2bLq6jltWxEZpANhd1fy+tD6vFvS/AcB8rddW67MsiGcUrbe5uQ9yh
	MdJXvYDbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedQn-0008BE-CO; Tue, 10 Dec 2019 11:11:53 +0000
Received: from mail-dm6nam10on20607.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::607]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedQh-00085r-Ue
 for linux-riscv@lists.infradead.org; Tue, 10 Dec 2019 11:11:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IZgKU5Qwaxa0Rq8RN0lRD2uXsA7jozOKb+Wc8i+VtfzRd1VJ4+EooB+exvKnzxrkq1QFmlZUNwfjw4knx6UZJ5QPQbqSf9LXz4jq5D8LfiZN3qnJDRe3rHyzWFH/ym7OKOKoVf57M5kmCN5YonjVoX/ia3ir1CvS0ZEmr7zmgpqLJWrOBDEywldweCq7pv+N5TOZ7qguCRbplph7GSJ9EuCqNOD9KluzGI3Vx4o+VPn1yDeTPU34EnQXnWlUSN3bWk1pdir9rr6xoWOsYuoRWvRW9a89fc91kxWf/iaDOqE4I8hZQQZ9mKPhb+tDn6/xkrTNYS36UVXn4CdomoZrJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbCalaTn2X7HF4eRtvgddainZMNLa53BndvIrXNSIWM=;
 b=CU+vbEvlN974++ikVC9Bo61UmwUvinnCqq3q+SUV/bwc5NHqTvPA90yJbR8qFZe4JswuUb2XBObC2Fl92LpQq/FNI2KXrT+k/KTI1UlPDhgYSMtD54gbkN+xYOnpECGVXKHxbinxty7TA4iiUFNnH+DmW55msOpP/PxQLp5YFtgN3OepuJj8x2mkTqMd3U5CPfOV51a11ysCVvHuIKeqbcysnLhEmYqeU0I2jAKA2lHZ69IvPnO4Agh2a1FRCidmPXP8iqGOeVffD3h9gDOoAxA0xF5ZAw4s4SrXKqDWGTz670Y/lXtnQoankb33S+PRua2WvQwTAC1wmK/PxRInng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbCalaTn2X7HF4eRtvgddainZMNLa53BndvIrXNSIWM=;
 b=qQxbrYM3VMr8uChXawMgU/us8WnmKTrxnD5Kou57ZmgaTLzhc2thyh8WzZGjPRt5+pGJprOJD+jAYbE/oTgns42K1a2wi4FAOmTqvrcYsoAYNP600AK3x2IecsDJCnjP85EfuFK/YQgk0O4W9qe6j6+Sa3OM8ILKxYBxktrzF6M=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3656.namprd13.prod.outlook.com (20.180.4.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14; Tue, 10 Dec 2019 11:11:44 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2538.012; Tue, 10 Dec 2019
 11:11:44 +0000
From: Yash Shah <yash.shah@sifive.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, palmer@dabbelt.com, paul.walmsley@sifive.com
Subject: [PATCH v4 1/6] genirq: introduce irq_domain_translate_onecell
Date: Tue, 10 Dec 2019 16:41:09 +0530
Message-Id: <1575976274-13487-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575976274-13487-1-git-send-email-yash.shah@sifive.com>
References: <1575976274-13487-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: PN1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:c::14) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 PN1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:c::14) with
 Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Tue, 10 Dec 2019 11:11:39 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8228d1a2-39fb-4756-38cc-08d77d61bd71
X-MS-TrafficTypeDiagnostic: CH2PR13MB3656:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3656CF4A1F58D4DEAC4B415A8C5B0@CH2PR13MB3656.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 02475B2A01
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(396003)(39850400004)(366004)(136003)(346002)(376002)(199004)(189003)(36756003)(66476007)(1006002)(107886003)(52116002)(6666004)(66946007)(6506007)(26005)(956004)(316002)(2616005)(81166006)(8936002)(81156014)(16526019)(186003)(8676002)(44832011)(6636002)(5660300002)(86362001)(6486002)(7416002)(66556008)(6512007)(4326008)(478600001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3656;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XHRUh+TyfD8O0J13qczc8vdv91+bw/fvj0g6GLx42eVbjH5cal7IpuOajTg260yF4fRrEPC3NYakrCPUyyApA2SL8fkWDvqrISBa7KrQHseIUXE66CYHvvsDL2AzGgcEZlNDbaf48LYPKiU5EVhEMDqtet4KIQa8yFr60HKcWZMW+21aJ0ul9Mkinfi6OMLemu2DcU8U7XBIdLSy0qmsV6Z25fcgqy6zA55hdQX6ioonT5M9HQTVnzBDZxTIoIxxf9qLf3wQieFQJWAmtBnDqc+ZmdkriyOfUCLk8Oi1k5I1qlbStxVYWrhJpxH/rWqI2RdJbotlBwZ2hB7Fhb9IPDhVHBJvGxMY2HJWnJsNdSs8q+MIi4kh4Vs4e86AjqnsQQAlKcoBF9WKHRFvbtU+F/5zAxN+yg7t9z5b1M28JxX60hkaGnjeThzaZVfsgZ9F
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8228d1a2-39fb-4756-38cc-08d77d61bd71
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2019 11:11:44.1946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HOvu+lzzAoOJBYfbEd7kZExGsJMSDwucYOHgIgptRG+Nf0PM0DHI7Ybl1BVy/7Gmv8MfgBlZnob8bO109oyhrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_031148_042765_67CABDB7 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, jason@lakedaemon.net,
 linux-gpio@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 atish.patra@wdc.com, Yash Shah <yash.shah@sifive.com>, sagar.kadam@sifive.com,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 sachin.ghadi@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a new function irq_domain_translate_onecell() that is to be used as
the translate function in struct irq_domain_ops.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 include/linux/irqdomain.h |  5 +++++
 kernel/irq/irqdomain.c    | 17 +++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/include/linux/irqdomain.h b/include/linux/irqdomain.h
index 583e7ab..cad9eb8 100644
--- a/include/linux/irqdomain.h
+++ b/include/linux/irqdomain.h
@@ -426,6 +426,11 @@ int irq_domain_translate_twocell(struct irq_domain *d,
 				 unsigned long *out_hwirq,
 				 unsigned int *out_type);
 
+int irq_domain_translate_onecell(struct irq_domain *d,
+				 struct irq_fwspec *fwspec,
+				 unsigned long *out_hwirq,
+				 unsigned int *out_type);
+
 /* IPI functions */
 int irq_reserve_ipi(struct irq_domain *domain, const struct cpumask *dest);
 int irq_destroy_ipi(unsigned int irq, const struct cpumask *dest);
diff --git a/kernel/irq/irqdomain.c b/kernel/irq/irqdomain.c
index 132672b..cf57d87d 100644
--- a/kernel/irq/irqdomain.c
+++ b/kernel/irq/irqdomain.c
@@ -987,6 +987,23 @@ const struct irq_domain_ops irq_domain_simple_ops = {
 EXPORT_SYMBOL_GPL(irq_domain_simple_ops);
 
 /**
+ * irq_domain_translate_onecell() - Generic translate for direct one cell
+ * bindings
+ */
+int irq_domain_translate_onecell(struct irq_domain *d,
+				 struct irq_fwspec *fwspec,
+				 unsigned long *out_hwirq,
+				 unsigned int *out_type)
+{
+	if (WARN_ON(fwspec->param_count < 1))
+		return -EINVAL;
+	*out_hwirq = fwspec->param[0];
+	*out_type = IRQ_TYPE_NONE;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(irq_domain_translate_onecell);
+
+/**
  * irq_domain_translate_twocell() - Generic translate for direct two cell
  * bindings
  *
-- 
2.7.4


