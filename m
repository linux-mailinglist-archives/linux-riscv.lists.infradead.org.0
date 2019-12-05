Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C5A113905
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 01:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=liK8pWbhj+vB/mPkk/i7svih3Xyal3xzsur3YtzWqfg=; b=N4UTN2RVUJ12TZZnxHN5tSGbRH
	xSl5hodJ8m6B50L8ekLokyOTQJExBqyPixu+ZdyEMULxxjnOGzWnUBtNvSXya8Phuu55eAz/wiUJx
	fRkc4GObKPNPKiX4Jfwkicisg9RD19eg+LBcJWB7NmwJf0TqUBglgfGbd78ef7D11OCyT3hj+aipE
	Y2vuVGHoL4E4d3eOQNXVpk7q/aR4XgbjT7RD3DAong6u2inhaz2KXEJas42af3nkMdNSPaNxCQLYd
	j4do0fOS/bjJV8PMT5hGGeJgtLb51HOgsfcJKRoK4LLJe8Iw4xv+Z/py+cCTWs6GoSpy1Da1fIcKO
	7vBPB93g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icfRa-0005Dn-7V; Thu, 05 Dec 2019 00:56:34 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icfRX-0005D8-5Y
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 00:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575507391; x=1607043391;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=1MRJo1Mwa9fEUDrEoXh4J/ud54ab2RccofANEM3pdLU=;
 b=kEvXgmqwLildd7w5Rg5/XKBSusyTEWpBHNPOcO5PHJ9yE6gQXBv8D7Iu
 s6aUu12gQL54sBRXhBIuJbZaDnhoXIZIFYKfc3gCYGNkAGNhskNX/Mknb
 +zmcyubiAkZx2Pg1N2Yu7s28s4VgCM0IuLh024NGczXgmu9OWe6q8cumt
 H/j+gmvXde8IbdyPHGoYdz90++on+JrDM5wCJgjqybsrGBKZoSalaN1YK
 Cu8CK+SgfBFYAWM+FqaHg4kj1QrxSU/ybkDKYkVVwmZyoKU6iAZs8tw4Q
 f9tlCZIEpQ2zHnc91LUr5h0qNfxYFmVYXSGnJQNlnLUV/Tt4IjaOMBn6g A==;
IronPort-SDR: E3vxvqaQ5iuF6vk+Ig/HvTniuwf9/8Z7LhC7cdKDSpm0uFVy2fivotg4lVkFGRr47nNMEgVrIx
 4eQBNoIrDmgK/CbNH4hnmEgeVHLufXk3wY4wWO3Cb6GPf9/1cW10g5uycXE2lHfADvnvjOJpd4
 PsLXYk70HN6VInviyHhpH3Dn/ET/YRUiaXmAKxBT/1LXQoxBwYTPX1YUq2hDW7A59yVpVHTB8p
 eATkxjO7nGsAtlxi1pRV2csWlSiEHnmpamxbb/46Bzfl+5KlUMpl0GAQdKcQjjJxW/vxBNjmJ/
 VN0=
