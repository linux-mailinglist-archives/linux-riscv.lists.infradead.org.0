Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D76478AFF
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8atlw1NGYIXz1ORNVwQE7HWVlVJwL0rZ4zTw78svTE=; b=Oswk8neSrYf/Cy
	EXs8SS93d0fpaRkPTtgFhzHEgXgwTieGMl+GCjGOfWCddKe9dsd9sGlrqQaZLQODqUN6I0PMIc6Vt
	X0JiJMuyxJRA1J2poJ9l2kdDvfbwOJKWN+sMstaMG/I13E8Wz9EcJkf5o+dFnLlba+B6aHeUtZhex
	EEBvBtRcb48YhxLBZ6kveUvKZcHhMzP75zbQAFgOWHL1fsIyGSOR9lnKiX2WegTey1w0BDFQ0UbBp
	8LS4PPyOjr3h8pwuD2sXVVsYXwzfgzSIMV8lTdB8eA7k9BxwhWNemnzVR7T5iqlo7uWk4Aipzuo0r
	/0fGjbPGDCxDeowO7A9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4Gh-0002NW-2P; Mon, 29 Jul 2019 11:56:43 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4Gd-0002Mg-IC
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401399; x=1595937399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E1j6Pb427CcQeVW7c3luwWNPehcIlXqi1Wpyb7HstMI=;
 b=Jp0Ats4Qy8BGeON9IUcJGrfF0jxzEk5psJVZwxblHjBVDCxLHqPSeuUw
 E1+nyEUzfSq5q95qUJaQbfUOCmozSQLj5R3E48tBsCgMH+kMm9SppvZHe
 eSUgpcSlFm2uGgVb39eJ3bhY0ubszm3c8+rDjAvzktpoFbI0GR0KfdSfm
 GO8GEGFqhYdFuNeg6gZ3JetUpAZ62/5rPX5VVCPX+8356NPZo+xOBeho1
 1TmMoeKaHgggikbiSKd3EpHCL4OkkUmFbXRt5YFCvx7rK5PcdX2u3fp2S
 Icn8ahpg/xkv+QqFunoSarRrHAAZMGW71Mn/W+AhFr1M94KckdI9hFoWI A==;
IronPort-SDR: SaiWdMdSLKMQRTOe+csM07wTKw9OzcIoID9cBspQggZUqbXXyZb0Q2pxH8N8Ct2/xxOmZTAmpF
 4ohWFaorw7cKNYSMrY4IzMcuGW28QZW+2BfxE8QK7H/i7BFOyZozDW0TFCgbgJI72+eijgrVY4
 7VvQMavKkcntbtBifj6++5dDHj2QsPytg6cHbqQ0tYABlf7d2CvD8J7+iKF+O5BMqxUfWDbyrL
 98nKx/XMkL2aa309rqVTo95+ErvuzmRcPAeswlUGr/11l1jF3ZOq9LJN//05xqWNm4fNEU1L+x
 oW0=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="220843314"
