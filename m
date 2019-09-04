Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D927A867E
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtnlH1nrQji4yaqcjOfTx6pVhF7bAyd0e5mbuKgEIUw=; b=iOQ9sKHIX+JToL
	szmpVZna1aXc4Tfcz/SvnjePtZOjXjR6W05KUwAZK5WPb/5iWZYp9nnuBQHx1L564BlZNPd/23pEr
	QFYGsrraLKqWlcICWV1Qm4IyssgShTvYseinH+t2DJOGfTg97pu8zdzTS+hiF5RBCR0fapbZ0emO0
	qV90e5EhMscaQvRZLhd6kgI95PCQOE9R+cxgq6DIQThi9ZoiNUGsZTi0GTyC7KDiiHx8BhIHUdLIy
	duuGkyWYQZZshL9KT9cE0+5HF7dui07PS0KEXEMO3zJy3KRWJwLts5q5+0gAmbdsbkrgOary+70T/
	EsYzasdfMzMEuzVXPN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XxA-0003rE-Vs; Wed, 04 Sep 2019 16:16:16 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xx4-0003kO-6x
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:16:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613770; x=1599149770;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iY7mB0l1ewG2AfRB7AQUVjQhC8U/blaCMAlcF/Ltpk0=;
 b=LFGeNVxXFTEL4uLE99ulYHbn0UKBmpIHKB31290mGYYlfi/crh/E37es
 yeGVYPBZq7m2ak9AGGdAi+e79DH+lfy82uBD2kgptDWyfL3J0QD39NT7R
 i/KJzs6MJIikzUCZhzLOHh64oHgKwCAX+lZXC1td3kBSvsZc9kVAVIAIX
 Hpco0p4dwZKjsiejCZvuywW9i3Vuu2m1IgBEM3W+BkW8g8T+/a9imhkeh
 Blq5KYi+YmpEnzNed+hF6j6CPsrg2KQlAPjiuRnlBPQqNOWPbEu/3pUwl
 C565NInljKiU1cwDX0dDJZdQbFOhunn5OfGCbzvRyIdsVSyZ4xhDyDnwt A==;
IronPort-SDR: 6v15DntUgcKr1D8Wm2gZ8nLGzJ4qQFn7pIw1IDB9fwc7G8ERldDy2orCGy5CFLAZBqiDgiU7q5
 2RKasPY+iRrCz0QwrDCGxGGdApS/tLizjvtiNhNaKVGc7jsZldsrcysJqxSUJ4pBcq+8gGASmH
 d9vGN7un/WPxQ5cKnxSQEOqUsgJK84qSuHdMekgF3LlKx7KKtSFggRrwB4DUf3gJ24zFgoAQTy
 D/6CDDHMdrXj3l4luaYs1fZbGP/AMIRd7LvCeWjoNlZ25+xtn040HIrNl5PDf8wIcBHFDVN2OJ
 f9A=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="118324066"
Received: from mail-sn1nam01lp2053.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.53])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:16:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZQUCQ+yJzoMGVb++QNDYrfXkEdU7Gi1YaPsfi+ghccNqMvO4wLSRrry/f5EitDur8otiznDDhuBhuZnLmyr6xISUNvsE6KW5LZ5N4kS4rHxWOPjo1/S0mTLbNVX6LVbfmjAhzfKJugFEpoQNZlWCMspCu8RJseDLcrn1cWF3zy/8YieyqyE2sVfRAjThSzLk6Q7+y2+kg/nCJN5nLKepetDjadsrioEjqgvALW9D6ng/buxufAdOxyLi+bXhbZ5KXMIELq5MN7HcvYZWpCWjCdH1jpovoB0KYsES/ZFJoMw3lMZUP/7jk/iFUfolgN6uoqoCeoIChhePEvyDdzE/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/nGdTEIihdyB7qwi023zw4OAX+f7YLotnTKDESdZ3A=;
 b=mR8KoX5trRCMRG7CRxJvsDvdvjfc9kTMQPZEH5kMuxik/oOSG8vjUCSvKnkFvX799lRnFXtXf8U/Yf28s5jcFIJAoO8cS5DP5TObkXBm/svqn0GD13tKLOlzm6qtfn0dwrSBJdVAsTiZTxWaezgwBmp7OZCpfn/DNufSKgc/mhzQHmhN9MXyiqnM51HjewKlx00MZTD3lSq9L5YIqPEu6LyhW4SPdRLRQWhoisP6dZFTzWQMHv+qo5NVikBvGzJi3X0V9kuvQ7uYNX0ykYZ5A47wAg4uiuFM3hKLMyR8uhOc6r3F6CBm/LyOFKwTjRgjIgFXJOvQwQ+53lv4xiKkKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/nGdTEIihdyB7qwi023zw4OAX+f7YLotnTKDESdZ3A=;
 b=0HUn4NY1ExAom7j8RZwRQqjHYd1iagY6Nd51eWjzmYxKEbpQ/t9GSgaKL0mHJxLcZbkLUW2lSaI8DPxiuzLdTwXUiKM0RaYRDhuZU2m3ckbBOQt0pr+ojp+fy4kvhDrzTOyyneBNhA0I88h85Z0P+OhawU4NjaT6/xaq5cpF5Lo=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:16:02 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:16:02 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 18/21] RISC-V: KVM: Add SBI v0.1 support
