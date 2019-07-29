Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E72B78B12
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSW9P9OFbKPBZ458dpC4BkSNr6FmG2n3DZ7QzOoMswk=; b=M2Cao6IK3AAUf1
	uTOh4W5Frlwj9e7R6ujz7zLaIavZLKTiBR7H8IRYWHDl028CQjcpgWtyl73WTpe4a6ashNSUR+Xl4
	SStRqcgIJAY+JZAdM/wdGFqouAwW3X1QERknAXYWILVIlD/wlbL/eCj6DrlD8Yryhgda8VuEkD/bb
	TgjTG9H63dRVFOjrokWcAswxaKxMHJnCEhTBbtQ5z4/Vds79yHBZQathipXuV4cQNJO3UO3BzwHx6
	lFzequJaFRvzI0jjh/NzhtY9vIQ+goeL8MQ5NimtKMMEIPxYShx3h0i55M2INzUs2v5HOvbZA8ICg
	9hBNmlxrbJQflJkhoaew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4HS-0002p9-Cc; Mon, 29 Jul 2019 11:57:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4HN-0002jS-EI
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401485; x=1595937485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GsHF4gHHIbU3ilO1vh5sF7BYtbgWJM7ACKryGsSPY9I=;
 b=mm+MDu5yKHaEM4p3ug5C2nMf304s+qVbaz5/ZkH0HxNWEi53dMLdknPl
 xPXFkqb5u3GhrRw0Zy2+/5zXFUfPSihoWyoei+ye1Awmo3Oj/5NOIKVnL
 T9Ho5ND+/zv9p/iD132Xv3LQpbJk39au9tT/VUUOr28IsTvwSeP3JBqXn
 gEVEn8CA+P1OXV4NzTvg46Pfg/W9NvZSIsT1NPG4g2HoiMdmqUAwT7T6U
 51Tjtig01PbAT4ausxUi4l7I9flVb3GTCEAm/oXQhpKHqqU5wYF5F+J2q
 LBjbNjcPmXoS45bCfbcB4ToO4mSN/BN9ERne5FiqRxTwRiOe4w1WEINGD Q==;
IronPort-SDR: F6ImFoCDhuGj8zTlhJfMRYbcmd+4jksiH829yljufbK8yx63ZGQmvilM78ue8fhN0tKODGXxXL
 WbEDTORd47btTC3y56vkg/SHgr+XVijPx1t2+baUS7hOBQiEQiLMiZp+9w9zC6UUc5TUj8dq7Z
 cSR7m4CFhw7Ja3+ysyKmIkeaviZhaHjvJkr77UGerQzP/BZWBl6HDeU566Ga/dclp+khYMisfn
 V/nvttyuf5hyld2g13fso/+NnHcuf2Qba0lRI+pc3wDzvFzj+O5DutCGA1Zv9+lViWSRzosX58
 7iE=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="214553109"
