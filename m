Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D596A1C33
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzIEEWEm7FKUcBQz05H6T/ykituZT5Ay4eh02cX25HU=; b=GhvMd7O5b5gztS
	EhONdo22EctBGPY25kPW83lHyUf5q1c0a6opjGrvZsHi+F1e5Ws3jJac7GWNDa5HHTSSX6ZktPkiL
	ARvtVJGnyAYa8a51k02lRsOx1GiYzWnkA8uIsrtRYJW1lyJWafiEXr7y4kTBhOr6nBTOHLgv43pqr
	eYg2qpGrKNYLEMfZuz9ilPaQ1L5SDae9hoBS9Klze49h89FR+IZyiKk4zPp65vQfGIwO2LzoQ4vab
	rw/AZOLmtFC/ioTxLVtqjL9Y1C4SGRXDUpQKAbYpbLYHm3dlv4KmR8x14j7+/8v6Y0B09Nl2/QUNU
	3Sg7BzcpcqCnmv4EzofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Kvb-0003ST-Hw; Thu, 29 Aug 2019 13:57:31 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KvM-0003FU-AT
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567087036; x=1598623036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M7oNVDegS8hVbbck37yFb7EKnzRYiQYbgXTcmIog66M=;
 b=KMDPqD4OzG64wHgNOZcW3lJTNQ3/aCfeZzCM0rSeI0U2VkaNw6IRk+XU
 7rGXDdgMCxQ0OmbMzyz0pHTyCAmWHqQ4iQOKRFt9nXOIYXEc1ICJD2Id3
 /5OcUQlTaMxi8yOzi9AiGevUdy066K6TLBejqfqqKo+5z3KSxd123of1K
 X0ttGbi79TOzv2U5KsiFjTNOrWYu/78U5BS/WH6KVp+UySAq5+M3za6ex
 3yXTp9yhvGAh7bG/0BrKKrmEVHUTBqb6UotfYy71zhApqqrC5smAlIkFW
 ygn1eCHHzGSJ4HIbEHhvNkndTIqPqD40ysLz48rDC4hy0uSuYWcuVF7DF g==;
IronPort-SDR: XF2azSPLMAfcr9GkvQmeImSAJZUZxmmDGgmOaKV7KVxElSXMTIqF9BosCKKpjaP/2BMyaFKNHd
 R3wcDz/bzmqRk6BI3AYpW71xLa3YkM/4Pw5DvVsgQoRuzGGTV9KINxkVEz+idCDWSoSjuYnpBd
 lpPiuFJIbp+oc2Ca5D9UNkFC5O8NK0orsJuJzHucMTnJisDZsOHpPslG2kujfZEee4PZj26Vh/
 7n/uMc+e5A550J2BvplQUeA+PgUNORXQyfB4eUf6G1nN8QI+06PUHFXPh5UxMg1ANhnG07HiFV
 qT4=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="223616011"
Received: from mail-co1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.59])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:57:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZb5Y52aoguCY/ws3BJZwahfuNKL+xMF7H6ybVzRridcYtFWdj6QuZzyo/LqCOjh7BE1OJAoPJMZtTCHUKJuH3+4MqFuyvgKxsYU3C/lqxekCmWCmyBx1Mf/bk4CWAyNcPrLcPd4znP9Oi6la3XX5fQ+ovN6oX6Ca/6vtI/NSU4hPpFsHOlBnw5mKy8UqNSZ2uxuck/vE8oGzyzYcrR02XvyotS3bZW5u9wQcfnl/fLelGxjFXtHBP0r3m2QhLSP7df2zHBHnWOjzqVZwCSiHqFy++41gZNed7v/Q2qUuFW+oI4Ck88cReYr6ez9YEizPcTRtgiYVQyD6kYHCKM5+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Z8wHDMZ0PkSoweyUHqubvSXDhR7X8i3hxWJHV7rtjQ=;
 b=lTsTerPr0e8vUUlbMkpD8coRs1fppzaQajB+O/JBaGB0iXspqNfUmd9Tumozr3/1NPMmfoDxb095hG5rRsG+F6hlhZ0d+8KT3LO/0WoQq0V+y/nPmS9TQWZPSagmlxiQ5fa3Q0Q8CgqVzWZJ9Ef6ZLM69O+Chm7PKW57hcZota7V/RwOuuvU30BMtFy+nKa9Xr/S9PJvMS5L8Wc2H5ni2US6nmv2AmbzHE8fsw79h34HZ4dRUVABEFacv/k05Ee4xGaBmbN0PRnJ6CLkZtSz/Y5CeeefAegLALoZBWoe6FWBB5hAVrw554+z8U4T9yFSSCNCS3NI1IOcyYDh5IQ2rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Z8wHDMZ0PkSoweyUHqubvSXDhR7X8i3hxWJHV7rtjQ=;
 b=LgiG3OIdrs8+DORP3NH3mrz9eZSQ2l9Sj2Ifp6Y/l7AXndWUtO3PE5YMj1VaA0LFjmt6/k5gziSsiySxPLJ3ws+LYS/DEnFhuaASiw6kQSQKKq/Wr5IX9iPlDQZBRdvWeu4ZIUdEagpa3JMXnIyHrLR9bVS/ej4w26+E7bYdH6Q=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6255.namprd04.prod.outlook.com (20.178.245.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:57:13 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:57:13 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 18/21] RISC-V: KVM: Add SBI v0.1 support
