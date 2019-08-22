Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC8398E3F
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 10:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBqBqwIoTXq0Dsv7nToBwVV+hdR/5j/fH2w2jexDhvM=; b=TnvYeFIo0C/xSd
	j5tM5acmKtTrxnfOU80/+vyk4ST198NXbduCKFF2pjujLtvnR0TJrPb0J2oZYaT9BCULsEEmczF8u
	gXL51ig2GRMFwEd1VM0Ynp5Alw4m2hw5IJyR3LobyphCXczLQtwuL3hUHi+NTY3MiUV7Cus9eomht
	+99o4dWYXkx8rbSXHGQAbjoZWDgdUOkDFpvGd1FMPmQyWH63j43goG756wpG0j3KPQ4oNdxUkzY9n
	gqXWjQIYM7At6UiSqEUtG5SIa+ZfvY73Y+2cFwpET1NRO44hS7hoCyZZ5MLyRd9t7oEIhnhUtxkXe
	glRg1Q5cM3q/eRtUJUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ijz-0000Uk-FJ; Thu, 22 Aug 2019 08:46:43 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ijv-0000UG-18
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 08:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566463650; x=1597999650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ynLnbHgJLa/OWKqvu1iH3ffMJjCAHyWbzG77YN+DY7A=;
 b=KtxtX1UKg8LEI8DCvCvjvWps8JHhVAVb90bWrkXDo58Wtz2oL9hl+KyL
 m9kbAtoCW7hveqTnkD3n0P5ve+JrCPwT8wTgQmY2fFV9SlA8YpIPKZJHv
 AH5XAEgbJlIScZRZIjjxRo4m4XeDDzpOvrRo9Cpx7Uz4BSvzT6TeqUbwi
 VprzyNLloRE1JOh1RfVOvhAjr8VMd6MLaFO+zXlhsZ6tLzwIglPRumQhg
 wuxXAMG7AOg5lpM4BpZXk+VWu1YHAWYartW1+7Nz98UmM17BKTU+W2JTH
 d0kN3x1AbgU26jCowfeseuewUwajAPSTT/jBSBxvRPLQ3Tud3ZDlUqaq5 Q==;
IronPort-SDR: iGeGK2LCd10lULl6AcJQs4Rj4pVj5bvrzlDvpim9h64Qc0FOD4XXn5PRPB+9WO2xf9vZa4bE5B
 YAcIK4F064I0vbqa4HtNu/o5Qztj4J2crpAOZL5YA2nISZvXVkUDLNae6vsM6Fullq7b3FIwit
 q6cAZliUdlPb+pJ+7bspzzk8ZJ51uL/M+e/os9D/hVy84Fr2mw9cqYHqQl/Bt2fSmq9G/BubLj
 zzKb2UGqtsxMOm1K+LMY1URrtW8FhJARfDj4IgP9v77mieTpn4EzLuROO5IASmvC/6vWt4eBEg
 +zA=
