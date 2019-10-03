Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3312AC97B2
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvExAXwyrxMOhLF9cHtkKauRY1gorV7EU0oxbR8AENc=; b=rmHOhZBPrPslXn
	ntag/Yeq7DFqA+OmKNgzqegVAr6KwEoh7aOJ72WrGYUskWiBZyYQaIsxkkMgMMEILr1JsdmITbt9g
	jl2Qp3TACN/n6+qnpbJq14es1nI4sI8LZj5xFLFNRUF0TT46HtfKQCC4ayewJZ0ZdHv+Y+sp/yYdU
	F/FNhZ/1HheL8RTLSOFfUCHj0UFF5zEEcsZvyWvkovws33fl3LxJWhoIQQkbLfTYQXqLqecvjwZ6N
	Bd8iZHEylr/ouZaf54qWq92Smz8I4urwZFNMiPvinDWZRsepiw8o88MXlddsc9Pfl5FBwB6OEFod3
	gl1Mys9cFBgLQW92RaLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtL8-0003pi-RV; Thu, 03 Oct 2019 05:07:46 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtL5-0003nU-4t
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:07:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570079267; x=1601615267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WI2pUum0Vz98zmcCy0oe8jHgcv1NUOJuTi8N6+P2iho=;
 b=ihZa693N+fUtmuFIdSA8qjL4LgQXI2ZUBgi0ya8YR/2OtrIghN9C+dGF
 5CKBgNZTgPRXbbHB4l5bN7kk+Co3H0oRXEARU9fO+A7T8N2FuaiMWY4tf
 GocpLpY6qsKMKXLqAAGB9U7xR0CdBNXG5UgpiL4oQSQh6h0TBoRU9sKly
 xc8M0Ss9h/s0c2fls7RCHM3qKyVqMUb3Zqn6Km/UDqgva3NT3Ze12gk3f
 dFhGvD1P5FwjKqBKwmZuxSbHkOmHH9yXPeMZ+N/O+Pc1bux7GBw8/zaLc
 Zzv3D6VXJKUudXuCLXS1OVTTjIvbPu75pMas22n2DcCasmGQ2JjU624mb g==;
IronPort-SDR: U2rzLpAanPbbLelm2+ARV7KW6T1TiGMSjGbihWhjau+7yQ+vcAfmcZjLpMiOKQ3cb2Nhe7UElw
 SIOd83QAo6kivA9iH6ezUj/2APku+OixpssS/v4Ej80h+x5cPvTmAJjpPsl79gMTh2YQr7UIrU
 ol7SGcdVsPgBAbi8+pRTdKKmRye9cgFW0I4qkIyteNaQVV2G2j1CRi+ysvaTYX7F3fPWf61pGX
 bzt6vlyJZqX9qCFopswBg+J4R9EWbib1H20AS94GOzeabh0O0Y1sVIg3kHlch+NfE6ARLQM6PI
 Fcw=
