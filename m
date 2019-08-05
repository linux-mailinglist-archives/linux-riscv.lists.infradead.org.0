Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F35881DB7
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHhycCIkOYv/j3Ehc431kOahwQCpVTLPT/kJwIJmINA=; b=lvtcuStZ198dvX
	rW9LQFJW9MRlhbqRbmUJJ9IzJ91I2wkhsEO3jYg3nGXfOxEmRh26l6sTd9ZQDMiIkChpb6aTZ7Bm/
	K46eCgNq14TtpbFP0G4CRU2c4qJnT6vm7CqgPnjgh5rgLYGSS3Sozf+KGNwT6v0UBM6gXNRPly+2s
	gqkMxpjor/FrXHsV6ckF7Nrr4xWJoatWHkE21/s1YfKc4fx9v8/ESlKByx78AsoAS3sqxkw8ZGbZZ
	aGH/lV4BVUhePfCcx0lWhiJhF5EdiscxJTYuaYHUDac6KuQVzPhqwjruMDQaQ4Uy5vFeXIO6IufiS
	bH1PGV2N5cA8/ObQmeMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudHq-0002hI-Cx; Mon, 05 Aug 2019 13:44:30 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudHm-0002SJ-Cf
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012666; x=1596548666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2hBUtAmAmyMzS5+yG5+ita+b0iFuUoY9BycJyWRQv9M=;
 b=pB+LEJG4j8iXtiubtTprYmTlKLzba5kV8gFGwLpdRiL5jn2hdsnEOGet
 rkt5+Y1zZi/VMOBECdNnlZysHe1xqs2yJEA4RwH8t9CW1EB3WXGlDfiTu
 0P6st1DmK6BR5bfix+H9cYPqfVId712/D1k+wt6vSK9XTeFRz8b/UKi2P
 AsERSDL+LAfAWZtHrxDuxTNKCrWXshYVv/kK4cn4GlT/cfZCA7iA0K654
 WmOpEvouFHrltLrbDPzpTPTnb0cOX2eCYAjwc5bUMuikf2xMOy8/mp65f
 dGt48Chk3kYwpTDkgkarBRbjAL6Cu/OPCwtsdQ7yDjo4NbRDYfeAzm5OH Q==;
IronPort-SDR: kfcXw24eulZout4LEgGG/A52vPZ7gbZiA/GBQdTrDQrVwG/K4TpU3c2du9v3ldXJlFy8VQDzev
 Z7vfJVmOAjWG7Mnjy9rn+Xg3MlP6UyU7oXKUdJV9YY55zNUUT7msnFpZ6vPn19rto6aq/EAyAa
 wiBM67OhnRsIgiYHoKCYlP0Fh14Hs58dWAqrDLTmFyL5rpa6Ly/wxfvaoRfZEojQWVVSY3JJp5
 F7ns7jADUaLDn0QWbPKERf+RDoUIiGgq4m4G51AmAw4W+ZRP6edPPDSmSLaEJ/ODCUHZW6CyyQ
 ztk=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="221493537"
Received: from mail-sn1nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.52])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:44:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aT7tTDm1AO0gBC2ODF2/XyA1HZ6ixRxG9k8QO504x20AH2L7lpIwqOa2Urd5FHYV6BM6q5pHQX7Iy05KOuULemk9ULr8jqaKkMsnrAbYuDpniDZp29SWKH+vw6iwnMQcnA5ovAH4T7ijiptp4+WNPiLus3qJd8SykSfDc+KY1HPJTVxv8pqw7cpps33jlU5zUQR6QOKH8JaKRN94Endod5Vt0qDwu6A3yIxthohlq3lP98HgtyKIAGGn5Xx6he9QHB9+Mungnwzsd5NCv6H9UcBVk0wvaU61iwKNBenwBRFMwHAVz/DN00kmUhUJNS4M6rGlhBuntZnouQ+w4xPWQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tpp2vlspgsd/Ex1HC+X3/F63kVMvhXmF152pyfAM5o=;
 b=C+kHa8m1Zg0Mg3XvNdahyrIlfo+OAuFBidzZ96o7TZfobecurR6FY0G5cuumREkdN3jhChe1SBTXgfmjbG2NTCl6KG6SLEz7p4yFjEUtHyhMy3RijEU++VjIenzXou3/nyJD3UqshhDe7WXATZ7pMYIQ/hjkjHaIi7FKDF/FGOvXZNDNTZ1sF5KMjFQYjWTQmORIiX3QkUMfKXlGEzIPETWsKu5epjmAIIJgqkaqRgfH32VFemi2EG+ggvyXmHdz7bgLNzXUnBkG3ke0eOPDo9D628sUhjtlCUyiqK02X/xk0+pb4AwqOSSdKrjTUX4KYeMTiEIQaE9/Jl+t05uhDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tpp2vlspgsd/Ex1HC+X3/F63kVMvhXmF152pyfAM5o=;
 b=vAGhMGQOvvK7o4KpgY+r/zbsk9bfoTxPyWJIizQw2tSMFgBsvpdl206zqvJR+hRJ+gtfgdZFbOnEHAFsCqcvSPSw90zPxJiX0UZ4mULruzV+JN5L/oAOZhUAzXccei42bIweqCZiSaG/AYHDTjZ86QgV3xOgV9RHErn9Zxf/aAU=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6159.namprd04.prod.outlook.com (20.178.249.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 13:44:23 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:44:23 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 17/19] RISC-V: KVM: Add SBI v0.1 support
