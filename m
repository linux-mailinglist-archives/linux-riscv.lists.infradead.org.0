Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC3178B1C
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBkUf7YupmEhskv2iIR9Lt3KlMuIY1vgIMpLngUtQ0A=; b=uQl2gOKbNq5ivC
	4Tcnw6/5b1gkYZelJNSPOGXLXGMgsU7TSJ8uA0LFu3YyMJCorml2knRc4+/ORqwHDrn8Cvv24fLHj
	qmD7SgTEG+3wlCcLQ6AvJve1YLuE8V+OuYLVKib5LiBA/PeFjmbEhaGFZrmmKKwl1sQOZJj/roorm
	nG6DrypWyItwEWVFMEtiEMROoIcvWK4Fu+DrcitfYC4AZ7xkInTvWuAoWz6RvHaA1ST1V/aP6kMrG
	7wXTRR0koIkr0db9+oU0IGQmxZmC/0k0MXlwR1PG0zvVaLJyeXy07GVXZiUyjYkAGjkwi+NtLkMqk
	QV6EL+VEUydv3wyFskgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4Hl-00036i-G9; Mon, 29 Jul 2019 11:57:49 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4Hg-00032k-VY
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:57:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401465; x=1595937465;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nQtRPffguA9RyyS6vFbTH4fPHJmxgJ2czC64X/kh9AY=;
 b=b45TBOz9RXB9i2kylOlRvTDuxkJieCY3QYaLEzQObppm5VRC/EyaabOr
 Df3PIfsKAfSdzdaBOAC5F65/7I01zro6jaBmkDD7HOkaZhlIcnaxnjG95
 Uu646v++CP4rV5vZeMezDlhQV4MO+DmD1f4UQVQ3RmlE7p37AjgO5N2Xh
 2xvGkzPWyQOR/4uIUTiZR9k8fZHsig3h/Bm7eEQHJzT0rJuuQ6whQaT+7
 VDy98jRI9unz+VZRABx5UY4PFESik88/4g6QYorPpnBAmidjkz/uNey6F
 54lFluUc2Fkvs2nZ6My1rs6Uav9GFBWeUPh5UHtclTLHb4402v4ZjBX8V g==;
IronPort-SDR: ZFLpCKmccZ4pRtkpBe1iVO3TTepGLCrkghfgFaS000ckxRtgkAkWRWSVuGwDiNS6th1sgIrHwU
 +cU240l+Q+wM/SHPlsEqftX7MvgMnYmiV0UWFPSqpE6654wI7PXdSo+ebAJ9EDRw7QTfgT/2yP
 t/xf5f5dAixxlj1AkgbAydCiiHsnyqSzwNbWgZ3mSeCFxluTZrQMFEUvv4T5oa/yBKGDAwSB2s
 tNYnKIOwguU45YTkoyFjP5dDS8KcrLreedcntPsWp3Bp4Qu1aApo1mLu4YvZTW6N66dTs8zZMI
 Nfw=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="115403248"
