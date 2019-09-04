Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FF4A866D
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GClZU1WNZC3Wbu3nQgxzVtlT4vHqhiWwdNVSR5KEf0k=; b=ZyS9HSVc6+2vyk
	+gJ7S5nf4kdZNyRzp4XjJkHHuXd80ipqw1MxWCx6AM9ol3+w3Cr6J5sBCsnKU9vswNhqN+OpCUZbc
	lVprocW8AbsG5obQisEh0ghYmv/7NaXvUw7K6XOGVtBoiTGZcFTQR/S7tGEY08aL8q+4tt9Bte1KJ
	EyyCq8cfQzYpeQ51+KVrdLNHwHki0Mr0mTwrf+frRnKnHVdoffDm5CtcSmwycOWOeFqTi3nv+IBse
	4Egxw5/g1eveb+QfnhxNuyzNEOmDVlAO89RWoyvW/IoNdfj9s7FtyzVMyCnzE9VRL62KMfVtPVvKS
	hcyhGUAlbIyn2PTYl0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xvb-0001R8-7u; Wed, 04 Sep 2019 16:14:39 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XvG-00018r-Rj
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613658; x=1599149658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZmzTfG5qj0/ShH8NlNjNMPphgeVWAziCNJJHP4F1jcg=;
 b=OZrBSMop18ZJsibJLdsX/+SdNS/mkb6qY11n76afLKxqc02IEMAOGau+
 n1/fcPboIhkWtFNYWeF4052mH5lOLYGXpnjmVyMdvtkKz9DLNyB7VT+eJ
 D0aWnn0MaqltNSfsiIeTZ8nIzJFaiuf0LAY5k3+rQQUlzlznooygyXErg
 9uS0GsmADCEo0+YULhaxlaBC/y9kMf8xFNAnpSDliMPIMctM4JXgwWL+G
 mTwenpcqSOp7vt7lKnPfATLOQNOm7IKYqJZQll7xBdqWhhkZosu6qqg7B
 0B7y2GvFVM+ZYASi9lkoFSLIwjdm2CiIEFgx6wqy+L1dI0kCAuehxHZN+ A==;
IronPort-SDR: P5itF+hqnw9fYrcbVxzXGhP8E5SV4p0nJTwt7tMqdAh3za3ymzdOij2toMTOgAkSNfO0YaWfAO
 2aHppBS9zLPCC6Cmem8WSZzJ9NVytQvAzfJhLLUe5X2rjGQaAIOScX9lNN8HKMLtK/y4SONqMC
 oGLR529ymiTtQXGfRN23zo4vf8PQL1JVNtFoMIAH90yKda/PwGB1WFqwna2sjmYUIjwinxvqNq
 iKuWBWmA8vLUSWSL6onLVrGeACskP9qLAwl+OoWTkJ+13TncND4h/ahxPK0IFW1AfY5mtcqSZs
 PuI=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="121993861"
Received: from mail-dm3nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.55])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:14:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KKyl5aDAd7GF42I857jUQZRIvhtZ5qrzkB2Sv5CQxkF7EL2Io1CEOYRYM0Zx5FCaCgGkvB3cVPZD97I22s0Z9ceU2Y1IWAD2RwuCyjB/1Ej/ztlu3HULiNO0ki3AqmWiJ/9fnsMvxHe1J1TSJQnpwVDRH73cxFQ65NY+RhIpUt+DUm52aW3gX44kBXTYpCv5arFYZiGWsOTH7SF2vKQLxxEQ0i5sITkXv4Lrcpv+TGJOjdGcKqIlA987FF/suEL3cNQJnzNsRb756DQIoc/RppZCbV/DXKFEbIGLP8qg+YNPZT693ECFKKAD/+RFtr9HcdqvTubPLdq6EtulRXg5Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd8iv6eUevGkw+GvTJYLdZ1DAx6Bzra73a6Mzs1JQDE=;
 b=NCgXWF+Dn6+//Xm9ZBFwaIKYH5IMzOX+gLOVEYREDSMS/+Z5WIqkJz80pmosyK3qOx1pDL7jWckyJ2QqJc4mrphaK7Yr9o9g/5SRJLKetlnDXF64E1bWwAbshDi1c74l59FeXQAtYhn0CfDtCk/xp30uT2M/1/hqBgwe2vvgJAkpVenunNR/NgEw2aJHenXToBTxPhSfMgCh3wdx4l71MvRcJbaX07h87n6yfhOG575MpZdM1BBewm5Pnoa4yT4i3xQTvmciKVz3X9GWjTnT4jbfN6eVEBhQ+iEG6b/SJv3v/ozjk3F7qW+Yl/jf2dyRhbRZwpZLvRCXgEEaZbsZ7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd8iv6eUevGkw+GvTJYLdZ1DAx6Bzra73a6Mzs1JQDE=;
 b=xm0qrI+5tzXGTUk+1/yhsjRsD/qWUamIjRr13rKN743TG4NQBb83bXvM7oBbVmWXkbeZGH7Sfr3SoAd07PP1uKUYtXZd8gxF0hYIB8dWeATfFKZKW8SPGpTiQz/b7a3FlveehpvJj3hhnaFu8YAvgTTL5Cf/lklZUXcLd1o6Lkg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:14:14 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:14:14 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 04/21] RISC-V: Add hypervisor extension related CSR defines
Thread-Topic: [PATCH v7 04/21] RISC-V: Add hypervisor extension related CSR
 defines
Thread-Index: AQHVYzvLBKlwreMgTk2g+lGyjRr5aA==
Date: Wed, 4 Sep 2019 16:14:14 +0000
Message-ID: <20190904161245.111924-6-anup.patel@wdc.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0084.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::24)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.53.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7f02430-1469-4812-d857-08d73152edf4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5504DE14CC4E1378F09D2C5A8DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(66066001)(44832011)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q5CjXRvwr4j/4+CSwI7DzF7YCp5eikt/Qw/P+dVcZpMlN0EMHC5a+DC1NVc2aLLVYIr/Yx5JrfGa9iJvJ6Cw2rRmPDA0KGIfeJfHuGzQ6xcbnwYBK46biF/j2t5lU/ENCrVsphZh3g2z07K7zxkZ8hJDGX1ikXfEoaNsAYTCNJl4aJQSW38AJfUOy+6GisuNCxA4c4XY80pgHKUp0fxXMyWYmutHJl34y6n7spxrYxgsZ9qvlA+uVVo7Xv8lek81bq0VmyDNFcvtHQb+CZloEPdy8E6EQ3HfZMFwWQLWuR4ZzJWwhipo1zHvryaXGf5v2cTNSvyCwgIUrScUdWOcy1Z5G9vLlgKndXCDQEMJS4V8DZZvl660v06DAi8+10Ys9bQ13mBJWx6Q8PtFjfXCXTXWleq6rdqiqrau2BJ3VQU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f02430-1469-4812-d857-08d73152edf4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:14:14.7189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s4YJpyln+3r6JgBjuJxslynH8lRFeEI9oKOOw0mOkXZg/XxiuCbbCDIcZV2CDFf6iLZqZmBmKWOcdMLG1nMKpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091419_026318_501773ED 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch extends asm/csr.h by adding RISC-V hypervisor extension
related defines.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
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
