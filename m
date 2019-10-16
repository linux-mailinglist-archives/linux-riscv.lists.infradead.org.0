Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A45BD9693
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxKPuPVQfe/W0U0q7PpegIpa+1FEKz6vDXmmkKBvXZg=; b=JCyZm+bKKB/aX3
	j7mkVdApMPHovCc7S2rSJm0uHjV+1Sgvo8iH7x0Osfs7ABqWK+Dbo7ghstr4uL1dxOwMKRQUG7Ql5
	ZwFHd3/LuzJMZwt7DdCQbnWOtogXeHG2LvFkbVxj6zZW/PBclenc36z6lpAnP9r/6+amN1Ex6V8Zw
	V8itn2eh5acDgnNcftI9MZQyc3MvmfLz5jZU/SHGEY1nKsd/EhNm4g5Sbi4GSr7WeqaVfNnGfHQNp
	kiW0mQAcgml3cq4hMF+vTyo1ffGCOYv8EEgGiDEAIx1i2kUzfXyCjFig8LSpDK2+tyDsFyi1tdXJA
	SjeOGOI1DAGJ+G19jt+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlt2-0001SQ-U9; Wed, 16 Oct 2019 16:10:56 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlsy-0001Rq-H3
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242253; x=1602778253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s/FezfmeDvloVwFW2CBOqXqTQy2cR+yRjRdY7cVGHvQ=;
 b=meg76JBqgoEsZrjifjKKwSpiLY65X1SBdvBwRblMKoUbKnnux4LTzJ3j
 2MyChb/Fh4zvNBGb5ntWbCGQRupuu2VO1uAfnmI+QqGLzS6T5+NzoI+M6
 bFB2HmtRu5iycGp/C7/HFeOZHR6EioRl0GohmHYUnKOEn3QtT5cnEcwBt
 abBXXIUYKWinNBjJgEaB9zJJR6XXaJUJB3+i+eN053k8D74I5f1Bjwq1/
 EGtooWiLcxwCxC6dMBgng8KFKFiwGv6KkZVI0uo+24blcu2OTV7umxOai
 rYWxOvT+90MO0YR4hjuTpWkm6DPNFeDmFAG7Z2LFQYIQesWWcOtMNEzAn g==;
IronPort-SDR: TzJ4l1j9iiMf+qjelN9RXgEe8rhpykDgRpSurYLwLxoot3x9a7OzO6FrMnHV3PV2FZ3oeMUATJ
 1ChjGnGcuhhD4HhxZezL5mHuNnT/LHwpeVbpAgN14JQJeOgndK2OOf29qSOiBg2HgdSoyFNIS8
 OJFyGtSEoWtvIqnYlNwOtNf4CaaEmIsaFhTNhQRNUztozfC5Oe4Iaqln+lZWl9XbfuNFNc+0oh
 sQI25jzKaznbIromSWEXd+QnLbxhNn/3eWYaix8Lb1W/FYVwYX9RwgqCcT3XFhHyXpwUwrbaBp
 qDM=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="121448324"
