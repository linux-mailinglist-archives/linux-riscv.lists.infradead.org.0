Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF3984B94
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lApyMH0mw2OMYMjO+SCxPdNtKdviliiaVxURDiF8F2Y=; b=kR8xM7ZLiQbvyT
	DcrtfMHQmxzl0il2Nysr5pS76IGnDpAmkfuXZGQm4QxfuEP57Wn5S9zhCU7AxwG2O42WiWXVxMU9t
	+bRzRxeNYkCk5vExojhArRF0phRfaIkz730bf0/VzI0mWU3DVoDmUHUdirTw8M2Vg1G8/QRH0HxG5
	erXYOQxLyErqs2zXQ6j2INhSD+r+LcL/W/3u/moQSKLbpFCEpe6KINYlN3b+cx/p+bV30WZTVXLVs
	CDdQFhRw3t/F4vwToRV4rrzujhfy7pGqgpEEtN9XIkL0rx/y7EOn3aWG+8yzErOME8eLTgccKPSyF
	O3aUv4enpqeAW02g9EUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL4W-0005lo-PJ; Wed, 07 Aug 2019 12:29:40 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL4S-0005Wh-BM
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180976; x=1596716976;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wVviM59ajZhNygYXikKypWKi+AYUCnOMt6haAGs7ils=;
 b=MXUlTeaWGIf2Wsv0H5K5SlY3HCa7tA9gcl4XfX1D7aGfGxsZL5Vt5FOr
 23A4K8Iziwq/L9YMN+9eop2a+Bl+ICP+031arn9DaUNwlEnDcqlIOCued
 HO+t7vpRURWxv7v1zUetGUFKdaQLRFILnhWUGugtZXvsQd08O/fbl3k9U
 hHGHAybZ7RKPx1JN/222++EuMhb7hH20Cc2uf5c2MJkNPRJpwz+hjq3vD
 8aK9Srfw1btIXo+PaRa1S1hA/hYDh8UNNQigwr2v7/l6CVX1P32E+Orws
 J8LIkXCxHCJk6AA1eWGqc71X7aK5VXcivBzhPXI7h9N0wfHS86UCjeOjE A==;
IronPort-SDR: 9kaOV1LfkU55ILVQhw4TAV129CFwURicTtUIvwv2HwLLdNQhy0gtd4YaT+hBR6oi8rhNGJQFFx
 JeND5NxlvlCOWN6rh8HpshrTkUxBUE1vqL6Hthyh6WzBA86TjSDmWlIOp/Mxf4rksiJXFsu6EF
 mHxCpU6vWzF2wg4ypQy6onfzNeemoJOlMFA1da5aVroC/elfoeObJ5onsMAVvq6Ge91tfjdLtP
 8wdM7TpvjCj4rDvnaWotkXKHXS4GBaID6xs7QWygdwMBGYlGtV9PzuhUaVjGJYJDoMh6eOLPzF
 Fwg=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="119865593"
Received: from mail-dm3nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.59])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:29:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VgR9Mydv1ZgqMAjpgFXmkgaLDvw+WKGP0PAmib5jRz2cvzNQ/S3zYw+kpdl9m/vq/xUXzuo4uzzNsXq/oVbhu2YDCC3onWhhmKUjmORDLFXZdcDT53x3r+o299ZfK43YkSUXamneJeXQ+ux5T0XwkPu0+553XZbdo4R3rfFidz9+suTKrZESypRLMiZayloDNJBs9SPMAijgvoVpk23ZyohAXsB3jTiFlTezbOeS+ECxFf0XRqEtQAOlOKpmtqoU0gl6/6ga9DIZZOEMbCkeHzXZdsKpiP+mM95QZSM/OiRnFimEawKmrYUw0KSFmVd/CNm7H7heJxIzeDhDVnWhXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMoLXwiLnUxSWr2i34QrOKcPRmXrBuBeDV9zxQ/ibWg=;
 b=PxUHsBjV8HVSCqQ9NMJvqsT6qCTLpZ7fGTV/l1pS4LFSt99FtEpwg3TlU/xfRh7dUS3+Ie+jatorhugXf9XVpT88XrM3y1YtdlCJPucYoQHuZgJH5RZxk/uLUTplebAgkAGmP4m78Jw9aYTnMs/zME4u6419nPpIapNdFroAxjEfhN4u98lY9J8oNODdWR3Md4ZNRmpnsp3riHpkw+m2qtblESRFu7YEfv9lph7kytG4urE4w1JRv9C+uvYyLihTUQFKK17WLl4SX5i91ZszLD7R93kzpXJtfymmLv/HuO8yClb/Av5Nq6lRCSieW47g2knieb6acwufEWdHS9a0jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMoLXwiLnUxSWr2i34QrOKcPRmXrBuBeDV9zxQ/ibWg=;
 b=GWlHDwUVYlHxW5l6gY1dXMfAXe0aP/Dmz1YAVSRaH3BYNVmfOnyc8r7PPdJAp+wobeWEQlfG4gw/TQFQKI4SH9UjRH+UsdIqOVyLJqbg21lTuXRXyYkCI4G6UkoiRvlX4PV5qettBCAXDXSb6BZHH6QHpPid4nDFJk+p18B2+60=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5821.namprd04.prod.outlook.com (20.179.22.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:29:34 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:29:34 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 17/20] RISC-V: KVM: Implement ONE REG interface for FP
 registers
