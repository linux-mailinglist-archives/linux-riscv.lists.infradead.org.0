Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BD1C97AA
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PMUe9NzY937v9hMsOZHA/aJjAsMhFvwNtZX3NPmO1o=; b=FqYJAOeap8kYg0
	0QJckHeWAfVq6NFkCrzp9TE3m4jzt/Pg7sNSEtwWXMeQ0PqEOy0FHNNkUDV4S/OZf42ZKNJLOSywc
	BzXK6StBu+vH/ClnIOuXllW6Ml0IjJjuiOZ9Gfm9amg88f1D18nqFVTq7nS5bX6HKIq3kbeuEZeW2
	mSOOGv3nAW9/K/TmEXfPjayVO29tWT9YKj6imU6324CZUP2p4zbEVpSOlHxisrLzkxvDSjWUrP5rx
	zJMGcSFv7pbOdtx4AC27Cd6+cfjd1Q/vasU0nrVhCc9bqlezUIr7qLG/UfR1Sj6bhjmHsta0D4T8C
	QoqBjmhr/lbNdEczI6xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtL1-0003fK-A3; Thu, 03 Oct 2019 05:07:39 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtKw-0003cn-EK
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570079277; x=1601615277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5k3R3lBtRzaA/YpHow1pYfa9Y/snax9LFp52mhx9E3Q=;
 b=SXSFKc1FxFxOERGCZSYkGIMkiByK8Ligus4r3iRYRXpjFgrqXEWkW5CK
 AYy6ntjpmylt4gcEny4qMbyqQTjsyg5QZZ0LzyUQWhN8Ivda48qFJWP4Z
 whfY3V9dDMXbWvdPZi5UQ5LL4C4L2x+4GkOLUjTN0WK/35+f4H6r8lQNA
 cFJJcqvAPqEW/HO5AHDLpdLu2fuTopYQLD9lfxuCcgFRuPaPgAsDDdy/X
 Z41z83OWpmqE7vDYJWzuYuxiPP0wenm/PuDzX++TZ0gLwphGj6oBO09M3
 IbVBwUU6cIEiflI95Lzt2a9AC6gMe/rlQBi8cJHYtSc9B5jrjbHTf9Q/n Q==;
IronPort-SDR: ZXgNnmZloQ83bQMKPYvHPR8T0tnci3noAdpUQ1svoihgjmz6Jr+t0YBGw+Uee3be+rLKgM+NA9
 nLqPWWLXOuIM6srhSe4VY7tQVFm8mFNej37f0J3pKFwTSfSP2Z8xdYZKLjdnllOrjiLBUw9mpE
 wIBz6Zgo55PljbTyWa7ODdrpNl1bi6saKrObJ3U4aKdQ9A+A9sN84H2tgJpMOng6yh7sYMMIV+
 vhpEMKyIalC/jsPiMS1SFUUvEt8LXR53t13NZyZYMGv0GjVi0b1OS7zTH0wobXpqS7rEyIbCh8
 oJU=
