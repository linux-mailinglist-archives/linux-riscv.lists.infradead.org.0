Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C79481DA2
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9yDDGMtJpmqEEVQqMqVR28FSkh+JfKQ23+e853wce8=; b=VXJTKxIsu6C3xT
	RgvWLoB/08REMzjqVrtFrjQDLrgmRFcaMy/3NPwROWXKohPMG+Z1sk+XIk/GnrP4ojy/nZcepRHNq
	Xwi3YUIvSBxmWQK/EUeAEuX5GWUnmVWrrwECIePxCxFQNbmG8kRZU8nT15ZuwN6fDp2xN/kuHtqsZ
	wj3SwiCwtW9PKFUX6B/AiNI97a4lu5UlIYKon7RolCfpz0tdbdLD0AtzPcYQ5P/IYjTWCHCqScnAU
	0pvm8YzZhpshgGM+CGEVpeABYXWS7sjEVVycUyoD29MY/tfEMQiq5wqVd/2vaagEiAWJhChi1wXtZ
	+AWQNlmevzVsHgsbWQ8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudHA-0002BN-JQ; Mon, 05 Aug 2019 13:43:48 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudH2-0001x2-G4
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012620; x=1596548620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LJK/Ave72PsAI8/vCQ5O2MevwtdH9wZZUfu65V+58yE=;
 b=UkLBNhAraUwp3HXyBOux3Xut2flYgYFrhrE2l+FasUrpxaFfJoWVem71
 UOJstETw0CxQMgKJ3psCy8mMuFQmSSeYSXwUXCw67qnCc3i7FyOoGsaf0
 cPOCpzbVlWK0yjrfBkIRZ0QXZpQ7lFOcTVVwv/VfS8orbJwykeS+LjhxP
 qqXedPQYVYJkEb7P0jwABVkux/IbT1Z191i2R60ddp9PgA/A6MZWYSVaa
 NTe+qFSpygRscCpxybpg97XpDXThPhSMvAAJOhQ6mGgjBDTPIo7C9LiqF
 Im/AIMffyJg5Et1YFq9h/XZLS1ZJ3bb3rxyLvEVC1igMW8OsnLoBUl2RS g==;
IronPort-SDR: XCrxFlEMTwZ/pTSWMAfzTal4Cb9ZlQpebNvNbd0H4DY9xnSAgQUCHxij4KS8avTtfmTt4qj7ZB
 M7Gjrm/o+BaWeEp/+3gR1hvigWKcKD52SiuzO6wOUcUeoWzMaAIhzh9qmOD1KsK+W5WeVrsbhn
 PdIDexD1MISMIbPsG8ii7atYbnc93ON3brG6xlpzvp0Asg+fT7dBJMW9WrA+SkuWSDwmR+jQbL
 5aDdC1s1ieTSKqO/xTHcI3pGAmT3aQCMAnUDOSj0+xNka41RimZt2Ebl9i9TlhVdbYNpdaoqgM
 R0E=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="115017240"
Received: from mail-by2nam05lp2054.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.54])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:43:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbP80V2hEmQfu1GEufAxqLdrFcemIcIGy0Or0gNIjByfrKsLcx2NxSBUkudR6XwQUl/GUIM9+8DTqaZo96IltH8RT1OeTUBhJZ9iqeOej3WiCyhU1EcpIdAarwN0oQbxmW+Nv0o273AXNGk6bOByYNMNngVfUAF1h98+mq7utRvXKgsvUwG/cCpcno804UuTbufJG8NYmOf/oLkPMa/CQoYDE9OZgY5lkVLs1IkBrLumhVMu5LdG0cw0xJKOmXzB4TlGDaxJGTrzJDheKl648HG2hPL6B0qpbO+vxswspIarVLBMnzKglyd91TBPf7sDMYCojB/K0ESUtCcEBvbTmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mVYBAjg+2QT2TGeXB9UPwk4iIcAgNCJaLaePojKPLFg=;
 b=QLtK20ai76wZdI7OrcE6cZI/r0fOlRU7tqUl65QksRUGb9PpD4bTJji3+fUXpx/CqE7FxRExCf5Q7s22T1rHf72ALEO3iSyzKzAzWQSmtW4V/g9ZvfFQqISNKgfBK6CNmx3pRk+FsgVhWN3QxT3xHbNlTga6UVm7UbMtNSNvK9mN24LLpVRl4g1P0E6BZU10QreLkckRTAYsO+6DLH6uOkLswWZm4P3he70mwXeuFzWBvj45vqO9VwzpJTvWlqyrIsQuxvK6L97k7Hu8Z7iKfq5oqAPD9kinosxrS4eziUAWOhOYD1lIXtURZQVMTKTL0hSkcVbEtCkOG7yUkMKa5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mVYBAjg+2QT2TGeXB9UPwk4iIcAgNCJaLaePojKPLFg=;
 b=hk/vtoPlAFNzkn3L93Z9VSeRLzygLi2swEuwwy66FG2vCG5BmGitGZkQutT7HNLtaMnVqWZNduf6kZD/5nWcE8P/0Tf5aZ4+NWnNn+rluUr+/YIjDaSqxPlSlw2N9rmFqG7Q2ZxIIV8PKAGXbEvtc4LzZxliTa5n2qI7dfLhIEg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6159.namprd04.prod.outlook.com (20.178.249.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 13:43:38 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:43:38 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 10/19] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Topic: [PATCH v3 10/19] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Index: AQHVS5PIGwsadWRkQkeU4TRY90egTw==
