Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6778178B0B
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycQusb4Yruxf3fuPH9uYoDhj7DUXHoFGa5IaEKHTd18=; b=EEgLBdUG8+Z808
	s5FtJmKYVveYrXo50JxVcmJ2AU/iVsZ2+CtDE82wH84sc9o15UiEQruJ5+YvS+JEFiJdroMnLTRW+
	wDdyWUUn56BIQn2bFqb0XaVwg9H2QV5DaVDKlDgxHqbka9xsEo4A9NJseDPY6CvMkcpK33SWKFzhU
	RW0uJFmsijMe6YXyLWDTGrIq2pDekEZHbLgLxUsxZqdSs4G9dLGxUqMwlN636GR+T00K3RXRPI+PQ
	2vpb6mS2Dl2NEpQkzvFfwXquCWmSi2vlJFlMVkVtGazsr4DN7uymAENL5TdHs+2WbWR4tQG00DtTM
	AmwR1xllHVgNHgLVw4jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4H4-0002eS-2I; Mon, 29 Jul 2019 11:57:06 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4H0-0002Yf-FE
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:57:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401422; x=1595937422;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SLztWMpN1BMZjIREkxOhdcN/GnZvookTRE3bBKMf5zQ=;
 b=GAa4S8RW7XyAdYNtTo1c+qwR3am194U7WXXZYOcew+GQpOVb3PUw68Kf
 dh9MLVLlp3lVUy2xXGRuor6QRGhrm7YvUJP3YwAR9X3FLT+wxdzDs8HiU
 VMQ2ZhfQqV/6htvECtAhTG00LKii0tE3Jy5l3hZS6f/SF6XO/S20qOQQO
 DApfq3z9LF2eGONBToXiRHOuk7Ju2ieIHf2ADV6HHKjfYafjineA1Ylm8
 /zMUDo9IcZNmzYxyyZ526/nHmdi4B9CUL0Fskzzd+QqgxZLzWaIbWc59s
 E/aF5Rnmf/wN+MMss+KcNWHUDIVdbBZhROiopRkTC0SdjV06bbdauIFtw g==;
IronPort-SDR: 20zP986tBUR+9gVvxCeEjpLLzfmXNcXSpIcAYBLym2Ww5k7wZ/tQ9mwPpnIaTWcKbeF9YXVUW1
 I+hbmCLyU+NDTFiaV9UH2kwXsnbq8oDv64xAO4LKQuSC5uIiR94TWEDyWvjA1ttnSNK2lQO8Tp
 zj/Y+6IWrhNa7eDYdhGnE+sxHmuD74ionyZJJ0ZYJ2pFsiZamFxTvoYFZo5jLaFfAotWLF117q
 9z6W/Djx9MAxUH3vdiH3xso80JV8c+PTFPcrenL1pp03JQU4/QO776pZq5CR2u7N1XniJHMMOo
 eMk=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="114381582"
Received: from mail-by2nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.54])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:57:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3+H4+Kz0Ak3mr4glSh2amUxoyVz/n7iCIEbL5B3rxJCnZOmu5rkYLVctyKcKLDEs13xJNkZMv1a4XYGTulK8bs8VxSx/5onOaLgT0a86bRSc1ryy/hW9c/r/zNHUDqxzHgTDN6dqT+IGAYLt0Qr5uAajDKiePkUkKOdgpXUbKB2NyI2rQNZLIOqzj8RFAGiZaRKMwcRU26wScMWaG1bgGOtM6JW73wvWIAT69y7FmOTIRonG+FYa6HWQ/QrHdX7AZD/wRGuZvfhNIoo6D4MLcCPqvmE9icYZmZd+Avrp4/LlCjnaiU1QVvxwO20+BCyJBiqZlp3EgJzg0hQVN45Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdUX9z2/znQwmduWYJOfNKkr+aMrZRZYsWdW8UPhABY=;
 b=Ol+xdXR4RPXXLV895/HAfcH4ltYfBF7dBV6POs+2PFygq/5d90/oxO7/OLwgV0DWQzJFLm986vu19PVfgHKga02Z+twU32IAy9CFqTTCZYZqOj8+YGE/o9hhIkRTHb8tsy4290FwWpjgk9sPAvrfMui99nLgip7Jgq7jbZs0PN5uRjWIe2pM2twkSN/iWVCFPIhoBluX5y4HfQdAB/fkp5Mzleu+8rGJlxBhnbuwzEx2c5SbmZfbUH8kwdIGgj2vYrJB7EhSRlhFTJQV85EofRduIyW6rliDS+ZXDSbk03NYjfjX6Xx1lKzZkpbK/q5ODNpviojSKaLY4RmlnHtmmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdUX9z2/znQwmduWYJOfNKkr+aMrZRZYsWdW8UPhABY=;
 b=bX7WaIIY9LhbjWEyv6K3DKjXVE4aJzkyFiOJgz2ix8c/KooN4PdEU3dJzsoGGyB78yFtgCHWouL5sDSee0+9ygeCcP7oHeA6WnEJXB21s8LROh1s35sV3wh+H0TgnVjSpDtUwUWZ0KG3HMkYxbNCDa+jMxmO41bZCWBSiqyE76s=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5678.namprd04.prod.outlook.com (20.179.21.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 11:57:00 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:57:00 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 06/16] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
