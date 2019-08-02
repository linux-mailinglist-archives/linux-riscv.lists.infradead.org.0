Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752DE7EDD2
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8atlw1NGYIXz1ORNVwQE7HWVlVJwL0rZ4zTw78svTE=; b=TXZe82VpQ7Hn4C
	lsv04sJJlHo5F8T1hWf5iAbNe5M5AgK/altlY8EEtnJrdiLZP8vZ8PXiM0sz7O1ZRqhoif8s2qskY
	ZHTCAgRWkzF41zjbQQ97X29gPLv4Qhr4owABmEE9WiBWI/hgW0Scid1kDalWYy6h2YyjZdYFL2/ig
	TstK5aZU6/t/vVRebtDVVhlkrjrt4luW3TgGMxM1eBqPEhqX5R2dQr17f1VlwAQnME2gLWvZrAZb5
	Ijz5KhtrVaCUJobtg/j6S7dEs1k5U8LWVmmZnvol7s3AmmstCAqVwN8Msa+p3rx4pP4roupa9CeDj
	h8R4npkyVXU1PJabfBWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSHf-0002vB-Io; Fri, 02 Aug 2019 07:47:27 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSHU-0002sL-Ew
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564732036; x=1596268036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E1j6Pb427CcQeVW7c3luwWNPehcIlXqi1Wpyb7HstMI=;
 b=gQj7q5hjzmxseMw4cGNWySREpQowLlAUK1H0/ZuzmBj5k6+FBSv1akZR
 4TtrPrJSgxLTVEsGaye5YamkYBwNNAQFRKtxqDB4f6LL5pQ6+bGGvc5UR
 e+uDZ3FB2YGK4Mj0fXhnPzPILYBKAtlSSJWNmN8/I0D0WaXbCkgj8CMIi
 MtsUq7qQQ4YdnuAuBcVMNfFQUiajy8VMRDBdpe+Casl/ZUjX+MtyDXHNZ
 y5D5InEAwo196tzKXivqXU3cL787D18VFBTJvNghbLBuEA4khmBj+Z3Fs
 ThVmVbY+Q61of2tVF1mHKw/Q4WdkfH154shBZqB2ORQpylJYKqlJrPLfz Q==;
IronPort-SDR: qYrVkP5WBdBMGxEfYAWdEbzEmupR5pfUZOIIxV6uBELECOuRln4J0FP5883v/unbpJQ5r8pBLV
 K+F9RjFdTbaaSRt21C6uC9XSiFZbfVwQjRPcymfRV2Gd+H51psJAkPDlrUHde2pR8jrH7mLQ6q
 kDBEaMPaFdT0As8JKGwFvI/v5YPAc8K6cmeJAaC86+WgpekqGtnojTQLuM6Hy40suvdyCNOtQo
 MWcxUuBOd5mWv+bGFa/mZ7vI9aZL4Mf4ZIIMNBfk7L1fgDGfBURKmCtYtyA9P7nnqSS5FmA7HG
 kZk=
