Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196957EDF1
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU36WHqoft635HzpCEYWhHJlEAMB18TbRkavBDCvD3A=; b=W8g3KMZGQX9pbw
	JBVXOaI22d4X1gB5P4E91inzZXXhJ62fM80oIOBGvuCgafDEWh5LKvjPdtjUi5RXvU5Sqrbiydaph
	gwC3GKXz0zYEwO1vlHEYkNXjc3kMHz4HMh6Q3Ldew8FdVYexKfkX8qrMhXqywbnCE+393afDTsOMK
	otcx2UZskk0wtfn8JwEjAHH0K1YCxLsLNr89LG7q1qICtPrLI5DdKPhclEfQDaElOHPpRPSvWmRY9
	CPCxq780dXBVg0qC9KcDYwFy+9NZG3/du6IeyTYaQDzEn7ZVl4o80e3If3eMwLp6sxbl4+cs1QODB
	hupN268QcTyfKH8SUVvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSIl-0003jL-0y; Fri, 02 Aug 2019 07:48:35 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSIc-0003i2-OC
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564732183; x=1596268183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dlhGHQ55RinvFHRyDZiLhm76djHz+M5oHNoV9EDT4rY=;
 b=S95QPHBbQYj/nmjtb6NCjD6Vn7HmtTcLN7FezWdZp7ybFxVBuL1p4c7Y
 h0C7YDWh0ZhHStx7SjFW7z0tL/b5xSeyGIBLuJmbPl0jwdER7Ipz1q/8Q
 Ra66ViJvmTrKnlSMnmEAC0baD/hPZkkmfhZDwmXmgTw9/f3EWA3LKddo3
 VbGPRGdvJTimC1qSW5O2QoRsIamdYK8obujdJ6s+aFSg4TegTsqeu70WP
 QEI3xp1CviHCuF2W7mL5aHm2UuBqk9l+anzHpTIApZ6CYX+9UrXbV8Z2b
 j/ZIG0pO8Hq9x5bAKn992e4aD2vjVtCsEfXoq6RNdlGeSyYs05n4v/ufC A==;
IronPort-SDR: wUSS1PxXz1XbLO/9WWQJ50gHlC0TbBZU8oB6MmUqULIrb8zz06yDx4s8qcmFNvFTAWvJ23yhk+
 fjylG9xBitkCJzhi78i5T/nvcb+Q7u09PmntsGcoHPrnhLQmZ7U/h0xH1uqvXZWXw+fULtlNG4
 FXzFUqNTjdRI4FKkCabHuHjB3ZxgimcxbCFO5rfcPeybHzkNjWTajaoBCo7T9Owx64t5vowA1q
 CPWNPoccUdtsrSHVA6FVDl+yYJmPLiBtkF6GKzWoVNLwI1KcUk2ytuBR/NJQ7UyVorEvHmKrH6
 IbI=
X-IronPort-AV: E=Sophos;i="5.64,337,1559491200"; d="scan'208";a="215006713"
Received: from mail-sn1nam04lp2055.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.55])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 15:49:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=knIpsN5ErUNiVB3soFdiOPpeVzm49DcVZqs5m+Jpwb40NvT7FK0LnNEWj66bfbUfZFT6DeB76KCloKJKZp9gnulh4CfPBrmpvde+NtTa66xq95djj6IPJ+zwM5wxUJlZMxxfMeU+g516zWct1KdBIJ4e7Bjep2z4FzctPsnhFSH8aEq0xK+gki3VptzaKzalDCJOEbMJZ/rgwlefDyptWJTopy4z0GHpE6G2dS7qLY02Jt3Dqu4YDYHpq4pwfApnjtsrfJjxTcL8k1p0EBJoprDMbpEyhb4Updvf4MpDoys5+H/XK408MtJ3MP/+SeQPbDo6uF/1y/2rLMSf3SO03A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pbKH0CIB76KzgGSM2NncdwcPc8chwHxB9XpLCjiCqgI=;
 b=ocv1F8MTdKBZlGXsce5xdRWl4W/yzDZ25JhwKxy0ZV9VUQ6zf+3QVrO/NgLAsMW5a1QsbyBrmh8EpVIivxD+t1yOdwW+RsmVRp5JE4yrKTZ4qNBU2RjeM8t7YFE4tPjY4bA40/Dmi3r6pIpSaJt2MQCjSW9kAwZyfIVHBTkJCrVTKBm2t5TPGHKLjODBJC+0Y0jTfZpHK+z9/eVXJczyaPCZYfLx61z4XErEe61M9EAagQ8GYETqQWj/KzWZ243Cwh7n1zOPg/TphNRFXoqInIJIvRhVA8kvCWIdj73pTocP+YH3eatI9Gu3IgZJXox2y1UKWcQLH9iPkforYqMvYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pbKH0CIB76KzgGSM2NncdwcPc8chwHxB9XpLCjiCqgI=;
 b=YHX4+Eis6x1ExZaCebeSNlcIZtlcx3/p3MRJzCn1Dx68LQhRigEuh4alst+mBE3R7t4vufwq7tHexfowS9IOXr5jdt+a2WYcw/BYgOPrG2qZrk6MWRC5PF9PpVA6oVc1gXspiLB90LXbQG6DNmgxeaJwiT4YI4EAAxoc0msokso=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6286.namprd04.prod.outlook.com (10.255.232.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 07:48:22 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 07:48:22 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH v2 14/19] RISC-V: KVM: Add timer functionality