Received: from mail-sn1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.54])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:57:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odiEZFkfbE62b8uPeGwAfqzz8bDC1mjc6WjvV0/5N7wPgqMWmWp7968CV2Qfw7I2JuPajDxMQM4cAAajNkUuXib3oJuSMTlmmQtrULMWcTIS6Q4Ket/H5kXCuBudSagsdtXo6AjmxuO2rhMBBAwj+G5h2o20Knqe0RasNRAiViCxG4YBHiAIHiycW4PLgNfX+H4vTwz0OATMs4ovkVwjwD8om75793eSMuIa/iBylPdaiiaa8tSOT0fwhJDw7AAiS3YwJonI6KHSJKc1PreKiyXgNAfMy24RTTt/IZblViu27TqUdjykxB7642dZDAMxxNpdpljxAC2jImWxBjj16g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2IZcUTSXw05WdZG7vyD2MEZ25YP0LbtIOSpJsTLdtg=;
 b=AYT1CLN8cjAn509hRFNn5LH9XLYyrZJ8Xw8yR7Rf2HcfdKOqxMJyn8xGuvJl+3WtErj9a3lrA8UnHH+SRawIgjSek1tsQB2YwVArgoORhq6ZZd4Qx6sMQMBy6I4w37SFcBG2O94TKDdxqHJyGO3d6GLK3fKR65Itt5PHadbFMWFAfG8sgsorUsYP/0AdXExe3E4LWC/Q6f1f5FZodFtNnGAf/XRKgk+G7a3bOfsqSWKXnywSPPz7uz8y6Uh+UHEUnhoOfpfHIbRovBdAMEjPmWGUF4lHQu3Q4awzv/Tw24JPKXdFGEmgr2DPAEwDMGgM95E8Nwt+jao9Bb0KbqbI0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2IZcUTSXw05WdZG7vyD2MEZ25YP0LbtIOSpJsTLdtg=;
 b=RF3IBKY8wVs9lTF78eZVPbyEbaaAka759BjvEREaC2lQ5TCrBFCj1k9MU/h9KKrwZHMEPjeziW9D0C44N4+bkYXVlI17WNbppBRbpIN8EzSquAFgOb/eQKZMmexsMnlG0kN3r46b+g68i6DfoxNv89bikHlwaw3E3M0DPlreJJs=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5952.namprd04.prod.outlook.com (20.179.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 11:57:17 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:57:17 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 09/16] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Topic: [RFC PATCH 09/16] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Index: AQHVRgTELJpWYbc670q25LJ6UKFygQ==
Date: Mon, 29 Jul 2019 11:57:17 +0000
Message-ID: <20190729115544.17895-10-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 9f7472b8-62fe-49a5-75aa-08d7141be738
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5952; 
x-ms-traffictypediagnostic: MN2PR04MB5952:
x-microsoft-antispam-prvs: <MN2PR04MB59528E8116E7065AF476D6678DDD0@MN2PR04MB5952.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(189003)(199004)(478600001)(2906002)(446003)(6436002)(486006)(6512007)(53936002)(36756003)(11346002)(2616005)(44832011)(78486014)(386003)(6506007)(102836004)(55236004)(4326008)(71200400001)(476003)(76176011)(71190400001)(9456002)(7736002)(26005)(50226002)(81166006)(81156014)(8676002)(8936002)(186003)(99286004)(6486002)(68736007)(14444005)(1076003)(256004)(7416002)(305945005)(66446008)(25786009)(66066001)(6116002)(3846002)(52116002)(14454004)(316002)(54906003)(86362001)(66556008)(66476007)(110136005)(66946007)(5660300002)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5952;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P1a/H6Nxfd4zCZqMFJq7IZRe/8F4yfC4WY68eLGMJufeSkqKPiPsRgeQ1s7WgKnJ1w22O+etvu90JH5+IaO7keH6TFgDWEKMlPu28bppizLnHgoPlEKXrXudz/pVSM303b0kmSL2FIQWOyflBEpDXeQieISeMR3Z4mh2mAR5Wt6ZgAdiRq+WWkgm/P2pmUlFi8wp5WNn8z1ev1jv0CQbSLS6S5k8yveY1lYhpx5w12RmpyhFLsqHnuxTiN2X+wQeptTINmz9VNBauyWDnQxXQYhtBIlVSiSqti5v9L0lbwgA6nRfbEGU63MWUHNzP4TxT4RyzR6x80vXbeqoi7NLZeCfninD49TbxULedhL+7uPMOBaBmPDJEIUChfrXfiYOAClSLU+tfRjxfujCxQ8XQHiBv1TOJjcIFZOek127uPI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f7472b8-62fe-49a5-75aa-08d7141be738
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:57:17.4352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045725_527916_680BE206 
X-CRM114-Status: GOOD (  14.30  )
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

We get illegal instruction trap whenever Guest/VM executes WFI
instruction.

This patch handles WFI trap by blocking the trapped VCPU using
kvm_vcpu_block() API. The blocked VCPU will be automatically
resumed whenever a VCPU interrupt is injected from user-space
or from in-kernel IRQCHIP emulation.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kvm/vcpu_exit.c | 86 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index 4dafefa59338..2d09640c98b2 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -12,6 +12,9 @@
 #include <linux/kvm_host.h>
 #include <asm/csr.h>
 
