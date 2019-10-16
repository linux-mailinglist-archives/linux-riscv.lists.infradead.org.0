Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E153BD9686
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvExAXwyrxMOhLF9cHtkKauRY1gorV7EU0oxbR8AENc=; b=jdUeig5ZqqVBnx
	H6YDLx5Pnra2qLQoh/AJFoXW+aaE2lTuTdCGflkbggcJJerETGCTXRKTjLUMtssWOCOxQ2Z4gIGsF
	7v9ISr57K5Hq8HMwjJujWt0RUK/vVC4X6w5/KaEx/XXrfOM2PUzbaj+pi24q9ueYVR45WE+ynSLro
	ilJnnG7UKDTvYoUXY3bfHHBscCd2b5gj0Xf/4IRzGkgGJTxaszYViMgcZCLecg1/biOu6L815N+bm
	dL4X+P7tLqBWYvbpyELTLPGK9HJ5wNsTPzTb6Sa5jRmvEYgSzNewSceW1/pGHHB//Hkd4atRoCKhK
	RpFsYX7w14ZO1LA3vhig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlsH-0000Yb-Uy; Wed, 16 Oct 2019 16:10:09 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlsC-0008W6-8J
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242205; x=1602778205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WI2pUum0Vz98zmcCy0oe8jHgcv1NUOJuTi8N6+P2iho=;
 b=odDKGjwkBqqAeI+OZIUDQLvAIjgEWT+/ET34jT8slhuBQcX1nJBYNG8U
 oXozdaiPgNBowm5vy7fbWEll/Xbo7946IRSfYrETnBpH/eO6rYRmuIx0V
 JI4y5OBzE12rsahAKg3vQh84mwqc/tqGXvpV9nhp2uan5+6wlx8tcsR26
 +5NHpZ+/siRHerX8RwuVI8o40p1UFj7l8WP7o+u17c7Cv7H1qPdvEQ+Gh
 3R/5eRZyWHmZzb6RdB4ZwtrumBo1qwg+sTaq21DKoGzgfLtiIhXU+Ra03
 n/lXFcUfW+JkiNFQj2K30Ox9f8n2kpSddow//B/la+L/BIb+E4F3P9480 A==;
IronPort-SDR: 4WiGKyS675/4RW1SjgXvQCbUU9PFqrLjhmPrYkjHatRRmzKfgYbqxtji1T1jWeJP7bl3XAN1Kt
 QM1p271j49zwFIjNp+kFeTzxtKtWuTNEECSifT25LoodhG6jH/y/0SZUv6B85jAqTusa/0PvrC
 n1/gstq4f5kqq/bgYcBX9jWxoqgA3JosoB/z5QFDSWf5Ph5dhun7unwcRqWyJrEY4p1GSG1ZMX
 RMl8Kb26um636kMIQdul9AOcjhafohtscyI+jEahoZ5C+wbpZId04fxCJeG0wcGtjrilKRMMrv
 7/c=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="122255551"
Received: from mail-dm3nam05lp2054.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.54])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:10:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lj5VGyFrLD1xoYGS0NciyGJlbm4OpV3aPgefIF4E+NI/cGE/b1avy6cQtT0VGsWFpvW1SYF6/eyun5PbtRS0qhQSdP1tzDL0hf1+qALsplubsqCUN6ZE1v3UXgNa9aOpS/hlDgbDFq688l/tmWyQqcOp1rHeP/C0AFlc2slaeOKPJLakXwIENrosXGW68eWaaDHLOHzlrKBBdeRsP3xm6tLCBRlSYg4FUg1I5xHIrKNaismorEAhQVoDg0p8QecLrYLYcTpxBptT3/6NStEXTQ3u6qF3zH1ajLhZu85yPg+0iGK/EA91bq0l89LrgJIpbP+LAA9BkUUGWMKQHHt1ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XA/uq2gGBUDV+apHlvAM4WpvBC/lxz/mAAIlFZjhQgQ=;
 b=FL0ogAmN57JHix+RKwuPxNd8GB40A4ShcZKUsJocbsF01l9GeluH2kyY78EngiNW4eYqLacVcH7Cxl6ns9+AdVCoD+r7YBdSFjuKkoRETfQp08GLFfikAXR1GJ4beuh3cjUV1qIp73QpYJdo0sAKntn2c61VAXaCs49VvEjH8GhcwJa/+7b6UTyMKIiuPaIe6Z5N/VQ5SwpH13+/TuN2iHs/U/7nisroeqaWkYflz8xm7DPPPhANCrOcIyfWeyW6BaNbwFGhZcs8cdgqnOuSPZTVzFpAquydBCHC5b8Lj1YU1WZ57/uk2HeicObdrQ8zDqK7BbfbWzVmX98PgcfZ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XA/uq2gGBUDV+apHlvAM4WpvBC/lxz/mAAIlFZjhQgQ=;
 b=KqSwvUxOIExxCmEQEc+r3PXwXNU4DOarIST84chKEEE3+hzm6uuhCztKvFqhPIGngdBKmNWm3HKbswE9EAZXkSza8r9PZRakQntlX/vfKchoWs5IXkdsqHo9VpGWuwxQI0GYttnJPCEraQ5fMYdYtuKto8Esnm6ju+r7n6vFZkE=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7038.namprd04.prod.outlook.com (10.186.146.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 16:10:00 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:10:00 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 09/22] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Topic: [PATCH v9 09/22] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Index: AQHVhDwpAG0zepWVoUeHrzGECUXK0Q==