Date: Mon, 5 Aug 2019 13:43:37 +0000
Message-ID: <20190805134201.2814-11-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: cbf3542a-fc8d-4eb3-2388-08d719aaeb2d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6159; 
x-ms-traffictypediagnostic: MN2PR04MB6159:
x-microsoft-antispam-prvs: <MN2PR04MB61595645A4CAD50AF939667B8DDA0@MN2PR04MB6159.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(66556008)(66476007)(71190400001)(71200400001)(110136005)(54906003)(66946007)(66446008)(64756008)(86362001)(5660300002)(102836004)(52116002)(55236004)(14454004)(99286004)(386003)(78486014)(316002)(256004)(14444005)(6506007)(76176011)(2616005)(6486002)(8676002)(9456002)(8936002)(36756003)(3846002)(6116002)(6512007)(4326008)(2906002)(476003)(305945005)(44832011)(81156014)(81166006)(26005)(186003)(486006)(11346002)(25786009)(7736002)(1076003)(50226002)(478600001)(68736007)(446003)(53936002)(66066001)(6436002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6159;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JmZF1yV4NAeFcjSbc2hlHiQ5Sggs26ExH7CaDtg6oaOLuOBGQch57+UwxrrXEuDbUyP2ipJ9NA+6kd4kApeds3QTrIP5fmEh3WuVixmD58bvL8geWRz5A4pe8gzd07m2Hja+5dssd+OEUv9jbDb8Pb/6pBdfXn91O/ZGTwXz3afsG9Q+1ZWsYjm/vpe7xKwZubbmwIxsRsstBFuyBNVcnFGA6NnCcQlM6pdkhNk2rFloYeoAmJyfa9QsWKREi08vRLIvZBDuKRqyqiFqHToEYpLjApOGi4XNoqI7nP10EefYPw5xO8nbgayPN7bjTh20adYk39wui3Bvl5COGI+88WNX8q/wgjDRI5Jru2Fc9gbEahHOTzSpxH0hAR4moisXIUSzjnPmDU9MwzR5Xsr7Yh7keN63rWdEGjuLhKvOgps=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf3542a-fc8d-4eb3-2388-08d719aaeb2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:43:37.9561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064340_612471_2A9B9882 
X-CRM114-Status: GOOD (  14.51  )
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

We get illegal instruction trap whenever Guest/VM executes WFI
instruction.

This patch handles WFI trap by blocking the trapped VCPU using
kvm_vcpu_block() API. The blocked VCPU will be automatically
resumed whenever a VCPU interrupt is injected from user-space
or from in-kernel IRQCHIP emulation.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kvm/vcpu_exit.c | 88 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index efc06198c259..fbc04fe335ad 100644
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
@@ -179,6 +182,87 @@ static ulong get_insn(struct kvm_vcpu *vcpu)
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
+		if (!kvm_arch_vcpu_runnable(vcpu)) {
+			srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+			kvm_vcpu_block(vcpu);
+			vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
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
@@ -439,6 +523,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
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
