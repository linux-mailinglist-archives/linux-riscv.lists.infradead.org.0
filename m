Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C732EA1C26
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEwMaQ0AgxodCqHjNElN5sM73ZJwz2ZWbJIcoNy6ViE=; b=tBLk604rMHyJoY
	nNSzDVN3igBO9XOnePlyhoaNGINf6BkkJXrUAFKao58/L6iKxZ/BrOjo0oO3HbNNiA0LmA6E1bE0b
	vZZU4+xi58n8oA8sIcg7930EYX7zM/ytYcCl+/4VVKczf4R2k4nBRtEjV6XZvBn3r9wXJ2yfE0sti
	mOxjeNGK6M+Yhkenel3XV2FHonC1SX1l3quVk0D0kI0Yok9v9rGvzLfRvzBSQiXKD9K/Na8OXcRwQ
	56MtxzzPH6Zx/7XYZhfrUJnWN+MQLKBN0VFMKkDoc8qDv4Lg38/SkptA7ofh/yA+noETHfxT/On/i
	NTqvsQ2piG7zM0Br4/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Kue-0002cu-5L; Thu, 29 Aug 2019 13:56:32 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KuZ-0002aY-MS
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567086988; x=1598622988;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mMiscCo4/3qPLv/VjcFLletW0S1/F5R7sVVPJRPUsis=;
 b=HQFI0JA4UoS50ZWwmU4bM4GrOHSHX6jhgnuxrKQ92En4JU8uOxzNVSnE
 ssKJ7xmBlgSW80+KBtG7GVys2NT+OGx12ToqXujk4j+PedqHmFzjgSUOB
 yDhEXNcqzujg3bLMmHO8S9wOzom9VyBWNg3EAdCOzEI68T/VgDLHN/fwV
 BHyv1fbNMwtV+sWjeFxukxpNTC4OXn6NMUHRwAGLTTg424q0S3dbpk/nq
 f0BVTJYFdCQ+WZqgXOaNBkwyY6XZ4f9zL2qr2CoNh5Zq+d0FKI3KdOPOO
 7wXzep0gxkyv5WKMOXbKqpdZS+S/rPTGrJ/aEV2AaJwx4z1c6anE6ON4r g==;
IronPort-SDR: a5rKIdTZb6YkA08nn8FBNM2x/Pt7Gn3qjcvYoAOmcAVVF11Nxj+2Sx5ZrAXqoLuQb17Ss8Z5H7
 8MRxz/lGTg/tzJPCInNj9bmFbzmDl9ETE8H4hYi6ZTKsBUXrJyzNMNgE7qVMdopCYwmmDgLEvC
 MFRbw0kZT1kZ1dbSxnpzE5DfObhzV4wMm7PhBt8zrP7Hr/qQ7soOL54iW42OnGS/iJjrzKtXs2
 gtQGGwIaY5gEkMUxQFVc9D6Yj+mC6PKTONiwms9n14gdP9nUfWuRnCo+h1YLR/EOmSsbOB1OuK
 ugI=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="121525713"
Received: from mail-by2nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.50])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:56:27 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6lF0BEocytgk9+Sv736x4fnXKPBd+wT2lUeVBlLV70gSxbz3O8cSIcII2e+j+IoNGJBRRAOqALpcP4qwGQvhw7W1k7p0ROWI/pjBC6LgqR7XjBG0rXNmdbW46Rf1fYxCx2A4vcLpIs79Vzm0KflmZv4FLDTMfhIs4BOQf6TdZUlBbHh+qi8I/GMMrEjBfcOc2dKhGyGxZMMQO16frx0vnQRb8YlrYVUtb/rQpqaVbRZaluNfAVGVLdykPeU7qswrwYZFAgPfWmUW5LCK/tbEgt6uZAgKhBDbPhN4kMYtTd/Kp26ZXEoTtI5W8iQzRwNaEHnIQo+GTDNQnkWRHPzEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6ezOPvPuzfQxuMpOuZeQEaTTjNAYyIgN2r1GiME27I=;
 b=NfegkPr7PxhpwczZAvyTXSRrDGUmtOctq5GNossKTAO6AMyshAh/G/vUKfFhTfALvvNdvDZ2CxVa6JJRCWvW95pg+v0UIOhcPEjruSeFLsikG5j5MebvuGsXaysT/HIWIOZXj3vsEemGrMuP60AasWu0yy1gHASfF77ONcFvdnKuZQ0Ivv/evrv4FCXjwBOdJzd7T2eprsiXqAxJL1b/9zFNNtUvRQ8ylemDKMQKrU+/ZhIZ4gdfwhfl1UUx34TzCiDhrj9xpLZgciuZpeTgpSHIIX8jDM8Ys5FPtQSvyRmDUe99eO/63Ihji9BkL5d9jhros18xyeBK30HRF2HjLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6ezOPvPuzfQxuMpOuZeQEaTTjNAYyIgN2r1GiME27I=;
 b=VJIhpMUNH4yJd3bJs4bgx5IphamhUsLQrRxE0syP9QCDwVOlJvTlWAiw5PNvqDyfSVugPiOIDVpTiLaLtKkWF4OXLpjqlIr4XPFMnmrg46dCga11DKcOZRHEnXvUQg4f62UpuhfKSbuiZ/c3Z3cVAJVJAFxbyE3NS2XZmSLQyqs=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5616.namprd04.prod.outlook.com (20.179.22.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:56:25 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:56:25 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 11/21] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Topic: [PATCH v6 11/21] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Index: AQHVXnGLmMAkHOr9W0O2flFRXn5nSA==
