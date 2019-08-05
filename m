Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A212081D83
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8atlw1NGYIXz1ORNVwQE7HWVlVJwL0rZ4zTw78svTE=; b=c9tNlfVcgx5EuH
	9TyrZ2byV5+84s06zTnZ2Ng/jvLWf75GjvmbWV9Z5s+pUBUFljVFg75K+WOdMbemsKz9EFFdsTHjr
	JQHu1DU2Z/F5NETlAXasfcQ5+mFQz88wrnnx7yqv6IhnIUSvCps98HOn7OSX9UNhc3FOapcPO+5V+
	m/Pj1/BYTVh/AyR/Jv2iUQsF+KjYWgZB9pq5ucXeAirusDOL/kZSmgU3k5wyICFhamTP2ANN8uMRM
	++IutI03xNASMuV3qxOD95zjdZEst9LBcT49cEGaXOwaExFYSfIWuIU/qk6WLE4ZoBvlYdCYUu+fL
	OYKZWccX55+Y0p1zo5Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudGN-0001UJ-7t; Mon, 05 Aug 2019 13:42:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudGJ-0001Pr-Qq
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:42:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012576; x=1596548576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E1j6Pb427CcQeVW7c3luwWNPehcIlXqi1Wpyb7HstMI=;
 b=pcjrP3LhSic/a80dJHO3P/gOvD8flxneTBZa0oIToCcNt9eJqvY0q6Yy
 3wvaM/j7pfm0VSH8NVlGtZZLWmPLVK8qQ/kwdLczirSQW5AIMZO0aSje1
 9ATxGYQ4ba8WO57IbdNOe0G1I0pCrj2e6D1SNLIUhAemiNrrm1vYNqmuD
 Ei+Aum9X5aIXtNBalilZNeBcfP4m5YaXR1kHuS8jbRR5LK1vV2onvVOZe
 URnViymOIpmMOegNGlrF4aPdgzT4jpDIuLALb9rjsRKN4wuW1TUw4/Lhp
 Dg9Iqc8GzWlBzWTCH/3UIf/MRB8NhmzsHXP74M6KvmDpa24OFcBF0IVCx Q==;
IronPort-SDR: 5YGNmxwOeV/WBwdqeL+cFkd9aAXe6QHs84rfSqqMrB7D6mKCRWv6x3N0UtPHfLzThzmyFlv8Jv
 ViCxtw4AWTLNLinO0RKSQn98SSOlgpQGmTu6XvPtrT6l/ofV4vga1eXn4+ST5pZtoR7jbeBX4N
 RapdKcbHGN2PLZuoGpq0tYU64rS3zWTRvaVrMur+1/HrfBbJNrPZbQTsmArlersEWRrshZ4TOK
 kt5RueRqz0qIgrfd9mvrqL4OeU/e2o2RVzMaE/3hW2MOPohpnZBshSq0GYWEjrbRt0m3n7qXrG
 428=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="116613112"
