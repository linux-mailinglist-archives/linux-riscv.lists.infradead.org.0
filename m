Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423D8C979D
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GClZU1WNZC3Wbu3nQgxzVtlT4vHqhiWwdNVSR5KEf0k=; b=aF6GLZVJOlprEA
	yjwEWDIyWturW57jyHorKOadbPFiFVR6iJOB+02sG0ggQQrvW9KjrMffJrPOV+XQwlEywpRuvFxDU
	+GT95vyBGDJqYDrcpe93PdwRPi3pJagv5DXcPt/a0xhVYPzyAlPIfGbPVphsoC9Uhyn15v57kVAMM
	uIEDD88U6zqE5IobTNr5+BSiCG09LPT0g6b+IeWv/AwOOsB7bexqNVIXSvalxyFYGj15Fi24pTDAx
	HqlrqgOxfsfFsKl6QvGjEG/Y/OBIqb9axMxgcctwieOOxDj30g1eKd5377E0hD52kSDxr16BPZkDg
	5usnHOLeeHXUJdF5f9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtKG-0003CH-1Z; Thu, 03 Oct 2019 05:06:52 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtKC-0003AT-JP
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:06:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570079208; x=1601615208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZmzTfG5qj0/ShH8NlNjNMPphgeVWAziCNJJHP4F1jcg=;
 b=TEzVwlBP90g/rY6VvJETiF0SgQq7OF6RtB+dOl+QCx4IY2y5L9dH536j
 HWv1PZtgcoD1trZ2y6LOuFmDh/DCcBg0ExU6rwm0wamljl1J/Lku/9cBq
 pB64bJJYVl7hd51JnyKClazfO5VVcb0jE84CDi5UnPWzuGeeLOR6ULkR3
 Ji2KbzJgmCPuWfMVFiGi++h/xpMXG/KzVDwfk33Ftvbt6N2tmCfVfNI48
 MAvKnuTXbtjpNMtCRugq/oHNwqiSMqAD24miNvMmd1zDn70fs62cnLSiG
 ClBHR7NREe1C+0av1o8Tw639Go7HW+7ToFU8PVUrUfhNgq58gytWbp8qg A==;
IronPort-SDR: VWs5s1WIBcnbAUE9UimAgCTRBiZ5dgoZqOsC4p/UtXI8PdRy/+ywEo5cuFhbklEQgfM+bo6Kkl
 hTZyh80xWuSe95Iq5LUfZzIRIPS3h86V2Ji0gcbTgG6gmhECe7Z+wX0mFUDEjOqS9fcM+JlTlH
 c+Sk6FegnCwxXM94nyIqMgVcBuMkwUhaoFvCCZKWR255jwed7T5RerrQ0n7b0wHTC4088++MuR
 sgw6ptk8ruvCaUpWTbZwrc1UinTwsOTKJH0QCP+eLhh1cb+MM1JVrVAW4iMvyat2qEuIYNS4py
 WYU=