X-IronPort-AV: E=Sophos;i="5.67,251,1566835200"; d="scan'208";a="220620873"
Received: from mail-co1nam05lp2054.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.54])
 by ob1.hgst.iphmx.com with ESMTP; 03 Oct 2019 13:07:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmneHoh7L5PJfWvWWkbOR7EqGJ0ArtfKzfKj+PJNDAuA8u46vi7b6Truf1TvK2Whmhb0dkrEkeDI69uGuY/Rs+6W4hq12gDeirI2U0ZV7Tbh20x9IIcrH4+++h/GqKqolwKylvojOkOwcCUKGz7HhaGL+Rht+i0RYW3SobDqQxPhOFFl1OThOKXSAQ4aYBV6FgWTGHe31vEQH+9Z/roKxmJKzlt0hJ6oD7WQcU6DnjsQY7MtgibqzV5R4LGNnQpNH2n+Eih77VV49RrnYKWrSui8pmJ2yV3UWYH5EoFQiwSffohfBpp89jf5Cri4CPixYWw8ZZokEXYS0IXIi4Ytjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o70Mm2OTkDFO+QMXWQ0QXSv7a+GkAj0XGMfUeIbTFI4=;
 b=MwzyiJlW3+DR5ts29nQiDTF/cHFKt5CDXxWdfOl/E8rzH7/WLZ6JxVTAutBttF/+IfELSabJ4XKIBvyhVBMD/zAY+Wx+INuWw2LK4v+ckPZVtsjCJa273PdCq4Ix6bvdHkIujGCh4yj4wLgjkEs9rdt9wy3KrtLrbm15LEb5/WUtfXisWBVOq+E3ZJsERylM4JtzlwquORQdijliE0JUTK/3idfIkSs2aGsMLuNIJ2o2li7SESm4GIaxTyDpjYa/ewEAXzHzC/ROA5PTMBstShsk5wK50CBzn1S0Meiy++SQNDsBY+pmLaUINA39dCIuatzJv2UpbSCK8PIu+3vLdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o70Mm2OTkDFO+QMXWQ0QXSv7a+GkAj0XGMfUeIbTFI4=;
 b=k+RfI2M1NFy8uQfz0JdIiLSKvmGpZk5XA9MNAOHM8XDH5aRQ3RMxSCTVwk5YMEvG0mJaueTCTDfGME8arEDUg/W3BTBkKlFVM2aJrZJ9kWqmp/dCz6hn/c6+hYLjy2bibPrCFo/Ns6MgEB+ARA9LzFqi3Adq+9YiGFUgpCfekGM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6272.namprd04.prod.outlook.com (20.178.248.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Thu, 3 Oct 2019 05:07:24 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 05:07:24 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v8 07/19] RISC-V: KVM: Implement VCPU world-switch
Thread-Topic: [PATCH v8 07/19] RISC-V: KVM: Implement VCPU world-switch
Thread-Index: AQHVeahxksyFojjmTk+gS6kpnBx3Mw==
Date: Thu, 3 Oct 2019 05:07:24 +0000
Message-ID: <20191003050558.9031-8-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 65f85462-374a-4cfb-793c-08d747bf93ed
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6272:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB62728B7C3F580D1A3BA0C3598D9F0@MN2PR04MB6272.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(366004)(396003)(39860400002)(189003)(199004)(6512007)(6486002)(81166006)(81156014)(8936002)(6116002)(3846002)(8676002)(50226002)(2906002)(110136005)(66066001)(6436002)(316002)(66476007)(66556008)(7416002)(66446008)(36756003)(1076003)(5660300002)(54906003)(7736002)(305945005)(76176011)(30864003)(25786009)(52116002)(256004)(14444005)(71190400001)(86362001)(99286004)(71200400001)(2616005)(446003)(14454004)(476003)(102836004)(186003)(26005)(11346002)(44832011)(6506007)(486006)(478600001)(4326008)(66946007)(386003)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6272;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tTVFy46JhD+YL3pgTSuEevCiaJEd77pMiV7uFfWThqy972lN1djC7I/xg6FoIzaNVN5z9D0uyyCQDGPvlzFGRHdcJ/CPTFKmqGuOay1i1HqUhbotQOkdbyKjhcHj9nMIjjMF9tXjuf41RiBPTe7JIpCQmKeJ63BvRgPX4mLm8CcVgNE/8EEqR6xU91GrDbVXSP/1r9ClnlSmaGSlad3y9JlzxkBQLYduPocFkKHFxhiiXLvldKoQbY4PcXyyx+xdV4rn9aoFI6lZA4/z8xSlZEETxWgoV9Q2M4c9064tjYcsZW6iBAqwrcq5AwwEB6PnR7WNDVA/A9Or6DHHqgGZMoLJ9utAKyFW8JskOehhBi0SZ4qHq6s/yUL7GD8i8SYGVhlfRaOTkO2/VyiePu8z9zROas3vrMWg5XkaS9bHovk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f85462-374a-4cfb-793c-08d747bf93ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 05:07:24.5762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kmyg3kWpK7+b/o5yf0JwCNkkcTEBbGEkp389LoiS7LlLx2CBlbJrrn+FYb0LMEvwfaURHZQ+QggiCign2TxCGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_220734_567987_7239CB63 
X-CRM114-Status: GOOD (  14.39  )
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

This patch implements the VCPU world-switch for KVM RISC-V.