Thread-Topic: [PATCH v7 18/21] RISC-V: KVM: Add SBI v0.1 support
Thread-Index: AQHVYzwLW9CPHwekY0+CS84frKu+hQ==
Date: Wed, 4 Sep 2019 16:16:02 +0000
Message-ID: <20190904161245.111924-20-anup.patel@wdc.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0084.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::24)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.53.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90f44cf9-935c-41b7-fc6e-08d731532e33
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB550463077137EBD36D666C3D8DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(14444005)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(66066001)(44832011)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: o54gIf6F10OAL2baqB14oVFxsqgtWmX2AilDbiH3iaxJtl+v3GYfTdFSrN0Mq30fzJUy2GXFgaKxE5B5ihBhTCNehuDJ7h3caPUpBx4ENOnDWoSyS87LsMePQEDvPxsAFbHTALC4Y3NNaPUnlf/TRvdj6AXZvJ3ANEPuyS3jOSLSZcTNEBnYyPX+Gmm0+XyuHcxr7rKnUZJZmUUQ7cmVyIZ35ULkZwUCGMABbPSr/9243sYoJd1EICuvhLW14kFVYZYYP9n6RjvsSS5buANw67LKtpQjJUn+AbgmY8+ZOR6Iq7fTMhaLYkzH7GJmvEVldGqcrJ8QnuggLyyPUmOIOBqRhI0FyNTPmS9m/ZytbwmbVb6C6WJfcTwz542xEWame2KYHi2UUV0ovhp3A4S7BCgJww0f9prUvmig4tN+YZA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90f44cf9-935c-41b7-fc6e-08d731532e33
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:16:02.7327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eE63H+o4d3+dWJBNNe31qan6gzb+JwsLkc0eoz7DFfxug26mCs1LDB+EAoX95jkGkSGxlMarFZzJlpTgPzLfzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091610_459613_F3C53F28 
X-CRM114-Status: GOOD (  18.77  )
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
 arch/riscv/kvm/vcpu_exit.c        |   3 +
 arch/riscv/kvm/vcpu_sbi.c         | 104 ++++++++++++++++++++++++++++++
 4 files changed, 110 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kvm/vcpu_sbi.c

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 928c67828b1b..269bfa5641b1 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -250,4 +250,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
 void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
 void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
 
+int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu);
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
index 39469f67b241..0ee4e8943f4f 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -594,6 +594,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		    (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
 			ret = stage2_page_fault(vcpu, run, scause, stval);
 		break;
+	case EXC_SUPERVISOR_SYSCALL:
+		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
+			ret = kvm_riscv_vcpu_sbi_ecall(vcpu);
 	default:
 		break;
 	};
diff --git a/arch/riscv/kvm/vcpu_sbi.c b/arch/riscv/kvm/vcpu_sbi.c
new file mode 100644
index 000000000000..b415b8b54bb1
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_sbi.c
@@ -0,0 +1,104 @@
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
+#include <asm/kvm_vcpu_timer.h>
+
+#define SBI_VERSION_MAJOR			0
+#define SBI_VERSION_MINOR			1
+
+static void kvm_sbi_system_shutdown(struct kvm_vcpu *vcpu, u32 type)
+{
+	int i;
+	struct kvm_vcpu *tmp;
+
+	kvm_for_each_vcpu(i, tmp, vcpu->kvm)
+		tmp->arch.power_off = true;
+	kvm_make_all_cpus_request(vcpu->kvm, KVM_REQ_SLEEP);
+
+	memset(&vcpu->run->system_event, 0, sizeof(vcpu->run->system_event));
+	vcpu->run->system_event.type = type;
+	vcpu->run->exit_reason = KVM_EXIT_SYSTEM_EVENT;
+}
+
+int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu)
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
+		kvm_sbi_system_shutdown(vcpu, KVM_SYSTEM_EVENT_SHUTDOWN);
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
+	if (ret >= 0)
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