X-IronPort-AV: E=Sophos;i="5.67,251,1566835200"; d="scan'208";a="220620893"
Received: from mail-co1nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.50])
 by ob1.hgst.iphmx.com with ESMTP; 03 Oct 2019 13:07:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CjewzXkqsdczBy6BAQc/jdGkY0RKftjF0p0U8P3nKLRS+srtHAKYosM8QFG4MjU//YQO90ZL06G7NDY5uHPfq9G0NWWMyGzS1sNdsy2bTwA5T22Qu1ZJBV6bcZTJtbw2RdYIU8v/yXN+5uzd/AyvDhqzI+aF31CCVQgeJPS4WLd1cSibdgOfF3Kw40W+5/dx9Gc7Urz6uK8aVp6uDVQewDYZTOAFlneSMo98MKrQFEDLH71JEXXupEIb+bSe43UOoXtsF4EfeWmPa2qN9paBM8bpiTl4Ottyo1Ed0vDq91P3g48jhO1A8YaEbpMYH2vSsqREy48URM0l9KfeLp/a9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XA/uq2gGBUDV+apHlvAM4WpvBC/lxz/mAAIlFZjhQgQ=;
 b=D+w9ZpmjfpabayoktNp9KN0sqVlkjn5PMhUA7o+30u7cFTuWAjuxqvaJix7cLoIgcmqtcBmnth38JOQc2e4apiNgbBLGV88MYgeirYQjw3vcE5Pp7v6Slec8/08tbqXiTj6VmDWC6JGQrTNyIeK6FEKLCfrR5840PmyIctjyorBpfOVIkODKJTJO9WesdZhFLJ8pIB8nc6e6+NzUjNR/8+qWj30rh3myVkrS+uxrC0m+e0Vj+De/Hx/UEoY+oCottzZFMCv4Rh4u0H2ljfj1v0nXPSlSg1x/MJHiNp4Emk48/zMynfEnnlNIKoxruK6Xqa/ZqtFG3T2HxVz75Ojw7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XA/uq2gGBUDV+apHlvAM4WpvBC/lxz/mAAIlFZjhQgQ=;
 b=u7tXJNxzw8FhT57nMGGzzUEqwsyTBopVYmuU94ZwR27mxLd2VIoF0n6zjgd51ZYJbDZWGKe23L5U9rdPO8ryAMtJviuIHsMsRAqCuVRIsgur62V2kJJyH68PUB9dOxDpjUFuX9wIj3DjdPhLTKb6LMzyybPQFjFXZgUNdUNd57M=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6272.namprd04.prod.outlook.com (20.178.248.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Thu, 3 Oct 2019 05:07:39 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 05:07:39 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v8 09/19] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Topic: [PATCH v8 09/19] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Index: AQHVeah6Lf401GA7mk68mGfWJjhE6g==
Date: Thu, 3 Oct 2019 05:07:39 +0000
Message-ID: <20191003050558.9031-10-anup.patel@wdc.com>
References: <20191003050558.9031-1-anup.patel@wdc.com>
In-Reply-To: <20191003050558.9031-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:c::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [111.235.74.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd9371aa-19bd-403d-5a9e-08d747bf9cf9
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6272:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB62721957134F2CB0F58CB24D8D9F0@MN2PR04MB6272.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(366004)(396003)(39860400002)(189003)(199004)(6512007)(6486002)(81166006)(81156014)(8936002)(6116002)(3846002)(8676002)(50226002)(2906002)(110136005)(66066001)(6436002)(316002)(66476007)(66556008)(7416002)(66446008)(36756003)(1076003)(5660300002)(54906003)(7736002)(305945005)(76176011)(25786009)(52116002)(256004)(14444005)(71190400001)(86362001)(99286004)(71200400001)(2616005)(446003)(14454004)(476003)(102836004)(186003)(26005)(11346002)(44832011)(6506007)(486006)(478600001)(4326008)(66946007)(386003)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6272;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MA6SXwzBCRPfEQZkRbHDMQldU7r3qql8zAsEJQp4N0xLglzdFOU32klWu/QRyDiATz3UVR1IfzsumG8Hk26c/nqQoRMUGMo2mfJWPyUgxBG38luiXoI2jOOiVhvOhyPrGGTikmw7MwMe4w+1NZ8t59WZeq/mhAgNBA3VCHyxW1u8ummc9Lw4jWJwEF2egZpEJL8Apd17zp9iyrumC+lKlbfYT8QxhR9gl4WdLgmyMLmDIlo5ZfT0HAbQVReaMh5yLXBIgVFNU3h4kZ2Qt3/bogamoR0Suqzx2DPSiST5uAMh4WzEbpheOdtF4Z86ST4J+41b2IRBchRZKlPsyqv6LRy6pQzJqHTIXdMtScEQcli9MVQoi7YinJ4N0oRj04NLPDibJhT6fXfQZ3AB0VMN87Nc8+tbIWvkRI6VKdinn7I=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9371aa-19bd-403d-5a9e-08d747bf9cf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 05:07:39.7775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n1NoNXqElzIik95I4oC1xUbZwVgpFGY30Y/1ExUcfTi0e9VgrMyKL0rIsyw2KBobDhZXWTxkQsrpuIjMweaGDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_220743_233300_1F13965F 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
