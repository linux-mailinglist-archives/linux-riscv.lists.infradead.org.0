Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69163D9695
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmuIF+ctJdd9PcURRnl0YihHquOnCpK524NMAVMzcpA=; b=dxCaHrYlEcEfh5
	C5UjOPiUPiJCq/HNeirv0gMgLwzb7GSNdT/j0SU2jmlCIo16Kk4ME5tL6OW+MLAu/MWffhshhfWNe
	QJ5D94Ry8EAmmr8ft2Ot4RvyJJy9OOPHnXUsxMFouHFgPYkZsrYN0X7DIDrC7cB5jDk3/EBzeQzqR
	QQIMM0+oJTeGX1/GcLeTV6hgIw6QDh63iotHrkhZOWYbL4kBFayAjK7O6PdPFNktJVPUYnVPxaroI
	XcpWs3u6Uy4hUqu4beQTzH2FaAVx0sGVr5sYdqwwb12J+3O0962veB3drxmxPCDDNzE2apuVKAQQg
	+mZ4PFQqE8Ja/TOazB8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKltJ-0001cN-Al; Wed, 16 Oct 2019 16:11:13 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKltE-0001aF-WB
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242269; x=1602778269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HQF9P0w86Pfws7Y8lRbISGrDWdFNXqpNiHUzI0GxU5M=;
 b=YGZYNDR8D/yuDtySYLYDX9jyfm8bAHH7HU/5JVclPxvL33yj8doQBX4h
 nAEg+rYjlQlm1DlPnrIJMmmnrjZNTWlRzV2r8E5DXMX9x9Xtq7s6vOPK0
 D9ae7ThVLkaJTlCHjDtBKOuIgBPSJ8mNiMwiMZ7g3I+ipbrsFfDzoNVzY
 5pjqKKl4JrIsk6iAf3qYG4UePuoDpSYI2+AbYZ3b4vyUkfAqNuGn9v74g
 ESIRd7azJLaT3W5naQZG7bYUPAX01QncEnnmfwznMHPGuBQnarnuEujTX
 EOE0waDEZErBBKkt4gKJYrhxXt2Ix3c0w0aDxJlQxlfSMrG9oVd5fYbXV w==;
IronPort-SDR: xJfXiNJL0gmbdzY84JKja55rhMmP1lDimz8oVteHhbCcUqSLmQ+K3Y/TA/VDvGlKGo9846udhl
 8KDYcVjhMCJCl8JiA7HUOJHwBYJY3d9HvbDJ9WfeMOV30Fx6FB85ajDfRvtaeCIisWUSxNV2Dv
 02NzGr+gOXqcXC/9QMRhH3LCZywBwV5PW8oU2wWFub9TomJhfVKAGrubmQPzEcd5vC8lq1Vm4o
 F5FqYcwZcs36DOmdkJfQrh5yP8v3KRndDrQ26FvTgj86m1mKI/n3vg75mf5xyHJI1n3AaYjk1b
 2Qw=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="121448343"
Received: from mail-dm3nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.58])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:11:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F0ASHp/JLrwkyvs8iSG88sgmaQ3ffZJ/8rhZKMIN7duZVaI2OZqzZtb/iWLe0QtPKLq2tWyTqK7f7Y7mAyTenXYsBiwgqj7UmdMgZK/MzdEjxe2K2l5JkdKmF68OIBFMWwBbT8my75fVWsTxLWuXxNpYLy1xiWEYbY+rq/LKKqwFi8xzIrCy31Pr0kLwSQm7aTTOAtnFLvMFYMsCzovMTAyjk2Ql/2K9Nh0AgbFisCwFCwKPkHR5rJ8tomTVOH2Q/ZyGFmEqcRaxrD5sCz25pGeScvpKNpCv41AGzsbf7hblTX3/3UBAQuADWGAgXkzM965fqjEN+R1R67gPBCXMdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xI8rW9lgwMgfuuA+l4LpZS8ywasprBg2yLcjwHr5178=;
 b=WiFi/cR/MAqREONLIxXRD+EZ2qoM54wEApaks0bR8atD58dSCW4qbYq4XG3HgV9KLLy8gea69AtvT9f8Rb6riAYN2RApjGVe1WbzVhvdw4IdA8MEsZPqBA7Q/YBlFCf5qe20J2/J3waWtePHqwXSF9ouHeCa+TepeON1QBg1lTKxGLIIBAF4rqu++kT1FgjwsJu0CNhUNS5DKBH5aAlsea0j/+QQmRQpLxN0Pl8i/j4Qs8xxL7Q5NPmMWytmy6O96d9oH5oYRj3bJTBiCIJLMx7mNgHUDm6YcPYheJMaatE+JdsPESGbFQ9wFUTS2YlBz6jesF3mKOEtCLtHs8LgLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xI8rW9lgwMgfuuA+l4LpZS8ywasprBg2yLcjwHr5178=;
 b=l6we3dkAg92BZtG8+MWmV2PTmhb3tN9xD5iOLITbiQAw8RSMUQpxJcHfyZO5Jq/jCjDPnA2DZhwvJhStf0ayKDSp+Wlpc3eREac8lcDuWfeCLdTRaGUhAxyl6jrJAtuOCqhLQwSG0bP8712L5FuECPVD69+XZaZqGP5Fyq6L/mQ=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6397.namprd04.prod.outlook.com (52.132.170.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Wed, 16 Oct 2019 16:11:06 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:11:06 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 15/22] RISC-V: KVM: Implement ONE REG interface for FP
 registers