Received: from mail-co1nam05lp2054.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.54])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:56:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gdx884s1FRhTP/G+YV24P0z2SZXE3sHj6NKJnB3wi83JKUdJPaMxe42CUE4sC9bdHzo3/keQC3Y8/k3mDA4ljgwC75xNAsgHXaoR44AU0/j9U1nebWfUh0qc4DB6fEU0pUmCyXQK+WRjGsx2Nubbx4GFBdL+m0gLmmTqWK/51XBCkq2dJIpdw/H0YA4JHbfkj+KwD2D4alZf/tPag8++0Mc9y3hgXdOmE9/M0hmE9Eicnzjl9a9wu2QzBGhC7AHngx4aR9bMqxV6yrf7PDDMbSYhi6cMegcdDKVSxqYEff96C8l9nNvrJVc8EgP+SYJIJP8iSe3km2JcfxvC6w1Ceg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caRpajzSVpBPjhqMi2IoMp9REmOb3dOIVMidSRAcrxg=;
 b=aAmFe0fq9RyzASzePik76Ts9OZ5T+emG6syrFtIFxBhzHDMmTLQE55w7ZWFEVUcgqkHDimgds+U0yaF7TvVzR3MfN/9OE94sVK2UX2+VICgVIg2DV/r/FrObJjAixPSL0nuYyYaNDMtkV25OMFN0AmEpLePz/xYR3qlm3BMmTFyhFRiLDiCT3PbVN0cvjIsn2R2xRCKAiQ90lbDzzVRpUABDv+XSSwHIJOvNY1/DjoUcotlJ67bbjclvzduOa3e44QQGLMPaNETVfKAorbdINC6s0zVp03WRcjziBO5QFTMgFC/YynxN+FrMO7T3zt7kVZkN4gL7RC57T6CTZ2czXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caRpajzSVpBPjhqMi2IoMp9REmOb3dOIVMidSRAcrxg=;
 b=fw70i9lf/5A9rU0IHzj4v0097S9ImhBQyYNLx7aygTtc9MwbCOGkqvqejLsqnpbmVyr4JR/egp4NFc8N4QdP/cGNTuKKFgjTvgh6D+jjkawXxWNeYwNYU4ZVsYEb36bvuMgsFc87ugtaXSecDFb7EsXvhyfl0Da22u4r0osjvLY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5952.namprd04.prod.outlook.com (20.179.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 11:56:35 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:56:35 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 02/16] RISC-V: Add hypervisor extension related CSR defines
Thread-Topic: [RFC PATCH 02/16] RISC-V: Add hypervisor extension related CSR
 defines
Thread-Index: AQHVRgSrvZppU5q2bE+f/j7a1UqB9A==
Date: Mon, 29 Jul 2019 11:56:35 +0000
Message-ID: <20190729115544.17895-3-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 0c98c886-68b4-4145-697b-08d7141bcdf8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5952; 
x-ms-traffictypediagnostic: MN2PR04MB5952:
x-microsoft-antispam-prvs: <MN2PR04MB595262D966AD22F38C0E971F8DDD0@MN2PR04MB5952.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(189003)(199004)(478600001)(2906002)(446003)(6436002)(486006)(6512007)(53936002)(36756003)(11346002)(2616005)(44832011)(78486014)(386003)(6506007)(102836004)(55236004)(4326008)(71200400001)(476003)(76176011)(71190400001)(9456002)(7736002)(26005)(50226002)(81166006)(81156014)(8676002)(8936002)(186003)(99286004)(6486002)(68736007)(1076003)(256004)(7416002)(305945005)(66446008)(25786009)(66066001)(6116002)(3846002)(52116002)(14454004)(316002)(54906003)(86362001)(66556008)(66476007)(110136005)(66946007)(5660300002)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5952;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mly3vEpgZiIGKqoaG7jORsD1thoG4aH4tw4DYNGTdW47W+BzzCVW1n/QuXCoux6snuVaS9VGG5jixWXjlCRnAIRtK3P5K3H0qIEBmcJ89tx6cTSsYiEVEFemwwfZeaEiBMx3iwmAq+vqxssj70S+k6OY4+VBnXw0BGtFq10LQpPu5gkivcA2XHk6QFOBz3wL23rgb7J79O6GlbxKdl/+dOVjaAwnxSMsRvMZEHfFLhRcyly9fiLIpp3qmY4ginoIXmwUcVkvDz8Fn0DJfnMHYGTW3oad1mj7Rpqb+NXZsDGxl2vXyUSF7QErfsgMCpMLLzSeyXIQ4FijpCYef3OmAttoMiG+qoF0Ain13NRalDVqxH/UXsEwPhbanQz8eiBfy8PYmAgp/a1ZIsRHYRVB/D0qQBlkbJ+zRfwZXEo71Lk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c98c886-68b4-4145-697b-08d7141bcdf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:56:35.1264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045639_715165_ADCBD57A 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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

This patch extends asm/csr.h by adding RISC-V hypervisor extension
related defines.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/csr.h | 58 ++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index a18923fa23c8..059c5cb22aaf 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -27,6 +27,8 @@
 #define SR_XS_CLEAN	_AC(0x00010000, UL)
 #define SR_XS_DIRTY	_AC(0x00018000, UL)
 
