Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C08129566
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 12:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XSbeU6B5CwbCUtR0Nr9VXFBOiwYREmlfbKl2TrzxR38=; b=JBm9z6BAKSjVpOutg3gzhai58
	uIfhe0BYg/zbZQDVCrIm7BgZCuAJFuRulF/0kC4DZXNmkKSzvvCdknhYGWkQwYMb8kvuavNieCXy5
	w79L+2EpQ+dmEv/Da9w/rTldwDRYPyWwTMp4RoHsu9Xk458MN3c9wTwGyIlFxNrDr8N9420L113wQ
	ZJ5YbMu7m6j0ym+GQMQRV2zmp+G6Vd6GiL0c/4wyxdeSBO0EngsTBXW2IRaejpig8C4BNBwPpytKs
	yAXzSUGjyEaLqSuKwSadtzmchO7nQ3mep6ir/kR2y7Hxf64xGbB7u4hbF1DWXakMh7/2+lfPXYdJq
	eBVSBVaHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijM0w-0000tC-MY; Mon, 23 Dec 2019 11:36:42 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijM0p-0000jx-2C; Mon, 23 Dec 2019 11:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577101036; x=1608637036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p/p9zbg7PEypj+9oO97FUoP3CVKCgrul29ErJQDQZG0=;
 b=kTqewrroqe9w2CMfV+QY+3cyrPQzL1Nf4DjZWIx9lVia8LABgTHq0890
 XA+afdb3KuyeEmjTtV4WqE38lq0LAwGannLx0xUDd1sqwM25cl/Ed2Uyi
 Cj2RukFIdD9W8vq0KgHTXN9mfFB8r+u/jLdf5ifZrjQ9cHi32VQjxm/2s
 zupnQUTlPPQf4l7oXkoC3sqpDUipZBX9sg/OjUSvERtINUfXnWdiEbE/5
 N3MauBE51O4n5lwQfd7AWwSWwJRBIuOZmo4aH9mGiUxd5X4Olzvj5UA0L
 4u7o3fbISHLI5S/osK9/69qQP13+zjmcPdJo5u8qlNwEmNB0j8vdAQWnf w==;
IronPort-SDR: 3eFEwC8VseVTui2AMMZu92+VO3/leRGzTGnJvTHtugUCZE8gzJczcrr3LtX9iM+Ld2T2pMk5C6
 Cmt3vvjE9g3idH2GZ44kcUjDn8s+6x3ypzil+VlNJgXio4Wg9/Z3967tXv5RjsGPEinyljU8HT
 xzmyTAIp+G1+dL/STJDJD2MiATZjmR3+JVIFeWu7HhDdqfxN1/j8IMccqtGyLPnMlfvsjjJyHY
 m6WuTOkw6uOxm9mMKQDmhykguPF9zCZWGgEa0Dzr6Hrv/4YYGHcZgtGXCIt/ceXucszo+stVEy
 tL4=