X-IronPort-AV: E=Sophos;i="5.69,279,1571673600"; d="scan'208";a="125414365"
Received: from mail-bn7nam10lp2105.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.105])
 by ob1.hgst.iphmx.com with ESMTP; 05 Dec 2019 08:56:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONzEC0ojtYXxefJV2PZh24Ok64IDK+GT6zm49vKWIrd/+oAJgnvrtxdngdfNPcFp9QUbCb26kPUiB4LFRzc3eMtz5jvBlAcjmkQqWVqet64iQr6HOSPCLcJbneyMdOsm8W6T7xlA34KHn3LQB04zMZ+Tx46H+wbV/lqbJG3wf8HVhRZoJeF0Ybm/T2mFt8hy2bGYhI1ds3FyKt+yDwUvg4/uWOuNWbEHkPqyX82Z9kFXsXrMKzZWAKzaGlwncMB655cBLnkeXOncUhHaoXAMMiGGMJjAnwXHys1iR6Ybu1JFYa+V+hY77xelt+0JwIaR9CYM/SLhCgbp/jwITESrWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=liK8pWbhj+vB/mPkk/i7svih3Xyal3xzsur3YtzWqfg=;
 b=gxcAXkQOrzk5AVzv4i1DF8heGVNF5obsFbRhQYc7dsYojuqn8vREdYVtoqK7o4KjvVlTxbdIPsnenWBNY6qef3k9bH11t5VtIhFxHP8NuJb9HsA5vf7QwOf5mk9XCrlzsmCqT5bhG6TQ1v0PAtm0B1neLaZ1Tsyl3sOGTmfxW2tMH1KAPDPCWTaBTngCDQFeH0mdHiz6d26KOC8yT3MddbYWz8q0VrUFhfMv9SpkVL9M+loY8FfJeaKT2EoBD+ZNwDfYNAGfrsn4j3Sk9M37ONqiZnAPB3spX28wI3jEzmwwL/n9G6LuHt1q0bgnp3+KAQhK4eUAeDqA5WOIry8mLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=liK8pWbhj+vB/mPkk/i7svih3Xyal3xzsur3YtzWqfg=;
 b=MXPTYN+oZezwgJe5C1qKJZSRM8DRO2dcfSVguKsRh4zwkaGYjCDouvyG2N1et28o/t1pJNoOWqiK3xyQYC90vVPcXG7GC+H/ULL4H10U5GQAMBA9sILTt7kIRP9Ax902m6iq8yp2TuzznsAMM9EgZzIft2JPyLKhqisAOdhr4L4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6910.namprd04.prod.outlook.com (10.186.147.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 00:56:25 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 00:56:25 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] RISC-V: Add debug defconfigs
Thread-Topic: [PATCH] RISC-V: Add debug defconfigs
Thread-Index: AQHVqwbRBzOF14qKU02iX5oJLiweww==
Date: Thu, 5 Dec 2019 00:56:25 +0000
Message-ID: <20191205005601.1559-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:a03:180::42) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e53812ec-9f68-4d1f-58d1-08d7791df3f4
x-ms-traffictypediagnostic: MN2PR04MB6910:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6910D39AD71D4A020FECF7878D5C0@MN2PR04MB6910.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(189003)(199004)(50226002)(6116002)(66446008)(99286004)(6512007)(6436002)(81156014)(81166006)(36756003)(8676002)(6506007)(66946007)(66476007)(478600001)(64756008)(52116002)(6486002)(2616005)(86362001)(25786009)(8936002)(44832011)(3846002)(66556008)(54906003)(316002)(110136005)(102836004)(14454004)(2906002)(2171002)(26005)(4326008)(5660300002)(305945005)(71200400001)(71190400001)(1076003)(7736002)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6910;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P/PXPKXuxt8Cw4hHtm7GZzbZicAFN7K82z1rTNuzgvKd4fc5qxx7um52itvMt3cTiwBxbHovsCruW9ab2IsepngLy2mkgDDNqja4+Zql5P3K/4FRoUbG1cIivaVzmt/JzjmVBM4ar+atorTc5126nMsWCS0qn5BQt7cLgwChHDUpe7dF4eKENkEqJMNAY3pWQc6XKArEj1ZV72Hp2oD0bfpxxVUFXPNboovjXd3p7fubRefCftQvggZPuOSc4FwhgsVgoGfdvXa/WhVFxJlEVoneXXj3DcB/I8JuTmdpnXCIqKvSX6vnVSzxPMM/A5drDN+AmgvmayXtTMaipCLF0dPoeqN4IHOA1TKn+F4qdu5D2kpvCjvtElmPM/WCYNW/FWpSn+w4z+wsNLdqyvwirSrE0x/10nhSo7izYVbHi41yHoMho7rV65CwFU/76gX4
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e53812ec-9f68-4d1f-58d1-08d7791df3f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 00:56:25.2582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sbpIfddytRlWNsTi/kcaev9VOn9RkgUqGvE/pH76uppPMB/425tHyrjmBHsa4+734kRR/g2DYkRHJ6JdW4LgHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6910
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_165631_244247_1B5251E5 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Various Linux kernel DEBUG options have big performance impact
so these should not be enabled in RISC-V normal defconfigs.

Instead we should have separate RISC-V debug defconfigs having
these DEBUG options enabled. This way Linux RISC-V can build both
non-debug and debug kernels separately.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 .../configs/{defconfig =3D> debug_defconfig}    |  0
 arch/riscv/configs/defconfig                  | 23 -------------------
 .../{rv32_defconfig =3D> rv32_debug_defconfig}  |  0
 arch/riscv/configs/rv32_defconfig             | 23 -------------------
 4 files changed, 46 deletions(-)
 copy arch/riscv/configs/{defconfig =3D> debug_defconfig} (100%)
 copy arch/riscv/configs/{rv32_defconfig =3D> rv32_debug_defconfig} (100%)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/debug_defcon=
