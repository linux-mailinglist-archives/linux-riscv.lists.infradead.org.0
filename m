Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2935112954A
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 12:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A0SQlhDbgkw71L1UeaM2aFp01+V1VKFPbfHDGYfhDMg=; b=BrJqMkNBcTWRBRCf4WAKfOvT6
	EYoA0ykfC7BBhGjldjSYKKiCjfe8VbSYJ6LzS7p0orJJuJOtxRE5Whw/Re/X7dqWSi77wRc8CZ8VU
	CSCI5bOUGpZz1X1qyVDdfI/ztnUx01OtyFg0iCYbpBcSmx7qcIGRYkWhscsbjcyHUKBg7XhuTGbWZ
	/LXhxjHOV15JREZKijDtxaoMhPnf6DEwjrlHiOMqDHCC0xxWQ2bssje0IJ+HSCpQDe1yf7SUzZwZD
	UFrGx0RGc6ENW+X9Fky7ldTpIx8RozrquIYJakkYRKi+h6ZguLNKL8wx0Gwyh5+T0klg3O43yQclD
	wFGUaFg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLzj-0000Eb-W0; Mon, 23 Dec 2019 11:35:28 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLzf-0000BN-OV; Mon, 23 Dec 2019 11:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577100923; x=1608636923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wuU43oZgM5pi7IW3seFwkRJcfftUaolqELEvKyIjWj8=;
 b=nZyHYxIXBV4ltHd97Ps+G27UwrgRveUKldCTPxEWIJSIa5/Ly8XuJA79
 4empg06+P/HRivZj7F2ReaJiwaE87sdHZsDdJs7wILx05cKXURog6ZDJv
 JMxkxY58xewJ8vRXVu2nYSRnNgqSczdChbMDQn1iMmJLVZyZImZJxLCw7
 YpkNDtMqqxPip9a7ygkSK2uYRpj7hqYYb3WBqQzq5nNjjMZLmk4eXmoo0
 Wuf4dTRFmlxpWcXmB1kNd6XXm496dUF//t3PJjE6LmOLAaBwJohxOeXfc
 /0Wi4GocPGbbV6JvYYiLj7Egr5Yp9Q+ZVvaSLP83NsrdO2olQ2QAVaLpY g==;
IronPort-SDR: me8dGJimnf1wfr4rQvBQK08QmPGugfcuYsHPcOBC3tN4bQozXieYzkWBd3+oXYVZEYfDSBhY9J
 /k76Inc7NVE88BKmVK24PMvFGVHJ8aCLzITb/VmEu74IoHJ8Szrd+MV36UYHy0tUbSSqufdocB
 aC1HU+WjzHfGpRzlWzT7Dh69oPmYgFCH7zXhWE/FVH5Tv8CSQdQOvJoZAToRjoK5FhlyhTtEgP
 mIeW34uNEzlW+ESJukBkdRmBudlFRw3vnN/i46aNcoDYwQvleCQzX73XwtSZsfIP/oka1bxQ5O
 ikI=