X-IronPort-AV: E=Sophos;i="5.69,347,1571673600"; d="scan'208";a="227595176"
Received: from mail-sn1nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.57])
 by ob1.hgst.iphmx.com with ESMTP; 23 Dec 2019 19:37:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jY/hkoXQTBE4SSLh2lVoEz/7GCvDObvXQNLMHFtzFKbROLjUuUuQXUr+FxqfdtwLD2/CwpwqxhmZsp8HCCCQbpxHkSeHLzlXzomUXDjsn0VBqHFuZA5Z5LhFgv7BzKwqNFG4N6oE7YOLtE9Nnqt3/9hyaDl33gp9mZYMnFbfyG8vbR3xWNxh0Vrb8ECHGnr6OsnF6agXbFtR6X2VwaGuCNBvkhhUKKUVocX8NoYzjYqyNPJS9vMVzZay6m/TcAxE229sH5QMamfQaZ8aSFeknhFj2+zxGPEBRts7lnPlNV+yfGXsQ4gb3BmmLL5AS/yv9RgSDFLVG1giGQAlQdp+9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XSbeU6B5CwbCUtR0Nr9VXFBOiwYREmlfbKl2TrzxR38=;
 b=V8MsfBYz8G7gMi/54jXJm5yxYDmznR1CD0b7TGlVb3t2sMDbzTYxcfkj3wzPWEPvhfZIMj+i7B/yRDrn4zTr9tZddkxNQ5HSeEY7So2fvUyZDSxS8Dcap/tnKnW6eyENWplvBEcm2PjNLIgXRNoNdgy8px8U5F/JHzN9EiRDMamCUZ57gZb+k08u7TUy6aIpdM49WPuv7/QK8YladNXArTXJdQZ0T7Fli79LifKSWHVDg6BtjcpSQPx9HYGqlxez4n6y1DcQrEeDPl+F94kM/gBg+1QF7NHBOMG+0++L+TE34UHLofem0dlfPczAHSr1Qej8uB18T59Xt8V1GlvqmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XSbeU6B5CwbCUtR0Nr9VXFBOiwYREmlfbKl2TrzxR38=;
 b=MW6fPlC7hx89iErft6NGbh+ndTQ+Az+jXcoJ3clH0zTXM22LcxcE4lR2UQ5LBrSAADerx7Hu7mpB35csWK04V8Bzl8+jXaRB6Tl025TXEsT19o36UYTDUUkJWbqMcsop2csmaDRoNpit90G3YN4gq2yhMaeDMrH34eibTvMkQ5w=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6096.namprd04.prod.outlook.com (20.178.248.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Mon, 23 Dec 2019 11:36:31 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:36:31 +0000
Received: from wdc.com (106.51.20.238) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 23 Dec 2019 11:36:26 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini
 <pbonzini@redhat.com>, Radim K <rkrcmar@redhat.com>
Subject: [PATCH v10 09/19] RISC-V: KVM: Handle MMIO exits for VCPU
Thread-Topic: [PATCH v10 09/19] RISC-V: KVM: Handle MMIO exits for VCPU
Thread-Index: AQHVuYU4Pif2FNZxb0uHSZOGizeWpA==
Date: Mon, 23 Dec 2019 11:36:31 +0000
Message-ID: <20191223113443.68969-10-anup.patel@wdc.com>
References: <20191223113443.68969-1-anup.patel@wdc.com>
In-Reply-To: <20191223113443.68969-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1c2e757a-1bf2-473a-ca2f-08d7879c5af3
x-ms-traffictypediagnostic: MN2PR04MB6096:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB609625E20A676CFB4449CB668D2E0@MN2PR04MB6096.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:334;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(136003)(346002)(366004)(39860400002)(43544003)(189003)(199004)(4326008)(55236004)(8676002)(66946007)(66446008)(64756008)(26005)(71200400001)(5660300002)(8886007)(7696005)(52116002)(36756003)(66556008)(66476007)(1076003)(86362001)(30864003)(7416002)(81166006)(478600001)(316002)(2616005)(8936002)(54906003)(16526019)(55016002)(81156014)(186003)(1006002)(956004)(110136005)(6666004)(2906002)(44832011)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6096;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u2sLdDmdTIDXCkCYwUwQGicdzwZbWDkesIX9Nj/PEImQ05k6Gu+ks1h6b51PIf4IOvtCbaZ7mSVrFkfi/xgRc99m24F//ZShCS2UezrwnM4uKFt2vz1g5iR3xWhmKpnSZCB2dWInDEfbzE3nh+ZKJBrcFWksWKEDmoZBl4ox6KG9/XtXoSu1KUTtLOsCVpTDY0XXtUuyss4da+gixnm9zUqe/oqnoV+Fh5fwoMfJv8wfTHIa1rEVNDOVA3SSOJhRK9Zm+qaqacVWtXDXnoRlE3I+wc+bkFEtA2rNQJIa/3n8JrxzOlwewW3tLzu3GZBSKkaEDpKZTfnawA3gDHZUvon7vTAxX4542ibhlN3dCj7sqVS0Cjs1Nq7BKU9RCOsS3TrlXVfasgu3HibtVAo8A48/9Lp6lukICZh6OpDQ1Z+pmeEozhpFwERggQPIHvgr7uAsoYm8wKzI8HZTZSx+e83ZS/Z0l69/POW2XIYBxxAMHUyhflQ7UJvlGf8NHGBGrSjp6c2/vQpPOwg9OSY67w==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c2e757a-1bf2-473a-ca2f-08d7879c5af3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:36:31.1016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WIiBQwKNMK8i1QgPa78ke99d5G10k2BZmzrT69rrrvPMElzpQDpVijS3yni1K8WdZk98NoOYLfwL0u3/c18EmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033635_240320_70AAF25F 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "kvm-riscv@lists.infradead.org" <kvm-riscv@lists.infradead.org>,
 Alexander Graf <graf@amazon.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We will get stage2 page faults whenever Guest/VM access SW emulated
MMIO device or unmapped Guest RAM.

This patch implements MMIO read/write emulation by extracting MMIO
details from the trapped load/store instruction and forwarding the
MMIO read/write to user-space. The actual MMIO emulation will happen
in user-space and KVM kernel module will only take care of register
updates before resuming the trapped VCPU.

The handling for stage2 page faults for unmapped Guest RAM will be
implemeted by a separate patch later.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h |  20 ++
 arch/riscv/kvm/mmu.c              |   7 +
 arch/riscv/kvm/vcpu_exit.c        | 533 +++++++++++++++++++++++++++++-
 arch/riscv/kvm/vcpu_switch.S      |  14 +
 4 files changed, 571 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm=
_host.h
index 70413ebcf4db..4e9305f2d43d 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -53,6 +53,13 @@ struct kvm_arch {
 	phys_addr_t pgd_phys;
 };
=20
+struct kvm_mmio_decode {
+	unsigned long insn;
+	int len;
+	int shift;
+	int return_handled;
+};
+
 struct kvm_cpu_context {
 	unsigned long zero;
 	unsigned long ra;
@@ -141,6 +148,9 @@ struct kvm_vcpu_arch {
 	unsigned long irqs_pending;
 	unsigned long irqs_pending_mask;
=20
+	/* MMIO instruction details */
+	struct kvm_mmio_decode mmio_decode;
+
 	/* VCPU power-off state */
 	bool power_off;
=20
@@ -157,11 +167,21 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vc=
pu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
=20
+int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long h=
va,
+			 bool is_write);
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
 int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu);
=20
+void __kvm_riscv_unpriv_trap(void);
+
+unsigned long kvm_riscv_vcpu_unpriv_read(struct kvm_vcpu *vcpu,
+					 bool read_insn,
+					 unsigned long guest_addr,
+					 unsigned long *trap_scause);
+void kvm_riscv_vcpu_trap_redirect(struct kvm_vcpu *vcpu,
+				  unsigned long scause, unsigned long stval);
 int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)=