+#define INSN_MASK_WFI		0xffffff00
+#define INSN_MATCH_WFI		0x10500000
+
 #define INSN_MATCH_LB		0x3
 #define INSN_MASK_LB		0x707f
 #define INSN_MATCH_LH		0x1003
@@ -178,6 +181,85 @@ static ulong get_insn(struct kvm_vcpu *vcpu)
 	return val;
 }
 
+typedef int (*illegal_insn_func)(struct kvm_vcpu *vcpu,
+				 struct kvm_run *run,
+				 ulong insn);
+
+static int truly_illegal_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	/* TODO: Redirect trap to Guest VCPU */
+	return -ENOTSUPP;
+}
+
+static int system_opcode_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	if ((insn & INSN_MASK_WFI) == INSN_MATCH_WFI) {
+		vcpu->stat.wfi_exit_stat++;
+		if (!kvm_riscv_vcpu_has_interrupt(vcpu)) {
+			kvm_vcpu_block(vcpu);
+			kvm_clear_request(KVM_REQ_UNHALT, vcpu);
+		}
+		vcpu->arch.guest_context.sepc += INSN_LEN(insn);
+		return 1;
+	}
+
+	return truly_illegal_insn(vcpu, run, insn);
+}
+
+static illegal_insn_func illegal_insn_table[32] = {
+	truly_illegal_insn, /* 0 */
+	truly_illegal_insn, /* 1 */
+	truly_illegal_insn, /* 2 */
+	truly_illegal_insn, /* 3 */
+	truly_illegal_insn, /* 4 */
+	truly_illegal_insn, /* 5 */
+	truly_illegal_insn, /* 6 */
+	truly_illegal_insn, /* 7 */
+	truly_illegal_insn, /* 8 */
+	truly_illegal_insn, /* 9 */
+	truly_illegal_insn, /* 10 */
+	truly_illegal_insn, /* 11 */
+	truly_illegal_insn, /* 12 */
+	truly_illegal_insn, /* 13 */
+	truly_illegal_insn, /* 14 */
+	truly_illegal_insn, /* 15 */
+	truly_illegal_insn, /* 16 */
+	truly_illegal_insn, /* 17 */
+	truly_illegal_insn, /* 18 */
+	truly_illegal_insn, /* 19 */
+	truly_illegal_insn, /* 20 */
+	truly_illegal_insn, /* 21 */
+	truly_illegal_insn, /* 22 */
+	truly_illegal_insn, /* 23 */
+	truly_illegal_insn, /* 24 */
+	truly_illegal_insn, /* 25 */
+	truly_illegal_insn, /* 26 */
+	truly_illegal_insn, /* 27 */
+	system_opcode_insn, /* 28 */
+	truly_illegal_insn, /* 29 */
+	truly_illegal_insn, /* 30 */
+	truly_illegal_insn  /* 31 */
+};
+
+static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			      unsigned long stval)
+{
+	ulong insn = stval;
+
+	if (unlikely((insn & 3) != 3)) {
+		if (insn == 0)
+			insn = get_insn(vcpu);
+		if ((insn & 3) != 3)
+			return truly_illegal_insn(vcpu, run, insn);
+	}
+
+	return illegal_insn_table[(insn & 0x7c) >> 2](vcpu, run, insn);
+}
+
 static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long fault_addr)
 {
@@ -438,6 +520,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 	ret = -EFAULT;
 	run->exit_reason = KVM_EXIT_UNKNOWN;
 	switch (scause) {
+	case EXC_INST_ILLEGAL:
+		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
+			ret = illegal_inst_fault(vcpu, run, stval);
+		break;
 	case EXC_INST_PAGE_FAULT:
 	case EXC_LOAD_PAGE_FAULT:
 	case EXC_STORE_PAGE_FAULT:
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
