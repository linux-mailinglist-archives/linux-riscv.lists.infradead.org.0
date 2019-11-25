Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7E510887C
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 06:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAw/f8xRMVajkjDMdwPnycXo4yTs3KCKi1IuHriYoOM=; b=XxAzR/ltOfHALi
	5cn+ZwM/nj8yD8xXfuUu/9jCNwqpMaU+6CfsCVeT6hhydw5ti3Rs4hbkJ39DfRyrWHNBEu99QeurA
	om3zmVCLjodgX9nOvtu99kQOMzhUEq3y5wH9TvR3qrPjaV3vhSbZ6PPIZpmcHHSpd8d0i1ctxyIHP
	oQY6+5xPgGXSHyu5oVJVOvXEYzYq8C6+xF4W26XJpDCba/eNcyQKHuEtQEl+Z9tAZeaKSskcbbv++
	lmt6z8U7upJZGavZBzc6rsWBhIQN4Zjad5MOBC0BPhgzPjf3IiAogc6FurtIHEW+b6e0sblJZcxUa
	9zejnOntdF5vdP3XlSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ7Ni-0004ZA-68; Mon, 25 Nov 2019 05:57:54 +0000
Received: from mail-eopbgr690069.outbound.protection.outlook.com
 ([40.107.69.69] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ7Nd-0004Wp-Dq
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 05:57:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WtuMTv24xCVrgxepin+8GoJqQMSxm6OtzkKJOfqifbIG0w/mSOzyGLwlUQCCn3fFFPCVYvHojkW/sn+2sXPlYFEpv7IIVhU1uVXD/IG+Rvvi0VMXHsyB738RB/z91ZWwZuuJPE0ZEOnC9UH/Q/LzUpdEXiyMxBlpZOs/u0n/kRdfFaOm9pzUt9xyX8sNXwUg6a+LJx3OfjjGY2tvknsnzVjoawFiAyouMOclCZIWLQYQESZvsx3ay+X5viFl2hmHqrbp6iCdAYNtJ9AJbzTFDM+RdlvU6v7orC16X7phtL/IJpUwBKF1mdNCK8eGczFXTGSsTQT33B+J2zQEkpVQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3+bmIg4wjm2qc8yIreyg11mjgAao2tIJuvFbWciS+s=;
 b=P4awv856kWzgxJJGvOwcf6gUPJUvmWo1Y4L0oaAsitocggWNrIGP3gXL/epBtY+BGBmlLMA1Mzur0Xro4ACmzxhG3Qsbgb9ZrB7BVCEwzpO99DvkOAwa5x789d6bVDWbppAWXE+eiEhxnTtKPGmciENSB/sq7603dsi76ztFECCdOdqo0fcB8llPoJVu15fb5fch+1RTPfycjoYW5AacfyDCRjTMCDAt1uXX4fMbcH3yxvbOiS1QRq8b5se0b9GuKi27NggaGuaqXmuSyC1+xujBn2hLzYtsMavdcXGPeJ2QKkOr+R+46nqWG9uS5Z7x3yYpWfo1LIcYu/zKiNRXZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3+bmIg4wjm2qc8yIreyg11mjgAao2tIJuvFbWciS+s=;
 b=pnZv9R+eqZM89a6yQuJRiycn9cwgdS0ltW2qxwj4jZmvs558hX67qzqaHX1bAXgaoCEYB6BAeHk9PbYDjeEYbHy3aAsa/YSrjX3vpZfDEEE66oAp9expzy91EU5PbEaM55QbwVv/PQt7yAP/bHc8Titn4AfyFFcSpHW0yMeNEBs=
Received: from MN2PR13MB3374.namprd13.prod.outlook.com (10.255.236.83) by
 MN2PR13MB2622.namprd13.prod.outlook.com (20.178.254.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.10; Mon, 25 Nov 2019 05:57:48 +0000
Received: from MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6]) by MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6%7]) with mapi id 15.20.2495.014; Mon, 25 Nov 2019
 05:57:48 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v3 1/6] genirq: introduce irq_domain_translate_onecell
Thread-Topic: [PATCH v3 1/6] genirq: introduce irq_domain_translate_onecell
Thread-Index: AQHVo1VDopSZswPJJE2VT7JTBNGe5A==
Date: Mon, 25 Nov 2019 05:57:47 +0000
Message-ID: <1574661437-28486-2-git-send-email-yash.shah@sifive.com>
References: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::17) To MN2PR13MB3374.namprd13.prod.outlook.com
 (2603:10b6:208:162::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8acea5b6-82a9-4167-749d-08d7716c65ea
x-ms-traffictypediagnostic: MN2PR13MB2622:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB26224B555E8D844897D9E5918C4A0@MN2PR13MB2622.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(366004)(396003)(39840400004)(189003)(199004)(186003)(6436002)(2906002)(316002)(14454004)(7416002)(54906003)(4326008)(11346002)(71190400001)(2616005)(50226002)(8936002)(110136005)(478600001)(6512007)(446003)(6116002)(8676002)(36756003)(3846002)(25786009)(81156014)(44832011)(305945005)(5660300002)(52116002)(76176011)(256004)(26005)(81166006)(71200400001)(6506007)(386003)(2501003)(6636002)(66446008)(66556008)(86362001)(66946007)(102836004)(99286004)(6486002)(7736002)(107886003)(64756008)(66476007)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR13MB2622;
 H:MN2PR13MB3374.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BKNvQ3gEwJwQ9VTZR117u22w7qHDkc2wfLxUSrpN4YByfU6k5/UzvO5mD1HEObeREyzOVccXGlHzYKVKPnYnEpHcCSlJSoiyAkzowK5vBEoRMeBaOE1Prjqe8N62ZbKbmrDLKUZiLyNyuiuCnidB15iRy2rhs2G/4jeKibQlMKeq+KbNX1j3eQiBcywzP/9xeVkW1aCCJiBUPx4/Pys3/MZN4+iRXuwVMEAxdcOPYomlzfVXkaTFNERQ3jEhap8vzLPSfCDiXdxIGUHjRcUNmePhhpX7sPfYVpgKTuJRYArnah1jyBd8LN8Jqd0je1AJZGTPenShj22+yyfn31/ysO5MLKOwEee7AubT9VGUsd9KwJj6JoCLFTXGhWafxyeuH+v3Hp8+5F5vP9PGPrSAIfTMd5c4GjF92mDCkXZGAr4LgQvewKr8y1gv8GuftDT9
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8acea5b6-82a9-4167-749d-08d7716c65ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 05:57:47.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L5p/nrJWMox8gPit1aWrblolfvkQ8XZLPVSkXY5EP/nUjZYNhdw6pIMc/PR6RtlheEh4jeAgOGJeVkDQT3fviA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB2622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_215749_467751_2235D123 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, Yash Shah <yash.shah@sifive.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