The KVM RISC-V world-switch (i.e. __kvm_riscv_switch_to()) mostly
switches general purpose registers, SSTATUS, STVEC, SSCRATCH and
HSTATUS CSRs. Other CSRs are switched via vcpu_load() and vcpu_put()
interface in kvm_arch_vcpu_load() and kvm_arch_vcpu_put() functions
respectively.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h |   9 +-
 arch/riscv/kernel/asm-offsets.c   |  76 ++++++++++++
 arch/riscv/kvm/Makefile           |   2 +-
 arch/riscv/kvm/vcpu.c             |  32 ++++-
 arch/riscv/kvm/vcpu_switch.S      | 194 ++++++++++++++++++++++++++++++
 5 files changed, 309 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/kvm/vcpu_switch.S

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index d801216da6d0..18f1097f1d8d 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -110,6 +110,13 @@ struct kvm_vcpu_arch {
 	/* ISA feature bits (similar to MISA) */
 	unsigned long isa;
 
+	/* SSCRATCH and STVEC of Host */
+	unsigned long host_sscratch;
+	unsigned long host_stvec;
+
+	/* CPU context of Host */
+	struct kvm_cpu_context host_context;
+
 	/* CPU context of Guest VCPU */
 	struct kvm_cpu_context guest_context;
 
@@ -162,7 +169,7 @@ int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
 int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long scause, unsigned long stval);
 
-static inline void __kvm_riscv_switch_to(struct kvm_vcpu_arch *vcpu_arch) {}
+void __kvm_riscv_switch_to(struct kvm_vcpu_arch *vcpu_arch);
 
 int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq);
 int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq);
diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index 9f5628c38ac9..711656710190 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -7,7 +7,9 @@
 #define GENERATING_ASM_OFFSETS
 
 #include <linux/kbuild.h>
+#include <linux/mm.h>
 #include <linux/sched.h>
+#include <asm/kvm_host.h>
 #include <asm/thread_info.h>
 #include <asm/ptrace.h>
 
@@ -109,6 +111,80 @@ void asm_offsets(void)
 	OFFSET(PT_SBADADDR, pt_regs, sbadaddr);
 	OFFSET(PT_SCAUSE, pt_regs, scause);
 