Thread-Topic: [PATCH v6 18/21] RISC-V: KVM: Add SBI v0.1 support
Thread-Index: AQHVXnGor3ahhOmh2UqqkYsTy5M5jw==
Date: Thu, 29 Aug 2019 13:57:13 +0000
Message-ID: <20190829135427.47808-19-anup.patel@wdc.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.51.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 438d6cb1-51fb-46ba-d7b4-08d72c88cad9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6255; 
x-ms-traffictypediagnostic: MN2PR04MB6255:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6255E1305B94DEED687749E78DA20@MN2PR04MB6255.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(199004)(189003)(446003)(55236004)(11346002)(76176011)(386003)(2616005)(53936002)(36756003)(25786009)(5660300002)(4326008)(6436002)(316002)(6486002)(99286004)(6506007)(71190400001)(256004)(14444005)(6512007)(486006)(52116002)(2906002)(476003)(1076003)(102836004)(478600001)(81166006)(81156014)(110136005)(8676002)(54906003)(26005)(66446008)(64756008)(66556008)(66476007)(86362001)(7416002)(6116002)(50226002)(7736002)(14454004)(3846002)(66066001)(8936002)(44832011)(71200400001)(66946007)(186003)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6255;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JjN3nRSLokzU+BGP9fbPhniDPJwXSkA3uBB/tOOKyeWTht+zH4yxPzz/+Wx0buEwK0x3o0CqASBBh3IXVTqxAZDpPXE2GsZpHyUxN3W15huTymOeg45SJ7mHvUJm8e/+vsszy1mzYickWN4xzohXidsZCzFqhW2tNDMELvXBulDQFoMvTGxkxo73NsDkosvt/6+4WF2Q/HvKFtSEfBqG67tjgAEQBx84BXcQpbi+/5e8RvTd3g/NiA5jKZwJdReQr5KX7wO92ds0+tGOli7iTseXGdQeKBlJOjSI2A/V6n9MKGvdMUJAn2ObPuH2vNSUKui9Gs9BrendgfB/o5ev5WzyIcZJlLr0+ng2hgCYmdQcD1E5k7MfYIuwHRKhx8pHXwdCaTMf1k/vtZV7QBnmD1Ynfv+E7uS8jlUm8wRcAgk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 438d6cb1-51fb-46ba-d7b4-08d72c88cad9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:57:13.0410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NYqYdwbwbYkrbyZ8nsQwT13NHy/BQxyZ75X0qmqD5EWKttMGcHv9tIgZgS7FWxSyTPodiLMVf/FLZHijNtob0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065716_787067_D586BC94 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 30be3cef76b6..70b2e45a837b 100644
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
index 321062fff65b..9079793ddfff 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -585,6 +585,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
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
index 000000000000..6190b5c68e2a
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
+	ulong hmask, ut_scause = 0, ut_stval = 0;
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
+						   &ut_scause, &ut_stval);
+		if (ut_scause) {
+			kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
+						     ut_stval);
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