Thread-Topic: [RFC PATCH 06/16] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
Thread-Index: AQHVRgS6mWSnxVpDY0OSO4gytag53g==
Date: Mon, 29 Jul 2019 11:56:59 +0000
Message-ID: <20190729115544.17895-7-anup.patel@wdc.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
In-Reply-To: <20190729115544.17895-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0116.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::32)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.23.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7647304-330f-4669-14f8-08d7141bdca0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5678; 
x-ms-traffictypediagnostic: MN2PR04MB5678:
x-microsoft-antispam-prvs: <MN2PR04MB5678C26146A7DC9E6F46F9158DDD0@MN2PR04MB5678.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(199004)(189003)(7416002)(52116002)(6436002)(6486002)(7736002)(476003)(2616005)(2906002)(5660300002)(66066001)(4326008)(446003)(68736007)(11346002)(81156014)(81166006)(14454004)(53936002)(26005)(186003)(78486014)(99286004)(36756003)(44832011)(486006)(305945005)(8676002)(54906003)(110136005)(25786009)(8936002)(478600001)(76176011)(102836004)(71200400001)(6512007)(1076003)(66446008)(64756008)(66946007)(256004)(55236004)(316002)(9456002)(86362001)(66476007)(50226002)(66556008)(6506007)(386003)(71190400001)(14444005)(6116002)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5678;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TFLhIOVt1xHwyiftnsJXXV1w1yWWv+/L/P7LqBvvHNf5FhRkSXM/dIRKEFwFCaubseHxPoSJt6vBh5C/klJCooh6L3LVcyLoeBSOppJNoLtX5ioUsMQJ93haGIu59UWlHtelXB+rlQT2feyH3U2BKP889IjJMrI5L4AhZU+2OXKjD/dNwEqshRKUL2Mi977WXAIbxcB+e1UfXjv8dIyHkHHmZhMloXp66oeG82XeJ65Sva+08GD4sHSloh17hVACC1ov5MBLr/QM8IzAJiAwilLg9EZWJZ96xS/op4jLOZ4NR+d0NbA6A+7ANY3dprlNsvJ3CTD9SmPn6IpETAwXGu7DqZHLD1KAvoEet09isAaWOQYGcCS8eFBVjWdTLHoi0ODV52OhMuMzeltFCBsefD8+SC17eIT8vZbaKhL1KK4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7647304-330f-4669-14f8-08d7141bdca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:56:59.7323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045702_591420_7FDDDCA6 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

For KVM RISC-V, we use KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls to access
VCPU config and registers from user-space.

We have two types of VCPU registers:
1. CONFIG - these are VCPU config and capabilities
2. CORE   - these are VCPU general purpose registers

The CONFIG registers available to user-space are ISA and TIMEBASE. Out
of these, TIMEBASE is a read-only register which inform user-space about
VCPU timer base frequency. The ISA register is a read and write register
where user-space can only write the desired VCPU ISA capabilities before
running the VCPU.

The CORE registers available to user-space are PC, RA, SP, GP, TP, A0-A7,
T0-T6, S0-S11 and MODE. Most of these are RISC-V general registers except
PC and MODE. The PC register represents program counter whereas the MODE
register represent VCPU privilege mode (i.e. S/U-mode).

