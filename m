Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17397EDE7
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6AMV34bObmn+bC8Jua7Bh5qgF07+fZhV4gsnjCyTRE=; b=V23AX1I5FsEZ0p
	XYjYiA4zDQjomQqY+SBedX1w+m1sjXz0FOcYkx9dAKsvCn3+4Gpz2nwMKFFmvG7VFPTxvX2j5ARl9
	rBYDNHzNiOYa9WyDhRmTyDufWrUbHZ7n8izDxDHLcBfBxeaEysgl0xCZdCl6hEWaKMlVgTlLZgKrz
	mgX+epotWtSVzfvklhEqhbY3+y1GT6GhHssN5BfhdU9Igfj7NqVSKKNYnYGdix1rPVFtYZBPB488k
	VMVqVQ5FUC6clwiTgBsWxWY0YFeGwS0Pa6L2Od2kZ2b3HwWIddgso5eiIb2dOhC8jWQt7iLQMU2u7
	X4lE+WB6Zuq1O0XKg95A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSIL-0003O4-Gt; Fri, 02 Aug 2019 07:48:09 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSIE-0003Ka-MW
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564732082; x=1596268082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pRG98keGpbRzDGQIYoJhcqC90t6ioerqixMbSEyQNxM=;
 b=jDGZ6ZlkVf6JUSwxDPZru0yTvC5rXaADKAYC3oTeRkms5C63UPb6eQ39
 pokFuG+pkYXz35n0DqqXRARzas4WSKGNO4LyTJBDjxUml5QyGSQcnKRgi
 YWCjGI+p4VI2Hx35M0kSDmrgjl1sT8LvP1CwzLrNCixtRZpWffiF+DBdm
 f8eBhDatLxmiaEIE6bt0aLLyzzcNvAd/eOyT2cZyG7F8OUaWIQz4sri9u
 BM0XE8K2Wi/HgQ3rzA47ETGV37Z2CsezJIXAO0Um+pDp1Ux49vIPv7rVs
 FGfuigwqcPuscdnicXmgGM5+7SZRkj0PScskgwHACM/rNnpr09aP+UAaL w==;
IronPort-SDR: zIDl3RRUBlzuNBgKHReuJPLoFaTtfAh1RUvaidzznP/EbBuSOZLzZM+JctdhQ/gDZfX3u92PqZ
 0I0SU3+eMxHTdfb1oQi4sYfMHuYtcISrw6vVL4o6fbl42a5khvFqSbie0m6wEo+VZ4csXMSRVx
 LKqyj9bMHaRJFK9SSTpaqFGCyQrjjOvvo9hfyOuVPvOYU/J8vV0OfdPSI4gxEl3UjGsZvr9tvW
 HkvU504Orbz4F04IhTgTyfafLCG221+bvGbLqzsTcKY+x6/3Ic9oTtNTgwFoJH0rPoyTjIj3EZ
 qpc=
