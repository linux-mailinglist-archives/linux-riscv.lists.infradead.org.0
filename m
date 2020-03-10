Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B911517F6F6
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 13:00:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aguvtPYocPTp/rvYjn8F5ylhMzKveRDQk3YDuIfh9Ls=; b=VmL
	iyP2zpeJZlTM2uDlMJ+v4KGFhc9uJfm1Lb/TpB3XFIk9KYQuIVrxDUByWjlwWOXX+JoS2ZkqRUEXL
	Fa4/LBqTEtJTZJghQkBUTL20oedNxFU6aj1T2gCWavnRH8mhEDYj7hN1LCSydwKPw1hGquH177D3O
	4klV2Gfhb/cyYF1pGZOt6juoUB9AqpDKOJD3k/nxnUU1nNLhYNy0OL3yCsN5Zw3SjB2iB55qcWU3N
	HjPKKqIbyVZCqAHEs3Oqsj32VE6t3bQ6KleDN9yvUC+juZOIpCWl16jNG8dX3ZHuVlI/4k9yGMbPs
	9zq/U1yVihx6Qq2JQGbAiD460z567Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdYK-0006BL-7c; Tue, 10 Mar 2020 12:00:04 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdYF-00069Q-Ot
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 12:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583841618; x=1615377618;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=h6kUGegPdWJFyng435n0ggVbjR+48E3m+hupAEgEt80=;
 b=h26DYPHjhO8A9FYWJpCXtvvFP+ShUbgruVPYB1+T6lFT7oFmEojWGSQl
 TWx0ujto/kQG2CQZFHYe9ebGJcEmkXD+/M+vW5LsHjFGYYOFIz3o/aeFt
 LvVZJTIWxIbXmfkhKlQ1Jsuc+uGoHtBJK7aukFXiOhUljZSB4XayESCG0
 YS8qJP942H17Txt9KoVlXd61o8/FVmNaVn++ZBALdo+R/BCcHx0QYslm+
 V19FI+HfI/5ZGDoWit3YB3rPkNTXllSux2z05yIJ5Q1dfv3xVb+FVEEpW
 7OcX8s9rx1nix1eIXYzcCU9SynInDnUQMdA/QEjryr36Ylz9nytMpmD9q A==;
IronPort-SDR: 8xsQmlp+3NG6y4g4kJ8wZL546XwZLYFAOnnvSNfEZXxNuEEpyjECbwX7W/2iXEtj6IdRpet62E
 wZ+FhWKYJWuXaN6Tsocx7lyBDFwsK7ml85rUqMklRou4xOJcrTBrANajz+BF5EQMXMQxZ8WHNP
 mYq4L171mCEau0ifT5IDwtJsrRJ6+NkqazaDxNqID7CxMV8ZaNAIMdVq6SgVEBgnfBONRo86+P
 k7qlkDIc7hvlycYBJt+mz6OYoKM/pBtNKDBhAjjz7dBby6IwRRO64xVoitOaSwNels55TlRxs0
 rl4=