+#define SR_MXR		_AC(0x00080000, UL)
+
 #ifndef CONFIG_64BIT
 #define SR_SD		_AC(0x80000000, UL) /* FS/XS dirty */
 #else
@@ -59,10 +61,13 @@
 
 #define EXC_INST_MISALIGNED	0
 #define EXC_INST_ACCESS		1
+#define EXC_INST_ILLEGAL	2
 #define EXC_BREAKPOINT		3
 #define EXC_LOAD_ACCESS		5
 #define EXC_STORE_ACCESS	7
 #define EXC_SYSCALL		8
+#define EXC_HYPERVISOR_SYSCALL	9
+#define EXC_SUPERVISOR_SYSCALL	10
 #define EXC_INST_PAGE_FAULT	12
 #define EXC_LOAD_PAGE_FAULT	13
 #define EXC_STORE_PAGE_FAULT	15
@@ -72,6 +77,43 @@
 #define SIE_STIE		(_AC(0x1, UL) << IRQ_S_TIMER)
 #define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
 
+/* HSTATUS flags */
+#define HSTATUS_VTSR		_AC(0x00400000, UL)
+#define HSTATUS_VTVM		_AC(0x00100000, UL)
+#define HSTATUS_SP2V		_AC(0x00000200, UL)
+#define HSTATUS_SP2P		_AC(0x00000100, UL)
+#define HSTATUS_SPV		_AC(0x00000080, UL)
+#define HSTATUS_STL		_AC(0x00000040, UL)
+#define HSTATUS_SPRV		_AC(0x00000001, UL)
+
+/* HGATP flags */
+#define HGATP_MODE_OFF		_AC(0, UL)
+#define HGATP_MODE_SV32X4	_AC(1, UL)
+#define HGATP_MODE_SV39X4	_AC(8, UL)
+#define HGATP_MODE_SV48X4	_AC(9, UL)
+
+#define HGATP32_MODE_SHIFT	31
+#define HGATP32_VMID_SHIFT	22
+#define HGATP32_VMID_MASK	_AC(0x1FC00000, UL)
+#define HGATP32_PPN		_AC(0x003FFFFF, UL)
+
+#define HGATP64_MODE_SHIFT	60
+#define HGATP64_VMID_SHIFT	44
+#define HGATP64_VMID_MASK	_AC(0x03FFF00000000000, UL)
+#define HGATP64_PPN		_AC(0x00000FFFFFFFFFFF, UL)
+
+#ifdef CONFIG_64BIT
+#define HGATP_PPN		HGATP64_PPN
+#define HGATP_VMID_SHIFT	HGATP64_VMID_SHIFT
+#define HGATP_VMID_MASK		HGATP64_VMID_MASK
+#define HGATP_MODE		(HGATP_MODE_SV39X4 << HGATP64_MODE_SHIFT)
+#else
+#define HGATP_PPN		HGATP32_PPN
+#define HGATP_VMID_SHIFT	HGATP32_VMID_SHIFT
+#define HGATP_VMID_MASK		HGATP32_VMID_MASK
+#define HGATP_MODE		(HGATP_MODE_SV32X4 << HGATP32_MODE_SHIFT)
+#endif
+
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01
 #define CSR_INSTRET		0xc02
@@ -85,6 +127,22 @@
 #define CSR_STVAL		0x143
 #define CSR_SIP			0x144
 #define CSR_SATP		0x180
+
+#define CSR_VSSTATUS		0x200
+#define CSR_VSIE		0x204
+#define CSR_VSTVEC		0x205
+#define CSR_VSSCRATCH		0x240
+#define CSR_VSEPC		0x241
+#define CSR_VSCAUSE		0x242
+#define CSR_VSTVAL		0x243
+#define CSR_VSIP		0x244
+#define CSR_VSATP		0x280
+
+#define CSR_HSTATUS		0x600
+#define CSR_HEDELEG		0x602
+#define CSR_HIDELEG		0x603
+#define CSR_HGATP		0x680
+
 #define CSR_CYCLEH		0xc80
 #define CSR_TIMEH		0xc81
 #define CSR_INSTRETH		0xc82
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