X-IronPort-AV: E=Sophos;i="5.64,337,1559491200"; d="scan'208";a="221257591"
Received: from mail-co1nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.59])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 15:47:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kA8D2tDRaGay8ZNghRPWGwsh0JGt97jo1RmHPOUZD0ZEP+2TQp6Gk+br4fWxlOxXALXT/aXPQhezBXcNdU3mwBoxLMWQmxebau67yJ0HqaEqgSNH5zf1EW+xdtzVNfjmKpcHN4kOasWX+BjhTdaoj4P/QUuQX/Aq6tVp+vOHuBoAhgx7RYC6v3rRt9BXYtr6WCUNfvmNLSoH8mZLVWDxafGNz9J64CBIFd6DLIj4Eng+zWVJLvvn7w1cT5bF3jp8kI25qHzI4gTtEVtx2QU40jhfmXh4xLpOXCtNjCH2F37DKYasOqQ3qeuOkVNXUVaHNEBx2CCmVkARH8Z4Vna/Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=izE+fuswXap0GxiVJBzCgW8kUk+A5skg9snfPbVlyhE=;
 b=joF2RAJgGMRNKav/yQQ/DNqKkZGpHGmU1CsizVgoUdWMCNRElgNv/yxS3wLJIL7EG4m1rDKvEfka0TSTuaIvj6vRIPj0CMu2GrL+w4WUQ/hwQ1k/YE6n5n84FsqW403/Lgn0LcXNIb7ygXviFmvZrzzC+wzrnygWeNsnrHlj4VQG0uvq1tCEiYfLJZDqlJo8Clzg/mX4Ye8xY8HqFVwO+Yxq0zbQkkQ+mvYpfYDlXOO87QAm3eOqK+uWZ3zQyqb4oUus8OYxBhZo0W7VwbtRcu2tDEdSUF0xwmX7Tiv+PmVgXOGwPI7XijTmQNzI95dgsh3QZbgVqDBqswIkfmt3Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=izE+fuswXap0GxiVJBzCgW8kUk+A5skg9snfPbVlyhE=;
 b=NwH0pXwSLgJtYB6TcBEpp3m+iu9bGu0zv74p+d+AA29aytr6gfuxcOZR5/tiRTbR9miOydiYb7Mbh7EATALMxtX4Rnocm1nO1ULI7cdNqG+qmYFm8ApHgLXToKmhG0YsFLkIXw3QDyya43lp4rZFbspZNbiHnmFXqr1dd4X9MGY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6032.namprd04.prod.outlook.com (20.178.245.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 07:47:57 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 07:47:57 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH v2 10/19] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Topic: [RFC PATCH v2 10/19] RISC-V: KVM: Handle WFI exits for VCPU
Thread-Index: AQHVSQaZpaz4jW4LtkWMYduP1OnGFw==
Date: Fri, 2 Aug 2019 07:47:56 +0000
Message-ID: <20190802074620.115029-11-anup.patel@wdc.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
In-Reply-To: <20190802074620.115029-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0111.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::27)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20c17694-dc66-409e-752e-08d7171dbba9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6032; 
x-ms-traffictypediagnostic: MN2PR04MB6032:
x-microsoft-antispam-prvs: <MN2PR04MB60325C525477FF9424A7367F8DD90@MN2PR04MB6032.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(39860400002)(136003)(346002)(366004)(189003)(199004)(186003)(386003)(71200400001)(71190400001)(55236004)(6506007)(5660300002)(102836004)(1076003)(7416002)(76176011)(9456002)(52116002)(86362001)(6512007)(53936002)(6486002)(26005)(66066001)(6436002)(8676002)(54906003)(316002)(14454004)(2906002)(478600001)(50226002)(68736007)(476003)(44832011)(11346002)(36756003)(2616005)(486006)(446003)(78486014)(256004)(14444005)(66556008)(66476007)(66946007)(64756008)(81156014)(66446008)(110136005)(99286004)(8936002)(25786009)(7736002)(6116002)(3846002)(4326008)(305945005)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6032;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9nbacujUrVQkPsQeLngPaz1FF12F9//4Ct6ZnKcMVvU2SgKvxIGs6WDn7aI/3pNwCTRzydG7m+/MXHo3+pHHX82Sohar/zznmVsWPYwcYqPpa/fVpb3zgqMgGNDIOkxTNEQ8YnNMvL4GDCtHGY3oG+ZK0rcIr4B0rhva5Wli8cqev6g1diMJcNN0dHP/Vc+GEWm8CL8jJ7nOMz1/S/DcylDc8XZYJ4ektkg+Ot/VpTPOZHJwh7tY8VACwiFIhy8dd/BnK2N/PjQe0ZlF9qfnjtcTdwyy7NW4xjEB61GvG7mcMwyOfeqzj9Zc8Wbk/Q2vAM1T20qJSKJ8+cPgTg1GeVc3XMcrZIIwLkpsuDEuk5ZoKcEL1ImeC/DM6H1n+4Cg/r5vIW0VdgcfaIjcbKj/rkhC76huMg7FLZRtD7BjYdA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c17694-dc66-409e-752e-08d7171dbba9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:47:56.8178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004802_879991_A31D102B 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.20.161 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