Thread-Topic: [PATCH v9 15/22] RISC-V: KVM: Implement ONE REG interface for FP
 registers
Thread-Index: AQHVhDxQHlLxgir5ykyEtKqS8mr7Gg==
Date: Wed, 16 Oct 2019 16:11:06 +0000
Message-ID: <20191016160649.24622-16-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 88e5a04e-cafd-4a5a-d0c6-08d752537313
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB63970B50F603AE67BB47762C8D920@MN2PR04MB6397.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(71190400001)(71200400001)(66556008)(66476007)(66446008)(64756008)(66946007)(6116002)(3846002)(66066001)(76176011)(52116002)(256004)(99286004)(25786009)(7416002)(14454004)(4326008)(478600001)(7736002)(8676002)(305945005)(110136005)(476003)(54906003)(86362001)(2616005)(11346002)(446003)(316002)(102836004)(81166006)(486006)(55236004)(44832011)(5660300002)(50226002)(26005)(9456002)(186003)(8936002)(36756003)(1076003)(6436002)(6512007)(2906002)(6486002)(386003)(81156014)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6397;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y0kSxOnQNnUt8FG3whYnWHdcXvUjfJGD13Iwu/NgX+y7EU3mjzB1DymY9NyQmN84PKhOmAS4DLVNFCqqW0KUBXIM0iZ3BpMCB0H0oB4NL3gS1gPSYh8UuBqK19ObqgPJYIQjbd8UvuRlj+9bpBsIyTyFshjqbOrpi1S503ct9tktfBrn4AyV+5Ym+l9xhewX5mgGwa277ea2rXwxvr5hTIO28BYk0+B/IVQcswqGBXr/MwTCKrFv/sUcisW9di98YxTzhxUaLDADeQMcVQb5IZIyArY6/fC5WfcO5qNx40rSrdWOC1px3CREralta5t32vqdBv5Vc/l964x2WqULT0NS/LKr36nc+Fg/aB6UMAFc3CS2DE7JuokTphoiVLN9naOhw+qtc89pU3HdSNxhgqnYiEm/7Zwx77+dx7QrW0E=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88e5a04e-cafd-4a5a-d0c6-08d752537313
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:11:06.4385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bIJMuzjr60sFwBSrZAwJz/tiuUvMinzeg3hzug1L8w+RtcF+kPCNHsypRK3LQvKsgR4u7kZ4gAfCI2Sygtk0Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091109_066510_F0486D24 
X-CRM114-Status: GOOD (  13.96  )
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

