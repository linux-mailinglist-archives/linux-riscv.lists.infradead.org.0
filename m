Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC12DC97C9
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QB6EYfyeAKi5IROFd6EvG0IOrRTcGERVac61GIBKLQ=; b=gAqHQIuCAjTjOM
	Sxv3e7mpoeBZ3do4UUW9nYUS2KIWNhOEKEAFPhLZi+dK2nLglYqC51sxHUK13FUdDSCckc40TucM9
	5AhNq3xvRJbRtqdUHFcecHGW+qpAzSKPqHeetYbbhktrjZ8iCK3neY1yFPz3rK34TSqYLBcfUsn6F
	409I6EceJq2EwYoq0j6MUXwgE6JRXCXX4O/ST+XS8LEUqsLnRGbXOagTgVc7W5cJdx0UAYdO9rM/h
	TzQoLG65LFJXIrEEU+ZQA020G8bF34Uowp1jYB6xvgGqF6dZiuKw/SlqxMwbaemEYqGcnqj8nN2fA
	YYv+d4XP3KXEGOwK9ypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtLw-0004YM-6N; Thu, 03 Oct 2019 05:08:36 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtLr-0004Wk-S8
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:08:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570079311; x=1601615311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=chyHVHdLNxHU0jjESCfhKItyhD0599h36b9f1bjABYI=;
 b=YsE3X/GR0NWT1heABtWrMbAohgZE2+aYCPUf/bws+iyJf4OY54xAjD1u
 A4Qxn5AMhLFX4c1DtfcpGj26cfRXNUpAwyN31MF07XfZF2N2jsEJaKN7k
 UnFE6no+xSgCAGRhKtoKy1I4yluju1pQSlzIa4wY94969jhuvl3/YPCzp
 SMY0w+Fp1zx7yNLqPmXJzc9UidoOqsA8tisWii+AP27dRb/wMredF3cEe
 wckxesQRvexpwtJcOOhCnXiaX7YxOQdpHiD6zpvgtu8MvnCUDEagzVinF
 xFccZ6iEKoUwS8shNoVZuhCOHFKtd4tdawUH78rdXdYrh29G49yxJcRoR w==;
IronPort-SDR: 9Cd5rdxt8Vix2firFmz0kHz3vCnPDZDX2UUgRCMRYoaPfJx14paDAaYXtH/PNLxeno6cwxGAXM
 hiLn1kaYkZ7O5Ve8sLIGPyEIqvk8u66sh3Nsoyko7SFFUIzyue6LdY9GGqGIbpqM9Iq4A0IPOU
 1vm2hia0wLEKjlErjzak/U0WeMndBLYptilS4lUmHM9aP8rVjMUhG+f367otbh0H3kV4Nhmsl4
 BAVIRrSS+4QDb1y8TCoZQ28WbmuSS7C1Vq4bz181cGBwEQNhgdsMbF7hB0cMxFIyfrTlySH9K9
 eOM=
X-IronPort-AV: E=Sophos;i="5.67,251,1566835200"; d="scan'208";a="119691066"
Received: from mail-bl2nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.59])
 by ob1.hgst.iphmx.com with ESMTP; 03 Oct 2019 13:08:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bPN/53jzTkLMAZZ4B9oG/P/tBAafarNUuUH901Zsp4zoOk98lQ9U48gWnAf7sFqR09Y7rttzi9/LbDjeNx2IdsoZBa//qfmz+T+DNZPvo5oNMOVv0Zws+5A8x9cGXJZULpBu1jTK3GimGHPluwmF6fFzRKY8BX4F33p9DSLZTH+h5//J2+VftsZaSoOzu5ZGMXVnHk2Lg6/AQtl9lmzWqlCi2iipFhJopGr6DbJgPYU8T9TI7PmiaC9S/6/m8o72yZQ8DE5QjEerL+Rnl6TL6GYkYYS7oW3wXOEDn3jgIDCtY2NF+2zHn5qMhJIhmNHs9GDhYoMEFT0nyTDse5lRRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eApuqBdCdV8lBrrYRfY6ko039/9vakJe9V5+6COdNxM=;
 b=QeQTt4CzLKHheiufPqIguDgcPFISAC5HW/c/ad0Ep6uWcvEzMdItadCj2rJHM2L0CJ8CZeT9rDMDDI5pijRoTqxz2odnge6DBB62dieMH8yXuyKDUWQZwtvBjqeVHDI1vEU+bYCVHgFRXMvUcrp2KL91xCPwrC/j0J9FYT6anQZphM0siRZInFv38B43Eg0mh/AR8WkH+X4UbW3jgxxiwHmSYqTXtaUwBk3zA06IdERx/QSAhBa++kkPaSOkPxHS17r2J9WgzZyM7FWdqZWHKv999M+bm+J6+WEIslCvm/jlo/juZPwuxxAuNHe7UXMrZYvs9ZMF/7ACjqLFN7znlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eApuqBdCdV8lBrrYRfY6ko039/9vakJe9V5+6COdNxM=;
 b=HXD6XL1aHRYXNiy+6rexQMwGB3KbMIUU2lidkfMvUh1k697jqs2sHZLIoex1Qw1uefbsoa0xWKmotLrAVTbHLhXS7PlpRCy6iOd6SkFtntF2MZElRFSAsMNkjhZsC+6TWBYgnhpDnZsPcTjP38NAM2uvkuVh+xHts/6w+6sG58s=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5568.namprd04.prod.outlook.com (20.178.249.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Thu, 3 Oct 2019 05:08:29 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 05:08:29 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v8 16/19] RISC-V: KVM: Add SBI v0.1 support