In future, more VCPU register types will be added such as FP, CSRs, etc
for KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/uapi/asm/kvm.h |  24 ++++
 arch/riscv/kvm/vcpu.c             | 177 +++++++++++++++++++++++++++++-
 2 files changed, 199 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 6dbc056d58ba..6c28a1b6e9be 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -23,8 +23,15 @@
 
 /* for KVM_GET_REGS and KVM_SET_REGS */
 struct kvm_regs {
+	/* out (KVM_GET_REGS) / in (KVM_SET_REGS) */
+	struct user_regs_struct regs;
+	unsigned long mode;
 };
 
+/* Possible privilege modes for kvm_regs */
+#define KVM_RISCV_MODE_S	1
+#define KVM_RISCV_MODE_U	0
+
 /* for KVM_GET_FPU and KVM_SET_FPU */
 struct kvm_fpu {
 };
@@ -45,6 +52,23 @@ struct kvm_sync_regs {
 struct kvm_sregs {
 };
 
+#define KVM_REG_SIZE(id)		\
+	(1U << (((id) & KVM_REG_SIZE_MASK) >> KVM_REG_SIZE_SHIFT))
+
+/* If you need to interpret the index values, here is the key: */
+#define KVM_REG_RISCV_TYPE_MASK		0x00000000FF000000
+#define KVM_REG_RISCV_TYPE_SHIFT	24
+
+/* Config registers are mapped as type 1 */
+#define KVM_REG_RISCV_CONFIG		(0x01 << KVM_REG_RISCV_TYPE_SHIFT)
+#define KVM_REG_RISCV_CONFIG_ISA	0x0
+#define KVM_REG_RISCV_CONFIG_TIMEBASE	0x1
+
+/* Core registers are mapped as type 2 */
+#define KVM_REG_RISCV_CORE		(0x02 << KVM_REG_RISCV_TYPE_SHIFT)
+#define KVM_REG_RISCV_CORE_REG(name)	\
+		(offsetof(struct kvm_regs, name) / sizeof(unsigned long))
+
 #endif
 
 #endif /* __LINUX_KVM_RISCV_H */
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index c6f57caa95f0..37368eeb6c41 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -189,6 +189,157 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
 	return VM_FAULT_SIGBUS;
 }
 
