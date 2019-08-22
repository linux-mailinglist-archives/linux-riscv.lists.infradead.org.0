Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD8998E39
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 10:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRroq0HDxEU+Wg7YBUD8WgM14mulLbbOhDzl0u8JJ2s=; b=j1hNoIilcp9a1R
	13ER0/5fzwf4deGmjHvkdrHM9/Pam1sveuPsWl88wa5YbN+fq+Qb29vDCm3tM8bxjyw2v/rf3FMMr
	rM6xdAx6T7XfnAXe3R0f0BB63KTAknqlhfRXpKnfv2SzszOEm+NJF0YkHqPqXOf4/8LeEl0BgsFbn
	r5h0mYu7nyPtBz6tt0PcelKSr04m31MJaM/BDFLjLS2iX3FmQW4PJBoV6mUbs+cxMBEEVd7lt8h4Y
	5goB/wMWT6L3PoUyrUyMfR1wvS/ghXcO5CwtgUVAU5nxuLNJt1tDB7cmQ6FM4pQt6TuOEigaqC9PG
	5mkLpPHtPGsNccXs6naQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ijU-0000Ku-7y; Thu, 22 Aug 2019 08:46:12 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ijP-0000KC-NL
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 08:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566463567; x=1597999567;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wuc+6NYKLHnB3Yqc0ddviyY2ue8Au6YT0aeQbDEiJ5k=;
 b=aNWipQkIq+r8vWtIdtawlCEQbONb2XqCkjKX1W4gcMcgNY8bkRyZvwNQ
 urOh2GVEF9/bkFGwkrmoq9riGms10dvzn0FwbzXnbS+5WWIYEg/+ZNpmX
 d+LPT1rtSQOavBd5B29Y3tf9JIPhTjhUBO5zpCFcAdvtaaJkfrPAxCBHI
 cHHFNs87kiaPDVt8dagnNmVbCy76X2AnQ4juBuIetoeFC2/lZuC2VH1jY
 /RakPp0XImJQZWB1iAq95vI/H+KfzCjgJVFmPV4SWal+vQ/+8HMZLJAsj
 xwV/S6SrXADObGyhK3RH2wsfiWhbZv5UWKFOhJYxC1o0KRlhUfSHClfWN A==;
IronPort-SDR: HfL15U+W2A1p82YVNKoa9bZR5XsYtEA1S33eyDw446gHnhC5ei8z73sDKDhvymEIp0acudgQkq
 Zz60eAS2dAHQuiAx4vDhibkJj+HywrI21Urym0gSVknJK/I+hnG+G7xUrD+gV2zCFqqnfpBJMr
 PkHjbbBL6v6EKQC5VYg0mn0KtuYEaGgVYhgVB8sLlv6W/id6YvoIu7cSsxiNDzuQufeE6rXc6t
 Bk+Qo3fWiUyLzBQFHxKP0WLNwv9JOs2CUVyyyaNPZq3FAqKvOc0gdGAfdp5vUJHuoKK/Bs5zpf
 yQI=
X-IronPort-AV: E=Sophos;i="5.64,416,1559491200"; d="scan'208";a="117334222"
Received: from mail-co1nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.59])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 16:46:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X39Oadl/0tQAqzkV5VwkLHNQK+UvYl/Jdvoux/RozY8C1CeJe1XWLOWwRHhpmyt4Bw9s8Q4sAt8tnHW2a7zTMx+moJyb6+ldJMg+SbWG3GtRtnl4vALY90hTnzoGhkxevGxNaW7XBS7bZT7vz8B8lzmHKgJ9nWbcHsYe27895PnBfT2Crd0mfGUTmeMZchTxjaByY1TLvtKZSs5WF/sHbCeHQni7ew0WBz99wVZ2MJyI4hX0vts9689RPaNE9Wi8Nr6/IbBG1MH293DK0Zd4rmtU8xiN30bJITkQ9iNM+hyIDytqAW/8oqnqmTkOyv14Mx6zGEhUbqje5eyCwakUWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrTUwsyJCtcgdUbi7mMQ7oveiKRjGHqQfhhRKoYebBo=;
 b=ULSRaVH0t4Lb1BSscZaqrHy+KtsY6Dgj1RpzehjVwKLism/oaXRjbU4x3RpfMeFFFUQhfZx+j/ZBmRu+f6gJ4GHbcoaSwRfZ3q4hULD386ZvhNFRQxN3M1ayiPKvYewm+FSJlnNaWtwQJLbbYl2ODgeYRRfglJCWqT6oRNgD9X3nompAfCeJ1x0aCt1EZEXS6pbUBdPfpZQ2N91NMupkRoY2ft2GF9bNA+JBRO0fSSGOT2tk9528ibykLdrTGnitiZ7btJNkdjBWpG6NDyfmNA+TztzBMF/Mt2tSgtoExOKxxC8Pqv8glsrg+CM5FDch4T8GX7IMMwkaB28dSqDSug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrTUwsyJCtcgdUbi7mMQ7oveiKRjGHqQfhhRKoYebBo=;
 b=SUaVWOeXv34XGQO8fJ7cZjD7Tr3gDopp/Jj9DxN3H8S53jQyUdey3wUl+I50nj+Y7+RkR08C0FWTVzom4sT0DzElIXU5Wf/rIZzkhouNWTw13VFgoUc3gjT1Q4DlQbZKd0zLBPy3Bd0HtyagHCBZhBKYVw2Qn4fQLN+270i+EJE=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6048.namprd04.prod.outlook.com (20.178.249.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.19; Thu, 22 Aug 2019 08:46:04 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 08:46:04 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v5 15/20] RISC-V: KVM: Add timer functionality