We get illegal instruction trap whenever Guest/VM executes WFI
instruction.

This patch handles WFI trap by blocking the trapped VCPU using
kvm_vcpu_block() API. The blocked VCPU will be automatically
resumed whenever a VCPU interrupt is injected from user-space
or from in-kernel IRQCHIP emulation.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kvm/vcpu_exit.c | 86 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index efc06198c259..f4ddf357ded8 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -12,6 +12,9 @@
 #include <linux/kvm_host.h>
 #include <asm/csr.h>
 
+#define INSN_MASK_WFI		0xffffff00
+#define INSN_MATCH_WFI		0x10500000
+
 #define INSN_MATCH_LB		0x3
 #define INSN_MASK_LB		0x707f
 #define INSN_MATCH_LH		0x1003
@@ -179,6 +182,85 @@ static ulong get_insn(struct kvm_vcpu *vcpu)
 	return val;
 }
 
+typedef int (*illegal_insn_func)(struct kvm_vcpu *vcpu,
+				 struct kvm_run *run,
+				 ulong insn);
+
+static int truly_illegal_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	/* TODO: Redirect trap to Guest VCPU */
+	return -ENOTSUPP;
+}
+
+static int system_opcode_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	if ((insn & INSN_MASK_WFI) == INSN_MATCH_WFI) {
+		vcpu->stat.wfi_exit_stat++;
+		if (!kvm_riscv_vcpu_has_interrupt(vcpu)) {
+			kvm_vcpu_block(vcpu);
+			kvm_clear_request(KVM_REQ_UNHALT, vcpu);
+		}
+		vcpu->arch.guest_context.sepc += INSN_LEN(insn);
+		return 1;
+	}
+
+	return truly_illegal_insn(vcpu, run, insn);
+}
+
+static illegal_insn_func illegal_insn_table[32] = {
+	truly_illegal_insn, /* 0 */
+	truly_illegal_insn, /* 1 */
+	truly_illegal_insn, /* 2 */
+	truly_illegal_insn, /* 3 */
+	truly_illegal_insn, /* 4 */
+	truly_illegal_insn, /* 5 */
+	truly_illegal_insn, /* 6 */
+	truly_illegal_insn, /* 7 */
+	truly_illegal_insn, /* 8 */
+	truly_illegal_insn, /* 9 */
+	truly_illegal_insn, /* 10 */
+	truly_illegal_insn, /* 11 */
+	truly_illegal_insn, /* 12 */
+	truly_illegal_insn, /* 13 */
+	truly_illegal_insn, /* 14 */
+	truly_illegal_insn, /* 15 */
+	truly_illegal_insn, /* 16 */
+	truly_illegal_insn, /* 17 */
+	truly_illegal_insn, /* 18 */
+	truly_illegal_insn, /* 19 */
+	truly_illegal_insn, /* 20 */
+	truly_illegal_insn, /* 21 */
+	truly_illegal_insn, /* 22 */
+	truly_illegal_insn, /* 23 */
+	truly_illegal_insn, /* 24 */
+	truly_illegal_insn, /* 25 */
+	truly_illegal_insn, /* 26 */
+	truly_illegal_insn, /* 27 */
+	system_opcode_insn, /* 28 */
+	truly_illegal_insn, /* 29 */
+	truly_illegal_insn, /* 30 */
+	truly_illegal_insn  /* 31 */
+};
+
+static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			      unsigned long stval)
+{
+	ulong insn = stval;
+
+	if (unlikely((insn & 3) != 3)) {
+		if (insn == 0)
+			insn = get_insn(vcpu);
+		if ((insn & 3) != 3)
+			return truly_illegal_insn(vcpu, run, insn);
+	}
+
+	return illegal_insn_table[(insn & 0x7c) >> 2](vcpu, run, insn);
+}
+
 static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long fault_addr)
 {
@@ -439,6 +521,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
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
