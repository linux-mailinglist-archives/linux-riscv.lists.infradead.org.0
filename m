Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D450A8674
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzIovV2NWK1d85AAN4+Vjy+ViawUCa6k+aekX+fymOI=; b=GO4eHh88dGlCif
	WfSPAB5QwbvadWxSQTZdwb9CJIQZMi8MlPPL2lcP+YuJD9i1TZyu/ulfDWthac07BxadKv9YzNV27
	I0IlI9RVc+0hSOLyBNDTa0LSSQu5f4GYFgx/tRG5rL/tQi4gGxn3jG4xRuFIEFXE8b0FUkM88MrGb
	++ssBFYgXbQ2XtGobNTuZsOw/8nzW4yssdwgftLRRCiW7myCaoDc2mvA+PUrC2Iu/OmdVaMPQ3d25
	TxHbcn0BlBooYGmZOLaotygAoOuECiGId4viRqUMa61XySYSc9xMxtVxU4gOBx27qXUzAcdpI4kM9
	GhHOLj64kNigmu0HEgpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XwH-0003E1-7m; Wed, 04 Sep 2019 16:15:21 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xw9-00034V-H2
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613719; x=1599149719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BvYPq0EfmQm0P7PV/xRstw+QjRSw+xsA+Ew760YCPpo=;
 b=ZC64G+VRAoNN2Vk3YPjDYowmTVQUT4D2xV1RdItV5tlgV+UQMqGiFSvv
 cGnH1lSvXEcC1/jpicSFhClKMWNVYG4hmS0BCdXzCBLySmYTLMrvl59Cm
 uV6fdlQWnr3egE45vT1N0ULaCFvRquGdukLwsn4Rv7rRa29FZ2V8npYnF
 vs/lgkdycTDvlDbM1ynn5snE9HypYZyHqWyBeN8u6lAcVc6FJKgx2Ov25
 w49o7dOepBNUXOuE1UwX/kJjzjJ1p0/CrKDg6Cwx97xNbMy+mPDMwP/b9
 6Vn+icDaNLc2869zX3gLLgkqkdT8hW2vyl6QAWZwm/XXWoUjYAf+lRL+p Q==;
IronPort-SDR: dBSdrTXbQg91zdS7YQyLjl4aqNQzVIZOhiw1xaqX2VrSl/DVELR5TsHh3Wpi+1s0abpoaNfGVJ
 EI2/Toimrac66uuU1i+m0zodm7aBuyg9Mpp0KIK1m+tKWo3Pe1idAUxfO3bBad/jn/Rnz5N11w
 8aQmlUY4uwCPoxPItbZe7fFsoHsqX7CLUMN4HkAib7/lf6Z+i78cdScDBiQ0alpLb4bJkfuzi/
 9bUmIG7jyYgsMqInQPhA1AGjUgCvyQyRk2IdWRuvwzmK3ixUOzJCiWWoJZFKaWug498ptZTIBQ
 /zQ=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="218010548"
