Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D5D81D7D
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTwGj/eCF7Jonlho0AWuQjcvOQH5Ef8dY0V936vF564=; b=alAOyyrrTTG9Eg
	Dt5wkS1q5M2/243fprpKwNdbf8w07P58S+frTlz3fUbgS+LISLI2GDmHujx+r/MUXRUFMZDMWkbgc
	G3+mrmJ2/Qm2ZUhBsHN+UhbqoSwLrLs/s0bSp5ypktVaOsIa3zNm1Q9b3vVrnRbZgMR/+Y/1DomMO
	sbyAQ7Xa0nFq4ZCf1bFtEOoVeNfFwoihb+Vz+yB7YrJlsZk17CUBfoWc5Fv1qAEWTVfju6F4akAB6
	TZtRSjGNlCE/TqN1dWIAttBX+jJ8XvPl1FJ/NcnRNHrCv9a5vNGkp0sbSiJez+ksyXfGu5G4hulWr
	A8cqsUB57x2oEbhai6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudG9-0001G6-S3; Mon, 05 Aug 2019 13:42:46 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudG6-0001DI-QN
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012563; x=1596548563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=71PGVc9pxZZcZppnRkuckXk1U2lv7j4PsK4oBP562io=;
 b=a9hFuZJ6mtmJK9FZdoPkYROUHK9d/daF55d+INOZG7+EV5UhgkVwIBWx
 JyfWdPadrxVfmhQhBDho1x7rc+pDzLe2A9atN7+7NmVG8jwaNqAKf5ScH
 gvgwKVCNyEX4zD7oIAGRhLVneGsjHHG4+uPeaPRjyitiyi6i///y6OFEW
 AEUktyeJl6HRrGz8epKsQyIkoCrZCTV0e6R77Ndm8bfmawhtlMf4BJFth
 RIaGTU3hj9TEZK6mCyVwLrUPFW652MX4ACeZwPrHGw+QRrS9rHk4GHv+F
 ijI4crMKCLpjMios8wN1I80TJDBhvAOMLjYRww8CsZ4oW2aPKxD/Ym3Tj A==;
IronPort-SDR: 04f/TXyawxte++cdoqRiDPNsm9otM/hdicO8rS0bvFRmt0RRJet1qCaG8SY5CQi1YXAwLMjgVc
 z3EnNGu6T5R1ZOZ3vc+rJL6wjM2Gn41XFlJ9Y2+JgaItFqUtFgEPIWrlbsteZSNvEyeo2QS3Y/
 yTujMTC/gPCmyoKsCqUz1fhUOvY5U8iCyCKdyOLvPvoi2JnUbAe9ePvx25SlfdiQYtUe4kkrZH
 STahGh0V3vvqdaQb1bgHrJclQodTaV0+55mqvDOtC+7yn0kX4j7Ji33FJ8mTd+EpS3OJGEeUaD
 Mik=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="115017059"