+	OFFSET(KVM_ARCH_GUEST_ZERO, kvm_vcpu_arch, guest_context.zero);
+	OFFSET(KVM_ARCH_GUEST_RA, kvm_vcpu_arch, guest_context.ra);
+	OFFSET(KVM_ARCH_GUEST_SP, kvm_vcpu_arch, guest_context.sp);
+	OFFSET(KVM_ARCH_GUEST_GP, kvm_vcpu_arch, guest_context.gp);
+	OFFSET(KVM_ARCH_GUEST_TP, kvm_vcpu_arch, guest_context.tp);
+	OFFSET(KVM_ARCH_GUEST_T0, kvm_vcpu_arch, guest_context.t0);
+	OFFSET(KVM_ARCH_GUEST_T1, kvm_vcpu_arch, guest_context.t1);
+	OFFSET(KVM_ARCH_GUEST_T2, kvm_vcpu_arch, guest_context.t2);
+	OFFSET(KVM_ARCH_GUEST_S0, kvm_vcpu_arch, guest_context.s0);
+	OFFSET(KVM_ARCH_GUEST_S1, kvm_vcpu_arch, guest_context.s1);
+	OFFSET(KVM_ARCH_GUEST_A0, kvm_vcpu_arch, guest_context.a0);
+	OFFSET(KVM_ARCH_GUEST_A1, kvm_vcpu_arch, guest_context.a1);
+	OFFSET(KVM_ARCH_GUEST_A2, kvm_vcpu_arch, guest_context.a2);
+	OFFSET(KVM_ARCH_GUEST_A3, kvm_vcpu_arch, guest_context.a3);
+	OFFSET(KVM_ARCH_GUEST_A4, kvm_vcpu_arch, guest_context.a4);
+	OFFSET(KVM_ARCH_GUEST_A5, kvm_vcpu_arch, guest_context.a5);
+	OFFSET(KVM_ARCH_GUEST_A6, kvm_vcpu_arch, guest_context.a6);
+	OFFSET(KVM_ARCH_GUEST_A7, kvm_vcpu_arch, guest_context.a7);
+	OFFSET(KVM_ARCH_GUEST_S2, kvm_vcpu_arch, guest_context.s2);
+	OFFSET(KVM_ARCH_GUEST_S3, kvm_vcpu_arch, guest_context.s3);
+	OFFSET(KVM_ARCH_GUEST_S4, kvm_vcpu_arch, guest_context.s4);
+	OFFSET(KVM_ARCH_GUEST_S5, kvm_vcpu_arch, guest_context.s5);
+	OFFSET(KVM_ARCH_GUEST_S6, kvm_vcpu_arch, guest_context.s6);
+	OFFSET(KVM_ARCH_GUEST_S7, kvm_vcpu_arch, guest_context.s7);
+	OFFSET(KVM_ARCH_GUEST_S8, kvm_vcpu_arch, guest_context.s8);
+	OFFSET(KVM_ARCH_GUEST_S9, kvm_vcpu_arch, guest_context.s9);
+	OFFSET(KVM_ARCH_GUEST_S10, kvm_vcpu_arch, guest_context.s10);
+	OFFSET(KVM_ARCH_GUEST_S11, kvm_vcpu_arch, guest_context.s11);
+	OFFSET(KVM_ARCH_GUEST_T3, kvm_vcpu_arch, guest_context.t3);
+	OFFSET(KVM_ARCH_GUEST_T4, kvm_vcpu_arch, guest_context.t4);
+	OFFSET(KVM_ARCH_GUEST_T5, kvm_vcpu_arch, guest_context.t5);
+	OFFSET(KVM_ARCH_GUEST_T6, kvm_vcpu_arch, guest_context.t6);
+	OFFSET(KVM_ARCH_GUEST_SEPC, kvm_vcpu_arch, guest_context.sepc);
+	OFFSET(KVM_ARCH_GUEST_SSTATUS, kvm_vcpu_arch, guest_context.sstatus);
+	OFFSET(KVM_ARCH_GUEST_HSTATUS, kvm_vcpu_arch, guest_context.hstatus);
+
+	OFFSET(KVM_ARCH_HOST_ZERO, kvm_vcpu_arch, host_context.zero);
+	OFFSET(KVM_ARCH_HOST_RA, kvm_vcpu_arch, host_context.ra);
+	OFFSET(KVM_ARCH_HOST_SP, kvm_vcpu_arch, host_context.sp);
+	OFFSET(KVM_ARCH_HOST_GP, kvm_vcpu_arch, host_context.gp);
+	OFFSET(KVM_ARCH_HOST_TP, kvm_vcpu_arch, host_context.tp);
+	OFFSET(KVM_ARCH_HOST_T0, kvm_vcpu_arch, host_context.t0);
+	OFFSET(KVM_ARCH_HOST_T1, kvm_vcpu_arch, host_context.t1);
+	OFFSET(KVM_ARCH_HOST_T2, kvm_vcpu_arch, host_context.t2);
+	OFFSET(KVM_ARCH_HOST_S0, kvm_vcpu_arch, host_context.s0);
+	OFFSET(KVM_ARCH_HOST_S1, kvm_vcpu_arch, host_context.s1);
+	OFFSET(KVM_ARCH_HOST_A0, kvm_vcpu_arch, host_context.a0);
+	OFFSET(KVM_ARCH_HOST_A1, kvm_vcpu_arch, host_context.a1);
+	OFFSET(KVM_ARCH_HOST_A2, kvm_vcpu_arch, host_context.a2);
+	OFFSET(KVM_ARCH_HOST_A3, kvm_vcpu_arch, host_context.a3);
+	OFFSET(KVM_ARCH_HOST_A4, kvm_vcpu_arch, host_context.a4);
+	OFFSET(KVM_ARCH_HOST_A5, kvm_vcpu_arch, host_context.a5);
+	OFFSET(KVM_ARCH_HOST_A6, kvm_vcpu_arch, host_context.a6);
+	OFFSET(KVM_ARCH_HOST_A7, kvm_vcpu_arch, host_context.a7);
+	OFFSET(KVM_ARCH_HOST_S2, kvm_vcpu_arch, host_context.s2);
+	OFFSET(KVM_ARCH_HOST_S3, kvm_vcpu_arch, host_context.s3);
+	OFFSET(KVM_ARCH_HOST_S4, kvm_vcpu_arch, host_context.s4);
+	OFFSET(KVM_ARCH_HOST_S5, kvm_vcpu_arch, host_context.s5);
+	OFFSET(KVM_ARCH_HOST_S6, kvm_vcpu_arch, host_context.s6);
+	OFFSET(KVM_ARCH_HOST_S7, kvm_vcpu_arch, host_context.s7);
+	OFFSET(KVM_ARCH_HOST_S8, kvm_vcpu_arch, host_context.s8);
+	OFFSET(KVM_ARCH_HOST_S9, kvm_vcpu_arch, host_context.s9);
+	OFFSET(KVM_ARCH_HOST_S10, kvm_vcpu_arch, host_context.s10);
+	OFFSET(KVM_ARCH_HOST_S11, kvm_vcpu_arch, host_context.s11);
+	OFFSET(KVM_ARCH_HOST_T3, kvm_vcpu_arch, host_context.t3);
+	OFFSET(KVM_ARCH_HOST_T4, kvm_vcpu_arch, host_context.t4);
+	OFFSET(KVM_ARCH_HOST_T5, kvm_vcpu_arch, host_context.t5);
+	OFFSET(KVM_ARCH_HOST_T6, kvm_vcpu_arch, host_context.t6);
+	OFFSET(KVM_ARCH_HOST_SEPC, kvm_vcpu_arch, host_context.sepc);
+	OFFSET(KVM_ARCH_HOST_SSTATUS, kvm_vcpu_arch, host_context.sstatus);
+	OFFSET(KVM_ARCH_HOST_HSTATUS, kvm_vcpu_arch, host_context.hstatus);
+	OFFSET(KVM_ARCH_HOST_SSCRATCH, kvm_vcpu_arch, host_sscratch);
+	OFFSET(KVM_ARCH_HOST_STVEC, kvm_vcpu_arch, host_stvec);
+
 	/*
 	 * THREAD_{F,X}* might be larger than a S-type offset can handle, but
 	 * these are used in performance-sensitive assembly so we can't resort
diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
index 37b5a59d4f4f..845579273727 100644
--- a/arch/riscv/kvm/Makefile
+++ b/arch/riscv/kvm/Makefile
@@ -8,6 +8,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
 
 kvm-objs := $(common-objs-y)
 
-kvm-objs += main.o vm.o mmu.o vcpu.o vcpu_exit.o
+kvm-objs += main.o vm.o mmu.o vcpu.o vcpu_exit.o vcpu_switch.o
 
 obj-$(CONFIG_KVM)	+= kvm.o
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index c9faca14f8cd..38a35367fb83 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -582,14 +582,42 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
-	/* TODO: */
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
+
+	csr_write(CSR_VSSTATUS, csr->vsstatus);
+	csr_write(CSR_VSIE, csr->vsie);
+	csr_write(CSR_VSTVEC, csr->vstvec);
+	csr_write(CSR_VSSCRATCH, csr->vsscratch);
+	csr_write(CSR_VSEPC, csr->vsepc);
+	csr_write(CSR_VSCAUSE, csr->vscause);
+	csr_write(CSR_VSTVAL, csr->vstval);
+	csr_write(CSR_VSIP, csr->vsip);
+	*vsip = csr->vsip;
+	csr_write(CSR_VSATP, csr->vsatp);
 
 	kvm_riscv_stage2_update_hgatp(vcpu);