X-IronPort-AV: E=Sophos;i="5.70,536,1574092800"; d="scan'208";a="234090018"
Received: from mail-mw2nam12lp2043.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.43])
 by ob1.hgst.iphmx.com with ESMTP; 10 Mar 2020 20:00:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jlu9pVu9Wx4vamyTETVjFLsC3f5m+EpsF6zVsIJMoYsAcjrKRM7QPJyu/6cpKU25+V5VGfYNJzYBP/I4MVZ2KKX3D6iPWVnRkjP6Lyu+DDyic7UzKYAjzxyNQ0RYlVB02V7MSidOhIbUBObfV2b4sF8sfnQ0FquvCsZN6ctziDemf4ll1bmCiwwIejg/eGSHSHBL+kMHQO7Ejp8DLoApuQL8Ad6MzqLCNRbRv3wpgMxtbqbpoXNbby7bzrA4qcqzMwHnXDpff6BPVpnyrJm1q9jEZxOPNDn7DSzYcTvMZlrXeuyESCfECveelsGx5ZxJB0tzNqPE8qZx3iCorVEjuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aguvtPYocPTp/rvYjn8F5ylhMzKveRDQk3YDuIfh9Ls=;
 b=URsbs0oZ/ci7qUP8nusLTRnVdb4p664QwzdCv2GOxweAL3gB73XUEdVWjEjqkdzVoHZWag8P73LCTHOHuVb7yc96/V5+rteamvyNDiGV5LdMxrd+vkMyzCMItOaVOGJJkImYqj9Wr/q3dlbb/JOHfH8jPqkL6J6Qfv21UVOyPRxlF0jg9y0KPgZunDUoiXwKU8fPXGft6ISNj+toJXuiQdvD8DRkZXbKUfle+ThE6IgoetE/fXHR20MWPpjg5I/xQsBWbIORxNXYm3WCneMATTdr5H2ny3a73c++M1VX6/KCSObV4yloMbHZAOfoQ0N3Kj9romL/EAogmNnDejo9rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aguvtPYocPTp/rvYjn8F5ylhMzKveRDQk3YDuIfh9Ls=;
 b=fEvJTOuANcNVZd+wh9/3Kz4BhyFkPfpxwCnriDzhQXHoO4jqwuFq2d1vKDT+S2RnpSV4PQW3yTmoYFBzmY2i2ZK8rXThOwAVRXTZVXjFSzMOpBII/g0Q4phqh49Z2b7hHbHz0j/Sy4oSOpFmpPtDnfL40IivG6t9G+2xM1rs6aE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6767.namprd04.prod.outlook.com (2603:10b6:208:1e7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Tue, 10 Mar
 2020 11:59:50 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 11:59:50 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] RISC-V: Only select essential drivers for SOC_VIRT config
Date: Tue, 10 Mar 2020 17:29:25 +0530
Message-Id: <20200310115925.126174-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0025.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::11) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.22.61) by
 MA1PR0101CA0025.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14 via Frontend
 Transport; Tue, 10 Mar 2020 11:59:47 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.22.61]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7fbda0f8-e415-4d87-b186-08d7c4ea895c