Thread-Topic: [PATCH v4 17/20] RISC-V: KVM: Implement ONE REG interface for FP
 registers
Thread-Index: AQHVTRvE5ATVQ2YMe06e3R7vyt8xTQ==
Date: Wed, 7 Aug 2019 12:29:33 +0000
Message-ID: <20190807122726.81544-18-anup.patel@wdc.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
In-Reply-To: <20190807122726.81544-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0097.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::13)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.52.255]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6964fed6-82d1-4771-d2a6-08d71b32e70e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5821; 
x-ms-traffictypediagnostic: MN2PR04MB5821:
x-microsoft-antispam-prvs: <MN2PR04MB58213E552923D2F6A8CC982C8DD40@MN2PR04MB5821.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(189003)(110136005)(1076003)(71190400001)(6486002)(71200400001)(50226002)(186003)(53936002)(2906002)(25786009)(66066001)(8676002)(36756003)(54906003)(81156014)(7736002)(81166006)(6436002)(316002)(6512007)(8936002)(26005)(4326008)(305945005)(66446008)(6506007)(64756008)(66556008)(66476007)(66946007)(11346002)(68736007)(478600001)(2616005)(86362001)(476003)(55236004)(102836004)(486006)(446003)(76176011)(14454004)(52116002)(3846002)(6116002)(256004)(5660300002)(7416002)(44832011)(386003)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5821;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QAXEnWcyMK7pnFyLZdo+8SOyOWlHH/FRctbEdiAtrk+zuT+kRkRS8cG21USYTeWnwATZBoqkTynOBDX8y4UMAK059mHvuyd2UgEVr5swus9tFQA7rJSf6eWy53o+KoYGXzZ+/fcdgCIu7W4JRR8z+TMgG1GIjtDxHeqOGNkG8kWJn3i+UliB8MWC/yPZF3nRLt6PgSyHki6nF4tHqGRVOiLSegcEfgihZwrX99ITSGR66vJ931IBbe1OgilxM1b6P/HaptZkNZVcuVds33PvqDSLZPTu2XeGySQwieqClUIELA8/1xmu2w5ny/WraO8B8auccGx06bV8AFIAsKBK2cD9WZXYoL7LxrHCLvy4Jou3UBNRaajWqY50tcMCTTJRIALtvDY/gebcAuM4j16WNxQhpKnndB40xZQ63MeVTFE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6964fed6-82d1-4771-d2a6-08d71b32e70e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:29:34.0094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vD4GR0/4EXbLdJikZZmFIolGvxqfZOyc+hCpsH2u9vx+GNykiF0fCboKvlbmgTSVl+QfmSNSOxzo2SFncifhRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052936_625602_7A5AFB86 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

Add a KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctl interface for floating
point registers such as F0-F31 and FCSR. This support is added for
both 'F' and 'D' extensions.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/uapi/asm/kvm.h |  10 +++
 arch/riscv/kvm/vcpu.c             | 104 ++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 024f220eb17e..c9f03363bb28 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -83,6 +83,16 @@ struct kvm_sregs {
 #define KVM_REG_RISCV_CSR_REG(name)	\
 		(offsetof(struct kvm_sregs, name) / sizeof(unsigned long))
 
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
index e7c5fe09c3bc..ad7b67dc80aa 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -426,6 +426,98 @@ static int kvm_riscv_vcpu_set_reg_csr(struct kvm_vcpu *vcpu,
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
@@ -435,6 +527,12 @@ static int kvm_riscv_vcpu_set_reg(struct kvm_vcpu *vcpu,
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
@@ -448,6 +546,12 @@ static int kvm_riscv_vcpu_get_reg(struct kvm_vcpu *vcpu,
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