Thread-Topic: [PATCH v8 16/19] RISC-V: KVM: Add SBI v0.1 support
Thread-Index: AQHVeaiYYctt3VF8ZkWdNhItg8ZmYQ==
Date: Thu, 3 Oct 2019 05:08:29 +0000
Message-ID: <20191003050558.9031-17-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 6b4f7ecb-de24-4ee5-47b7-08d747bfba56
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB5568:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB556837DB931256540D5C4BC08D9F0@MN2PR04MB5568.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(376002)(39850400004)(136003)(366004)(199004)(189003)(71200400001)(6436002)(316002)(2616005)(6486002)(71190400001)(6512007)(110136005)(14444005)(86362001)(36756003)(54906003)(256004)(6506007)(386003)(6116002)(1076003)(5660300002)(7416002)(2906002)(81166006)(81156014)(25786009)(476003)(3846002)(478600001)(7736002)(446003)(11346002)(8676002)(186003)(66476007)(64756008)(66556008)(99286004)(305945005)(66446008)(50226002)(26005)(14454004)(66066001)(8936002)(102836004)(44832011)(76176011)(52116002)(4326008)(66946007)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5568;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H7ZeQkC3NyvGFN9iGeGTXC1hc7ceB7yhNKxwO77/kQS3kTDLJx+QAAayXBuJYgZg8G13Nqk+/YFcMwtrgR1oisYe1l8T9McoNq5vWDoCNrhrS0t7eoXg/YWQIQCS17qpkt7VQX+Np7HCEHmEw4DSK4zevDdahRLdiq0ll+wRm9NERCc5qAuG1qLUvC3WDK24kdvfnvLdW9yzXN07ogx3JY0q7gjXrE1bkyp9wlH6TSE7yX4ARoav97RH/bu9K8kp6FltGox3+8+9Dmbxp6xG2Z3CeCCnWZPIjF/+6ankRW0je8iuU86YsV0Yq9LD4AZ9zlxsBFIw0RS2/0pBsZIpfo5vxb+EazC3t011M9k5x89JOZLi6E2iy3Zc6ft8vibzfbK6AHtdEXdZVjclh15PYmUNdOT97Dw3J11NwIDZBj4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b4f7ecb-de24-4ee5-47b7-08d747bfba56
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 05:08:29.0464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T1lKL7c734Q/Ib4UjQeN+wCvq3F+aVhEI3TGM9ibjIXrRCtjIuiWgSDRPl8hChI0R9IVP89/KD04O571xNsnfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5568
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_220831_965536_61D097F1 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

From: Atish Patra <atish.patra@wdc.com>

The KVM host kernel running in HS-mode needs to handle SBI calls coming
from guest kernel running in VS-mode.

This patch adds SBI v0.1 support in KVM RISC-V. All the SBI calls are
implemented correctly except remote tlb flushes. For remote TLB flushes,
we are doing full TLB flush and this will be optimized in future.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 arch/riscv/include/asm/kvm_host.h |   2 +
 arch/riscv/kvm/Makefile           |   2 +-
 arch/riscv/kvm/vcpu_exit.c        |   4 ++
 arch/riscv/kvm/vcpu_sbi.c         | 106 ++++++++++++++++++++++++++++++
 4 files changed, 113 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kvm/vcpu_sbi.c

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 928c67828b1b..74ccd8d00ec5 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -250,4 +250,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
 void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
 void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
 