Add a KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctl interface for floating
point registers such as F0-F31 and FCSR. This support is added for
both 'F' and 'D' extensions.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/uapi/asm/kvm.h |  10 +++
 arch/riscv/kvm/vcpu.c             | 104 ++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 997b85f6fded..19811823ab70 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -96,6 +96,16 @@ struct kvm_riscv_csr {
 #define KVM_REG_RISCV_CSR_REG(name)	\
 		(offsetof(struct kvm_riscv_csr, name) / sizeof(unsigned long))
 
+/* F extension registers are mapped as type4 */
+#define KVM_REG_RISCV_FP_F		(0x04 << KVM_REG_RISCV_TYPE_SHIFT)
+#define KVM_REG_RISCV_FP_F_REG(name)	\
+		(offsetof(struct __riscv_f_ext_state, name) / sizeof(u32))
+
+/* D extension registers are mapped as type 5 */
+#define KVM_REG_RISCV_FP_D		(0x05 << KVM_REG_RISCV_TYPE_SHIFT)
+#define KVM_REG_RISCV_FP_D_REG(name)	\
+		(offsetof(struct __riscv_d_ext_state, name) / sizeof(u64))
+
 #endif
 
 #endif /* __LINUX_KVM_RISCV_H */
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 7ed556979b89..092b209644de 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -430,6 +430,98 @@ static int kvm_riscv_vcpu_set_reg_csr(struct kvm_vcpu *vcpu,
 	return 0;
 }
 
+static int kvm_riscv_vcpu_get_reg_fp(struct kvm_vcpu *vcpu,
+				     const struct kvm_one_reg *reg,
+				     unsigned long rtype)
+{
+	struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
+	unsigned long isa = vcpu->arch.isa;
+	unsigned long __user *uaddr =
+			(unsigned long __user *)(unsigned long)reg->addr;
+	unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
+					    KVM_REG_SIZE_MASK |
+					    rtype);
+	void *reg_val;
+
+	if ((rtype == KVM_REG_RISCV_FP_F) &&
+	    riscv_isa_extension_available(&isa, f)) {
+		if (KVM_REG_SIZE(reg->id) != sizeof(u32))
+			return -EINVAL;
+		if (reg_num == KVM_REG_RISCV_FP_F_REG(fcsr))
+			reg_val = &cntx->fp.f.fcsr;
+		else if ((KVM_REG_RISCV_FP_F_REG(f[0]) <= reg_num) &&
+			  reg_num <= KVM_REG_RISCV_FP_F_REG(f[31]))
+			reg_val = &cntx->fp.f.f[reg_num];
+		else
+			return -EINVAL;
+	} else if ((rtype == KVM_REG_RISCV_FP_D) &&
+		   riscv_isa_extension_available(&isa, d)) {
+		if (reg_num == KVM_REG_RISCV_FP_D_REG(fcsr)) {
+			if (KVM_REG_SIZE(reg->id) != sizeof(u32))
+				return -EINVAL;
+			reg_val = &cntx->fp.d.fcsr;
+		} else if ((KVM_REG_RISCV_FP_D_REG(f[0]) <= reg_num) &&
+			   reg_num <= KVM_REG_RISCV_FP_D_REG(f[31])) {
+			if (KVM_REG_SIZE(reg->id) != sizeof(u64))
+				return -EINVAL;
+			reg_val = &cntx->fp.d.f[reg_num];
+		} else
+			return -EINVAL;
+	} else
+		return -EINVAL;
+
+	if (copy_to_user(uaddr, reg_val, KVM_REG_SIZE(reg->id)))
+		return -EFAULT;
+
+	return 0;
+}
+
+static int kvm_riscv_vcpu_set_reg_fp(struct kvm_vcpu *vcpu,
+				     const struct kvm_one_reg *reg,
+				     unsigned long rtype)
+{
+	struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
+	unsigned long isa = vcpu->arch.isa;
+	unsigned long __user *uaddr =
+			(unsigned long __user *)(unsigned long)reg->addr;
+	unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
+					    KVM_REG_SIZE_MASK |
+					    rtype);
+	void *reg_val;
+
+	if ((rtype == KVM_REG_RISCV_FP_F) &&
+	    riscv_isa_extension_available(&isa, f)) {
+		if (KVM_REG_SIZE(reg->id) != sizeof(u32))
+			return -EINVAL;
+		if (reg_num == KVM_REG_RISCV_FP_F_REG(fcsr))
+			reg_val = &cntx->fp.f.fcsr;
+		else if ((KVM_REG_RISCV_FP_F_REG(f[0]) <= reg_num) &&
+			  reg_num <= KVM_REG_RISCV_FP_F_REG(f[31]))
+			reg_val = &cntx->fp.f.f[reg_num];
+		else
+			return -EINVAL;
+	} else if ((rtype == KVM_REG_RISCV_FP_D) &&
+		   riscv_isa_extension_available(&isa, d)) {
+		if (reg_num == KVM_REG_RISCV_FP_D_REG(fcsr)) {
+			if (KVM_REG_SIZE(reg->id) != sizeof(u32))
+				return -EINVAL;
+			reg_val = &cntx->fp.d.fcsr;
+		} else if ((KVM_REG_RISCV_FP_D_REG(f[0]) <= reg_num) &&
+			   reg_num <= KVM_REG_RISCV_FP_D_REG(f[31])) {
+			if (KVM_REG_SIZE(reg->id) != sizeof(u64))
+				return -EINVAL;
+			reg_val = &cntx->fp.d.f[reg_num];
+		} else
+			return -EINVAL;
+	} else
+		return -EINVAL;
+
+	if (copy_from_user(reg_val, uaddr, KVM_REG_SIZE(reg->id)))
+		return -EFAULT;
+
+	return 0;
+}
+
 static int kvm_riscv_vcpu_set_reg(struct kvm_vcpu *vcpu,
 				  const struct kvm_one_reg *reg)
 {
@@ -439,6 +531,12 @@ static int kvm_riscv_vcpu_set_reg(struct kvm_vcpu *vcpu,
 		return kvm_riscv_vcpu_set_reg_core(vcpu, reg);
 	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CSR)
 		return kvm_riscv_vcpu_set_reg_csr(vcpu, reg);
+	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_FP_F)
+		return kvm_riscv_vcpu_set_reg_fp(vcpu, reg,
+						 KVM_REG_RISCV_FP_F);
+	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_FP_D)
+		return kvm_riscv_vcpu_set_reg_fp(vcpu, reg,
+						 KVM_REG_RISCV_FP_D);
 
 	return -EINVAL;
 }
@@ -452,6 +550,12 @@ static int kvm_riscv_vcpu_get_reg(struct kvm_vcpu *vcpu,
 		return kvm_riscv_vcpu_get_reg_core(vcpu, reg);
 	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CSR)
 		return kvm_riscv_vcpu_get_reg_csr(vcpu, reg);
+	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_FP_F)
+		return kvm_riscv_vcpu_get_reg_fp(vcpu, reg,
+						 KVM_REG_RISCV_FP_F);
+	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_FP_D)
+		return kvm_riscv_vcpu_get_reg_fp(vcpu, reg,
+						 KVM_REG_RISCV_FP_D);
 
 	return -EINVAL;
 }
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