Date: Thu, 29 Aug 2019 13:56:24 +0000
Message-ID: <20190829135427.47808-12-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 763deee5-ed97-4b01-3715-08d72c88ae46
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5616; 
x-ms-traffictypediagnostic: MN2PR04MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5616729992CE7E8531148AE38DA20@MN2PR04MB5616.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(189003)(199004)(7416002)(52116002)(81166006)(316002)(6506007)(386003)(25786009)(7736002)(81156014)(305945005)(2906002)(36756003)(71190400001)(14454004)(99286004)(1076003)(256004)(14444005)(4326008)(66946007)(76176011)(66446008)(64756008)(66556008)(66476007)(102836004)(6116002)(50226002)(55236004)(476003)(6512007)(3846002)(71200400001)(5660300002)(26005)(186003)(44832011)(86362001)(66066001)(6436002)(446003)(8936002)(6486002)(110136005)(54906003)(2616005)(486006)(53936002)(11346002)(478600001)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5616;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ebFz6wfPnA9vXJE0IrL8nRODIEZ5qMxpHHNiG+X0L9YauIo98oJ+Vlzn2mcsXYoM3RoRqOjP2OhqvrCLR/mEuwxqcUi5IV9Z+MYscCiXYO/MRKvuRahyUGT4jV3FVl6YF/KlOAMRg7ZoSVvycZuihLCvfL3c6HPt7sMvjh1mr01/BhCzmUqQu97h+hnlzZloL78Jk9Yy3g/KFQJmRAJIxqS98SUVDpfry1fHf1TCYCNWRfPorrjWsMbsa/NXT1w0sx+BsGiYbK8pSmfnuxhKgdxub+BlQhuXjac1QcZj0lzV3DGWP4p3qD+a09OmabDmgHIA3Z1rs4FmN8FVI9pmbGVvxaIbrNVE/BtqXbtrLNLKvy/fu6BjoRMrSg1PwSaIcYJaa16dwMfO1AO0YPU5r8vm8eCrczwY8ER6gcaO+JM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 763deee5-ed97-4b01-3715-08d72c88ae46
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:56:24.8605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zYKfuoZ/lnmODnHmTcQISClm75JXWDe7SeSRSjeKZVrR1MVO+7SP78mIDsxwcbzW6QJVzBEJ0khAWgzhXFSb0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065627_877946_CAE3CEBD 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

We get illegal instruction trap whenever Guest/VM executes WFI
instruction.

This patch handles WFI trap by blocking the trapped VCPU using
kvm_vcpu_block() API. The blocked VCPU will be automatically
resumed whenever a VCPU interrupt is injected from user-space
or from in-kernel IRQCHIP emulation.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 arch/riscv/kvm/vcpu_exit.c | 71 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index 700d8158e55b..321062fff65b 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -12,6 +12,13 @@
 #include <linux/kvm_host.h>
 #include <asm/csr.h>
 
+#define INSN_OPCODE_MASK	0x007c
+#define INSN_OPCODE_SHIFT	2
+#define INSN_OPCODE_SYSTEM	28
+
+#define INSN_MASK_WFI		0xffffff00
+#define INSN_MATCH_WFI		0x10500000
+
 #define INSN_MATCH_LB		0x3
 #define INSN_MASK_LB		0x707f
 #define INSN_MATCH_LH		0x1003
@@ -112,6 +119,66 @@
 				 (s32)(((insn) >> 7) & 0x1f))
 #define MASK_FUNCT3		0x7000
 
+static int truly_illegal_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	/* Redirect trap to Guest VCPU */
+	kvm_riscv_vcpu_trap_redirect(vcpu, EXC_INST_ILLEGAL, insn);
+
+	return 1;
+}
+
+static int system_opcode_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	if ((insn & INSN_MASK_WFI) == INSN_MATCH_WFI) {
+		vcpu->stat.wfi_exit_stat++;
+		if (!kvm_arch_vcpu_runnable(vcpu)) {
+			srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+			kvm_vcpu_block(vcpu);
+			vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
+			kvm_clear_request(KVM_REQ_UNHALT, vcpu);
+		}
+		vcpu->arch.guest_context.sepc += INSN_LEN(insn);
+		return 1;
+	}
+
+	return truly_illegal_insn(vcpu, run, insn);
+}
+
+static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			      unsigned long insn)
+{
+	unsigned long ut_scause = 0, ut_stval = 0;
+	struct kvm_cpu_context *ct;
+
+	if (unlikely((insn & 3) != 3)) {
+		if (insn == 0) {
+			ct = &vcpu->arch.guest_context;
+			insn = kvm_riscv_vcpu_unpriv_read(vcpu, true,
+							  ct->sepc,
+							  &ut_scause,
+							  &ut_stval);
+			if (ut_scause) {
+				kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
+							     ut_stval);
+				return 1;
+			}
+		}
+		if ((insn & 3) != 3)
+			return truly_illegal_insn(vcpu, run, insn);
+	}
+
+	switch ((insn & INSN_OPCODE_MASK) >> INSN_OPCODE_SHIFT) {
+	case INSN_OPCODE_SYSTEM:
+		return system_opcode_insn(vcpu, run, insn);
+	default:
+		return truly_illegal_insn(vcpu, run, insn);
+	}
+}
+
 static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long fault_addr)
 {
@@ -507,6 +574,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 	ret = -EFAULT;
 	run->exit_reason = KVM_EXIT_UNKNOWN;
 	switch (scause) {
+	case EXC_INST_ILLEGAL:
+		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
+			ret = illegal_inst_fault(vcpu, run, stval);
+		break;
 	case EXC_INST_PAGE_FAULT:
 	case EXC_LOAD_PAGE_FAULT:
 	case EXC_STORE_PAGE_FAULT:
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