X-MS-TrafficTypeDiagnostic: MN2PR04MB6767:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB67671CA1471B09C7CC82701C8DFF0@MN2PR04MB6767.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(199004)(189003)(26005)(1076003)(110136005)(186003)(54906003)(16526019)(316002)(2616005)(7696005)(52116002)(956004)(86362001)(81166006)(66946007)(36756003)(8936002)(66476007)(478600001)(8676002)(6666004)(55236004)(66556008)(5660300002)(8886007)(1006002)(4326008)(55016002)(81156014)(44832011)(2906002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6767;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uTMDuANTHa2kPkJ/JboI72u9SCQVOMoO6rehQQVWJ1nPLEybHpWofCvC6YHN5TfSVhSsm4hDH/vu/uww3TOFqMYZMI35loi7h4j3gZjcCsYpaGIUUgig9brFz+FiGGcwaFzjh3KI7sgxYIKW3K0Xe/yXa5/VV3N01+bUR8iQ+oXLS/C+ic728biqYRaFn0PDMQdq6B8P4MXF52avIW3uYDZc76wQYEzD8v9A38ZTl+Yv1s+FqBX/sPNfZGfys7FlTd1b6MbNzGL5x+KMzOADgO8lZ26CWI216A2kNkilVQQpvjjEg1wgyaL7gbxHpAsT6MUNH3uv6tHlgl0O7o4do7YLdHxCzUBkjKtGGR+PtbBpNxcdKBWtzyEL0bchAfCQgwc5xpNdr/U458D+ZGiItea31m7KmTbsP2PhbmAojubs0JjT1bQ/U1EiAo3X5EN/Ym/99SI/20Pz8SwNEi8IOFutrvUYb//Pgv9Oc2kwxEE4E2Z7qiqMxvJAPl/7h02Y
X-MS-Exchange-AntiSpam-MessageData: 7uSByQaC1UjxmaqoEJCSibXwz0LDxwoiH/RlehKI1VOunni8uo01cyHYPDUWJVcXau/E139dF77Y7P5XLRAD1B1Ps6WmLIuLNLyy3s/ENAdDWPDnMUWR33LW4vBWEHc0UidWi7WauHkQ8f+gGYK46Q==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fbda0f8-e415-4d87-b186-08d7c4ea895c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 11:59:50.7935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K8iwkZKYPwviQ+77mcgNUx2HVHd9gxQpK9WKMytFEDzvQs6AbgGIvoZkogjUB9Eyd+mfy+auby7rdQPS50ipDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6767
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_045959_847302_732A671A 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.61 listed in dnsbl.sorbs.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The kconfig select causes build failues for SOC_VIRT config becaus
we are selecting lot of VIRTIO drivers without selecting all required
dependencies.

Better approach is to only select essential drivers from SOC_VIRT
config option and enable required VIRTIO drivers using defconfigs.

Fixes: 759bdc168181 ("RISC-V: Add kconfig option for QEMU virt machine")
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/Kconfig.socs           | 14 --------------
 arch/riscv/configs/defconfig      | 16 +++++++++++++++-
 arch/riscv/configs/rv32_defconfig | 16 +++++++++++++++-
 3 files changed, 30 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 3078b2de0b2d..a131174a0a77 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -12,20 +12,6 @@ config SOC_SIFIVE
 
 config SOC_VIRT
        bool "QEMU Virt Machine"
-       select VIRTIO_PCI
-       select VIRTIO_BALLOON
-       select VIRTIO_MMIO
-       select VIRTIO_CONSOLE
-       select VIRTIO_NET
-       select NET_9P_VIRTIO
-       select VIRTIO_BLK
-       select SCSI_VIRTIO
-       select DRM_VIRTIO_GPU
-       select HW_RANDOM_VIRTIO
-       select RPMSG_CHAR
-       select RPMSG_VIRTIO
-       select CRYPTO_DEV_VIRTIO
-       select VIRTIO_INPUT
        select POWER_RESET_SYSCON
        select POWER_RESET_SYSCON_POWEROFF
        select GOLDFISH
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index c8f084203067..2557c5372a25 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -31,6 +31,7 @@ CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
 CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -38,12 +39,15 @@ CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
 CONFIG_NETDEVICES=y
+CONFIG_VIRTIO_NET=y
 CONFIG_MACB=y
 CONFIG_E1000E=y
 CONFIG_R8169=y
@@ -54,13 +58,16 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
 CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_POWER_RESET=y
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -74,6 +81,12 @@ CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
 CONFIG_RTC_CLASS=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -88,16 +101,17 @@ CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
 CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
+CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_FS=y
 CONFIG_DEBUG_PAGEALLOC=y
+CONFIG_SCHED_STACK_END_CHECK=y
 CONFIG_DEBUG_VM=y
 CONFIG_DEBUG_VM_PGFLAGS=y
 CONFIG_DEBUG_MEMORY_INIT=y
 CONFIG_DEBUG_PER_CPU_MAPS=y
 CONFIG_SOFTLOCKUP_DETECTOR=y
 CONFIG_WQ_WATCHDOG=y
-CONFIG_SCHED_STACK_END_CHECK=y
 CONFIG_DEBUG_TIMEKEEPING=y
 CONFIG_DEBUG_RT_MUTEXES=y
 CONFIG_DEBUG_SPINLOCK=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index a844920a261f..0292879a9690 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -31,6 +31,7 @@ CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
 CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -38,12 +39,15 @@ CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
 CONFIG_NETDEVICES=y
+CONFIG_VIRTIO_NET=y
 CONFIG_MACB=y
 CONFIG_E1000E=y
 CONFIG_R8169=y
@@ -54,11 +58,14 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_POWER_RESET=y
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -70,6 +77,12 @@ CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_RTC_CLASS=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -84,16 +97,17 @@ CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
 CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
+CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_FS=y
 CONFIG_DEBUG_PAGEALLOC=y
+CONFIG_SCHED_STACK_END_CHECK=y
 CONFIG_DEBUG_VM=y
 CONFIG_DEBUG_VM_PGFLAGS=y
 CONFIG_DEBUG_MEMORY_INIT=y
 CONFIG_DEBUG_PER_CPU_MAPS=y
 CONFIG_SOFTLOCKUP_DETECTOR=y
 CONFIG_WQ_WATCHDOG=y
-CONFIG_SCHED_STACK_END_CHECK=y
 CONFIG_DEBUG_TIMEKEEPING=y
 CONFIG_DEBUG_RT_MUTEXES=y
 CONFIG_DEBUG_SPINLOCK=y
-- 
2.17.1