Received: from mail-co1nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.54])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:42:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=idPCX36oWLaIEGT4s7GdjRnPwRgfZHHXAJjgaDXXjV+t8ngUtusEsDQT+59gCUhKs6xgumLSS1/sATVhQDmczQGj290+3G8ZL9rKBvTv17UbxPes7pT2q5Jyp4SR3fjA135bemhgsDg63iMa5r1ugBpZdaXqyjU0KlcAxDYhw9XzQDYm7SLN/0UMd2BhKEQadCbva5BcvwX8MORtn7J+LWs3ycredEETKoDV2c6IR1U8cMA8VrsR8q7ZlXp+187LnuBq/SA6c07oNSZ4meXw+T0ctZbASPMKJKqMcgkFBWCCwaSGVR1vVqhwrOyh+2d6rp1SkfWU/GaPLyIT2+Nu8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyOTVUpilWpgvsgWDa70MrkgbiTndFWkKtVgmRK4xrg=;
 b=fT8+m8EurF4UQjpuzqKOGXS2+PxPVH0X/aj1UExZYH19DqbjAuQvaPfUD0Eun848xKdTkFTKZ/4sDE03HJiVNZqEiPXisJg6WYJlSV1eqkGYJt6fJJ9YYOx9tOEsdTHcvgfW5C9MEJbs6Nw6hWvDglqMMifYpiOCETfhaXHMhYWCqMCHSq6YmHVwaWrWl2DK8oS4IgRVpfOXWo9D6R50G/Y8ETyPRipBneoAxOkz77VMpTXUN3Tl7jwQDI7X4R4TBy4YXN4NAGgA9KPJDSzjZjbcyoflSbZQgEor8AZfmYoSSK53yyuxIvCEGb+83c+KMSIS9rK2mQooSRNuhKqyzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyOTVUpilWpgvsgWDa70MrkgbiTndFWkKtVgmRK4xrg=;
 b=DOisZucGwODTbfi/HmClgnrI4na6GiJObhgHLQiA/K3aD3VFCzxxTxLTLTw3G2tiXMmQhml8Utkj6FicsaG4aOb+PW50G7Ds9BveDulAWLSxuWe5hZclEB4yCUqQh+rtRMaTxcJwSswFR+Npu0SN7gF3YdLGYL2DIifnScPih7Y=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6446.namprd04.prod.outlook.com (52.132.169.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 13:42:40 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:42:40 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 01/19] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
Thread-Topic: [PATCH v3 01/19] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG
 interface
Thread-Index: AQHVS5OmatkNCqFXDUifbjEA52gPjw==
Date: Mon, 5 Aug 2019 13:42:40 +0000
Message-ID: <20190805134201.2814-2-anup.patel@wdc.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
In-Reply-To: <20190805134201.2814-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::27) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f0652d0-442f-4ab2-5216-08d719aac8b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6446; 
x-ms-traffictypediagnostic: MN2PR04MB6446:
x-microsoft-antispam-prvs: <MN2PR04MB6446B6978502D5E2C0AA1AA68DDA0@MN2PR04MB6446.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(189003)(199004)(102836004)(55236004)(386003)(25786009)(4326008)(6506007)(76176011)(7416002)(53936002)(2906002)(478600001)(3846002)(6116002)(44832011)(2616005)(446003)(476003)(11346002)(86362001)(486006)(1076003)(6436002)(256004)(110136005)(6512007)(316002)(54906003)(6486002)(14454004)(66946007)(66476007)(66556008)(36756003)(305945005)(81166006)(5660300002)(71200400001)(71190400001)(68736007)(64756008)(66446008)(4744005)(81156014)(7736002)(8676002)(8936002)(78486014)(99286004)(66066001)(50226002)(52116002)(186003)(9456002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6446;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: n49y3IXYPyuVEracHTG65nL7UIyTpPbq1DTqCLpWWKTXYrcDqvKAcKjK0WKemE/9jIAENn3sCJGMR9M8Ow/MLpaXEu/ul8065iF5nnAD0/OBXqW6KgPUpzdsMyW0n1H3lIDuCVI2VHcBOngXg9f3AD8d5PuG4ysWawx921PR0lDqNvu96plF9OlkJs0tdW1iIaxPHSdxFegKe/o/ql3oGHxfyFG07CRv8LMG9IIAqMJziG2Y0sBwlTvTg88F8klUXvwOC8ihCM9WQBgHy0Ke3mBs2jiogTZ2Iywmro/oXDNyv6cborK9fRAx7EcPAMpaAsjhHnQC8lkoKSicXV3LQZPv7dmthsJhW4UcY1xgck6CsFik1InpqDwwrwNhOrLop1Ji9r+k18gBReJ9Ud6VaCGy4HLmUaPmajA4Rruwyp8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0652d0-442f-4ab2-5216-08d719aac8b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:42:40.3010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064242_917073_858D34CC 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 5e3f12d5359e..fcaea3c2fc7e 100644
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