X-IronPort-AV: E=Sophos;i="5.64,416,1559491200"; d="scan'208";a="216834986"
Received: from mail-co1nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.56])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 16:47:27 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VLO4sAd6fgNZFmvy1rzLDauGIm9gZPciUlckPc4Fhj7ZDfnDaoYG8I63aJoj3iBM/s9h8Kim226CwjifGSVy6Z28IfRT/knNs2LPt2woUn5qOEWecXUt+3eIXBJ9e268m+ZlMnINv6xgVP+RlBBpbvgdOJdxsgPAv+jApK3LlO/bBbDmv8S1E29YX33qqbzajyYlxhw6RzEEXofdWRXaYq/JzA+0yma5rrT5J8Wt+XPrcpzoyED7wTnGOUyezS8c+FFwZ87BUkuUbU8h1cCmBZ8hbdCedaS6GtA/sdjhRsjXICjZbyhnn5Js3Ku9D6p1jqjPk4OCf8VDGqhR6pNaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6uOiukawaUIm59axrQeWYQF7B20eV/AgN3PrVfa3cdw=;
 b=fZLI12woC98zF6C0u6k04BxFrcrItwJkZE4WJGb4MSZD0JfNEbgrRPLU/MyPtvVsVhfOHs9c9KYqiN0dNd5RqLltbVg1YsknII0DFuPu4AjPg7wXyYxyy/kTscO4ipg+D+9eV+sI3sxNdiAA5yyNNPFrBii0UNVQYZVBpHxHU7hp6yI1jNeKSx7ZpsgzWCK5nu6LcDAnjat4QgBpVtBhdOfMatT3jLsFE2IoE4tx2ayBozLtNA4cor5mqaOc1GHAwf4pWSepcHoosParFedZznrahc/xKP7IusBczS0K67UVPy2T7OTA0Dbu/34LLBwhj6b2gymON90UfJ+eG7qu+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6uOiukawaUIm59axrQeWYQF7B20eV/AgN3PrVfa3cdw=;
 b=rPLXcLo+jI0lZ5qbi0jvE3+sLCmYxJbw+/183dxkNwKHBSUJimv6uH5/01O/d7jEdO5BuEtOVl3/q4+9UE6qbZtW/wSxFlMff0P+WUvFr3nFLGagEiJQgNO2g4FKXN/ngz+4rtaf0bAbdkhYyLiLgkHRoyMutt0cnmI5s7orj1c=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6047.namprd04.prod.outlook.com (20.178.247.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 08:46:35 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 08:46:35 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v5 17/20] RISC-V: KVM: Implement ONE REG interface for FP
 registers
Thread-Topic: [PATCH v5 17/20] RISC-V: KVM: Implement ONE REG interface for FP
 registers
Thread-Index: AQHVWMYaWZQS0ZLf2EG+HLcDX2ccrw==
Date: Thu, 22 Aug 2019 08:46:35 +0000
Message-ID: <20190822084131.114764-18-anup.patel@wdc.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
In-Reply-To: <20190822084131.114764-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4165ed7-e4b4-4958-4e76-08d726dd3cd9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB6047; 
x-ms-traffictypediagnostic: MN2PR04MB6047:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6047EAE5B15906B8FFB25EB88DA50@MN2PR04MB6047.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(199004)(189003)(2616005)(6506007)(11346002)(54906003)(446003)(3846002)(6116002)(36756003)(476003)(26005)(7416002)(44832011)(316002)(66446008)(186003)(66066001)(66556008)(66946007)(66476007)(64756008)(110136005)(486006)(14454004)(71200400001)(6436002)(52116002)(478600001)(76176011)(102836004)(86362001)(1076003)(305945005)(256004)(5660300002)(7736002)(386003)(6512007)(8936002)(4326008)(53936002)(81166006)(50226002)(8676002)(81156014)(99286004)(25786009)(6486002)(71190400001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6047;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: reOLtwardSYXq0JRUGIJNKeCsgkDSK/2Z9kvtpwx9B5bjAKCl5qOX1A3PEMd4bszCqWCHvXO3bsFDoq0QX2vx72KtrMynS/KOFON+tIkD8Nw4jVi/5fP9QRlAYRQlcfJR+iwH3KlnxXNDZK32M8Fc025Ftm1uIUO1LT+I5VEbn+2kPPOXcU+aYnCBayyqPxq+Paq2E91hDOoGczwZtD8QA/Sh9aC4vKsspbQq28LCYsCa2NkdHxqcvgSwa6wpIw+WT8uK9cgPBwF94Iv+FmxZ7CxvHP7lm4Fq/F1JXhEigNurKNLZZgAfjhHzwJMFMyCokUjckS8gt8/9QM+8Y9vw8NcsK9VIYwJXpNY1Pvqx7uAmO7N5cqTGLZEq9x4cVgJZUcXG5EHQi2/fMxTrh4nCeamN+PoAmwI73UN+u0edg0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4165ed7-e4b4-4958-4e76-08d726dd3cd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:46:35.4592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q3DQ8rsQVGJqbPTb1oM1LmFauuB8rTsSTIO+INC2JWBYSXj2gt8YmF+o1YgmjKWhGQ9mwpIlT7Y2bq46jiPFAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014639_112201_B2E16A31 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
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