;
 int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long scause, unsigned long stval,
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
index 04dd089b86ff..2b965f9aac07 100644
--- a/arch/riscv/kvm/mmu.c
+++ b/arch/riscv/kvm/mmu.c
@@ -61,6 +61,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 	return 0;
 }
=20
+int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long h=
va,
+			 bool is_write)
+{
+	/* TODO: */
+	return 0;
+}
+
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu)
 {
 	/* TODO: */
diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index dcea9ce4e728..cbf973c5f2fb 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -6,9 +6,458 @@
  *     Anup Patel <anup.patel@wdc.com>
  */
=20
+#include <linux/bitops.h>
 #include <linux/errno.h>
 #include <linux/err.h>
 #include <linux/kvm_host.h>
+#include <asm/csr.h>
+
+#define INSN_MATCH_LB		0x3
+#define INSN_MASK_LB		0x707f
+#define INSN_MATCH_LH		0x1003
+#define INSN_MASK_LH		0x707f
+#define INSN_MATCH_LW		0x2003
+#define INSN_MASK_LW		0x707f
+#define INSN_MATCH_LD		0x3003
+#define INSN_MASK_LD		0x707f
+#define INSN_MATCH_LBU		0x4003
+#define INSN_MASK_LBU		0x707f
+#define INSN_MATCH_LHU		0x5003
+#define INSN_MASK_LHU		0x707f
+#define INSN_MATCH_LWU		0x6003
+#define INSN_MASK_LWU		0x707f
+#define INSN_MATCH_SB		0x23
+#define INSN_MASK_SB		0x707f
+#define INSN_MATCH_SH		0x1023
+#define INSN_MASK_SH		0x707f
+#define INSN_MATCH_SW		0x2023
+#define INSN_MASK_SW		0x707f
+#define INSN_MATCH_SD		0x3023
+#define INSN_MASK_SD		0x707f
+
+#define INSN_MATCH_C_LD		0x6000
+#define INSN_MASK_C_LD		0xe003
+#define INSN_MATCH_C_SD		0xe000
+#define INSN_MASK_C_SD		0xe003
+#define INSN_MATCH_C_LW		0x4000
+#define INSN_MASK_C_LW		0xe003
+#define INSN_MATCH_C_SW		0xc000
+#define INSN_MASK_C_SW		0xe003
+#define INSN_MATCH_C_LDSP	0x6002
+#define INSN_MASK_C_LDSP	0xe003
+#define INSN_MATCH_C_SDSP	0xe002
+#define INSN_MASK_C_SDSP	0xe003
+#define INSN_MATCH_C_LWSP	0x4002
+#define INSN_MASK_C_LWSP	0xe003
+#define INSN_MATCH_C_SWSP	0xc002
+#define INSN_MASK_C_SWSP	0xe003
+
+#define INSN_16BIT_MASK		0x3
+
+#define INSN_IS_16BIT(insn)	(((insn) & INSN_16BIT_MASK) !=3D INSN_16BIT_MA=
SK)
+
+#define INSN_LEN(insn)		(INSN_IS_16BIT(insn) ? 2 : 4)
+
+#ifdef CONFIG_64BIT
+#define LOG_REGBYTES		3
+#else
+#define LOG_REGBYTES		2
+#endif
+#define REGBYTES		(1 << LOG_REGBYTES)
+
+#define SH_RD			7
+#define SH_RS1			15
+#define SH_RS2			20
+#define SH_RS2C			2
+
+#define RV_X(x, s, n)		(((x) >> (s)) & ((1 << (n)) - 1))
+#define RVC_LW_IMM(x)		((RV_X(x, 6, 1) << 2) | \
+				 (RV_X(x, 10, 3) << 3) | \
+				 (RV_X(x, 5, 1) << 6))
+#define RVC_LD_IMM(x)		((RV_X(x, 10, 3) << 3) | \
+				 (RV_X(x, 5, 2) << 6))
+#define RVC_LWSP_IMM(x)		((RV_X(x, 4, 3) << 2) | \
+				 (RV_X(x, 12, 1) << 5) | \
+				 (RV_X(x, 2, 2) << 6))
+#define RVC_LDSP_IMM(x)		((RV_X(x, 5, 2) << 3) | \
+				 (RV_X(x, 12, 1) << 5) | \
+				 (RV_X(x, 2, 3) << 6))
+#define RVC_SWSP_IMM(x)		((RV_X(x, 9, 4) << 2) | \
+				 (RV_X(x, 7, 2) << 6))
+#define RVC_SDSP_IMM(x)		((RV_X(x, 10, 3) << 3) | \
+				 (RV_X(x, 7, 3) << 6))
+#define RVC_RS1S(insn)		(8 + RV_X(insn, SH_RD, 3))
+#define RVC_RS2S(insn)		(8 + RV_X(insn, SH_RS2C, 3))
+#define RVC_RS2(insn)		RV_X(insn, SH_RS2C, 5)
+
+#define SHIFT_RIGHT(x, y)		\
+	((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
+
+#define REG_MASK			\
+	((1 << (5 + LOG_REGBYTES)) - (1 << LOG_REGBYTES))
+
+#define REG_OFFSET(insn, pos)		\
+	(SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
+
+#define REG_PTR(insn, pos, regs)	\
+	(ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
+
+#define GET_RM(insn)		(((insn) >> 12) & 7)
+
+#define GET_RS1(insn, regs)	(*REG_PTR(insn, SH_RS1, regs))
+#define GET_RS2(insn, regs)	(*REG_PTR(insn, SH_RS2, regs))
+#define GET_RS1S(insn, regs)	(*REG_PTR(RVC_RS1S(insn), 0, regs))
+#define GET_RS2S(insn, regs)	(*REG_PTR(RVC_RS2S(insn), 0, regs))
+#define GET_RS2C(insn, regs)	(*REG_PTR(insn, SH_RS2C, regs))
+#define GET_SP(regs)		(*REG_PTR(2, 0, regs))
+#define SET_RD(insn, regs, val)	(*REG_PTR(insn, SH_RD, regs) =3D (val))
+#define IMM_I(insn)		((s32)(insn) >> 20)
+#define IMM_S(insn)		(((s32)(insn) >> 25 << 5) | \
+				 (s32)(((insn) >> 7) & 0x1f))
+#define MASK_FUNCT3		0x7000
+
+static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			unsigned long fault_addr, unsigned long htinst)
+{
+	int shift =3D 0, len =3D 0;
+	unsigned long insn, ut_scause =3D 0;
+	struct kvm_cpu_context *ct =3D &vcpu->arch.guest_context;
+
+	/* Determine trapped instruction */
+	if (htinst & 0x1) {
+		/*
+		 * Bit[0] =3D=3D 1 implies trapped instruction value is
+		 * transformed instruction or custom instruction.
+		 */
+		insn =3D htinst | INSN_16BIT_MASK;
+	} else {
+		/*
+		 * Bit[0] =3D=3D 0 implies trapped instruction value is
+		 * zero or special value.
+		 */
+		insn =3D kvm_riscv_vcpu_unpriv_read(vcpu, true, ct->sepc,
+						  &ut_scause);
+		if (ut_scause) {
+			/* Redirect trap if we failed to read instruction */
+			if (ut_scause =3D=3D EXC_LOAD_PAGE_FAULT)
+				ut_scause =3D EXC_INST_PAGE_FAULT;
+			kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause, ct->sepc);
+			return 1;
+		}
+	}
+
+	/* Decode length of MMIO and shift */
+	if ((insn & INSN_MASK_LW) =3D=3D INSN_MATCH_LW) {
+		len =3D 4;
+		shift =3D 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LB) =3D=3D INSN_MATCH_LB) {
+		len =3D 1;
+		shift =3D 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LBU) =3D=3D INSN_MATCH_LBU) {
+		len =3D 1;
+		shift =3D 8 * (sizeof(ulong) - len);
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_LD) =3D=3D INSN_MATCH_LD) {
+		len =3D 8;
+		shift =3D 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LWU) =3D=3D INSN_MATCH_LWU) {
+		len =3D 4;
+#endif
+	} else if ((insn & INSN_MASK_LH) =3D=3D INSN_MATCH_LH) {
+		len =3D 2;
+		shift =3D 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LHU) =3D=3D INSN_MATCH_LHU) {
+		len =3D 2;
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_C_LD) =3D=3D INSN_MATCH_C_LD) {
+		len =3D 8;
+		shift =3D 8 * (sizeof(ulong) - len);
+		insn =3D RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_LDSP) =3D=3D INSN_MATCH_C_LDSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len =3D 8;
+		shift =3D 8 * (sizeof(ulong) - len);
+#endif
+	} else if ((insn & INSN_MASK_C_LW) =3D=3D INSN_MATCH_C_LW) {
+		len =3D 4;
+		shift =3D 8 * (sizeof(ulong) - len);
+		insn =3D RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_LWSP) =3D=3D INSN_MATCH_C_LWSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len =3D 4;
+		shift =3D 8 * (sizeof(ulong) - len);
+	} else {
+		return -ENOTSUPP;
+	}
+
+	/* Fault address should be aligned to length of MMIO */
+	if (fault_addr & (len - 1))
+		return -EIO;
+
+	/* Save instruction decode info */
+	vcpu->arch.mmio_decode.insn =3D insn;
+	vcpu->arch.mmio_decode.shift =3D shift;
+	vcpu->arch.mmio_decode.len =3D len;
+	vcpu->arch.mmio_decode.return_handled =3D 0;
+
+	/* Exit to userspace for MMIO emulation */
+	vcpu->stat.mmio_exit_user++;
+	run->exit_reason =3D KVM_EXIT_MMIO;
+	run->mmio.is_write =3D false;
+	run->mmio.phys_addr =3D fault_addr;
+	run->mmio.len =3D len;
+
+	return 0;
+}
+
+static int emulate_store(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			 unsigned long fault_addr, unsigned long htinst)
+{
+	u8 data8;
+	u16 data16;
+	u32 data32;
+	u64 data64;
+	ulong data;
+	int len =3D 0;
+	unsigned long insn, ut_scause =3D 0;
+	struct kvm_cpu_context *ct =3D &vcpu->arch.guest_context;
+
+	/* Determine trapped instruction */
+	if (htinst & 0x1) {
+		/*
+		 * Bit[0] =3D=3D 1 implies trapped instruction value is
+		 * transformed instruction or custom instruction.
+		 */
+		insn =3D htinst | INSN_16BIT_MASK;
+	} else {
+		/*
+		 * Bit[0] =3D=3D 0 implies trapped instruction value is
+		 * zero or special value.
+		 */
+		insn =3D kvm_riscv_vcpu_unpriv_read(vcpu, true, ct->sepc,
+						  &ut_scause);
+		if (ut_scause) {
+			/* Redirect trap if we failed to read instruction */
+			if (ut_scause =3D=3D EXC_LOAD_PAGE_FAULT)
+				ut_scause =3D EXC_INST_PAGE_FAULT;
+			kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause, ct->sepc);
+			return 1;
+		}
+	}
+
+	data =3D GET_RS2(insn, &vcpu->arch.guest_context);
+	data8 =3D data16 =3D data32 =3D data64 =3D data;
+
+	if ((insn & INSN_MASK_SW) =3D=3D INSN_MATCH_SW) {
+		len =3D 4;
+	} else if ((insn & INSN_MASK_SB) =3D=3D INSN_MATCH_SB) {
+		len =3D 1;
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_SD) =3D=3D INSN_MATCH_SD) {
+		len =3D 8;
+#endif
+	} else if ((insn & INSN_MASK_SH) =3D=3D INSN_MATCH_SH) {
+		len =3D 2;
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_C_SD) =3D=3D INSN_MATCH_C_SD) {
+		len =3D 8;
+		data64 =3D GET_RS2S(insn, &vcpu->arch.guest_context);
+	} else if ((insn & INSN_MASK_C_SDSP) =3D=3D INSN_MATCH_C_SDSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len =3D 8;
+		data64 =3D GET_RS2C(insn, &vcpu->arch.guest_context);
+#endif
+	} else if ((insn & INSN_MASK_C_SW) =3D=3D INSN_MATCH_C_SW) {
+		len =3D 4;
+		data32 =3D GET_RS2S(insn, &vcpu->arch.guest_context);
+	} else if ((insn & INSN_MASK_C_SWSP) =3D=3D INSN_MATCH_C_SWSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len =3D 4;
+		data32 =3D GET_RS2C(insn, &vcpu->arch.guest_context);
+	} else {
+		return -ENOTSUPP;
+	}
+
+	/* Fault address should be aligned to length of MMIO */
+	if (fault_addr & (len - 1))
+		return -EIO;
+
+	/* Save instruction decode info */
+	vcpu->arch.mmio_decode.insn =3D insn;
+	vcpu->arch.mmio_decode.shift =3D 0;
+	vcpu->arch.mmio_decode.len =3D len;
+	vcpu->arch.mmio_decode.return_handled =3D 0;
+
+	/* Copy data to kvm_run instance */
+	switch (len) {
+	case 1:
+		*((u8 *)run->mmio.data) =3D data8;
+		break;
+	case 2:
+		*((u16 *)run->mmio.data) =3D data16;
+		break;
+	case 4:
+		*((u32 *)run->mmio.data) =3D data32;
+		break;
+	case 8:
+		*((u64 *)run->mmio.data) =3D data64;
+		break;
+	default:
+		return -ENOTSUPP;
+	};
+
+	/* Exit to userspace for MMIO emulation */
+	vcpu->stat.mmio_exit_user++;
+	run->exit_reason =3D KVM_EXIT_MMIO;
+	run->mmio.is_write =3D true;
+	run->mmio.phys_addr =3D fault_addr;
+	run->mmio.len =3D len;
+
+	return 0;
+}
+
+static int stage2_page_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			     unsigned long scause, unsigned long stval,
+			     unsigned long htval, unsigned long htinst)
+{
+	struct kvm_memory_slot *memslot;
+	unsigned long hva, fault_addr;
+	bool writable;
+	gfn_t gfn;
+	int ret;
+
+	fault_addr =3D (htval << 2) | (stval & 0x3);
+	gfn =3D fault_addr >> PAGE_SHIFT;
+	memslot =3D gfn_to_memslot(vcpu->kvm, gfn);
+	hva =3D gfn_to_hva_memslot_prot(memslot, gfn, &writable);
+
+	if (kvm_is_error_hva(hva) ||
+	    (scause =3D=3D EXC_STORE_GUEST_PAGE_FAULT && !writable)) {
+		switch (scause) {
+		case EXC_LOAD_GUEST_PAGE_FAULT:
+			return emulate_load(vcpu, run, fault_addr, htinst);
+		case EXC_STORE_GUEST_PAGE_FAULT:
+			return emulate_store(vcpu, run, fault_addr, htinst);
+		default:
+			return -ENOTSUPP;
+		};
+	}
+
+	ret =3D kvm_riscv_stage2_map(vcpu, fault_addr, hva,
+			(scause =3D=3D EXC_STORE_GUEST_PAGE_FAULT) ? true : false);
+	if (ret < 0)
+		return ret;
+
+	return 1;
+}
+
+#define STR(x)		XSTR(x)
+#define XSTR(x)		#x
+
+/**
+ * kvm_riscv_vcpu_unpriv_read -- Read machine word from Guest memory
+ *
+ * @vcpu: The VCPU pointer
+ * @read_insn: Flag representing whether we are reading instruction
+ * @guest_addr: Guest address to read
+ * @trap_scause: Output pointer for unprivilege trap cause
+ */
+unsigned long kvm_riscv_vcpu_unpriv_read(struct kvm_vcpu *vcpu,
+					 bool read_insn,
+					 unsigned long guest_addr,
+					 unsigned long *trap_scause)
+{
+	register unsigned long tscause asm("a0");
+	register unsigned long val asm("a1");
+	register unsigned long addr asm("a2") =3D guest_addr;
+	unsigned long guest_sstatus =3D
+		vcpu->arch.guest_context.sstatus | ((read_insn) ? SR_MXR : 0);
+	unsigned long guest_hstatus =3D
+		vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
+	unsigned long old_stvec, tmp;
+
+	BUG_ON(guest_sstatus & SR_SIE);
+
+	guest_sstatus =3D csr_swap(CSR_SSTATUS, guest_sstatus);
+	old_stvec =3D csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
+
+	if (read_insn) {
+		asm volatile ("\n"
+			"csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
+			"li %[tscause], 0\n"
+			"lhu %[val], (%[addr])\n"
+			"andi %[tmp], %[val], 3\n"
+			"addi %[tmp], %[tmp], -3\n"
+			"bne %[tmp], zero, 2f\n"
+			"lhu %[tmp], 2(%[addr])\n"
+			"sll %[tmp], %[tmp], 16\n"
+			"add %[val], %[val], %[tmp]\n"
+			"2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
+		: [hstatus] "+&r"(guest_hstatus), [val] "=3D&r" (val),
+		  [tmp] "=3D&r" (tmp), [tscause] "+&r" (tscause)
+		: [addr] "r" (addr));
+	} else {
+		asm volatile ("\n"
+			"csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
+			"li %[tscause], 0\n"
+			".option push\n"
+			".option norvc\n"
+#ifdef CONFIG_64BIT
+			"ld %[val], (%[addr])\n"
+#else
+			"lw %[val], (%[addr])\n"
+#endif
+			".option pop\n"
+			"csrw " STR(CSR_HSTATUS) ", %[hstatus]"
+		: [hstatus] "+&r"(guest_hstatus),
+		  [val] "=3D&r" (val), [tscause] "+&r" (tscause)
+		: [addr] "r" (addr));
+	}
+
+	csr_write(CSR_STVEC, old_stvec);
+	csr_write(CSR_SSTATUS, guest_sstatus);
+
+	*trap_scause =3D tscause;
+
+	return val;
+}
+
+/**
+ * kvm_riscv_vcpu_trap_redirect -- Redirect trap to Guest
+ *
+ * @vcpu: The VCPU pointer
+ * @scause: Trap exception cause
+ * @stval: Trap value
+ */
+void kvm_riscv_vcpu_trap_redirect(struct kvm_vcpu *vcpu,
+				  unsigned long scause, unsigned long stval)
+{
+	unsigned long vsstatus =3D csr_read(CSR_VSSTATUS);
+
+	/* Change Guest SSTATUS.SPP bit */
+	vsstatus &=3D ~SR_SPP;
+	if (vcpu->arch.guest_context.sstatus & SR_SPP)
+		vsstatus |=3D SR_SPP;
+
+	/* Change Guest SSTATUS.SPIE bit */
+	vsstatus &=3D ~SR_SPIE;
+	if (vsstatus & SR_SIE)
+		vsstatus |=3D SR_SPIE;
+
+	/* Clear Guest SSTATUS.SIE bit */
+	vsstatus &=3D ~SR_SIE;
+
+	/* Update Guest SSTATUS */
+	csr_write(CSR_VSSTATUS, vsstatus);
+
+	/* Update Guest SCAUSE, STVAL, and SEPC */
+	csr_write(CSR_VSCAUSE, scause);
+	csr_write(CSR_VSTVAL, stval);
+	csr_write(CSR_VSEPC, vcpu->arch.guest_context.sepc);
+
+	/* Set Guest PC to Guest exception vector */
+	vcpu->arch.guest_context.sepc =3D csr_read(CSR_VSTVEC);
+}
=20
 /**
  * kvm_riscv_vcpu_mmio_return -- Handle MMIO loads after user space emulat=
ion
@@ -19,7 +468,54 @@
  */
 int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 {
-	/* TODO: */
+	u8 data8;
+	u16 data16;
+	u32 data32;
+	u64 data64;
+	ulong insn;
+	int len, shift;
+
+	if (vcpu->arch.mmio_decode.return_handled)
+		return 0;
+
+	vcpu->arch.mmio_decode.return_handled =3D 1;
+	insn =3D vcpu->arch.mmio_decode.insn;
+
+	if (run->mmio.is_write)
+		goto done;
+
+	len =3D vcpu->arch.mmio_decode.len;
+	shift =3D vcpu->arch.mmio_decode.shift;
+
+	switch (len) {
+	case 1:
+		data8 =3D *((u8 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data8 << shift >> shift);
+		break;
+	case 2:
+		data16 =3D *((u16 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data16 << shift >> shift);
+		break;
+	case 4:
+		data32 =3D *((u32 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data32 << shift >> shift);
+		break;
+	case 8:
+		data64 =3D *((u64 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data64 << shift >> shift);
+		break;
+	default:
+		return -ENOTSUPP;
+	};
+
+done:
+	/* Move to next instruction */
+	vcpu->arch.guest_context.sepc +=3D INSN_LEN(insn);
+
 	return 0;
 }
=20
@@ -31,6 +527,37 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct k=
vm_run *run,
 			unsigned long scause, unsigned long stval,
 			unsigned long htval, unsigned long htinst)
 {
-	/* TODO: */
-	return 0;
+	int ret;
+
+	/* If we got host interrupt then do nothing */
+	if (scause & CAUSE_IRQ_FLAG)
+		return 1;
+
+	/* Handle guest traps */
+	ret =3D -EFAULT;
+	run->exit_reason =3D KVM_EXIT_UNKNOWN;
+	switch (scause) {
+	case EXC_INST_GUEST_PAGE_FAULT:
+	case EXC_LOAD_GUEST_PAGE_FAULT:
+	case EXC_STORE_GUEST_PAGE_FAULT:
+		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
+			ret =3D stage2_page_fault(vcpu, run, scause, stval,
+						htval, htinst);
+		break;
+	default:
+		break;
+	};
+
+	/* Print details in-case of error */
+	if (ret < 0) {
+		kvm_err("VCPU exit error %d\n", ret);
+		kvm_err("SEPC=3D0x%lx SSTATUS=3D0x%lx HSTATUS=3D0x%lx\n",
+			vcpu->arch.guest_context.sepc,
+			vcpu->arch.guest_context.sstatus,
+			vcpu->arch.guest_context.hstatus);
+		kvm_err("SCAUSE=3D0x%lx STVAL=3D0x%lx\n",
+			scause, stval);
+	}
+
+	return ret;
 }
diff --git a/arch/riscv/kvm/vcpu_switch.S b/arch/riscv/kvm/vcpu_switch.S
index e1a17df1b379..04b318b9eef8 100644
--- a/arch/riscv/kvm/vcpu_switch.S
+++ b/arch/riscv/kvm/vcpu_switch.S
@@ -192,3 +192,17 @@ __kvm_switch_return:
 	/* Return to C code */
 	ret
 ENDPROC(__kvm_riscv_switch_to)
+
+ENTRY(__kvm_riscv_unpriv_trap)
+	/*
+	 * We assume that faulting unpriv load/store instruction is
+	 * is 4-byte long and blindly increment SEPC by 4.
+	 *
+	 * The trap exception cause will be saved in 'A0' register.
+	 */
+	csrr	a0, CSR_SEPC
+	addi	a0, a0, 4
+	csrw	CSR_SEPC, a0
+	csrr	a0, CSR_SCAUSE
+	sret
+ENDPROC(__kvm_riscv_unpriv_trap)
--=20
2.17.1