Received: from mail-sn1nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.54])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:15:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcw2d7P00EHBxMVz4wbDxaibedzWkihMN8VsTXZYzqjDrvjHIuzWGIyxP/M+VRNoI4z1/PrbH4p+/pyUfiutEgYYl2ZQweMlobMm9mmgLRow3kiG1dx3Ly940gqTuE2YY8sYb2kiKuCzKKDfqVflNGGr2Nl3zNYyvUAC94Ww3uOe25iC6xBDtianuQ8ImpavUxPB4VZRIRHI+7m5aLNi886UJ3cWPfO3ApkT2XxrtEyEhBXnN6hVucW7fD33TAI2nLHjfOY45YDyf01bscFk0xm0HYYg8mGCLZmYKljeLqoF8Fgy92F9ZA8RK80U+Gq0DFJY7ZuDsbGKMcrGEOqWYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JEdy9BQWdpVFgJJhObMkngs/vfLEQL08HB3jTsF2nUA=;
 b=oJZ+jBZuu6n13Bc0m4MW5MXwKmFRTLELTPdITRfj+qrlr/TbaBVSCDKytcUpilXk2ORgYHWBB8HD/3zvhpaWQcYWt+I6okzm1WvuG9tvv2T1oN1OCWk4h+iWxc84rGaYbtF0Yf+ijDsXhQNbWe5PmcCpD5rick4L16muazoSm0EYDU7yXCmokAzJwfSsUn22xC6B9ujVi+q0ozm268oxRFxIof2fwwcjxYAi7dCfnfT/krzEMFMxSNFmgqN1wsp2vxTOXnYzbDPAXD+nd1DqxVqg0kypjTYhKYfcEmfdYmDSmnwOhZAX0EdXBbgg2jwQqaGzD/YZZ0OOHgM7uKxLDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JEdy9BQWdpVFgJJhObMkngs/vfLEQL08HB3jTsF2nUA=;
 b=RDlRoc2TblGBoNPDwap2IMqVhokXrYYjB3x0Gd8J1iwmPqfD94mljDjaJO2R4i6r9dPmfne3j0Ym0MFZKX/hxNXUsXQcBhfzl5kZwYYwNgnuypbb3TpMQMUKn8Lqzwi2KN5dKXawjyuhCgnK4mOH7X7IhWfWCPSYfvNWOjkAYII=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:15:08 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:15:08 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
Thread-Topic: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
Thread-Index: AQHVYzvrRPk5HCDQSkeEhNE70JJZAw==
Date: Wed, 4 Sep 2019 16:15:08 +0000
Message-ID: <20190904161245.111924-12-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 931468e6-da33-40f6-9dd7-08d731530e00
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5504A7AEB584BAE41ED6DC2B8DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(43544003)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(14444005)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(53946003)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(30864003)(66066001)(44832011)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dJXEeoOdHHjYG9NgHP+vVpAPWmarmURi3RdU19kmbQLPVp5YmZZsjYqnr0haARfm9ADEMLXxypqPcx0YKgxzpOLiwfNVblU05665lljqDf21H0cCk7BIQqPNNhNdppFIo5nylT8MQyW3xzoyvM63xTi/FQ83wwP6c0/VIfOI0DO7bQv1L/eRaFVPM7i7ttHg2QSr8AVo5ogZmK71gX3ia+JfN3upfBo+GP7Wika52VQ29lhc+sDTTijIGNARNcUzVJGMtZfzORs5SlynASI+0atyPCiEzJpCDYCjWTiRHNmz5h45nU15arYJJ1cR4oH+07wdiNZZdCi9QW2ksOD1uti0P+00iioorE+A3Plt8WAxw6ARHgkcH06XgXgf6IjtOQJWvDOZOW8kIQpXMH623syzq+Aan9kP3B08g6s8iOM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 931468e6-da33-40f6-9dd7-08d731530e00
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:15:08.4881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eWCJZUSAZ8sYWECEPlVCOO563qaw9r2aPfHgXYrIaLoeIv8pjt7cVF+xolWT1cGSs3lddDcgBnN26+fBq79XGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091513_752585_CB97F4BB 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
---
 arch/riscv/include/asm/kvm_host.h |  20 ++
 arch/riscv/kvm/mmu.c              |   7 +
 arch/riscv/kvm/vcpu_exit.c        | 512 +++++++++++++++++++++++++++++-
 arch/riscv/kvm/vcpu_switch.S      |   8 +
 4 files changed, 544 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 18f1097f1d8d..2a5209fff68d 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -53,6 +53,13 @@ struct kvm_arch {
 	phys_addr_t pgd_phys;
 };
 
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
 
+	/* MMIO instruction details */
+	struct kvm_mmio_decode mmio_decode;
+
 	/* VCPU power-off state */
 	bool power_off;
 