Thread-Topic: [PATCH v3 17/19] RISC-V: KVM: Add SBI v0.1 support
Thread-Index: AQHVS5PkZ8/bQ5pdMUKyelce39PYBQ==
Date: Mon, 5 Aug 2019 13:44:23 +0000
Message-ID: <20190805134201.2814-18-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 2a547a2a-4799-48e7-f756-08d719ab0677
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6159; 
x-ms-traffictypediagnostic: MN2PR04MB6159:
x-microsoft-antispam-prvs: <MN2PR04MB6159AC07361554C7E0C8CB668DDA0@MN2PR04MB6159.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(66556008)(66476007)(71190400001)(71200400001)(110136005)(54906003)(66946007)(66446008)(64756008)(86362001)(5660300002)(102836004)(52116002)(55236004)(14454004)(99286004)(386003)(78486014)(316002)(256004)(14444005)(6506007)(76176011)(2616005)(6486002)(8676002)(9456002)(8936002)(36756003)(3846002)(6116002)(6512007)(4326008)(2906002)(476003)(305945005)(44832011)(81156014)(81166006)(26005)(186003)(486006)(11346002)(25786009)(7736002)(1076003)(50226002)(478600001)(68736007)(446003)(53936002)(66066001)(6436002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6159;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5NjZWz3B5UVhxHAZikmjDmIMUbpCpxbsJFRMIYfguQUkEP4iEgjErxv+nWmQ/NvM7TeDbn+qgWvDytkBVnnw8eRpfLifBynDqgsFjA6wJjhVL97hRC5HHmHjKcAxyiq/IIfBxfO2y1/Be8+fTHq1i2v86l2C2xUKGNGAOqMEV/eMdzV1iY/rr/N+ZbZcg1u2N8opcfe2j4upuR1KzJ2B8fcyTSBGqESuSBGeFxZ5RHJNDeg4WR5W3XeFGC75ggVmfTP2zfVhVNKq27rUa5IeNkLgKxJs4zAF2U8jFKs03dG68ylwNjsNkoN2c5qOulRgu3KThX8sb0ZaPh1HPJgEQyQb9J8lxnG6nJ0bA7FLu6O79m0OWlHAGyy+zO7b7yikS4zuJUatZpgXi8Kdd5vHaa+6cFfGJcDPKzcm2D5h1O8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a547a2a-4799-48e7-f756-08d719ab0677
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:44:23.7480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064426_663123_DBD93379 
X-CRM114-Status: GOOD (  18.25  )
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

From: Atish Patra <atish.patra@wdc.com>

The KVM host kernel running in HS-mode needs to handle SBI calls coming
from guest kernel running in VS-mode.

This patch adds SBI v0.1 support in KVM RISC-V. All the SBI calls are
implemented correctly except remote tlb flushes. For remote TLB flushes,
we are doing full TLB flush and this will be optimized in future.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h |   2 +
 arch/riscv/kvm/Makefile           |   2 +-
 arch/riscv/kvm/vcpu_exit.c        |   3 +
 arch/riscv/kvm/vcpu_sbi.c         | 119 ++++++++++++++++++++++++++++++
 4 files changed, 125 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kvm/vcpu_sbi.c

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 983aea4f6049..9a673f18d772 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -238,4 +238,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
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
index fbc04fe335ad..87b83fcf9a14 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -534,6 +534,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
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
index 000000000000..5793202eb514
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_sbi.c
@@ -0,0 +1,119 @@
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
+/* TODO: Handle traps due to unpriv load and redirect it back to VS-mode */
+static unsigned long kvm_sbi_unpriv_load(const unsigned long *addr,
+					 struct kvm_vcpu *vcpu)
+{
+	unsigned long flags, val;
+	unsigned long __hstatus, __sstatus;
+
+	local_irq_save(flags);
+	__hstatus = csr_read(CSR_HSTATUS);
+	__sstatus = csr_read(CSR_SSTATUS);
+	csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
+	csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus);
+	val = *addr;
+	csr_write(CSR_HSTATUS, __hstatus);
+	csr_write(CSR_SSTATUS, __sstatus);
+	local_irq_restore(flags);
+
+	return val;
+}
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
+	int ret = 1;
+	u64 next_cycle;
+	int vcpuid;
+	struct kvm_vcpu *remote_vcpu;
+	ulong dhart_mask;
+	struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
+
+	if (!cp)
+		return -EINVAL;
+	switch (cp->a7) {
+	case SBI_SET_TIMER:
+#if __riscv_xlen == 32
+		next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
+#else
+		next_cycle = (u64)cp->a0;
+#endif
+		kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
+		break;
+	case SBI_CONSOLE_PUTCHAR:
+		/* Not implemented */
+		cp->a0 = -ENOTSUPP;
+		break;
+	case SBI_CONSOLE_GETCHAR:
+		/* Not implemented */
+		cp->a0 = -ENOTSUPP;
+		break;
+	case SBI_CLEAR_IPI:
+		kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
+		break;
+	case SBI_SEND_IPI:
+		dhart_mask = kvm_sbi_unpriv_load((unsigned long *)cp->a0, vcpu);
+		for_each_set_bit(vcpuid, &dhart_mask, BITS_PER_LONG) {
+			remote_vcpu = kvm_get_vcpu_by_id(vcpu->kvm, vcpuid);
+			kvm_riscv_vcpu_set_interrupt(remote_vcpu, IRQ_S_SOFT);
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
+		/*TODO: Parse vma range.*/
+		sbi_remote_sfence_vma(NULL, 0, 0);
+		break;
+	case SBI_REMOTE_SFENCE_VMA_ASID:
+		/*TODO: Parse vma range for given ASID */
+		sbi_remote_sfence_vma(NULL, 0, 0);
+		break;
+	default:
+		cp->a0 = ENOTSUPP;
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
