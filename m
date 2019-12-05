Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C436811463B
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 18:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UagiJ3yabGHLC/4UK5yBUQWCgrH9neO76NQ4ftHS9YQ=; b=eg6BkhpXUKz23r0eKcaPM/rGks
	p/CLr+MKO/W4aldZ20i52Ix1+8QXRhGbD5BsBxo54uHCdkI8+cYySmI3GpJ6AAqJJ6TTqxhcx9hR0
	x3ER2mx0ifdG/HSeUb3sPsrwT7PWbcbdh5qryinAn2K7CeRwzXSFRrB9I+Fme31HTCwjwt44J5lev
	teN6/nV80BLegdNpw6lPVFIA10cC1TRD3GMyjwmFezIQFWaFsWyOHBX4mX1aY623hy/B2u2scRdSy
	SdlJAYueM7Xycjm4E+iupw2kmAx/H0LFN+chgTBABbwJIF6L6kw9yxZiE2aS1awYLit/RcZ8wO8op
	CxrNiV9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvFt-0003bJ-LE; Thu, 05 Dec 2019 17:49:33 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvFq-0003aD-EK
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 17:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575568170; x=1607104170;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Nv+hKdooAxKdH7glM0Jj2+irDxDGqNkVa/qgilBCHLw=;
 b=oAoNREDstI6WhBC9gpx3rLEffXEDd0DMtV7g+TlR2xSpCye7P+3jDgGR
 B5aFzeo/2HmnIuTZ5hROLWtYLMxgXPsx/u3VNA6HFuSgwNjyNIPwqg7Ne
 VkyJJ9Mq+7MGRHZMBBu9OyCVqhy43N80KAU7WtEcs7+1qkhHh6xYFeOds
 InAotdRfZttJCgMCs3cQPg1yaCiChykOAbUDFQ1eUdzTRVX+aPf22FBY2
 DCqF5dYfYkttr3evaxb1hS/YzgZkiKfOI4w8lefRWUZDOgY2LSm875Dcj
 lfDl8UXnTpjeHzsIFyox9wN12eF1AcP6DTRBx54NN5s6MsTepn8s0Gc1W Q==;
IronPort-SDR: N90IWYwHtka/3jr+sRCmL/gdNbzkS8rCVSWNO0wKCpjO8cqiYzv//LWN++g9ovfIDpTXIHWYcJ
 WGNvS1E/W4YUjRqpbvRaxf9MlsZUV0B98Jxj8iqYZiZLLkKwsndpj0XV5XvpNZSh0geOVlPs0d
 iBsVhGMCWUltiREaKNyCMF2ZRrHjmPZ5JOkvTI2Gh4ai6r9JBR1fvuU1XMpa8tD7EujW3LVbkf
 W8gE2a114eJptNpkuWUpLe7ddrXRYTjcJdZX/WOgiUO/iar9dTlY7sOKP+cq+iJGz1j2kBO9Ye
 QYw=
X-IronPort-AV: E=Sophos;i="5.69,282,1571673600"; d="scan'208";a="126317378"
Received: from mail-bn7nam10lp2102.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.102])
 by ob1.hgst.iphmx.com with ESMTP; 06 Dec 2019 01:49:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5pQwroMe3CK2L+JZcZQKz1Y8cX3WTW+ZOJ4o4ocwAztPursYCUox3DNnoyxN9NneOM8nqiKNIwo00vY7uvVZZP1yjbyxtJ6nCFZGfQYW6wmvikjHgjuFyVl4qns7eW5/grfUap5jrQOpawiKPRIy5vRZtS6W4u5oJlTKaPjWOMKgjGYviqylJQKlCh+76P1hRDcKZMU7/n1bmHMNHNBfYvnJ3w/rz2TYALYO1BZOX8d1n9quRXc13YISPi+De6dmyDY4csNmheRz+Ifqgp8f34/FqDStJoio7A5ivihRiO5PK+xH8TBdGCv0Xk6ogSKm5Amcg/tlxcbzph69O+CgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UagiJ3yabGHLC/4UK5yBUQWCgrH9neO76NQ4ftHS9YQ=;
 b=JWgDuYUQA8IQ7IApOL8YQQpAFwBRMyrP6if62qiZDZT3TE2wif8l1vzhM6uZdqhcUcaghFaL2Le3fJQXMT/8QyOxeKQmaIVyZJh5RweaC1bur79IM7zZu4rkcTlVp7FDD/7DhkR4CKRlbnJb5SazpWyzUoy1rBsyc+hp+o8DAAfsnTaZTiOH2xYob6JT/7aBn5De5xM9NMrPdsRKKjZ4YE109jgcj2gF+1CJhnZ2lKXwMWSBXxwO9JtFBpgu0P/xSZ0JUShgYIxqA4JRLgCXxD+jvccLysqdZroTwE9+DcjJ3apoipfuOWGGQAnIxO48PjoCsAJKUD377TLnhSyU5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UagiJ3yabGHLC/4UK5yBUQWCgrH9neO76NQ4ftHS9YQ=;
 b=izcisppHVMUvZibO1kIxmpMxnjHXFE8n5PURRSTljvkiUEmZqMwpUQZRFA9F7Fme7dj8sqp4GJPvXNxjOMtsqL4EyqgCjTLdLWUWQy3bfde2ztUJHubdYlZ9SY70Sf1Uh/dQ4RUCO3zpVp7VQ4rHih97+jZraj7z60fUGoyuSwQ=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6349.namprd04.prod.outlook.com (52.132.171.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Thu, 5 Dec 2019 17:49:19 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 17:49:18 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v2] RISC-V: Add fragmented config for debug options