X-IronPort-AV: E=Sophos;i="5.64,337,1559491200"; d="scan'208";a="114783182"
Received: from mail-by2nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.54])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 15:47:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kIAb3sxAmeemHt3aL5TadddqEiodKcJSmHCL0NmTZxAFFTC9SqO0cryHQpXon0/J8QTImgzsL8OF96vcq9ni10GPPJKxDrbDo/WQYrmYOaXOq8KEMuC6Ib/QiDlexENjf5T/5XXAOnWlNV4JtpU32Ulprovhi7krcyZwgb1IUXqHJkoh3lVmPAtwypDBD9+ucQHRBxEBFGw5BrsFd4YmK7TXuv/dACgtQB3R0aGw2NM6WizSPef0oLcKNdOsxF438qNuC1cWQTcSz7GT9lNtXS1YIBn9a4e2EKugVxUltu92MkwoEvjdwImMBeISFzn0cj7uM2EOVXlJHvcUwPphfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caRpajzSVpBPjhqMi2IoMp9REmOb3dOIVMidSRAcrxg=;
 b=VQYoAtSyF6En6hg2dwyJLWgizg4Ut2vyKeHErhxxwljKrbuENIee4kcUtogl8VpyWIoxKgr1dpkSOYkLT6ctZVL37QkVIeNCyDfs7nyli8h30GIssWwUAeTpVxy6KZhk4zbURDTn68p6CnDPQ0/MDOVfVJWaJUEd3EISGQGyUP3wISodKUJoj173npEhtYMVffmoHeeezmS1L3FWImlm8uWNSs0y2jgBG0ATGyu33SEZQ9FXDwkY714tNlRgwSDE87U8/W+rFVOasZby/BhAswBsGcEh2hZWWFCr7UyRcALWD3iRJXR5S6A9loZJV2CVvTWK8HlNjJFOWr1YQ7VmJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caRpajzSVpBPjhqMi2IoMp9REmOb3dOIVMidSRAcrxg=;
 b=bA7XifdvSX4xoPWHVqFxmAFGT8BrUtOPGV1BQz2TBWbEzPTUJXmcfw6NaQIdCgwx2OY42zPf13JT+3VrMjOzhdKCxSfSyA87cNwWAIpXb5QxU6zOlXPR62i41qwJiIj9w222KHRYqZX+bjKddtcchnOxfXP/EiTGYKy4IEgpgZY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5566.namprd04.prod.outlook.com (20.178.248.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Fri, 2 Aug 2019 07:47:13 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 07:47:13 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH v2 03/19] RISC-V: Add hypervisor extension related CSR
 defines
Thread-Topic: [RFC PATCH v2 03/19] RISC-V: Add hypervisor extension related
 CSR defines
Thread-Index: AQHVSQZ/4jLg1fzj50ihG1e1f79rWA==
Date: Fri, 2 Aug 2019 07:47:13 +0000
Message-ID: <20190802074620.115029-4-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: f4c24bc0-0e5d-494e-24e5-08d7171da1c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5566; 
x-ms-traffictypediagnostic: MN2PR04MB5566:
x-microsoft-antispam-prvs: <MN2PR04MB556687BF59797FA4FDC5299C8DD90@MN2PR04MB5566.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39850400004)(136003)(366004)(396003)(189003)(199004)(36756003)(14454004)(7736002)(54906003)(6116002)(102836004)(110136005)(71190400001)(446003)(4326008)(3846002)(5660300002)(52116002)(66066001)(2906002)(25786009)(6486002)(6506007)(386003)(55236004)(76176011)(316002)(53936002)(6436002)(305945005)(9456002)(81156014)(64756008)(66476007)(78486014)(86362001)(66556008)(66946007)(8936002)(11346002)(476003)(68736007)(81166006)(2616005)(478600001)(486006)(26005)(1076003)(99286004)(50226002)(256004)(71200400001)(66446008)(186003)(6512007)(44832011)(8676002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5566;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NCNOkXcbm4ABGWWc2rDGmHSpc04xAHnliSNXFh24jiRa6ApQd7PGewSTnC/5rGt8cT8Ek61Rw/07KmbG/ccFCTCcf0Jm4SctwllHULR5erXhg2RY+jlxAjssQgVzZwjA9C76IuGEbESijqeceXgNbcOZw6engL0qZGQnTcgcfaZLwiByBt/Mv0A722t6sSqIUzucHIXVML8OYRpShLF6fJEDDol9U37Ii4vW6mwr2b9/P8I5bPNXZ80tcdfddqpwR+WWx5h7WnRq2rXhVe0zxtJsawHXYerXbe9foeOAWdIdGY6QxDxQn7/GChB/JAJzjhW1gJlffJa7GqqFLdTTQtI3KoUxDVCtJ4W8/M0hYYa9gY6eVN3jguT/fXVWzoIkMLfRzyDll2FlrtVHps+pkEd2HBPqXeXUCTlbD6KEoCg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4c24bc0-0e5d-494e-24e5-08d7171da1c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:47:13.3556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004716_808940_CA3A5088 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