Received: from mail-co1nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.54])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:42:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acZMoRttDbh3fWfCTHtbOb1VcFbf1wUB4ysJr/YIp2Fp0NIA3dFJDJRxQbS9id8/VMXEESXpxHjO50ThyfMYwaI7WsroKmH/wA3SFDYiM+38VrGO4joidiu1Sa1jzGWVIZFW1TudngqiFlsKyB6sKm+tPFm6vbw8Sckc0+c0r79V1TmlEHvwnIwOb5sgeG02fsdYy98WxAkUFxBmYyenHy14YtGehYSLs46EEv5/MYoAt//HlLNYbgSaj25fm3HUXkhL8oxPcZS5meqOXCz7E/ZtnTShDKst0fIgTTjHSEMGWvvn1vpZNDrPC+VYPag5iqZWNZeLYwGNruqaP2+R5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caRpajzSVpBPjhqMi2IoMp9REmOb3dOIVMidSRAcrxg=;
 b=CRjjj/ZSTC4HBFumJQ5iA3c8BHvydwHuVNkpbOv/VgoXidgcXEhHEkRFWvhSY7tv7fRicHjrLPdrP+nVxt2jpD/CGqTKzrZlrKVase4AQLAA17wfRJK6MclnmI41XmKFyexMucvc/crVu0er1xtKN+5Ic1b3HvzyklUQCENZkgHtn/UdYhtyIRlxTnihxwSTSmKAlQbCkXuA2hggZZ0Uf4A1dqG0kHJzE9c76sZnTxiekWkxpN5AA2sYlA8X7U6LvFdeYW+MtKQJ+h+wMHduuphV9X64MzdCAFGYMfs8CAIheNszomsqKmnQToPBfrtOXv/ioSQRPc8c6w/awoybzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caRpajzSVpBPjhqMi2IoMp9REmOb3dOIVMidSRAcrxg=;
 b=FDO3g5Dlqyj2ChwKATqgW/37KF1zeOYsFv0CMQK1kjcSB7lsZLWdqNCc325CXz8YwK1yxJNuFxWl/jEFdhMtsn6PnYnC6rul+4uBCdWxgcnLIQswqVokc/MjXnh6Sxrus9xY8vzOL33Uo4KefFXFG4vc/A1ESMMBqtEA9NvVxak=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6446.namprd04.prod.outlook.com (52.132.169.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 13:42:53 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:42:53 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 03/19] RISC-V: Add hypervisor extension related CSR defines
Thread-Topic: [PATCH v3 03/19] RISC-V: Add hypervisor extension related CSR
 defines
Thread-Index: AQHVS5OuAvoJm4boiEqeCscvoqQruA==
Date: Mon, 5 Aug 2019 13:42:53 +0000
Message-ID: <20190805134201.2814-4-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: c22049f8-160b-40ab-ecb8-08d719aad090
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6446; 
x-ms-traffictypediagnostic: MN2PR04MB6446:
x-microsoft-antispam-prvs: <MN2PR04MB6446762D9565D871D6D54E9E8DDA0@MN2PR04MB6446.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(189003)(199004)(102836004)(55236004)(386003)(25786009)(4326008)(6506007)(76176011)(7416002)(53936002)(2906002)(478600001)(3846002)(6116002)(44832011)(2616005)(446003)(476003)(11346002)(86362001)(486006)(1076003)(6436002)(256004)(110136005)(6512007)(316002)(54906003)(6486002)(14454004)(66946007)(66476007)(66556008)(36756003)(305945005)(81166006)(5660300002)(71200400001)(71190400001)(68736007)(64756008)(66446008)(81156014)(7736002)(8676002)(8936002)(78486014)(99286004)(66066001)(50226002)(52116002)(186003)(9456002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6446;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ab6AYxUOFiL6+SR7JjwhxIMnUl6BA/dTuzstDy23pQpH9NYUbuUqywYKLlQxRrcfpE3mJwJw/7qw2kF8aSUcmJf7sTBXuymvkv4GS4fRkWsONYOY2iuTiCUZMFTTQdXXMvvYbjdJR6pJVUtNcknNGwVYyH23sM5uJ+PASlcORBuX1SM8kZFRM6msDGLUa/EZIjTLpbWDEtx4NSVGVt6QlYLKkRTnqU8NAHLf9IY5nOPi+XUvndePD8a07hfVnH+Lk9/+aUgDN88tDma1s2tcpsC4N7YMbb34icrVjlt0JeWX7HHcrlkN5TVgNqBHCcIjuEyB+56jAyT/Dt11clvj8RaW3ADdVl91zhZkt96+MaYywzMa/MaKSrnvIvuYFzaXWQpitXjstEEHRGHD4dzPc4RqcCzxMLKGXWztocIoEgo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c22049f8-160b-40ab-ecb8-08d719aad090
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:42:53.3196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064255_958617_1D088DC6 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
