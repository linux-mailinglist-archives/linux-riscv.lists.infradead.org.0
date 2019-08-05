Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105C081DA1
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyR4245SdbJOExBSypY41g0JLPsaj3q2luz6Knw7vO4=; b=RcTP/n7tBl46Cr
	MwvxGfHNu1aA2NDbvpqkZMqj9YNpEao2CDJOh8IFHpn1rQJd0YQ6RVeVX19QaEIE1RlI2xyeuHKfy
	3X55E/kCS//aFu6e4cCe53BxeZF1kmuuAZYIotmPB5cXTiJod/RzpzFLMxwFeu7v5LIBj8SftgzZV
	UsY0yDrNUBDfh+YWYmk4huu9/3lpNdlwWwseLXWCWxXCXNmf9+qIQovVM8G/Z1wd0t8ForBzJ/47Y
	XxlGViEHHijP2L1r9TNcFus/wmaumhRVQfnKoApXO9Y4Rfp1AE5TYxqj/G7D+fWS53oJDzQ1LvDx3
	MI0uCZ+a4W/zZtegu7xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudH8-00028f-4T; Mon, 05 Aug 2019 13:43:46 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudGw-0001x2-4z
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012614; x=1596548614;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OuILUx0ZQ0wfRUvTxQD6W+Ggt3pk2RZZaUMxi0fJNSU=;
 b=hT5x34aVZurd+uZPucY/TYi8aVXlOiM2CqJM7U/g+vbLRSIXnGS4LW/B
 joFl2JLZPu7oD14FYkDVUuL33Ms2W6HUeVAwdvcKoU8/53SDqzQ963Z/W
 rPO1AyRsMEr3/twsVQ05olRTcNlYbRrPVVJBDdv1Nm9v7CAelm6pWAJUn
 mjnFkv/M+nJ7k2XzxhOQbvSYk8i537LM+MeqObDE7O2inKQbUKiUJXIge
 niUR+RAvOzv4/3O55X5dVotc9SWCA+Kw6ss1VDjDxKpzYvnQnlitmIl8D
 pV5AJ4I/xmp3fpCr7A28EELECs9KZQdOc6qzQocV6plrO0FqISFqGQcvW g==;
IronPort-SDR: XNz0IvEBh9+HDDa0y6bPqiFUFJM9CchJDy0kgIFv8+z28YOHvkV0aE4Fo7Xx9/OVL/J3xaB+42
 4iqVm328Edw0mgRFEy7ybjCXnx779wCSuqCAbrNCzYLlYO6WUI6gPvU7sasULUuYAXifylRC83
 v3zxdCCSnTP3noe5VGHO//SIgpWoKERK+/DddmahcFZROVa4GodzCKOZ4vxMf4VogtEwKerB04
 zTiYTmc36bCbiKV6RoAfL+M4Do2Hu7mrQzEgyy8gluBG1YwEQEEKupWv+Mkv0WUYxzLRywonQX
 lbc=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="115017228"
Received: from mail-by2nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.56])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:43:32 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DROGtEig2A4K6PvmZxADrYbKriLMk6muYVAptKPlPl/IBOtJ1hNs0pvsgJOWZ6l2BlZcynehtxwiuxEBk+qf8D836RZyjbN9GLHh+krdbDytv+FGscbuM3GkNAJTjOb3SPW9oum58iXcfc/Yuo3QYGP3EoceRaUN4OC04Y3dFnas6bJ1I8uCvB6S3vDmpuVcm1QhfWfayklm6ouLIm1C/LaGYvdW7BpB3q0EwW87fMWLsKW/vQgr2M6b31vN5LCY4L+KZyQVfs7xflQifcHRern5H0PqODJH8UoC54grjdeBemRz3wEyofV0x5cfvwEXchLr77lvifr4MJJUFE5Knw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHtOGCmqaK/4BSxY6MJrKgKj5qMRkDrppkYr5z9+HeU=;
 b=aEGHwZFo3F9LTdQxteR5CFHboqj/xE23waZRlDmtwpkdw7x3kjpSb4ayuMkxYYnXbDoeoAjuNB7rS3av8hGbafXWVB7mEjlPKfh0o4WsVLc0V0aUHicEHX1ZdOFUxWgFvPgQef1p6qNT5v3ZJuM9SNgBmXtOBCPL25XzAOAe+MNCsIDFb6Byucbgl4Vvw1FLR+t08KVyxTvkl8kQboka6pRSxlWgoKuRfFnI1eNU7ONXass7Aw749ln2YmfYzEIJ8sxnlUVxsJVwGkQUe3YOjBfttDt/kOpx+j19Z3117KE0iQivvGDwehAs15Nqp2Kc2uANKsF2cO4FRfNcXBoyHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHtOGCmqaK/4BSxY6MJrKgKj5qMRkDrppkYr5z9+HeU=;
 b=PuvSJEMZq+A9r68EQN/cxqtWYn2zhRXQ8M1l4QyQJnWtU2mMK1QKFu8Qbi4bCwuXM6QUHsxI6vxUumOGbaiN7n2YflZXoweX6nLIiE5CfN2Ua1j604hkZ7TPTmI3/GDH3hTGebBoTaY1NYsWOdz9ISR1U+0wRc+4njepaiIubFw=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6159.namprd04.prod.outlook.com (20.178.249.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 13:43:31 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:43:31 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 09/19] RISC-V: KVM: Handle MMIO exits for VCPU