X-IronPort-AV: E=Sophos;i="5.67,251,1566835200"; d="scan'208";a="226621541"
Received: from mail-co1nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.55])
 by ob1.hgst.iphmx.com with ESMTP; 03 Oct 2019 13:06:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMmfYskzTtIgiwPIM5gPhUZCh5ekM8kZ6NC97H5mY44D2wdArodDTfkoZaMWU6r+2ujlFJszlOjcEICaCak9bZPDkRHFz/CRXd2k+dYkwMA+3aHN/KUbPZBMuoWYt4MT37PzcgKmFeapRy81s9xR4vXuVq+M/RTEKFDxxATZwsCWZiJlsS4ojxgCNH4T6cvRYA8X+hUF33ZFtRyUXfOz6/w6afH7FIMeeIvJNgU9bVqSvvSPCXCoI34uADNoxbsf4ZHnxsHiCjcXkyK9ZbLnHN4Q60qnoXdaMmBHLR8zz4Gl2Ak6yxIf5Wggg28uJM7WkxwPZh7kKL5JpvOM4mST0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd8iv6eUevGkw+GvTJYLdZ1DAx6Bzra73a6Mzs1JQDE=;
 b=A0S/yYz7520Iqcjh33FyL6ThNaxhb8UNX5VNlAQhyh6QT7qfxbq35H1NBFZ2Kn4brLWoZbQ8glkg28nIq2kGpAJ/24NR7ISk1/OIh5xzXNEJld8tn6KbpJFNEpVY7reW1+FMQk4dlNU5DnZLGIsxh1wA8eIqdZdLiMrK5IgADdI1wSF+MO27VkwtyMtaONy+uKSgBdq35/TOvwqxmnXqp6y6zo9ALShR9q++bnenI5mvP+tDnXV+OtClCA7qwJ5x26DPn5OuyAJVjOdJYXBArGpkiC7xUJndOw6U2tSMQ82PUmnk8rbODST4QZPHKYl40jFgHknlNazNsedZqViCwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd8iv6eUevGkw+GvTJYLdZ1DAx6Bzra73a6Mzs1JQDE=;
 b=gC9eXgHH2g6RlDLJwd6iLdsniXrJKCsJMAqoMZs70dv5fZj9RKKcqyUNz4hgk2jD+leLM1i4phB6E/tYolVa8AYPqwQyRH/T026+n2gwgbM9/ZAj4IYnBal46Jg7ObQ8NgOB4C82tOcmO5zexM6PGlfdGrIXLt8rss0ls05mFjg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.18; Thu, 3 Oct 2019 05:06:44 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 05:06:44 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v8 02/19] RISC-V: Add hypervisor extension related CSR defines
Thread-Topic: [PATCH v8 02/19] RISC-V: Add hypervisor extension related CSR
 defines
Thread-Index: AQHVeahZFXaJUz1wFE6Q5kz/rSOTjw==
Date: Thu, 3 Oct 2019 05:06:44 +0000
Message-ID: <20191003050558.9031-3-anup.patel@wdc.com>
References: <20191003050558.9031-1-anup.patel@wdc.com>
In-Reply-To: <20191003050558.9031-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:c::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [111.235.74.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd6c0d28-2bcb-4d2d-1797-08d747bf7c1d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6991:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB69913F18C17C5E44FEBD61328D9F0@MN2PR04MB6991.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(189003)(199004)(7416002)(52116002)(25786009)(102836004)(76176011)(54906003)(6506007)(1076003)(386003)(7736002)(44832011)(6436002)(486006)(66066001)(71190400001)(71200400001)(11346002)(446003)(6116002)(3846002)(476003)(2616005)(26005)(305945005)(6512007)(36756003)(186003)(14454004)(110136005)(5660300002)(6486002)(66446008)(66476007)(8936002)(66556008)(256004)(64756008)(66946007)(86362001)(8676002)(81156014)(81166006)(99286004)(316002)(4326008)(2906002)(478600001)(50226002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6991;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1yP2or5FIqIMN5EEhO54HOca2pS0YTMRlcKHuezojpV8okmWF3/LQZhbcpQBxKiv9nt5Yhked8t1QfX/PlYn+ug0aKa0i6Xw5RoNLh5cxAr7Ul7VkMR6dFUOsgyt2q/pmH9tcw4N4mcC7CnqfXHXtyjOPWeS+8kc325XA5q6CthL+5omGz7QNM0HWm+B8AbYPjyPN29EnXyE7C+ZDxCVjb+bjWVQnItlYWMupWDqg3gzYuCTKG3VoL1jat1cHoIJfIetwWuik6xxzYu4CvbS5Y01lRVIoWFWXXW+QgdamYMP5z/Mt1W8Yn1f109HsIRp6laMFOYBotv7bdWQ1QarOMVOikaEypo80HLVjQy4t4sQ795jna3j2Qtvnao/5ko3PziwnqqMJj8kZxxHoZ83N1KE8XWzG9c+gwUHzPCFgIA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd6c0d28-2bcb-4d2d-1797-08d747bf7c1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 05:06:44.6339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vnn23MGWRZbJivuYQZx66taWAVwnwMLoMT9RSil+srQCJG0ja6g9wYPkQC1uj+VDVtAVw1CJkz+iXzwJF3/CKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_220648_647831_CF40B2EC 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