X-IronPort-AV: E=Sophos;i="5.69,347,1571673600"; d="scan'208";a="125956073"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
 by ob1.hgst.iphmx.com with ESMTP; 23 Dec 2019 19:35:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kFe1kx8mMriJCmXuX1ArOJrfd6lBo1D5Zskv3hA1jLouA8MGibFehpp4SXV74otQ6CYvmHkpMyfQqM3GBKSkmuuRujFHI7VrICbKnXCq8s1rsqam2ZmngnONNvv61pcRycaD79604LSFiOmtrQSbCbQ9EkhzihVF4/nUXNe6oyOizxv/uzuQqvCzm3lJ95GxGyeM0DO7tdHlv2zZSp2yP3v82j6w8XcsQ4Umbh8pTCSypvMQnr6OMYyEBjLHd2OcJguPqDXE+5+s3l/GohVttUkpTM4yXa+EcVqDTknUjx/LmvWX6dWlbecVIMpeqO+MFC2s+/OJRHLDWeayNyXXmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0SQlhDbgkw71L1UeaM2aFp01+V1VKFPbfHDGYfhDMg=;
 b=kufhpdF3XGTBlomt70W7nDe20YaWj+alu7HyrqmNDTdB9ZLgPdjK561FEZqrtPQsosdla1pORZTMmmwwUCA7PL6p904eerx89pfO7MwCNQVTaWGMTVJ0tV7ur/gO23W8mT9yhXjfziuqDDlzlh1ttocq93ONgOvpe+RqMt4ET5OQAeErZw4bmfmSc64aPY73zGEvuzAmyD36zHK1kyoszr95iJzMKSCgIUrqadmXg5Hrvi3yqLAACCTV1/F8ZPDjwBeJqZbj9pSdFJZkVGE5PE02DhN2dCgN0qxZUWytZ7GWrQTqm6dhEE6j1ogwwZvl749LX8TGz4owM0uYD7xu6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0SQlhDbgkw71L1UeaM2aFp01+V1VKFPbfHDGYfhDMg=;
 b=bUBsfa0xgOGnERnQesXf3x6Zhfmh3mhT5vNPFJ+d98mi6LabETY2j9dA7gRA/WZ9UKY1rKcUQqtlYWIVGPpAM5If8b9OaesFw+IFg68drrsYjkihjHGeTLgnx31VUFNQIlEs+lDw8X2CDsVWHmp3ST98kV0iTB3RnpViHNxxie4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7072.namprd04.prod.outlook.com (10.186.146.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Mon, 23 Dec 2019 11:35:19 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:35:19 +0000
Received: from wdc.com (106.51.20.238) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 23 Dec 2019 11:35:12 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini
 <pbonzini@redhat.com>, Radim K <rkrcmar@redhat.com>
Subject: [PATCH v10 01/19] RISC-V: Export riscv_cpuid_to_hartid_mask() API
Thread-Topic: [PATCH v10 01/19] RISC-V: Export riscv_cpuid_to_hartid_mask() API
Thread-Index: AQHVuYUNsIc/I9RtAkGhAPMN++8CLw==
Date: Mon, 23 Dec 2019 11:35:19 +0000
Message-ID: <20191223113443.68969-2-anup.patel@wdc.com>
References: <20191223113443.68969-1-anup.patel@wdc.com>
In-Reply-To: <20191223113443.68969-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 642ecd67-0b53-4d7b-5228-08d7879c3007
x-ms-traffictypediagnostic: MN2PR04MB7072:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB70721C26597B86E620593A768D2E0@MN2PR04MB7072.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(199004)(189003)(8886007)(4744005)(478600001)(52116002)(316002)(16526019)(2906002)(8936002)(1076003)(7696005)(36756003)(66946007)(66476007)(86362001)(66446008)(26005)(64756008)(66556008)(4326008)(5660300002)(8676002)(186003)(7416002)(81156014)(2616005)(956004)(71200400001)(55016002)(44832011)(55236004)(81166006)(1006002)(54906003)(110136005)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7072;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZfXvDjXqL3w+D+CSuozi+bAvtBFwFox+LXunTOMH//OMnVnPOy5cXH6S8Y58N+OzoBdvUnJb3gZV0QIuSu+9tayKihygjOnQhTzgILJd+AstyCSnDg3ZatJZz8GEDj03ACNuZqwdraEZVdvTp5tZIx+T5rj+x66RC1sZgx29uhkxcixG0uPV+cxtB9PuJtjNnoN19Bp/khiX54Xrf8GUTYSARRE1vqkz+mk5DUb5eHKXsMUDBI221v1GJyOW/WUszAbrvIIuwqShFyDS9PQ09kqQ3lGrmg+OdNGLdOuYQDmStaVclsmwPqKyC6HqVLaKf3aNG+lUk+t8KXkyjukJCeUX5cvFyRdP/tvupKChT+m/1UYHsKmIUGuCUZ88i7S0QliVXKqU19lXNAYyvrLxzz7+KyeG7WCDDlk8amhx21DOAOOaJxqlmSj+EGvmKyF+PR6QCBNmLL3ljdUl2uznCO8U/uuiMxfUV80TMtPXlOMZJoEUOPMF1kp2XhhYAOZq
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 642ecd67-0b53-4d7b-5228-08d7879c3007
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:35:19.1366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wQQJszAzQ+/avRCNOFa5gezE6xOMwLzkTa5Oj3kAsJ78W5m9ETz6eyKAirLZL3D55X4ASMVoJI/mbiLBso92kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033523_837939_418F3C2F 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "kvm-riscv@lists.infradead.org" <kvm-riscv@lists.infradead.org>,
 Alexander Graf <graf@amazon.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The riscv_cpuid_to_hartid_mask() API should be exported to allow
building KVM RISC-V as loadable module.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kernel/smp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index eb878abcaaf8..6fc7828d41e4 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -10,6 +10,7 @@
=20
 #include <linux/cpu.h>
 #include <linux/interrupt.h>
+#include <linux/module.h>
 #include <linux/profile.h>
 #include <linux/smp.h>
 #include <linux/sched.h>
@@ -63,6 +64,7 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in,=
 struct cpumask *out)
 	for_each_cpu(cpu, in)
 		cpumask_set_cpu(cpuid_to_hartid_map(cpu), out);
 }
+EXPORT_SYMBOL_GPL(riscv_cpuid_to_hartid_mask);
=20
 bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
 {
--=20
2.17.1


