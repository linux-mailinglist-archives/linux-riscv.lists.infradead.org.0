Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F3A1034AE
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 07:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7PjLo96lEetd0DY08H1hLCryx7X9GjvAlUAMUPZ1FA=; b=fycdq7N1sH7uIb
	vf+GoOScWtaQNMMqNSTpdPSyQzKJ7MghF0cQz0zwp0dTdJWL9D0RswLHPp5leVa7VIgO93QGG3dGR
	J8U1Xr+2+MrPvDz15AOYLcduiGIRkmKpZx6KuOQqKeS7O/hpXFp5du1D2rRj0kJ7KojF0yapXh6Sv
	v0UgO6HznZI7bV8QnTu127KuqqoLupRVjHWTCKzbPZPWVeapOfjA+eerlid0VsqhAOqwWcVf/PXGq
	zv36Rme7YrBw25CXuBixaP4xj3e1m8rVrIie4l7nLvHflwlu59t9Oy7IGcNQEyQrPidnBwyl7UQNp
	d39TEUWSInmMs02Ri8DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJxX-0003xH-7z; Wed, 20 Nov 2019 06:59:27 +0000
Received: from mail-eopbgr740089.outbound.protection.outlook.com
 ([40.107.74.89] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJxT-0003vr-MI
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 06:59:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QX+4wT884k5kA85/56LsU/e3G1bVM8GvSl7WqlkcL5/wmX3yOmr6m7SloLJBijv7kfE5CqxIj9zgKFEMC0s/l0225DGlU1mk53rbE2yFU1UPU9GL1awFamkE5EFX2cAUEnfjbfx7m0n3vMELFjWRNiFJLgrx1Ulj0POyAhSeuYKANu2jQKEoYUo/UCaS+UACns6dbwRxjRvRHR1AExqTH1I5tKfSfDFQKrVS6Z9Zs2nDD0oU+5nKK+wm+efHQzV+yQxEdQrW+jtXrMMozAeadHRWIR6OedZNWN3PCid6Zvt7sMeMnBKlIW2ZuDQBnMkuHSj71iV+ezXh+yLbvaKFDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUJLzYO7FlrPU6UtYAl030j6WY1EKyN58vXYO8xgU/U=;
 b=iM1tQIRLDeoNwOHcDck7gm5EVimYCyGCFZ0VNP7BKRuDPKHcotw71SKPzj6Oex4ed0EDEsGEKrHn+Crn2nzMW+jBx9oNkPcbyEn20d/Vleijdl/KMwvn4iWFKna/Pw3MIJZHfjUeM4O0YlSqHGtlKBgGOQlztVN12Jp/b2+Dqc4HzwWVwMMBJOUjLIKXHCkkufSp4BaIcGhYL28OdoF3RiGCS9iKqoEiHhe3PwxGATfWdZGuzLiBFPaAQ8bPHb+UvJEszKXKCtbnHkrcoVficyr6JyiFxLIxpSZoqWtiUDyK1VbRxok5hf7MElVJ6hmUYQqmgg38ci81OByCVc0qOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUJLzYO7FlrPU6UtYAl030j6WY1EKyN58vXYO8xgU/U=;
 b=CGYV2yfFrLsuJptPj7O5t1DBwCJA6AQuMb5fmppbD7XgEGOuVyXuWwQTaBnHZAAJFn/qfh3XYXuMpGRTYxvaK3RbxYto+YGTv9p1yS2x8cGnt2k/f77VH5vSSzYQ8f9lQGlutZbmyKEmBQR7n5Id+mrh9PTVNjCR/4NwnMGatik=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3415.namprd13.prod.outlook.com (52.132.246.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.8; Wed, 20 Nov 2019 06:59:21 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 06:59:21 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v2 1/5] genirq: introduce irq_domain_translate_onecell
Thread-Topic: [PATCH v2 1/5] genirq: introduce irq_domain_translate_onecell
Thread-Index: AQHVn3AJHBiRD+wuIUSzxWzN0+e/fg==
Date: Wed, 20 Nov 2019 06:59:21 +0000
Message-ID: <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0208.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::28) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c866b0bd-d336-4db2-1f56-08d76d872b55
x-ms-traffictypediagnostic: CH2PR13MB3415:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB34157DE91963C3564F31248E8C4F0@CH2PR13MB3415.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39840400004)(376002)(366004)(136003)(396003)(346002)(199004)(189003)(486006)(71200400001)(316002)(8676002)(6636002)(71190400001)(7416002)(8936002)(25786009)(99286004)(2906002)(54906003)(52116002)(76176011)(50226002)(2501003)(478600001)(110136005)(66066001)(86362001)(36756003)(81156014)(81166006)(386003)(6506007)(26005)(4326008)(102836004)(5660300002)(6512007)(476003)(446003)(11346002)(6486002)(186003)(2616005)(6116002)(3846002)(7736002)(305945005)(6436002)(66476007)(66446008)(66946007)(66556008)(44832011)(64756008)(107886003)(256004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3415;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: slLBVNJvOlBeUf6r7rLz+tB4xUiKV8JpS/iJPaCMmNvfK0NWkOr7DzBqKhJsD3dwBMh0nT0jg2VY/5wzw91YSi/imA4NQdV7RpmIY63VB9TLmkPgrNAd93r4LQjjrTB7kQ4UQ9QirvD3RhFkUI33jcscbq92JI5k81UydRDNC5Slnscg9f/hBg2Bel6GbQTSsBlPmxHlhWWAiP9dmCRix+IWifWe5EcCjJqU8et8i/JhXdTNR8rPRr+RPwS1YQag/zMAmA0qsrO9681vWxuR0IrpxkWjG4zsGHW0hDV0qr8tDShs42PK8slpyWWX2aedYCY9mDmxwnJg0SybqWcTO6yctU14VJZ4joKXrw0BtGpuc/lsxly2uJ/9ydJITfzObH5ILodS345adgwIwvLDYGliSjiOeuW5o+2BJFK1t/DTd59HyQcj2eRY0YUgIbGU
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c866b0bd-d336-4db2-1f56-08d76d872b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 06:59:21.4174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WXiS0orDLFaEUmtZPePYSyCXSBwbkIfC9+sycPanLtksB/w1l/Ryu4aQFIwFcx+iIp/bZxXT1DX4o8h75Dl4fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_225923_739438_5D02F4D6 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
the translate function in struct irq_domain_ops for the v2 IRQ API.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 include/linux/irqdomain.h |  5 +++++
 kernel/irq/irqdomain.c    | 20 ++++++++++++++++++++
 2 files changed, 25 insertions(+)

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
index 132672b..6972a48 100644
--- a/kernel/irq/irqdomain.c
+++ b/kernel/irq/irqdomain.c
@@ -987,6 +987,26 @@ const struct irq_domain_ops irq_domain_simple_ops = {
 EXPORT_SYMBOL_GPL(irq_domain_simple_ops);
 
 /**
+ * irq_domain_translate_onecell() - Generic translate for direct one cell
+ * bindings
+ *
+ * Device Tree IRQ specifier translation function which works with one cell
+ * bindings where the cell values map directly to the hwirq number.
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