Received: from mail-by2nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.57])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:57:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dTiR1ghz2iJsuF6DZSU1s0RdH399QoAo8/GyeshmTl32Oh6xeuh6DV0i9GA+NimF8wZUMxW85O/QAtfJkb8ZJWbgnwrTAFM545AY0Xx/bLsivA3o3qR6g7yrojokx6YtrFBKR+9fvtHTt1sCKCoJLgKBdq78OksIQ3kuvq2j83rrB2QQL/x5dKivjSEDpQm64RGwzFHGLo7vSEfvSq+6O3/l41XOFCYAW/HPA5OYqoItxqF6BaVlR3wM3yrZAY91mMpTN5jnUltHR3W5xQhajR42+lk7J3TyZi2+xaVZ4yLVU4+x865niQL54U1OaTYAGVeXeTyTmfGipMfbmTuGSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCFA8wGPUgs8VNvwGb4+twyGdrV+5gsY1wkupEU0Ugo=;
 b=lyvFDEyXtXmG18j05Jq/EwdeM2Pj9ClkYbl/mlCx8mdElGuJA6f+lKCAx6+oikpXOZlTEj+msMGQ1IIqVOAdBRIZorMm0PokRmdK4uDuoeZUe3OvgxCsyqz8pZThz/RP5y/ex2VJQvt1mX7rgQdmKb0yqKwqJDbkQt1Myu6bdtYE6z/18kyB3S8B79MPlY2S6YxLJN3b2p7dZh40N+tSWUR2qNeh6yyKvOFdOaoou0Wd9HNi3YDTl7a7rxA9IxPwMOWyMNX/7sIFtjKY22JVraa54zpt/yrdlBEClod8BtwC/W6GTPQDV4PSVFEZJgJ98pnoYNVojLEiZPXmjurdmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCFA8wGPUgs8VNvwGb4+twyGdrV+5gsY1wkupEU0Ugo=;
 b=YsUVU94K/BnZzpvhOvqmmJLwrtEuZxiBmdKe4UpDOkhdWj/agYpXzcdKnRO5twiPfksYhoWE2NsQ3wtDj87Boli1fjgGI2tsHZ0/VKEXhf1ASNZahLfJBg12uchUp+SM3TQyo5Ikd8XvhQdJBgCtCCzfgec3TnQegRzi1VxBUKs=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5678.namprd04.prod.outlook.com (20.179.21.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 11:57:42 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:57:42 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
Thread-Topic: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
Thread-Index: AQHVRgTTKdPqElF2fUCYfAtXBvxjpA==
Date: Mon, 29 Jul 2019 11:57:42 +0000
Message-ID: <20190729115544.17895-14-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 3a565744-d6cf-478b-4e09-08d7141bf609
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5678; 
x-ms-traffictypediagnostic: MN2PR04MB5678:
x-microsoft-antispam-prvs: <MN2PR04MB56782ABF21BD6088C964E63C8DDD0@MN2PR04MB5678.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(199004)(189003)(7416002)(52116002)(6436002)(6486002)(7736002)(476003)(2616005)(2906002)(5660300002)(66066001)(4326008)(446003)(68736007)(11346002)(81156014)(81166006)(14454004)(53936002)(26005)(186003)(78486014)(99286004)(36756003)(44832011)(486006)(305945005)(8676002)(54906003)(110136005)(25786009)(8936002)(478600001)(76176011)(102836004)(71200400001)(6512007)(1076003)(66446008)(64756008)(66946007)(256004)(55236004)(316002)(9456002)(86362001)(66476007)(50226002)(66556008)(6506007)(386003)(71190400001)(14444005)(6116002)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5678;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mScB3NwOYO9UUwO5fWovguBe7XDUb4w7w7iAb+N7l9KokNqZOchJ5AZPCih1SPHeWwp24fya/Gp9Hc7pp3tvuYAhLBWPf84R/gp/r+92scskgZRWOxXAvwKQQK7wPbCfKiFVJEUOx0WsE0Ummq2cNhnWh2vesYcoE05q0N22np9bDeo31crV0KH8nL/IzpC2WK0mlCeASmG8HQvBKKiBzFkOa7bp26ZVm1gTFaqvpL69NtKgkT196jygAV7sCx5tmzWiwp0uh2R4NIUEceX+DHRRY/sYNEAuAQkZBIzhkU+Iw0MMan9aUVFZAOEQHEDu6dogjYH3UMXuF/UtS+vCJad/e01pyTptzMp75cPbuL7BGHDed5dma6P/W18vJtsm9dqPsyS84nHrTRQOpbyJPBbUfgrknYylTwW9ON8GVoA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a565744-d6cf-478b-4e09-08d7141bf609
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:57:42.3040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045745_132570_2D256413 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

From: Atish Patra <atish.patra@wdc.com>

The RISC-V hypervisor specification doesn't have any virtual timer
feature.

Due to this, the guest VCPU timer will be programmed via SBI calls.
The host will use a separate hrtimer event for each guest VCPU to
provide timer functionality. We inject a virtual timer interrupt to
the guest VCPU whenever the guest VCPU hrtimer event expires.

The following features are not supported yet and will be added in
future:
1. A time offset to adjust guest time from host time
2. A saved next event in guest vcpu for vm migration

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h       |   4 +
 arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +++++++
 arch/riscv/kvm/Makefile                 |   2 +-
 arch/riscv/kvm/vcpu.c                   |   6 ++
 arch/riscv/kvm/vcpu_timer.c             | 106 ++++++++++++++++++++++++
 drivers/clocksource/timer-riscv.c       |   6 ++
 include/clocksource/timer-riscv.h       |  14 ++++
 7 files changed, 169 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
 create mode 100644 arch/riscv/kvm/vcpu_timer.c
 create mode 100644 include/clocksource/timer-riscv.h

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 58f61ce28461..193a7ff0eb31 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/kvm.h>
 #include <linux/kvm_types.h>
+#include <asm/kvm_vcpu_timer.h>
 
 #ifdef CONFIG_64BIT
 #define KVM_MAX_VCPUS			(1U << 16)
@@ -158,6 +159,9 @@ struct kvm_vcpu_arch {
 	raw_spinlock_t irqs_lock;
 	unsigned long irqs_pending;
 
+	/* VCPU Timer */
+	struct kvm_vcpu_timer timer;
+
 	/* MMIO instruction details */
 	struct kvm_mmio_decode mmio_decode;
 
diff --git a/arch/riscv/include/asm/kvm_vcpu_timer.h b/arch/riscv/include/asm/kvm_vcpu_timer.h
new file mode 100644
index 000000000000..df67ea86988e
--- /dev/null
+++ b/arch/riscv/include/asm/kvm_vcpu_timer.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *	Atish Patra <atish.patra@wdc.com>
+ */
+
+#ifndef __KVM_VCPU_RISCV_TIMER_H
+#define __KVM_VCPU_RISCV_TIMER_H
+
+#include <linux/hrtimer.h>
+
+#define VCPU_TIMER_PROGRAM_THRESHOLD_NS		1000
+
+struct kvm_vcpu_timer {
+	bool init_done;
+	/* Check if the timer is programmed */
+	bool is_set;
+	struct hrtimer hrt;
+	/* Mult & Shift values to get nanosec from cycles */
+	u32 mult;
+	u32 shift;
+};
+
+int kvm_riscv_vcpu_timer_init(struct kvm_vcpu *vcpu);
+int kvm_riscv_vcpu_timer_deinit(struct kvm_vcpu *vcpu);
+int kvm_riscv_vcpu_timer_reset(struct kvm_vcpu *vcpu);
+int kvm_riscv_vcpu_timer_next_event(struct kvm_vcpu *vcpu,
+				    unsigned long ncycles);
+
+#endif
diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
index c0f57f26c13d..3e0c7558320d 100644
--- a/arch/riscv/kvm/Makefile
+++ b/arch/riscv/kvm/Makefile
@@ -9,6 +9,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
 kvm-objs := $(common-objs-y)
 
 kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
-kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o
+kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o
 
 obj-$(CONFIG_KVM)	+= kvm.o
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index f3b0cadc1973..ed1f06b17953 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -52,6 +52,8 @@ static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 
 	memcpy(cntx, reset_cntx, sizeof(*cntx));
 
+	kvm_riscv_vcpu_timer_reset(vcpu);
+
 	raw_spin_lock_irqsave(&vcpu->arch.irqs_lock, f);
 	vcpu->arch.irqs_pending = 0;
 	raw_spin_unlock_irqrestore(&vcpu->arch.irqs_lock, f);
@@ -125,6 +127,9 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	csr->hideleg |= SIE_STIE;
 	csr->hideleg |= SIE_SEIE;
 
+	/* Setup VCPU timer */
+	kvm_riscv_vcpu_timer_init(vcpu);
+
 	/* Reset VCPU */
 	kvm_riscv_reset_vcpu(vcpu);
 
@@ -133,6 +138,7 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
+	kvm_riscv_vcpu_timer_deinit(vcpu);
 	kvm_riscv_stage2_flush_cache(vcpu);
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
diff --git a/arch/riscv/kvm/vcpu_timer.c b/arch/riscv/kvm/vcpu_timer.c
new file mode 100644
index 000000000000..a45ca06e1aa6
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_timer.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Atish Patra <atish.patra@wdc.com>
+ */
+
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/kvm_host.h>
+#include <clocksource/timer-riscv.h>
+#include <asm/csr.h>
+#include <asm/kvm_vcpu_timer.h>
+
+static enum hrtimer_restart kvm_riscv_vcpu_hrtimer_expired(struct hrtimer *h)
+{
+	struct kvm_vcpu_timer *t = container_of(h, struct kvm_vcpu_timer, hrt);
+	struct kvm_vcpu *vcpu = container_of(t, struct kvm_vcpu, arch.timer);
+
+	t->is_set = false;
+	kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_TIMER);
+
+	return HRTIMER_NORESTART;
+}
+
+static u64 kvm_riscv_delta_cycles2ns(u64 cycles, struct kvm_vcpu_timer *t)
+{
+	unsigned long flags;
+	u64 cycles_now, cycles_delta, delta_ns;
+
+	local_irq_save(flags);
+	cycles_now = get_cycles64();
+	if (cycles_now < cycles)
+		cycles_delta = cycles - cycles_now;
+	else
+		cycles_delta = 0;
+	delta_ns = (cycles_delta * t->mult) >> t->shift;
+	local_irq_restore(flags);
+
+	return delta_ns;
+}
+
+static int kvm_riscv_vcpu_timer_cancel(struct kvm_vcpu_timer *t)
+{
+	if (!t->init_done || !t->is_set)
+		return -EINVAL;
+
+	hrtimer_cancel(&t->hrt);
+	t->is_set = false;
+
+	return 0;
+}
+
+int kvm_riscv_vcpu_timer_next_event(struct kvm_vcpu *vcpu,
+				    unsigned long ncycles)
+{
+	struct kvm_vcpu_timer *t = &vcpu->arch.timer;
+	u64 delta_ns = kvm_riscv_delta_cycles2ns(ncycles, t);
+
+	if (!t->init_done)
+		return -EINVAL;
+
+	kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_TIMER);
+
+	if (delta_ns > VCPU_TIMER_PROGRAM_THRESHOLD_NS) {
+		hrtimer_start(&t->hrt, ktime_add_ns(ktime_get(), delta_ns),
+				HRTIMER_MODE_ABS);
+		t->is_set = true;
+	} else
+		kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_TIMER);
+
+	return 0;
+}
+
+int kvm_riscv_vcpu_timer_init(struct kvm_vcpu *vcpu)
+{
+	struct kvm_vcpu_timer *t = &vcpu->arch.timer;
+
+	if (t->init_done)
+		return -EINVAL;
+
+	hrtimer_init(&t->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
+	t->hrt.function = kvm_riscv_vcpu_hrtimer_expired;
+	t->init_done = true;
+	t->is_set = false;
+
+	riscv_cs_get_mult_shift(&t->mult, &t->shift);
+
+	return 0;
+}
+
+int kvm_riscv_vcpu_timer_deinit(struct kvm_vcpu *vcpu)
+{
+	int ret;
+
+	ret = kvm_riscv_vcpu_timer_cancel(&vcpu->arch.timer);
+	vcpu->arch.timer.init_done = false;
+
+	return ret;
+}
+
+int kvm_riscv_vcpu_timer_reset(struct kvm_vcpu *vcpu)
+{
+	return kvm_riscv_vcpu_timer_cancel(&vcpu->arch.timer);
+}
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 09e031176bc6..749b25876cad 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -80,6 +80,12 @@ static int riscv_timer_dying_cpu(unsigned int cpu)
 	return 0;
 }
 
+void riscv_cs_get_mult_shift(u32 *mult, u32 *shift)
+{
+	*mult = riscv_clocksource.mult;
+	*shift = riscv_clocksource.shift;
+}
+
 /* called directly from the low-level interrupt handler */
 void riscv_timer_interrupt(void)
 {
diff --git a/include/clocksource/timer-riscv.h b/include/clocksource/timer-riscv.h
new file mode 100644
index 000000000000..ecb9f70e2f98
--- /dev/null
+++ b/include/clocksource/timer-riscv.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *	Atish Patra <atish.patra@wdc.com>
+ */
+
+#ifndef __KVM_TIMER_RISCV_H
+#define __KVM_TIMER_RISCV_H
+
+void riscv_cs_get_mult_shift(u32 *mult, u32 *shift);
+
+#endif
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