Thread-Topic: [RFC PATCH v2 14/19] RISC-V: KVM: Add timer functionality
Thread-Index: AQHVSQaoKT2m3DLIy0aOphg4hG5RlQ==
Date: Fri, 2 Aug 2019 07:48:22 +0000
Message-ID: <20190802074620.115029-15-anup.patel@wdc.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
In-Reply-To: <20190802074620.115029-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0111.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::27)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58fda76b-6ce8-4b07-08e3-08d7171dcabc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6286; 
x-ms-traffictypediagnostic: MN2PR04MB6286:
x-microsoft-antispam-prvs: <MN2PR04MB6286004052DDDF6C154A818F8DD90@MN2PR04MB6286.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(5660300002)(26005)(8676002)(186003)(71200400001)(71190400001)(68736007)(476003)(8936002)(50226002)(2906002)(36756003)(81156014)(81166006)(1076003)(316002)(446003)(102836004)(55236004)(110136005)(52116002)(78486014)(305945005)(54906003)(86362001)(76176011)(7736002)(6506007)(386003)(66446008)(64756008)(66556008)(66476007)(486006)(6486002)(66946007)(478600001)(99286004)(6116002)(256004)(9456002)(14444005)(3846002)(7416002)(4326008)(11346002)(25786009)(6512007)(53936002)(2616005)(44832011)(14454004)(66066001)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6286;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qxFkVgeYE+z/BXjLk9/EER9N8UKs5HJvYe8iakrNlPa4IEQkhzNg434Wy4gT7+4oSWbTm06CCiQ9dvavPn6yEB2djI7JWsActOj+Y8qMx2As6v3eENAosKIKbxRJMYO/8yns9gLmlQN3e0xBSb4D038WdA2u1dtlFD8UqiTyDOVIecmDO58dPwR0SrqBFufihf8BXKru6QWWNAdYav2pIEbcZ4yT4A/vIZQgia1tNAmEZtelloR7E5fG5YhpFIEg3cNJbodrco0BwCuaCUJ1RpT1u3P2KyN8WJvWrVQz233nTM38wWvq3OPQsRyNRiRdaA1X/rbO9a4Nm0lcCtvSxx/bhZqFejEgqWHy3MNoJd0FCDBSncT9B/Vc7UKFPvGht0u+UhEkg4IJaf3vHCb7awsem5ywJ5/E2yrqyPWNYcY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58fda76b-6ce8-4b07-08e3-08d7171dcabc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:48:22.0914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6286
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004826_889740_0FAEE7AC 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.20.161 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/clocksource/timer-riscv.c       |   8 ++
 include/clocksource/timer-riscv.h       |  16 ++++
 7 files changed, 173 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
 create mode 100644 arch/riscv/kvm/vcpu_timer.c
 create mode 100644 include/clocksource/timer-riscv.h

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 257617a76e36..a966e3587362 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/kvm.h>
 #include <linux/kvm_types.h>
+#include <asm/kvm_vcpu_timer.h>
 
 #ifdef CONFIG_64BIT
 #define KVM_MAX_VCPUS			(1U << 16)
@@ -155,6 +156,9 @@ struct kvm_vcpu_arch {
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
index 69548ddaa272..3166e3f147e5 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -51,6 +51,8 @@ static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 
 	memcpy(cntx, reset_cntx, sizeof(*cntx));
 
+	kvm_riscv_vcpu_timer_reset(vcpu);
+
 	WRITE_ONCE(vcpu->arch.irqs_pending, 0);
 	WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
 }
@@ -105,6 +107,9 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	cntx->hstatus |= HSTATUS_SP2P;
 	cntx->hstatus |= HSTATUS_SPV;
 
+	/* Setup VCPU timer */
+	kvm_riscv_vcpu_timer_init(vcpu);
+
 	/* Reset VCPU */
 	kvm_riscv_reset_vcpu(vcpu);
 
@@ -113,6 +118,7 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 
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
