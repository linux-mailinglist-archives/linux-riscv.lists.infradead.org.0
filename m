Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E2D78AFB
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhiZBfjjjQqEYsyyIsLT57n62sPOPTEEPUO3h1iDOeI=; b=TOQYMbYX/R24PB
	P11VRtxWKTWokPLgvO24QAw6G83lIzU71WwyRcDPPCamC6E/O1DJduLbJr2UXUt+SUITi38Kj0Tap
	ylnffq7LiRI4D7hDFz9MZ8bv4rGPk8yOtHITh5OjdaJ7VnWvq/j+owMwGuepx4LmMwd7SMaUWXDCJ
	cNOAz9C+0I9ZEV5CKKCMEuWXzeiV9trUgTvnKsjkJR3EMzv/wHLzO0Bsrwb4RDVX6lWdWJQMVNOmu
	t0DMK1wOkR2UR5Aqbtg5J1KCODhiu2QZKVdKfhTUyGqC6aCvn8EooJn0Q8HOu23zueHg55Luz3uJn
	deqQydZBt3k6ViUGKOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4GW-0002IF-AC; Mon, 29 Jul 2019 11:56:32 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4GT-0002Es-TZ
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:56:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401401; x=1595937401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hH7etl79ZpfJxHHPqbla+Okggd0CtmJEM47yF9QZBpM=;
 b=nBuC2ajMtl6KEdEF94k1L0cZrmqMfYfcSUS69EQHAxQxO6hkBFM9c1Ui
 v/uRnAfbj4LktD+NpQp/xQHyEFBoORKX9imqu9rPdkBhzxTsGidZ15Kkm
 yQZbXzDnpgLxqzuRSgvpGxBDEFgi32DbHzdlbeVxfk33KmBfNK+fv5llG
 RIu9/C/tLk3FNFBb6lp7Si6DJgBhxq6y+ZHOhXXMpXsWrI3ViK4jemTai
 lyUZPj4MTwmkQgkeBI10Ar6LM+VKHET34lDuvG+AD/xz/203kwaRltBEl
 ZCyiDAco/NqD6fFCOmLYbwSNFsCHqizsLnbwkLpOgcp2x0nPdg+TaA6HI A==;
IronPort-SDR: z8cNlTar4RhfX6+1PqB16VGcmC87IoJ4E3SwT6WUuFzA2OdZ9hdjf0zgjIrorKFf4EavBwzK7N
 j5OQMoKgq+TKSoGc606AwI37+djepQViRQt3aokeKolOv9Nqi2JktY1Y4MkEd5/4gVS7BpOUx0
 iRbIUvIdY2WDhKK+DAOHiAFsspniXTZVr7XkBdCkk5tqC+AyGNzEonHl40wtOaCR81+BCvbd9B
 aMQ3JCIPq7YsOcqpaS/Rya9bTS56ovmISg9LRE97T3VBTYrh79yQa3HJ3jOqtT6J0/ZbIq7Raw
 4rQ=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="214553052"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:56:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICkHqUxsjfKX7jZAwDfEcOHdYiiYk45mm2bnVngtKkcVifxlQpz7sg/jP62U5w49HO8tye7KAtnAbRyO17Rfe0Zk+LX+T3sPvwQZ0YcaXirIZ/v100MzlZp3hdQa6VA48t3eH7c3qlaw0F7XBDIxgLclWGTbbNjRnJfE/iFGklxZJ/rk3JnEE4GX6QvngXJ4NKKGnUhLJ9e8HYjLgwfu77k94yE+OnXxQy/Emws+B4nuNx8Xj0YDE/ETddHpofmTSFmiETfkXkyA5cu6q6PUvrfNnPopZNEfuu0TaA/0shFVAO+VgHJfwnamZ0YmS9r1EsQ2/GzXk6Cw0K3CLoApXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cIf5ar9KJ4QA9rBh1lTCb1fvDMUQSmqrfiZPoUtfzIY=;
 b=KHaXq5l3SXAlY8G4xvBIuFI+RoTfwVRPf/eQ62GGpb2cOciKuIze9zd/FGJ/72yxAKURzKVnhQPU7P+nETgZ5mXQQNrUZyuHx52fIYGouLQwwpc70OXkwtN2oVAfIFHsRfX8x4poFFfmghN4nEO0UeqziQz5BOkNqHrnvD3qLvTIB9uB0vHHC6Ujc1wkLpGzrat584d01S8IM7WYPKXARr3sI6Mbm+bToUGchYMc36C4c/rMRxgbwSs9JiDLpd6lj4yBzD7UF4HpSKLE4hwjSD84YNM9UKB6kwIWj4KmBhHIRnKxC8qjqeqfgrYPs8767+Q5FrbDbrVTmfbwOzCy2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cIf5ar9KJ4QA9rBh1lTCb1fvDMUQSmqrfiZPoUtfzIY=;
 b=MTmWFyFhMBN8VjL6bMWPOsyMOtIS4qmJ1s6bZnBYvkQwfZsEnB5rRPFRsS/RFY+pTZAe53OB+1RZTL5XOrhe3G2OkS1tErW8mNWv0MhBvm+WRfiCWMAPJ8pxIQBFYo6DLplwdycuPIxlaABqd8GjyZfdF7oJJs7HmE7hJ483xuU=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5952.namprd04.prod.outlook.com (20.179.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 11:56:28 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:56:28 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 01/16] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