Thread-Topic: [PATCH v5 15/20] RISC-V: KVM: Add timer functionality
Thread-Index: AQHVWMYIKnbeg1XcQkWMdZbMiS2qzQ==
Date: Thu, 22 Aug 2019 08:46:04 +0000
Message-ID: <20190822084131.114764-16-anup.patel@wdc.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
In-Reply-To: <20190822084131.114764-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9aa9a529-0ae3-44f1-e48f-08d726dd2a6e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB6048; 
x-ms-traffictypediagnostic: MN2PR04MB6048:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6048FB4B3C3A70962E684DA38DA50@MN2PR04MB6048.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(199004)(189003)(6116002)(6486002)(3846002)(54906003)(316002)(76176011)(52116002)(2616005)(50226002)(446003)(5660300002)(1076003)(8936002)(8676002)(81156014)(81166006)(11346002)(478600001)(14454004)(53936002)(110136005)(86362001)(4326008)(186003)(26005)(66066001)(66476007)(25786009)(102836004)(7736002)(36756003)(6512007)(305945005)(386003)(6506007)(99286004)(71190400001)(71200400001)(7416002)(486006)(476003)(6436002)(66946007)(44832011)(256004)(66556008)(64756008)(14444005)(2906002)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6048;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FV/MGy9rGFeChYPxOV+jgj4F3UWU38dQnhv1auVrAHY5Fo8ihZoa67GzvqFxGYVdAHm+BCbbRa2q/wpFmBridGRaNM3IMdkqHZCTDTqj74J0B3iyJE61sP6UbZB5uICyVj6kIpMjSV/92FNWuH4EICeV1YErhQdTrRCLYlwfP43PtNZMRFE024qZpyVL/QIsgEBB5DReG+75zBXYldUxOAWISxBR7QRBzF9dta772j8/KF+Ywce8wZ1OrolNQZAN5yIQbNie0eyEVhvcCIVUNldix/Oekn6ydm2+TEK7NS8w229gsgJD9ckL/0QMhOVrmH27fGucfgjuigc7DJCAYyQuWDJj6FAcfpK7ZDVdbR6seL+ahFpcdBGTL2O2FIsUJlhxzOXGVaTIXWXwoctpl8RrJ8fuxy2+wkvz/p23uno=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aa9a529-0ae3-44f1-e48f-08d726dd2a6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:46:04.5578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ebaa8csKymOpCNyfjkatpC0U8msbGpV67L2DbPjY9zpcrTycPJDuWM+zOgwA/hsR/L5Jasu5mZ5tuNYh9NwXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014607_936496_10E48539 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 arch/riscv/include/asm/kvm_host.h       |   4 +
 arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +++++++
 arch/riscv/kvm/Makefile                 |   2 +-
 arch/riscv/kvm/vcpu.c                   |   6 ++
 arch/riscv/kvm/vcpu_timer.c             | 106 ++++++++++++++++++++++++
 drivers/clocksource/timer-riscv.c       |   8 ++
 include/clocksource/timer-riscv.h       |  16 ++++
 7 files changed, 173 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
 create mode 100644 arch/riscv/kvm/vcpu_timer.c
 create mode 100644 include/clocksource/timer-riscv.h

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index ab33e59a3d88..d2a2e45eefc0 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/kvm.h>
 #include <linux/kvm_types.h>
+#include <asm/kvm_vcpu_timer.h>
 
 #ifdef CONFIG_64BIT
 #define KVM_MAX_VCPUS			(1U << 16)
@@ -167,6 +168,9 @@ struct kvm_vcpu_arch {
 	unsigned long irqs_pending;
 	unsigned long irqs_pending_mask;
 
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
index 6124077d154f..018fca436776 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -54,6 +54,8 @@ static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 
 	memcpy(cntx, reset_cntx, sizeof(*cntx));
 
+	kvm_riscv_vcpu_timer_reset(vcpu);
+
 	WRITE_ONCE(vcpu->arch.irqs_pending, 0);
 	WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
 }
@@ -108,6 +110,9 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	cntx->hstatus |= HSTATUS_SP2P;
 	cntx->hstatus |= HSTATUS_SPV;
 
+	/* Setup VCPU timer */
+	kvm_riscv_vcpu_timer_init(vcpu);
+
 	/* Reset VCPU */
 	kvm_riscv_reset_vcpu(vcpu);
 
@@ -116,6 +121,7 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 
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
index 09e031176bc6..7c595203aa5c 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -8,6 +8,7 @@
 #include <linux/cpu.h>
 #include <linux/delay.h>
 #include <linux/irq.h>
+#include <linux/module.h>
 #include <linux/sched_clock.h>
 #include <asm/smp.h>
 #include <asm/sbi.h>
@@ -80,6 +81,13 @@ static int riscv_timer_dying_cpu(unsigned int cpu)
 	return 0;
 }
 
+void riscv_cs_get_mult_shift(u32 *mult, u32 *shift)
+{
+	*mult = riscv_clocksource.mult;
+	*shift = riscv_clocksource.shift;
+}
+EXPORT_SYMBOL_GPL(riscv_cs_get_mult_shift);
+
 /* called directly from the low-level interrupt handler */
 void riscv_timer_interrupt(void)
 {
diff --git a/include/clocksource/timer-riscv.h b/include/clocksource/timer-riscv.h
new file mode 100644
index 000000000000..e94e4feecbe8
--- /dev/null
+++ b/include/clocksource/timer-riscv.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *	Atish Patra <atish.patra@wdc.com>
+ */
+
+#ifndef __TIMER_RISCV_H
+#define __TIMER_RISCV_H
+
+#include <linux/types.h>
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