Thread-Topic: [PATCH v3 09/19] RISC-V: KVM: Handle MMIO exits for VCPU
Thread-Index: AQHVS5PElNOS8yvn/kuFozqg99y3TQ==
Date: Mon, 5 Aug 2019 13:43:31 +0000
Message-ID: <20190805134201.2814-10-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 25d02c29-3b19-4637-9402-08d719aae74d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6159; 
x-ms-traffictypediagnostic: MN2PR04MB6159:
x-microsoft-antispam-prvs: <MN2PR04MB6159DF0B8B0767BEC2B3F31C8DDA0@MN2PR04MB6159.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(43544003)(66556008)(66476007)(71190400001)(71200400001)(110136005)(54906003)(66946007)(66446008)(64756008)(86362001)(5660300002)(102836004)(52116002)(55236004)(14454004)(99286004)(386003)(78486014)(316002)(256004)(14444005)(6506007)(76176011)(2616005)(6486002)(8676002)(9456002)(8936002)(36756003)(3846002)(6116002)(6512007)(4326008)(2906002)(476003)(305945005)(44832011)(81156014)(81166006)(26005)(30864003)(186003)(486006)(11346002)(25786009)(7736002)(1076003)(50226002)(478600001)(68736007)(446003)(53936002)(66066001)(6436002)(7416002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6159;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jxYJooY5AUIYIBNOx5mNuOkUojK1VcTfMW1C/R22Snqede9AeZE8BXUXYCJg+MZXum7peOOGiZZNt9v2CiF3+ZH1xHkLgCMQjQm+ZrHhK5rnpWQ82GMKgkuKE1h/YzFwO3GRbymbC06QE510dJqQfwvnEk0cbx7Le3ZntxaCLbjX5WWUcYAW8BB42ctIy8GkbBjMWoMZ1U9G2Wh6ZD/YQNWLzmTlmHfY3HSCl3fh1vGgmDwlOb6hDrbCHE2CiM5uLhYZEB0SOVUgXuAwu4WIEW5BZ+3dwGvVIRYM8Iq4Gke9RmB/1rhYioArhe8w+/VK3JNB1os3OHCyYRgJKIT5KDPO/2aB38qRC7MLJJLuKorPjUdZKgAax9LNSaXX03cV0ERWkh0FjADm4LNFrqG+YSXoz4u8JQKAvn+S34HVtNE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d02c29-3b19-4637-9402-08d719aae74d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:43:31.4868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064334_723015_F4D98577 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
---
 arch/riscv/include/asm/kvm_host.h |  11 +
 arch/riscv/kvm/mmu.c              |   7 +
 arch/riscv/kvm/vcpu_exit.c        | 436 +++++++++++++++++++++++++++++-
 3 files changed, 451 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 9c90656e7374..947bf488f15a 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -53,6 +53,12 @@ struct kvm_arch {
 	phys_addr_t pgd_phys;
 };
 
+struct kvm_mmio_decode {
+	unsigned long insn;
+	int len;
+	int shift;
+};
+
 struct kvm_cpu_context {
 	unsigned long zero;
 	unsigned long ra;
@@ -141,6 +147,9 @@ struct kvm_vcpu_arch {
 	unsigned long irqs_pending;
 	unsigned long irqs_pending_mask;
 
+	/* MMIO instruction details */
+	struct kvm_mmio_decode mmio_decode;
+
 	/* VCPU power-off state */
 	bool power_off;
 
@@ -157,6 +166,8 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 
+int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
+			 bool is_write);
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
 int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
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
index e4d7c8f0807a..efc06198c259 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -6,9 +6,371 @@
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
+#define STR(x)			XSTR(x)
+#define XSTR(x)			#x
+
+/* TODO: Handle traps due to unpriv load and redirect it back to VS-mode */
+static ulong get_insn(struct kvm_vcpu *vcpu)
+{
+	ulong __sepc = vcpu->arch.guest_context.sepc;
+	ulong __hstatus, __sstatus, __vsstatus;
+#ifdef CONFIG_RISCV_ISA_C
+	ulong rvc_mask = 3, tmp;
+#endif
+	ulong flags, val;
+
+	local_irq_save(flags);
+
+	__vsstatus = csr_read(CSR_VSSTATUS);
+	__sstatus = csr_read(CSR_SSTATUS);
+	__hstatus = csr_read(CSR_HSTATUS);
+
+	csr_write(CSR_VSSTATUS, __vsstatus | SR_MXR);
+	csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus | SR_MXR);
+	csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
+
+#ifndef CONFIG_RISCV_ISA_C
+	asm ("\n"
+#ifdef CONFIG_64BIT
+		STR(LWU) " %[insn], (%[addr])\n"
+#else
+		STR(LW) " %[insn], (%[addr])\n"
+#endif
+		: [insn] "=&r" (val) : [addr] "r" (__sepc));
+#else
+	asm ("and %[tmp], %[addr], 2\n"
+		"bnez %[tmp], 1f\n"
+#ifdef CONFIG_64BIT
+		STR(LWU) " %[insn], (%[addr])\n"
+#else
+		STR(LW) " %[insn], (%[addr])\n"
+#endif
+		"and %[tmp], %[insn], %[rvc_mask]\n"
+		"beq %[tmp], %[rvc_mask], 2f\n"
+		"sll %[insn], %[insn], %[xlen_minus_16]\n"
+		"srl %[insn], %[insn], %[xlen_minus_16]\n"
+		"j 2f\n"
+		"1:\n"
+		"lhu %[insn], (%[addr])\n"
+		"and %[tmp], %[insn], %[rvc_mask]\n"
+		"bne %[tmp], %[rvc_mask], 2f\n"
+		"lhu %[tmp], 2(%[addr])\n"
+		"sll %[tmp], %[tmp], 16\n"
+		"add %[insn], %[insn], %[tmp]\n"
+		"2:"
+	: [vsstatus] "+&r" (__vsstatus), [insn] "=&r" (val),
+	  [tmp] "=&r" (tmp)
+	: [addr] "r" (__sepc), [rvc_mask] "r" (rvc_mask),
+	  [xlen_minus_16] "i" (__riscv_xlen - 16));
+#endif
+
+	csr_write(CSR_HSTATUS, __hstatus);
+	csr_write(CSR_SSTATUS, __sstatus);
+	csr_write(CSR_VSSTATUS, __vsstatus);
+
+	local_irq_restore(flags);
+
+	return val;
+}
+
+static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			unsigned long fault_addr)
+{
+	int shift = 0, len = 0;
+	ulong insn = get_insn(vcpu);
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
+
+	/* Exit to userspace for MMIO emulation */
+	vcpu->stat.mmio_exit_user++;
+	run->exit_reason = KVM_EXIT_MMIO;
+	run->mmio.is_write = false;
+	run->mmio.phys_addr = fault_addr;
+	run->mmio.len = len;
+
+	/* Move to next instruction */
+	vcpu->arch.guest_context.sepc += INSN_LEN(insn);
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
+	ulong insn = get_insn(vcpu);
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
+	/* Clear instruction decode info */
+	vcpu->arch.mmio_decode.insn = 0;
+	vcpu->arch.mmio_decode.shift = 0;
+	vcpu->arch.mmio_decode.len = 0;
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
+	/* Move to next instruction */
+	vcpu->arch.guest_context.sepc += INSN_LEN(insn);
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
 
 /**
  * kvm_riscv_vcpu_mmio_return -- Handle MMIO loads after user space emulation
@@ -19,7 +381,44 @@
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
+	if (run->mmio.is_write)
+		return 0;
+
+	insn = vcpu->arch.mmio_decode.insn;
+	len = vcpu->arch.mmio_decode.len;
+	shift = vcpu->arch.mmio_decode.shift;
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
 	return 0;
 }
 
@@ -30,6 +429,37 @@ int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
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
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