Received: from mail-dm3nam03lp2050.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.50])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:10:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpVs6fKDuUNvCBvnIrZU7vFJ2aEDR/aMSh9cxzsM3U4oizd7oeVpPh2j95IdZvhM7u+H65wTs7z+piGvO064sWNf2/2AVBLmfpQkAnXTQZg7qBw4Dume1GiHKAFeQrBcxeW/mx/RyBGlpWh60ic0UUxg0oUXn2eeohpmn2+1lfd6UbrzNozRfdO/XErjh7Pz5xYFPkw1xpBQhgAUWCnllFqyKXK4n/rI7pSSvq+nYoxhUs+uKW9ExuWmxQL49x0M+QLD3yiiolPTTTQjXjboGU9Y94NJoaf2n2nXesHEZUUxWaeRhRjwpHO9+L5J+XfJu9HKwLH4XOQG6d73LWtz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rlvej/j+g2n4bhw6H+t5klqmTXvwIXZ5KSNtxzH1RRE=;
 b=EBZlIOh9m6qbLAeBO0UlV9N316TqG3DuIND1IxkbjtpCPVpSFSVyULvpoQQrjsgnYbtwQ6Kyy7bSNCtwI7D+MFIxOSwTG8q6ooeD20jXdMkFhQDNzA91L1qAz7E3KGehX5wVhsd52Gf+C7RTH+CzB4Foj0dK6hffQzSnsR8xnHqP8D293ovxeR2qpcIZO+lWKvEgeFGpH6A/yu9Qelqvccdb+xPE48hiUt1EIQyKB9+Mwx5RDqfPOs7ZQvZgUG3ZpmdGZSCOR7kRC+tyQRJrvgXKGVoELyjS2+LqHWfs0zobYtm8qngXi//15j3a2RYdIeFeNeXc/+ZSkeQySiHY6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rlvej/j+g2n4bhw6H+t5klqmTXvwIXZ5KSNtxzH1RRE=;
 b=VmIWZa0xFRffU2afPdOeYG2IqHAqe6PMlrPL1SLk5B1IgcGW13CuahoQNZ4Ljj/h9PyW/QuM4swuP07HWyZ86g/6Go48PFRv9apASPScESb2Eyrdyjg/G15aZ+ybqDf45+mXHw0SkCNqIeLdJJLcRvBxTl7ur7ybp16zk/Ergtw=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6397.namprd04.prod.outlook.com (52.132.170.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Wed, 16 Oct 2019 16:10:50 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:10:50 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 13/22] RISC-V: KVM: Add timer functionality
Thread-Topic: [PATCH v9 13/22] RISC-V: KVM: Add timer functionality
Thread-Index: AQHVhDxG0eY7JsU8T0+9hRpUt4ALdw==
Date: Wed, 16 Oct 2019 16:10:49 +0000
Message-ID: <20191016160649.24622-14-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: f4556bcb-2fab-46bc-ad61-08d752536918
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB63975D134CF7808E1773E1148D920@MN2PR04MB6397.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(71190400001)(71200400001)(66556008)(66476007)(66446008)(64756008)(66946007)(6116002)(3846002)(14444005)(66066001)(76176011)(52116002)(256004)(99286004)(25786009)(7416002)(14454004)(4326008)(478600001)(7736002)(8676002)(305945005)(110136005)(476003)(54906003)(86362001)(2616005)(11346002)(446003)(316002)(102836004)(81166006)(486006)(55236004)(44832011)(5660300002)(50226002)(26005)(9456002)(186003)(8936002)(36756003)(1076003)(6436002)(6512007)(2906002)(6486002)(386003)(81156014)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6397;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: quHogZHhviH2FdAtYYhkhSnAvbdjT9F3HDnw1EWhEC3ZHyox/lQSY6HBF5aD7ez5R4fhbdPOeiIdgJ/opMnfbWVB2Kk2fGwX/2bl/7IbN0I2z6TttLWabXYAaZrCH/oURmOqvb7j3Df5tybI+ra8jtOx9mVA/NDBdnXkHptzMemmqBM8lADYnqdvWfavTlh8ntVsnoVSSPzT67XD3k7AAva5kTYYse/3mjWA6w9c6EtNouVKftY0+tcku4VIWhBDbLbvSBJEoCgOYyBuCBLQp2ejLD6BYYMhLOXpxgPgPfvFCe1m78jYcwfT9cQaTajOKhENAVLxh3GFtgwchINc7d8EmXmGJa9iKDTO72Gq8q4win7nK6/JRjIPmgx+bfLCeK4SFeDR4olawBZHAttJZDGDQvy14N7ItoHid1DpYSI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4556bcb-2fab-46bc-ad61-08d752536918
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:10:49.9650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1xGL86eDChrSzvoTh3fRmcDeBJPq+sxUSt3m70g3HYDH2JjUpLjmdzXCdEgzdjRhI6FHjfb6TbGeDiAfxnUhZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091052_595454_3D7223FA 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
 arch/riscv/include/asm/kvm_vcpu_timer.h |  30 +++++++
 arch/riscv/kvm/Makefile                 |   2 +-
 arch/riscv/kvm/vcpu.c                   |   6 ++
 arch/riscv/kvm/vcpu_timer.c             | 110 ++++++++++++++++++++++++
 drivers/clocksource/timer-riscv.c       |   8 ++
 include/clocksource/timer-riscv.h       |  16 ++++
 7 files changed, 175 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
 create mode 100644 arch/riscv/kvm/vcpu_timer.c
 create mode 100644 include/clocksource/timer-riscv.h

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index b1493c6cbe83..0ef0aac8143e 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/kvm.h>
 #include <linux/kvm_types.h>