+static int kvm_riscv_vcpu_get_reg_config(struct kvm_vcpu *vcpu,
+					 const struct kvm_one_reg *reg)
+{
+	unsigned long __user *uaddr =
+			(unsigned long __user *)(unsigned long)reg->addr;
+	unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
+					    KVM_REG_SIZE_MASK |
+					    KVM_REG_RISCV_CONFIG);
+	unsigned long reg_val;
+
+	if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
+		return -EINVAL;
+
+	switch (reg_num) {
+	case KVM_REG_RISCV_CONFIG_ISA:
+		reg_val = vcpu->arch.isa;
+		break;
+	case KVM_REG_RISCV_CONFIG_TIMEBASE:
+		reg_val = riscv_timebase;
+		break;
+	default:
+		return -EINVAL;
+	};
+
+	if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
+		return -EFAULT;
+
+	return 0;
+}
+
+static int kvm_riscv_vcpu_set_reg_config(struct kvm_vcpu *vcpu,
+					 const struct kvm_one_reg *reg)
+{
+	unsigned long __user *uaddr =
+			(unsigned long __user *)(unsigned long)reg->addr;
+	unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
+					    KVM_REG_SIZE_MASK |
+					    KVM_REG_RISCV_CONFIG);
+	unsigned long reg_val;
+
+	if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
+		return -EINVAL;
+
+	if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
+		return -EFAULT;
+
+	switch (reg_num) {
+	case KVM_REG_RISCV_CONFIG_ISA:
+		if (!vcpu->arch.ran_atleast_once) {
+			vcpu->arch.isa = reg_val;
+			vcpu->arch.isa &= riscv_isa;
+			vcpu->arch.isa &= KVM_RISCV_ISA_ALLOWED;
+		} else {
+			return -ENOTSUPP;
+		}
+		break;
+	case KVM_REG_RISCV_CONFIG_TIMEBASE:
+		return -ENOTSUPP;
+	default:
+		return -EINVAL;
+	};
+
+	return 0;
+}
+
+static int kvm_riscv_vcpu_get_reg_core(struct kvm_vcpu *vcpu,
+				       const struct kvm_one_reg *reg)
+{
+	struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
+	unsigned long __user *uaddr =
+			(unsigned long __user *)(unsigned long)reg->addr;
+	unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
+					    KVM_REG_SIZE_MASK |
+					    KVM_REG_RISCV_CORE);
+	unsigned long reg_val;
+
+	if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
+		return -EINVAL;
+
+	if (reg_num == KVM_REG_RISCV_CORE_REG(regs.pc))
+		reg_val = cntx->sepc;
+	else if (KVM_REG_RISCV_CORE_REG(regs.pc) < reg_num &&
+		 reg_num <= KVM_REG_RISCV_CORE_REG(regs.t6))
+		reg_val = ((unsigned long *)cntx)[reg_num];
+	else if (reg_num == KVM_REG_RISCV_CORE_REG(mode))
+		reg_val = (cntx->sstatus & SR_SPP) ?
+				KVM_RISCV_MODE_S : KVM_RISCV_MODE_U;
+	else
+		return -EINVAL;
+
+	if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
+		return -EFAULT;
+
+	return 0;
+}
+
+static int kvm_riscv_vcpu_set_reg_core(struct kvm_vcpu *vcpu,
+				       const struct kvm_one_reg *reg)
+{
+	struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
+	unsigned long __user *uaddr =
+			(unsigned long __user *)(unsigned long)reg->addr;
+	unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
+					    KVM_REG_SIZE_MASK |
+					    KVM_REG_RISCV_CORE);
+	unsigned long reg_val;
+
+	if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
+		return -EINVAL;
+
+	if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
+		return -EFAULT;
+
+	if (reg_num == KVM_REG_RISCV_CORE_REG(regs.pc))
+		cntx->sepc = reg_val;
+	else if (KVM_REG_RISCV_CORE_REG(regs.pc) < reg_num &&
+		 reg_num <= KVM_REG_RISCV_CORE_REG(regs.t6))
+		((unsigned long *)cntx)[reg_num] = reg_val;
+	else if (reg_num == KVM_REG_RISCV_CORE_REG(mode)) {
+		if (reg_val == KVM_RISCV_MODE_S)
+			cntx->sstatus |= SR_SPP;
+		else
+			cntx->sstatus &= ~SR_SPP;
+	} else
+		return -EINVAL;
+
+	return 0;
+}
+
+static int kvm_riscv_vcpu_set_reg(struct kvm_vcpu *vcpu,
+				  const struct kvm_one_reg *reg)
+{
+	if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CONFIG)
+		return kvm_riscv_vcpu_set_reg_config(vcpu, reg);
+	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CORE)
+		return kvm_riscv_vcpu_set_reg_core(vcpu, reg);
+
+	return -EINVAL;
+}
+
+static int kvm_riscv_vcpu_get_reg(struct kvm_vcpu *vcpu,
+				  const struct kvm_one_reg *reg)
+{
+	if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CONFIG)
+		return kvm_riscv_vcpu_get_reg_config(vcpu, reg);
+	else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CORE)
+		return kvm_riscv_vcpu_get_reg_core(vcpu, reg);
+
+	return -EINVAL;
+}
+
 long kvm_arch_vcpu_async_ioctl(struct file *filp,
 			       unsigned int ioctl, unsigned long arg)
 {
@@ -213,8 +364,30 @@ long kvm_arch_vcpu_async_ioctl(struct file *filp,
 long kvm_arch_vcpu_ioctl(struct file *filp,
 			 unsigned int ioctl, unsigned long arg)
 {
-	/* TODO: */
-	return -EINVAL;
+	struct kvm_vcpu *vcpu = filp->private_data;
+	void __user *argp = (void __user *)arg;
+	long r = -EINVAL;
+
+	switch (ioctl) {
+	case KVM_SET_ONE_REG:
+	case KVM_GET_ONE_REG: {
+		struct kvm_one_reg reg;
+
+		r = -EFAULT;
+		if (copy_from_user(&reg, argp, sizeof(reg)))
+			break;
+
+		if (ioctl == KVM_SET_ONE_REG)
+			r = kvm_riscv_vcpu_set_reg(vcpu, &reg);
+		else
+			r = kvm_riscv_vcpu_get_reg(vcpu, &reg);
+		break;
+	}
+	default:
+		break;
+	}
+
+	return r;
 }
 
 int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