fig
similarity index 100%
copy from arch/riscv/configs/defconfig
copy to arch/riscv/configs/debug_defconfig
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index e2ff95cb3390..f0710d8f50cc 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -101,27 +101,4 @@ CONFIG_CRYPTO_USER_API_HASH=3Dy
 CONFIG_CRYPTO_DEV_VIRTIO=3Dy
 CONFIG_PRINTK_TIME=3Dy
 CONFIG_DEBUG_FS=3Dy
-CONFIG_DEBUG_PAGEALLOC=3Dy
-CONFIG_DEBUG_VM=3Dy
-CONFIG_DEBUG_VM_PGFLAGS=3Dy
-CONFIG_DEBUG_MEMORY_INIT=3Dy
-CONFIG_DEBUG_PER_CPU_MAPS=3Dy
-CONFIG_SOFTLOCKUP_DETECTOR=3Dy
-CONFIG_WQ_WATCHDOG=3Dy
-CONFIG_SCHED_STACK_END_CHECK=3Dy
-CONFIG_DEBUG_TIMEKEEPING=3Dy
-CONFIG_DEBUG_RT_MUTEXES=3Dy
-CONFIG_DEBUG_SPINLOCK=3Dy
-CONFIG_DEBUG_MUTEXES=3Dy
-CONFIG_DEBUG_RWSEMS=3Dy
-CONFIG_DEBUG_ATOMIC_SLEEP=3Dy
-CONFIG_STACKTRACE=3Dy
-CONFIG_DEBUG_LIST=3Dy
-CONFIG_DEBUG_PLIST=3Dy
-CONFIG_DEBUG_SG=3Dy
 # CONFIG_RCU_TRACE is not set
-CONFIG_RCU_EQS_DEBUG=3Dy
-CONFIG_DEBUG_BLOCK_EXT_DEVT=3Dy
-# CONFIG_FTRACE is not set
-# CONFIG_RUNTIME_TESTING_MENU is not set
-CONFIG_MEMTEST=3Dy
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_de=
bug_defconfig
similarity index 100%
copy from arch/riscv/configs/rv32_defconfig
copy to arch/riscv/configs/rv32_debug_defconfig
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_de=
fconfig
index eb519407c841..bdec58e6c5f7 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -98,27 +98,4 @@ CONFIG_CRYPTO_USER_API_HASH=3Dy
 CONFIG_CRYPTO_DEV_VIRTIO=3Dy
 CONFIG_PRINTK_TIME=3Dy
 CONFIG_DEBUG_FS=3Dy
-CONFIG_DEBUG_PAGEALLOC=3Dy
-CONFIG_DEBUG_VM=3Dy
-CONFIG_DEBUG_VM_PGFLAGS=3Dy
-CONFIG_DEBUG_MEMORY_INIT=3Dy
-CONFIG_DEBUG_PER_CPU_MAPS=3Dy
-CONFIG_SOFTLOCKUP_DETECTOR=3Dy
-CONFIG_WQ_WATCHDOG=3Dy
-CONFIG_SCHED_STACK_END_CHECK=3Dy
-CONFIG_DEBUG_TIMEKEEPING=3Dy
-CONFIG_DEBUG_RT_MUTEXES=3Dy
-CONFIG_DEBUG_SPINLOCK=3Dy
-CONFIG_DEBUG_MUTEXES=3Dy
-CONFIG_DEBUG_RWSEMS=3Dy
-CONFIG_DEBUG_ATOMIC_SLEEP=3Dy
-CONFIG_STACKTRACE=3Dy
-CONFIG_DEBUG_LIST=3Dy
-CONFIG_DEBUG_PLIST=3Dy
-CONFIG_DEBUG_SG=3Dy
 # CONFIG_RCU_TRACE is not set
-CONFIG_RCU_EQS_DEBUG=3Dy
-CONFIG_DEBUG_BLOCK_EXT_DEVT=3Dy
-# CONFIG_FTRACE is not set
-# CONFIG_RUNTIME_TESTING_MENU is not set
-CONFIG_MEMTEST=3Dy
--=20
2.17.1