Date: Wed, 16 Oct 2019 16:10:00 +0000
Message-ID: <20191016160649.24622-10-anup.patel@wdc.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
In-Reply-To: <20191016160649.24622-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.27.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c362939c-b8a6-4e8f-61df-08d752534bae
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB7038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB7038A0FCA8862C7AC10447B38D920@MN2PR04MB7038.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(102836004)(44832011)(486006)(2616005)(476003)(386003)(25786009)(446003)(52116002)(99286004)(186003)(76176011)(55236004)(66066001)(26005)(6506007)(5660300002)(36756003)(11346002)(64756008)(6436002)(66946007)(66446008)(66476007)(66556008)(86362001)(6486002)(4326008)(6512007)(1076003)(305945005)(14454004)(256004)(7736002)(7416002)(478600001)(6116002)(71190400001)(3846002)(54906003)(110136005)(2906002)(316002)(71200400001)(8936002)(9456002)(50226002)(81156014)(81166006)(8676002)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7038;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Ktc+j15KMEvSQT0yhyPEpQURTtVyPOxa/6sMyrUNhwk9NLz13PdjLHpM+ZponebiD1DRLE0EnvrwtvWWoRJwiQ0jyzDltHuPhIOlToxA8NM4SX61Pj/Q8pREEpy8yl1Qxa8EO5dfW93cHNnjvGUVpkDCLnzdFqePQUqG/cziS7ZF/dT7PoDc8o58OMbTQnYcXCSW1eNKFMkLsXd60jt4+HvlOEJhGQtWrI0j9dgMXioYc/bwt8SR2ud20nYovIEyz1+JGAH2+WW4MgyZeYpDyRh4WzilV1SJMxOAXsNjMbT+J+SkLKMNLVhZondayPVHUquxxsHSKCPDX0ZShRXhT25uKr1j/ckmTvBg+sLCYDB7F80JyQzS8Ab/APdKMYpBX0pfSVH9OQ89p4Yl7dZvN2E30z/jY7yVmE4758JDhA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c362939c-b8a6-4e8f-61df-08d752534bae
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:10:00.5684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3oZyya6NeyfuOfQkyqojoINqQzjKBwB1zrjI+1BEOkQkOgauskpRJVwSvgMDubrp0uLqWGLJBBU8Z/eSQcI30Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091004_389325_BA79CCEE 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
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
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 arch/riscv/kvm/vcpu_exit.c | 72 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index f1378c0a447f..7507b859246b 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -12,6 +12,13 @@
 #include <linux/kvm_host.h>
 #include <asm/csr.h>
 
+#define INSN_OPCODE_MASK	0x007c
+#define INSN_OPCODE_SHIFT	2
+#define INSN_OPCODE_SYSTEM	28
+
+#define INSN_MASK_WFI		0xffffff00
+#define INSN_MATCH_WFI		0x10500000
+
 #define INSN_MATCH_LB		0x3
 #define INSN_MASK_LB		0x707f
 #define INSN_MATCH_LH		0x1003
@@ -116,6 +123,67 @@
 				 (s32)(((insn) >> 7) & 0x1f))
 #define MASK_FUNCT3		0x7000
 
+static int truly_illegal_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	/* Redirect trap to Guest VCPU */
+	kvm_riscv_vcpu_trap_redirect(vcpu, EXC_INST_ILLEGAL, insn);
+
+	return 1;
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
+static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			      unsigned long insn)
+{
+	unsigned long ut_scause = 0;
+	struct kvm_cpu_context *ct;
+
+	if (unlikely(INSN_IS_16BIT(insn))) {
+		if (insn == 0) {
+			ct = &vcpu->arch.guest_context;
+			insn = kvm_riscv_vcpu_unpriv_read(vcpu, true,
+							  ct->sepc,
+							  &ut_scause);
+			if (ut_scause) {
+				if (ut_scause == EXC_LOAD_PAGE_FAULT)
+					ut_scause = EXC_INST_PAGE_FAULT;
+				kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
+							     ct->sepc);
+				return 1;
+			}
+		}
+		if (INSN_IS_16BIT(insn))
+			return truly_illegal_insn(vcpu, run, insn);
+	}
+
+	switch ((insn & INSN_OPCODE_MASK) >> INSN_OPCODE_SHIFT) {
+	case INSN_OPCODE_SYSTEM:
+		return system_opcode_insn(vcpu, run, insn);
+	default:
+		return truly_illegal_insn(vcpu, run, insn);
+	}
+}
+
 static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long fault_addr)
 {
@@ -508,6 +576,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
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