Thread-Topic: [RFC PATCH 01/16] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG
 interface
Thread-Index: AQHVRgSnaPlunpy9GkSc6WLWyGHt/Q==
Date: Mon, 29 Jul 2019 11:56:27 +0000
Message-ID: <20190729115544.17895-2-anup.patel@wdc.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
In-Reply-To: <20190729115544.17895-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0116.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::32)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.23.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45ece69e-3a8e-4874-76e6-08d7141bc996
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5952; 
x-ms-traffictypediagnostic: MN2PR04MB5952:
x-microsoft-antispam-prvs: <MN2PR04MB5952142573A63857451E36738DDD0@MN2PR04MB5952.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(189003)(199004)(478600001)(2906002)(446003)(6436002)(486006)(6512007)(53936002)(36756003)(11346002)(2616005)(44832011)(78486014)(386003)(6506007)(102836004)(55236004)(4326008)(71200400001)(476003)(76176011)(71190400001)(9456002)(7736002)(26005)(50226002)(81166006)(81156014)(8676002)(8936002)(186003)(99286004)(6486002)(68736007)(1076003)(256004)(7416002)(305945005)(66446008)(25786009)(66066001)(6116002)(3846002)(52116002)(14454004)(4744005)(316002)(54906003)(86362001)(66556008)(66476007)(110136005)(66946007)(5660300002)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5952;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dIKZmULRFFohR2fkbqZaEq/HkdZ6FBdwFfi0XgOAL/hyzk3+Fx3/q4zsCByLRYnIIeTFDoNOuCvhMsqdc7OKawY2WQgSly49t8idN7SFSgHC+286h6rKBlkOSXqYP1tqgCOjLGsTHkiP1uyHdK+85OLZHfBuhVeZKAXgft1SGOBcdumVGAjJQ7RZ++KwlG+CGHTtE34Ru4wMK0hNbeyosl5HPulzAKepEKl3udSjL/0i7kpqADIIoPOopd496cAKGvWS/tQjfdyKi0kNq7yH7s5IOmnrlpkochEX8YTql9hKYw8ZupmLznCAfu9lWyWXWISXaeSlp2FHLGrE65+oITuN3JO/cBQqqAvjhuSKMK/aMjFhEK8j+EcqdJ8td8izftsJIQhj8O2ixcu6haYDAJWCERLdmXPtRdQCpvzwSiM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ece69e-3a8e-4874-76e6-08d7141bc996
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:56:27.9135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045630_006935_8B34C776 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We will be using ONE_REG interface accessing VCPU registers from
user-space hence we add KVM_REG_RISCV for RISC-V VCPU registers.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 include/uapi/linux/kvm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index a7c19540ce21..1b918ed94399 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -1142,6 +1142,7 @@ struct kvm_dirty_tlb {
 #define KVM_REG_S390		0x5000000000000000ULL
 #define KVM_REG_ARM64		0x6000000000000000ULL
 #define KVM_REG_MIPS		0x7000000000000000ULL
+#define KVM_REG_RISCV		0x8000000000000000ULL
 
 #define KVM_REG_SIZE_SHIFT	52
 #define KVM_REG_SIZE_MASK	0x00f0000000000000ULL
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