+
+	vcpu->cpu = cpu;
 }
 
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+
+	vcpu->cpu = -1;
+
+	csr_write(CSR_HGATP, 0);
+
+	csr->vsstatus = csr_read(CSR_VSSTATUS);
+	csr->vsie = csr_read(CSR_VSIE);
+	csr->vstvec = csr_read(CSR_VSTVEC);
+	csr->vsscratch = csr_read(CSR_VSSCRATCH);
+	csr->vsepc = csr_read(CSR_VSEPC);
+	csr->vscause = csr_read(CSR_VSCAUSE);
+	csr->vstval = csr_read(CSR_VSTVAL);
+	csr->vsip = csr_read(CSR_VSIP);
+	csr->vsatp = csr_read(CSR_VSATP);
 }
 
 static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
diff --git a/arch/riscv/kvm/vcpu_switch.S b/arch/riscv/kvm/vcpu_switch.S
new file mode 100644
index 000000000000..e1a17df1b379
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_switch.S
@@ -0,0 +1,194 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+#include <asm/asm-offsets.h>
+#include <asm/csr.h>
+
+	.text
+	.altmacro
+	.option norelax
+
+ENTRY(__kvm_riscv_switch_to)
+	/* Save Host GPRs (except A0 and T0-T6) */
+	REG_S	ra, (KVM_ARCH_HOST_RA)(a0)
+	REG_S	sp, (KVM_ARCH_HOST_SP)(a0)
+	REG_S	gp, (KVM_ARCH_HOST_GP)(a0)
+	REG_S	tp, (KVM_ARCH_HOST_TP)(a0)
+	REG_S	s0, (KVM_ARCH_HOST_S0)(a0)
+	REG_S	s1, (KVM_ARCH_HOST_S1)(a0)
+	REG_S	a1, (KVM_ARCH_HOST_A1)(a0)
+	REG_S	a2, (KVM_ARCH_HOST_A2)(a0)
+	REG_S	a3, (KVM_ARCH_HOST_A3)(a0)
+	REG_S	a4, (KVM_ARCH_HOST_A4)(a0)
+	REG_S	a5, (KVM_ARCH_HOST_A5)(a0)
+	REG_S	a6, (KVM_ARCH_HOST_A6)(a0)
+	REG_S	a7, (KVM_ARCH_HOST_A7)(a0)
+	REG_S	s2, (KVM_ARCH_HOST_S2)(a0)
+	REG_S	s3, (KVM_ARCH_HOST_S3)(a0)
+	REG_S	s4, (KVM_ARCH_HOST_S4)(a0)
+	REG_S	s5, (KVM_ARCH_HOST_S5)(a0)
+	REG_S	s6, (KVM_ARCH_HOST_S6)(a0)
+	REG_S	s7, (KVM_ARCH_HOST_S7)(a0)
+	REG_S	s8, (KVM_ARCH_HOST_S8)(a0)
+	REG_S	s9, (KVM_ARCH_HOST_S9)(a0)
+	REG_S	s10, (KVM_ARCH_HOST_S10)(a0)
+	REG_S	s11, (KVM_ARCH_HOST_S11)(a0)
+
+	/* Save Host SSTATUS, HSTATUS, SCRATCH and STVEC */
+	csrr	t0, CSR_SSTATUS
+	REG_S	t0, (KVM_ARCH_HOST_SSTATUS)(a0)
+	csrr	t1, CSR_HSTATUS
+	REG_S	t1, (KVM_ARCH_HOST_HSTATUS)(a0)
+	csrr	t2, CSR_SSCRATCH
+	REG_S	t2, (KVM_ARCH_HOST_SSCRATCH)(a0)
+	csrr	t3, CSR_STVEC
+	REG_S	t3, (KVM_ARCH_HOST_STVEC)(a0)
+
+	/* Change Host exception vector to return path */
+	la	t4, __kvm_switch_return
+	csrw	CSR_STVEC, t4
+
+	/* Restore Guest HSTATUS, SSTATUS and SEPC */
+	REG_L	t4, (KVM_ARCH_GUEST_SEPC)(a0)
+	csrw	CSR_SEPC, t4
+	REG_L	t5, (KVM_ARCH_GUEST_SSTATUS)(a0)
+	csrw	CSR_SSTATUS, t5
+	REG_L	t6, (KVM_ARCH_GUEST_HSTATUS)(a0)
+	csrw	CSR_HSTATUS, t6
+
+	/* Restore Guest GPRs (except A0) */
+	REG_L	ra, (KVM_ARCH_GUEST_RA)(a0)
+	REG_L	sp, (KVM_ARCH_GUEST_SP)(a0)
+	REG_L	gp, (KVM_ARCH_GUEST_GP)(a0)
+	REG_L	tp, (KVM_ARCH_GUEST_TP)(a0)
+	REG_L	t0, (KVM_ARCH_GUEST_T0)(a0)
+	REG_L	t1, (KVM_ARCH_GUEST_T1)(a0)
+	REG_L	t2, (KVM_ARCH_GUEST_T2)(a0)
+	REG_L	s0, (KVM_ARCH_GUEST_S0)(a0)
+	REG_L	s1, (KVM_ARCH_GUEST_S1)(a0)
+	REG_L	a1, (KVM_ARCH_GUEST_A1)(a0)
+	REG_L	a2, (KVM_ARCH_GUEST_A2)(a0)
+	REG_L	a3, (KVM_ARCH_GUEST_A3)(a0)
+	REG_L	a4, (KVM_ARCH_GUEST_A4)(a0)
+	REG_L	a5, (KVM_ARCH_GUEST_A5)(a0)
+	REG_L	a6, (KVM_ARCH_GUEST_A6)(a0)
+	REG_L	a7, (KVM_ARCH_GUEST_A7)(a0)
+	REG_L	s2, (KVM_ARCH_GUEST_S2)(a0)
+	REG_L	s3, (KVM_ARCH_GUEST_S3)(a0)
+	REG_L	s4, (KVM_ARCH_GUEST_S4)(a0)
+	REG_L	s5, (KVM_ARCH_GUEST_S5)(a0)
+	REG_L	s6, (KVM_ARCH_GUEST_S6)(a0)
+	REG_L	s7, (KVM_ARCH_GUEST_S7)(a0)
+	REG_L	s8, (KVM_ARCH_GUEST_S8)(a0)
+	REG_L	s9, (KVM_ARCH_GUEST_S9)(a0)
+	REG_L	s10, (KVM_ARCH_GUEST_S10)(a0)
+	REG_L	s11, (KVM_ARCH_GUEST_S11)(a0)
+	REG_L	t3, (KVM_ARCH_GUEST_T3)(a0)
+	REG_L	t4, (KVM_ARCH_GUEST_T4)(a0)
+	REG_L	t5, (KVM_ARCH_GUEST_T5)(a0)
+	REG_L	t6, (KVM_ARCH_GUEST_T6)(a0)
+
+	/* Save Host A0 in SSCRATCH */
+	csrw	CSR_SSCRATCH, a0
+
+	/* Restore Guest A0 */
+	REG_L	a0, (KVM_ARCH_GUEST_A0)(a0)
+
+	/* Resume Guest */
+	sret
+
+	/* Back to Host */
+	.align 2
+__kvm_switch_return:
+	/* Swap Guest A0 with SSCRATCH */
+	csrrw	a0, CSR_SSCRATCH, a0
+
+	/* Save Guest GPRs (except A0) */
+	REG_S	ra, (KVM_ARCH_GUEST_RA)(a0)
+	REG_S	sp, (KVM_ARCH_GUEST_SP)(a0)
+	REG_S	gp, (KVM_ARCH_GUEST_GP)(a0)
+	REG_S	tp, (KVM_ARCH_GUEST_TP)(a0)
+	REG_S	t0, (KVM_ARCH_GUEST_T0)(a0)
+	REG_S	t1, (KVM_ARCH_GUEST_T1)(a0)
+	REG_S	t2, (KVM_ARCH_GUEST_T2)(a0)
+	REG_S	s0, (KVM_ARCH_GUEST_S0)(a0)
+	REG_S	s1, (KVM_ARCH_GUEST_S1)(a0)
+	REG_S	a1, (KVM_ARCH_GUEST_A1)(a0)
+	REG_S	a2, (KVM_ARCH_GUEST_A2)(a0)
+	REG_S	a3, (KVM_ARCH_GUEST_A3)(a0)
+	REG_S	a4, (KVM_ARCH_GUEST_A4)(a0)
+	REG_S	a5, (KVM_ARCH_GUEST_A5)(a0)
+	REG_S	a6, (KVM_ARCH_GUEST_A6)(a0)
+	REG_S	a7, (KVM_ARCH_GUEST_A7)(a0)
+	REG_S	s2, (KVM_ARCH_GUEST_S2)(a0)
+	REG_S	s3, (KVM_ARCH_GUEST_S3)(a0)
+	REG_S	s4, (KVM_ARCH_GUEST_S4)(a0)
+	REG_S	s5, (KVM_ARCH_GUEST_S5)(a0)
+	REG_S	s6, (KVM_ARCH_GUEST_S6)(a0)
+	REG_S	s7, (KVM_ARCH_GUEST_S7)(a0)
+	REG_S	s8, (KVM_ARCH_GUEST_S8)(a0)
+	REG_S	s9, (KVM_ARCH_GUEST_S9)(a0)
+	REG_S	s10, (KVM_ARCH_GUEST_S10)(a0)
+	REG_S	s11, (KVM_ARCH_GUEST_S11)(a0)
+	REG_S	t3, (KVM_ARCH_GUEST_T3)(a0)
+	REG_S	t4, (KVM_ARCH_GUEST_T4)(a0)
+	REG_S	t5, (KVM_ARCH_GUEST_T5)(a0)
+	REG_S	t6, (KVM_ARCH_GUEST_T6)(a0)
+
+	/* Save Guest A0 */
+	csrr	t0, CSR_SSCRATCH
+	REG_S	t0, (KVM_ARCH_GUEST_A0)(a0)
+
+	/* Save Guest HSTATUS, SSTATUS, and SEPC */
+	csrr	t0, CSR_SEPC
+	REG_S	t0, (KVM_ARCH_GUEST_SEPC)(a0)
+	csrr	t1, CSR_SSTATUS
+	REG_S	t1, (KVM_ARCH_GUEST_SSTATUS)(a0)
+	csrr	t2, CSR_HSTATUS
+	REG_S	t2, (KVM_ARCH_GUEST_HSTATUS)(a0)
+
+	/* Restore Host SSTATUS, HSTATUS, SCRATCH and STVEC */
+	REG_L	t3, (KVM_ARCH_HOST_SSTATUS)(a0)
+	csrw	CSR_SSTATUS, t3
+	REG_L	t4, (KVM_ARCH_HOST_HSTATUS)(a0)
+	csrw	CSR_HSTATUS, t4
+	REG_L	t5, (KVM_ARCH_HOST_SSCRATCH)(a0)
+	csrw	CSR_SSCRATCH, t5
+	REG_L	t6, (KVM_ARCH_HOST_STVEC)(a0)
+	csrw	CSR_STVEC, t6
+
+	/* Restore Host GPRs (except A0 and T0-T6) */
+	REG_L	ra, (KVM_ARCH_HOST_RA)(a0)
+	REG_L	sp, (KVM_ARCH_HOST_SP)(a0)
+	REG_L	gp, (KVM_ARCH_HOST_GP)(a0)
+	REG_L	tp, (KVM_ARCH_HOST_TP)(a0)
+	REG_L	s0, (KVM_ARCH_HOST_S0)(a0)
+	REG_L	s1, (KVM_ARCH_HOST_S1)(a0)
+	REG_L	a1, (KVM_ARCH_HOST_A1)(a0)
+	REG_L	a2, (KVM_ARCH_HOST_A2)(a0)
+	REG_L	a3, (KVM_ARCH_HOST_A3)(a0)
+	REG_L	a4, (KVM_ARCH_HOST_A4)(a0)
+	REG_L	a5, (KVM_ARCH_HOST_A5)(a0)
+	REG_L	a6, (KVM_ARCH_HOST_A6)(a0)
+	REG_L	a7, (KVM_ARCH_HOST_A7)(a0)
+	REG_L	s2, (KVM_ARCH_HOST_S2)(a0)
+	REG_L	s3, (KVM_ARCH_HOST_S3)(a0)
+	REG_L	s4, (KVM_ARCH_HOST_S4)(a0)
+	REG_L	s5, (KVM_ARCH_HOST_S5)(a0)
+	REG_L	s6, (KVM_ARCH_HOST_S6)(a0)
+	REG_L	s7, (KVM_ARCH_HOST_S7)(a0)
+	REG_L	s8, (KVM_ARCH_HOST_S8)(a0)
+	REG_L	s9, (KVM_ARCH_HOST_S9)(a0)
+	REG_L	s10, (KVM_ARCH_HOST_S10)(a0)
+	REG_L	s11, (KVM_ARCH_HOST_S11)(a0)
+
+	/* Return to C code */
+	ret
+ENDPROC(__kvm_riscv_switch_to)
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