@@ -160,11 +170,21 @@ static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 int kvm_riscv_setup_vsip(void);
 void kvm_riscv_cleanup_vsip(void);
 
+int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
+			 bool is_write);
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
 int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu);
 
+void __kvm_riscv_unpriv_trap(void);
+
+unsigned long kvm_riscv_vcpu_unpriv_read(struct kvm_vcpu *vcpu,
+					 bool read_insn,
+					 unsigned long guest_addr,
+					 unsigned long *trap_scause);
+void kvm_riscv_vcpu_trap_redirect(struct kvm_vcpu *vcpu,
+				  unsigned long scause, unsigned long stval);
 int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
 int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long scause, unsigned long stval);
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
index 04dd089b86ff..2b965f9aac07 100644
--- a/arch/riscv/kvm/mmu.c
+++ b/arch/riscv/kvm/mmu.c
@@ -61,6 +61,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 	return 0;
 }
 
+int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
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
index e4d7c8f0807a..d75a6c35b6c7 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -6,9 +6,437 @@
  *     Anup Patel <anup.patel@wdc.com>
  */
 
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
+#define INSN_LEN(insn)		((((insn) & 0x3) < 0x3) ? 2 : 4)
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
+#define SET_RD(insn, regs, val)	(*REG_PTR(insn, SH_RD, regs) = (val))
+#define IMM_I(insn)		((s32)(insn) >> 20)
+#define IMM_S(insn)		(((s32)(insn) >> 25 << 5) | \
+				 (s32)(((insn) >> 7) & 0x1f))
+#define MASK_FUNCT3		0x7000
+
+static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			unsigned long fault_addr)
+{
+	int shift = 0, len = 0;
+	unsigned long ut_scause = 0;
+	struct kvm_cpu_context *ct = &vcpu->arch.guest_context;
+	ulong insn = kvm_riscv_vcpu_unpriv_read(vcpu, true, ct->sepc,
+						&ut_scause);
+
+	/* Redirect trap if we failed to read instruction */
+	if (ut_scause) {
+		if (ut_scause == EXC_LOAD_PAGE_FAULT)
+			ut_scause = EXC_INST_PAGE_FAULT;
+		kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause, ct->sepc);
+		return 1;
+	}
+
+	/* Decode length of MMIO and shift */
+	if ((insn & INSN_MASK_LW) == INSN_MATCH_LW) {
+		len = 4;
+		shift = 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LB) == INSN_MATCH_LB) {
+		len = 1;
+		shift = 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LBU) == INSN_MATCH_LBU) {
+		len = 1;
+		shift = 8 * (sizeof(ulong) - len);
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_LD) == INSN_MATCH_LD) {
+		len = 8;
+		shift = 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LWU) == INSN_MATCH_LWU) {
+		len = 4;
+#endif
+	} else if ((insn & INSN_MASK_LH) == INSN_MATCH_LH) {
+		len = 2;
+		shift = 8 * (sizeof(ulong) - len);
+	} else if ((insn & INSN_MASK_LHU) == INSN_MATCH_LHU) {
+		len = 2;
+#ifdef CONFIG_RISCV_ISA_C
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_C_LD) == INSN_MATCH_C_LD) {
+		len = 8;
+		shift = 8 * (sizeof(ulong) - len);
+		insn = RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_LDSP) == INSN_MATCH_C_LDSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 8;
+		shift = 8 * (sizeof(ulong) - len);
+#endif
+	} else if ((insn & INSN_MASK_C_LW) == INSN_MATCH_C_LW) {
+		len = 4;
+		shift = 8 * (sizeof(ulong) - len);
+		insn = RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_LWSP) == INSN_MATCH_C_LWSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 4;
+		shift = 8 * (sizeof(ulong) - len);
+#endif
+	} else {
+		return -ENOTSUPP;
+	}
+
+	/* Fault address should be aligned to length of MMIO */
+	if (fault_addr & (len - 1))
+		return -EIO;
+
+	/* Save instruction decode info */
+	vcpu->arch.mmio_decode.insn = insn;
+	vcpu->arch.mmio_decode.shift = shift;
+	vcpu->arch.mmio_decode.len = len;
+	vcpu->arch.mmio_decode.return_handled = 0;
+
+	/* Exit to userspace for MMIO emulation */
+	vcpu->stat.mmio_exit_user++;
+	run->exit_reason = KVM_EXIT_MMIO;
+	run->mmio.is_write = false;
+	run->mmio.phys_addr = fault_addr;
+	run->mmio.len = len;
+
+	return 0;
+}
+
+static int emulate_store(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			 unsigned long fault_addr)
+{
+	u8 data8;
+	u16 data16;
+	u32 data32;
+	u64 data64;
+	ulong data;
+	int len = 0;
+	unsigned long ut_scause = 0;
+	struct kvm_cpu_context *ct = &vcpu->arch.guest_context;
+	ulong insn = kvm_riscv_vcpu_unpriv_read(vcpu, true, ct->sepc,
+						&ut_scause);
+
+	/* Redirect trap if we failed to read instruction */
+	if (ut_scause) {
+		if (ut_scause == EXC_LOAD_PAGE_FAULT)
+			ut_scause = EXC_INST_PAGE_FAULT;
+		kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause, ct->sepc);
+		return 1;
+	}
+
+	data = GET_RS2(insn, &vcpu->arch.guest_context);
+	data8 = data16 = data32 = data64 = data;
+
+	if ((insn & INSN_MASK_SW) == INSN_MATCH_SW) {
+		len = 4;
+	} else if ((insn & INSN_MASK_SB) == INSN_MATCH_SB) {
+		len = 1;
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_SD) == INSN_MATCH_SD) {
+		len = 8;
+#endif
+	} else if ((insn & INSN_MASK_SH) == INSN_MATCH_SH) {
+		len = 2;
+#ifdef CONFIG_RISCV_ISA_C
+#ifdef CONFIG_64BIT
+	} else if ((insn & INSN_MASK_C_SD) == INSN_MATCH_C_SD) {
+		len = 8;
+		data64 = GET_RS2S(insn, &vcpu->arch.guest_context);
+	} else if ((insn & INSN_MASK_C_SDSP) == INSN_MATCH_C_SDSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 8;
+		data64 = GET_RS2C(insn, &vcpu->arch.guest_context);
+#endif
+	} else if ((insn & INSN_MASK_C_SW) == INSN_MATCH_C_SW) {
+		len = 4;
+		data32 = GET_RS2S(insn, &vcpu->arch.guest_context);
+	} else if ((insn & INSN_MASK_C_SWSP) == INSN_MATCH_C_SWSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 4;
+		data32 = GET_RS2C(insn, &vcpu->arch.guest_context);
+#endif
+	} else {
+		return -ENOTSUPP;
+	}
+
+	/* Fault address should be aligned to length of MMIO */
+	if (fault_addr & (len - 1))
+		return -EIO;
+
+	/* Save instruction decode info */
+	vcpu->arch.mmio_decode.insn = insn;
+	vcpu->arch.mmio_decode.shift = 0;
+	vcpu->arch.mmio_decode.len = len;
+	vcpu->arch.mmio_decode.return_handled = 0;
+
+	/* Copy data to kvm_run instance */
+	switch (len) {
+	case 1:
+		*((u8 *)run->mmio.data) = data8;
+		break;
+	case 2:
+		*((u16 *)run->mmio.data) = data16;
+		break;
+	case 4:
+		*((u32 *)run->mmio.data) = data32;
+		break;
+	case 8:
+		*((u64 *)run->mmio.data) = data64;
+		break;
+	default:
+		return -ENOTSUPP;
+	};
+
+	/* Exit to userspace for MMIO emulation */
+	vcpu->stat.mmio_exit_user++;
+	run->exit_reason = KVM_EXIT_MMIO;
+	run->mmio.is_write = true;
+	run->mmio.phys_addr = fault_addr;
+	run->mmio.len = len;
+
+	return 0;
+}
+
+static int stage2_page_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			     unsigned long scause, unsigned long stval)
+{
+	struct kvm_memory_slot *memslot;
+	unsigned long hva;
+	bool writable;
+	gfn_t gfn;
+	int ret;
+
+	gfn = stval >> PAGE_SHIFT;
+	memslot = gfn_to_memslot(vcpu->kvm, gfn);
+	hva = gfn_to_hva_memslot_prot(memslot, gfn, &writable);
+
+	if (kvm_is_error_hva(hva) ||
+	    (scause == EXC_STORE_PAGE_FAULT && !writable)) {
+		switch (scause) {
+		case EXC_LOAD_PAGE_FAULT:
+			return emulate_load(vcpu, run, stval);
+		case EXC_STORE_PAGE_FAULT:
+			return emulate_store(vcpu, run, stval);
+		default:
+			return -ENOTSUPP;
+		};
+	}
+
+	ret = kvm_riscv_stage2_map(vcpu, stval, hva,
+			(scause == EXC_STORE_PAGE_FAULT) ? true : false);
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
+ * @trap_stval: Output pointer for unprivilege trap value
+ */
+unsigned long kvm_riscv_vcpu_unpriv_read(struct kvm_vcpu *vcpu,
+					 bool read_insn,
+					 unsigned long guest_addr,
+					 unsigned long *trap_scause)
+{
+	register unsigned long tilen asm("a0");
+	register unsigned long tscause asm("a1");
+	register unsigned long val asm("a2");
+	register unsigned long addr asm("a3") = guest_addr;
+	unsigned long guest_sstatus =
+			vcpu->arch.guest_context.sstatus | SR_MXR;
+	unsigned long guest_hstatus =
+			vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
+	unsigned long guest_vsstatus, old_stvec, tmp;
+
+	guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
+	old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
+
+	if (read_insn) {
+		guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);
+		asm volatile ("\n"
+			"csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
+			"li %[tilen], 4\n"
+			"li %[tscause], 0\n"
+			"lhu %[val], (%[addr])\n"
+			"andi %[tmp], %[val], 3\n"
+			"addi %[tmp], %[tmp], -3\n"
+			"bne %[tmp], zero, 2f\n"
+			"lhu %[tmp], 2(%[addr])\n"
+			"sll %[tmp], %[tmp], 16\n"
+			"add %[val], %[val], %[tmp]\n"
+			"2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
+		: [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
+		  [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
+		  [tscause] "+&r" (tscause)
+		: [addr] "r" (addr));
+		csr_write(CSR_VSSTATUS, guest_vsstatus);
+	} else {
+		asm volatile ("\n"
+			"csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
+#ifndef CONFIG_RISCV_ISA_C
+			"li %[tilen], 4\n"
+#else
+			"li %[tilen], 2\n"
+#endif
+			"li %[tscause], 0\n"
+#ifdef CONFIG_64BIT
+			"ld %[val], (%[addr])\n"
+#else
+			"lw %[val], (%[addr])\n"
+#endif
+			"csrw " STR(CSR_HSTATUS) ", %[hstatus]"
+		: [hstatus] "+&r"(guest_hstatus),
+		  [val] "=&r" (val), [tilen] "+&r" (tilen),
+		  [tscause] "+&r" (tscause)
+		: [addr] "r" (addr));
+	}
+
+	csr_write(CSR_STVEC, old_stvec);
+	csr_write(CSR_SSTATUS, guest_sstatus);
+
+	*trap_scause = tscause;
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
+	unsigned long vsstatus = csr_read(CSR_VSSTATUS);
+
+	/* Change Guest SSTATUS.SPP bit */
+	vsstatus &= ~SR_SPP;
+	if (vcpu->arch.guest_context.sstatus & SR_SPP)
+		vsstatus |= SR_SPP;
+
+	/* Change Guest SSTATUS.SPIE bit */
+	vsstatus &= ~SR_SPIE;
+	if (vsstatus & SR_SIE)
+		vsstatus |= SR_SPIE;
+
+	/* Clear Guest SSTATUS.SIE bit */
+	vsstatus &= ~SR_SIE;
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
+	vcpu->arch.guest_context.sepc = csr_read(CSR_VSTVEC);
+}
 
 /**
  * kvm_riscv_vcpu_mmio_return -- Handle MMIO loads after user space emulation
@@ -19,7 +447,54 @@
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
+	vcpu->arch.mmio_decode.return_handled = 1;
+	insn = vcpu->arch.mmio_decode.insn;
+
+	if (run->mmio.is_write)
+		goto done;
+
+	len = vcpu->arch.mmio_decode.len;
+	shift = vcpu->arch.mmio_decode.shift;
+
+	switch (len) {
+	case 1:
+		data8 = *((u8 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data8 << shift >> shift);
+		break;
+	case 2:
+		data16 = *((u16 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data16 << shift >> shift);
+		break;
+	case 4:
+		data32 = *((u32 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data32 << shift >> shift);
+		break;
+	case 8:
+		data64 = *((u64 *)run->mmio.data);
+		SET_RD(insn, &vcpu->arch.guest_context,
+			(ulong)data64 << shift >> shift);
+		break;
+	default:
+		return -ENOTSUPP;
+	};
+
+done:
+	/* Move to next instruction */
+	vcpu->arch.guest_context.sepc += INSN_LEN(insn);
+
 	return 0;
 }
 
@@ -30,6 +505,37 @@ int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long scause, unsigned long stval)
 {
-	/* TODO: */
-	return 0;
+	int ret;
+
+	/* If we got host interrupt then do nothing */
+	if (scause & SCAUSE_IRQ_FLAG)
+		return 1;
+
+	/* Handle guest traps */
+	ret = -EFAULT;
+	run->exit_reason = KVM_EXIT_UNKNOWN;
+	switch (scause) {
+	case EXC_INST_PAGE_FAULT:
+	case EXC_LOAD_PAGE_FAULT:
+	case EXC_STORE_PAGE_FAULT:
+		if ((vcpu->arch.guest_context.hstatus & HSTATUS_SPV) &&
+		    (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
+			ret = stage2_page_fault(vcpu, run, scause, stval);
+		break;
+	default:
+		break;
+	};
+
+	/* Print details in-case of error */
+	if (ret < 0) {
+		kvm_err("VCPU exit error %d\n", ret);
+		kvm_err("SEPC=0x%lx SSTATUS=0x%lx HSTATUS=0x%lx\n",
+			vcpu->arch.guest_context.sepc,
+			vcpu->arch.guest_context.sstatus,
+			vcpu->arch.guest_context.hstatus);
+		kvm_err("SCAUSE=0x%lx STVAL=0x%lx\n",
+			scause, stval);
+	}
+
+	return ret;
 }
diff --git a/arch/riscv/kvm/vcpu_switch.S b/arch/riscv/kvm/vcpu_switch.S
index e1a17df1b379..ee45c331666f 100644
--- a/arch/riscv/kvm/vcpu_switch.S
+++ b/arch/riscv/kvm/vcpu_switch.S
@@ -192,3 +192,11 @@ __kvm_switch_return:
 	/* Return to C code */
 	ret
 ENDPROC(__kvm_riscv_switch_to)
+
+ENTRY(__kvm_riscv_unpriv_trap)
+	csrr	a1, CSR_SEPC
+	add	a1, a1, a0
+	csrw	CSR_SEPC, a1
+	csrr	a1, CSR_SCAUSE
+	sret
+ENDPROC(__kvm_riscv_unpriv_trap)
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