Thread-Topic: [PATCH v2] RISC-V: Add fragmented config for debug options
Thread-Index: AQHVq5RRWtXKoOVpQ06lEm6d7kwovw==
Date: Thu, 5 Dec 2019 17:49:18 +0000
Message-ID: <20191205174902.4935-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.170]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ab38c3c0-d51d-4b07-8185-08d779ab738b
x-ms-traffictypediagnostic: MN2PR04MB6349:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6349BF287A6FAEE0467582908D5C0@MN2PR04MB6349.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(136003)(396003)(376002)(189003)(199004)(2616005)(25786009)(99286004)(52116002)(186003)(54906003)(44832011)(316002)(4326008)(478600001)(14454004)(71200400001)(50226002)(36756003)(71190400001)(6506007)(102836004)(110136005)(81156014)(66556008)(66476007)(66446008)(66946007)(64756008)(8936002)(6486002)(6512007)(5660300002)(305945005)(1076003)(2906002)(8676002)(86362001)(81166006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6349;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M2i3qUBh4bXx2bgGlVy4L5xXQ/SIsT1xP6Ek04kuLfYtITtwCo0JEXmugFE2kH4cmQD5XI0cAoyR9P9BOFy5tOVDwF/gdaXGjt9aXc/k6Kl5FDRee8bSih9HL1kck57pAUe60OWZezPldQz5WRFSyxZzkoeyGbP1zOEZn1Rjv1X6b0Kn7t2IWn9TnrZ6vf8bydxLO1M2MuqO2eEU6eeQSmfbjauA76xxR42v6Im2MjcKRRWSPm7HASllJYde/hf8nynECSHBVvokCZeVeslcAER7ar5uN7xw1s32Ji6JxKYZH7LWK7LgnMmFmk8xVX//k+AMJiRNyY8jR1+JWRbBWz2ac1YUbqgIZ1itQnqlQg6sXSar6RQi5lLBbFpDR6WmOGauOsTgMUtVxtonPexZCwFZW0iI2uLHI6ndgtxycFubxgPsqPKmarfCmZ3Tyx+y
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab38c3c0-d51d-4b07-8185-08d779ab738b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 17:49:18.6422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d4e0Y7wTaL23SMEMWzuVSCF+rsv0mHVp0D17zgqsIPFh+MMa49xEge7pOFs3d3GevomeaFxARvRrJJpTuAldWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_094930_674048_1837A498 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

Various Linux kernel DEBUG options have big performance impact so
these should not be enabled in RISC-V normal defconfigs.

Instead we should have separate RISC-V fragmented config for enabling
these DEBUG options. This way Linux RISC-V kernel can be built for
both non-debug and debug purposes using same defconfig.

This patch moves additional DEBUG options to extra_debug.config.

To configure a non-debug RV64 kernel, we use our normal defconfig:
   $ make O=3D<linux_build_directory> defconfig
Wherease to configure a debug RV64 kernel, we use extra_debug.config:
   $ make O=3D<linux_build_directory> defconfig extra_debug.config

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
Changes since v1:
 - Use fragmented .config instead of separate debug defconfigs.
---
 arch/riscv/configs/defconfig          | 23 -----------------------
 arch/riscv/configs/extra_debug.config | 21 +++++++++++++++++++++
 arch/riscv/configs/rv32_defconfig     | 23 -----------------------
 3 files changed, 21 insertions(+), 46 deletions(-)
 create mode 100644 arch/riscv/configs/extra_debug.config

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
diff --git a/arch/riscv/configs/extra_debug.config b/arch/riscv/configs/ext=
ra_debug.config
new file mode 100644
index 000000000000..66c58bb645a4
--- /dev/null
+++ b/arch/riscv/configs/extra_debug.config
@@ -0,0 +1,21 @@
+CONFIG_DEBUG_PAGEALLOC=3Dy
+CONFIG_DEBUG_VM=3Dy
+CONFIG_DEBUG_VM_PGFLAGS=3Dy
+CONFIG_DEBUG_MEMORY_INIT=3Dy
+CONFIG_DEBUG_PER_CPU_MAPS=3Dy
+CONFIG_SOFTLOCKUP_DETECTOR=3Dy
+CONFIG_WQ_WATCHDOG=3Dy
+CONFIG_SCHED_STACK_END_CHECK=3Dy
+CONFIG_DEBUG_TIMEKEEPING=3Dy
+CONFIG_DEBUG_RT_MUTEXES=3Dy
+CONFIG_DEBUG_SPINLOCK=3Dy
+CONFIG_DEBUG_MUTEXES=3Dy
+CONFIG_DEBUG_RWSEMS=3Dy
+CONFIG_DEBUG_ATOMIC_SLEEP=3Dy
+CONFIG_STACKTRACE=3Dy
+CONFIG_DEBUG_LIST=3Dy
+CONFIG_DEBUG_PLIST=3Dy
+CONFIG_DEBUG_SG=3Dy
+CONFIG_RCU_EQS_DEBUG=3Dy
+CONFIG_DEBUG_BLOCK_EXT_DEVT=3Dy
+CONFIG_MEMTEST=3Dy
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