+#include <asm/kvm_vcpu_timer.h>
 
 #ifdef CONFIG_64BIT
 #define KVM_MAX_VCPUS			(1U << 16)
@@ -168,6 +169,9 @@ struct kvm_vcpu_arch {
 	unsigned long irqs_pending;
 	unsigned long irqs_pending_mask;
 
+	/* VCPU Timer */
+	struct kvm_vcpu_timer timer;
+
 	/* MMIO instruction details */
 	struct kvm_mmio_decode mmio_decode;
 
diff --git a/arch/riscv/include/asm/kvm_vcpu_timer.h b/arch/riscv/include/asm/kvm_vcpu_timer.h
new file mode 100644
index 000000000000..6f904d49e27e
--- /dev/null
+++ b/arch/riscv/include/asm/kvm_vcpu_timer.h
@@ -0,0 +1,30 @@
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
+struct kvm_vcpu_timer {
+	bool init_done;
+	/* Check if the timer is programmed */
+	bool next_set;
+	u64 next_cycles;
+	struct hrtimer hrt;
+	/* Mult & Shift values to get nanosec from cycles */
+	u32 mult;
+	u32 shift;
+};
+
+int kvm_riscv_vcpu_timer_init(struct kvm_vcpu *vcpu);
+int kvm_riscv_vcpu_timer_deinit(struct kvm_vcpu *vcpu);
+int kvm_riscv_vcpu_timer_reset(struct kvm_vcpu *vcpu);
+int kvm_riscv_vcpu_timer_next_event(struct kvm_vcpu *vcpu, u64 ncycles);
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
index 36957802fed4..f9c5ef98becf 100644
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
index 000000000000..4ff5d666f60d
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_timer.c
@@ -0,0 +1,110 @@
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
+static enum hrtimer_restart kvm_riscv_vcpu_hrtimer_expired(struct hrtimer *h)
+{
+	u64 delta_ns;
+	struct kvm_vcpu_timer *t = container_of(h, struct kvm_vcpu_timer, hrt);
+	struct kvm_vcpu *vcpu = container_of(t, struct kvm_vcpu, arch.timer);
+
+	if (get_cycles64() < t->next_cycles) {
+		delta_ns = kvm_riscv_delta_cycles2ns(t->next_cycles, t);
+		hrtimer_forward_now(&t->hrt, ktime_set(0, delta_ns));
+		return HRTIMER_RESTART;
+	}
+
+	t->next_set = false;
+	kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_TIMER);
+
+	return HRTIMER_NORESTART;
+}
+
+static int kvm_riscv_vcpu_timer_cancel(struct kvm_vcpu_timer *t)
+{
+	if (!t->init_done || !t->next_set)
+		return -EINVAL;
+
+	hrtimer_cancel(&t->hrt);
+	t->next_set = false;
+
+	return 0;
+}
+
+int kvm_riscv_vcpu_timer_next_event(struct kvm_vcpu *vcpu, u64 ncycles)
+{
+	struct kvm_vcpu_timer *t = &vcpu->arch.timer;
+	u64 delta_ns = kvm_riscv_delta_cycles2ns(ncycles, t);
+
+	if (!t->init_done)
+		return -EINVAL;
+
+	kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_TIMER);
+
+	delta_ns = kvm_riscv_delta_cycles2ns(ncycles, t);
+	t->next_cycles = ncycles;
+	hrtimer_start(&t->hrt, ktime_set(0, delta_ns), HRTIMER_MODE_REL);
+	t->next_set = true;
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
+	hrtimer_init(&t->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	t->hrt.function = kvm_riscv_vcpu_hrtimer_expired;
+	t->init_done = true;
+	t->next_set = false;
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
index 470c7ef02ea4..a48036459f3c 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -12,6 +12,7 @@
 #include <linux/cpu.h>
 #include <linux/delay.h>
 #include <linux/irq.h>
+#include <linux/module.h>
 #include <linux/sched_clock.h>
 #include <asm/smp.h>
 #include <asm/sbi.h>
@@ -71,6 +72,13 @@ static int riscv_timer_dying_cpu(unsigned int cpu)
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