+int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu, struct kvm_run *run);
+
 #endif /* __RISCV_KVM_HOST_H__ */
diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
index 3e0c7558320d..b56dc1650d2c 100644
--- a/arch/riscv/kvm/Makefile
+++ b/arch/riscv/kvm/Makefile
@@ -9,6 +9,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
 kvm-objs := $(common-objs-y)
 
 kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
-kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o
+kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o vcpu_sbi.o
 
 obj-$(CONFIG_KVM)	+= kvm.o
diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index 7507b859246b..0e9b0ffa169d 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -587,6 +587,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		    (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
 			ret = stage2_page_fault(vcpu, run, scause, stval);
 		break;
+	case EXC_SUPERVISOR_SYSCALL:
+		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
+			ret = kvm_riscv_vcpu_sbi_ecall(vcpu, run);
+		break;
 	default:
 		break;
 	};
diff --git a/arch/riscv/kvm/vcpu_sbi.c b/arch/riscv/kvm/vcpu_sbi.c
new file mode 100644
index 000000000000..88fa0faa3545
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_sbi.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * Copyright (c) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Atish Patra <atish.patra@wdc.com>
+ */
+
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/kvm_host.h>
+#include <asm/csr.h>
+#include <asm/sbi.h>
+#include <asm/kvm_vcpu_timer.h>
+
+#define SBI_VERSION_MAJOR			0
+#define SBI_VERSION_MINOR			1
+
+static void kvm_sbi_system_shutdown(struct kvm_vcpu *vcpu,
+				    struct kvm_run *run, u32 type)
+{
+	int i;
+	struct kvm_vcpu *tmp;
+
+	kvm_for_each_vcpu(i, tmp, vcpu->kvm)
+		tmp->arch.power_off = true;
+	kvm_make_all_cpus_request(vcpu->kvm, KVM_REQ_SLEEP);
+
+	memset(&run->system_event, 0, sizeof(run->system_event));
+	run->system_event.type = type;
+	run->exit_reason = KVM_EXIT_SYSTEM_EVENT;
+}
+
+int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu, struct kvm_run *run)
+{
+	int i, ret = 1;
+	u64 next_cycle;
+	struct kvm_vcpu *rvcpu;
+	bool next_sepc = true;
+	ulong hmask, ut_scause = 0;
+	struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
+
+	if (!cp)
+		return -EINVAL;
+
+	switch (cp->a7) {
+	case SBI_SET_TIMER:
+#if __riscv_xlen == 32
+		next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
+#else
+		next_cycle = (u64)cp->a0;
+#endif
+		kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
+		break;
+	case SBI_CLEAR_IPI:
+		kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
+		break;
+	case SBI_SEND_IPI:
+		hmask = kvm_riscv_vcpu_unpriv_read(vcpu, false, cp->a0,
+						   &ut_scause);
+		if (ut_scause) {
+			kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
+						     cp->a0);
+			next_sepc = false;
+		} else {
+			for_each_set_bit(i, &hmask, BITS_PER_LONG) {
+				rvcpu = kvm_get_vcpu_by_id(vcpu->kvm, i);
+				kvm_riscv_vcpu_set_interrupt(rvcpu, IRQ_S_SOFT);
+			}
+		}
+		break;
+	case SBI_SHUTDOWN:
+		kvm_sbi_system_shutdown(vcpu, run, KVM_SYSTEM_EVENT_SHUTDOWN);
+		ret = 0;
+		break;
+	case SBI_REMOTE_FENCE_I:
+		sbi_remote_fence_i(NULL);
+		break;
+	/*
+	 * TODO: There should be a way to call remote hfence.bvma.
+	 * Preferred method is now a SBI call. Until then, just flush
+	 * all tlbs.
+	 */
+	case SBI_REMOTE_SFENCE_VMA:
+		/* TODO: Parse vma range. */
+		sbi_remote_sfence_vma(NULL, 0, 0);
+		break;
+	case SBI_REMOTE_SFENCE_VMA_ASID:
+		/* TODO: Parse vma range for given ASID */
+		sbi_remote_sfence_vma(NULL, 0, 0);
+		break;
+	default:
+		/*
+		 * For now, just return error to Guest.
+		 * TODO: In-future, we will route unsupported SBI calls
+		 * to user-space.
+		 */
+		cp->a0 = -ENOTSUPP;
+		break;
+	};
+
+	if (ret > 0)
+		cp->sepc += 4;
+
+	return ret;
+}
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
