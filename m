Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31D1A8680
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/u4Wg45M3aQDz79o8M8itJxFfBC0i4WIL9hp9aaDkHQ=; b=N3Xp5w32opAmyh
	0wpcHDd6fmxiMzonRJEduJSExaUnuEzMkmiJ7xoRQTAi8qufw8wcSk0iuXAgnxq1sDHnQyiAa+vKv
	7qseuCIon6FqJyuiufZPj1XPFBVfMcVuwSN92avKJi4+Et8oNn4D9A/Udf3ufQWlzgsiZ/UTn04Dp
	tXF1oH0i7ZffNGTcF8VbIgPQR0vpcLTBCuYpWbz1ONo9ukrcoCdO3FkxgeBYxqP1dJon7tPaKYFNj
	FZakBgZI5hMErkb/LFjlZXh8qAPWvujDqM0wt8KfJijxIS/C203+dyGaPPpqivv58GKt986piMvAC
	/r5DUjS3Kst/9Yl16XNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XxJ-000433-M8; Wed, 04 Sep 2019 16:16:25 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XxD-0003xd-4D
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613779; x=1599149779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i0dBuMtm4qYdmPHDPdzjlUG780xav8sFb1mfXlmWgr8=;
 b=YkaZ0uk0W2pFGfcv7TF2ZQpZUaZky+R6XbeHY6fQpPajb44JS+zsDPSd
 Hc5qY55DbKzPhc7J8/YBP1VMgIv/YptpIPf/+zP9EWUKNlgTw4yANSLPO
 PvHkaZNQR8a84/to1BbLFcaXilqodVxPgUsUfD+frV/8uaSHJipRn5lFR
 NoNH1ohp+zyH4qdgYGectgIIPPlvLcDeZnQqjqwi4zmt3FJMph354KPhq
 xbtrq/wYy1IiMCk+/zSMS8Z3ByrY7cg3dmAzMPwg4CMTBdRCapLd9E7XP
 Ubg+afqPBNAtRds0hj/qoB7eK1M07WXDvikYHXzLLO6+UI4VjkeWQaVb9 g==;
IronPort-SDR: 3wfHu7/y9YsErmAI2BBD12gfGZixHfxgYe0qcpMOB2ofdvSlhjY3rULJE70xt9yrjXZyM5qfq6
 8UFPBS/zUbEiyHRGWG4bYlD3+WB3OxmlV9mr9Jo4D+2pR6Mn+NxZYtwqvpRrrTAhZluONWAP/q
 UUuziFs42UWcPeJiMHCjVMjjcIQOXLTYTHwlzdv0BS0ch59mINUinxPj6QLSlo80wwaJZABD86
 ndluVV54pQvNpcZ0O6CbFXrz0WZw2jh7tLQ4ni9SxUC90C6XD6rsZs/en2NLjNq5aIqx+Z1qv5
 Kzo=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="121994088"
Received: from mail-dm3nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.51])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:16:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXDwen0SX4wjQof89S1y+e/bqW1lipt2pVmBfnjM9fwUKMwDUcpF32wZoKcLqcMMTBokyb43tQYRWGGKTP7wOujxW5yb2mI+6Px4Pd7Vaw2UjczNbk5LsQ9cAx/4CLov982eVtEEeN37fqZkbJGqa2VW8Y/AEDIjBFhRCqO8aPs//SpIvT6tIVxbWU2s2/o/5cpIY7h0m4kffCVHGarXZa76vyAAQJJGKQEChTodVdD3SCFjTxLODLg/T1pzYteJnL26P0HG19N0Nah5YYUIqdgShLjHXZFw8oeqEruZy2Hx5xd4Kd0EXd1VChYWSdvVfY2awYU7uvqohQo1c/625g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6V1q6hJtlrVrDqgWao5UQv7SJqACoYta45fGWJ5PcbU=;
 b=g1h1NPdi3gVYO7NevllJzmyn3S5W2zkubLQNZbSu8kwAk/Ww90adyQSDbDO2W7gAK254CecElHRy6VP3VK/h0ZBYjlqM+fe7ZD2t4GUmXR2HB1zpEo65Z3XrpfNlGXpAkLdrZvEb2mdBKusEiIuJM073vo0EGJsRwbBenZ8k0/e7atbyejCfhyLws6PRthNBBfY2JFQZtbO2jcC4RpO7DfToobqBjs9txD4Vdg/M597xLSeyTZbXuu9+b1IdykrS+kUL3ETrdP6RLGW0yCEQAItGBWVEj166Aa7ZHzTOxxUYMnZiKXnR6pvFuUSnL/0odhVlCeGouXjNTCcQI4fpOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6V1q6hJtlrVrDqgWao5UQv7SJqACoYta45fGWJ5PcbU=;
 b=jxiItgvM64x8b6kpw4PUQHjVo6MMc019oHENk7tXFni6MeYDQDBrXMpgoMqY1/IY461jLlwY+65oEx3OlxLVICAeERN9KeowsqdTFoLLev4iwgeWGu6SaeeEdwaZCZxBbIqGxRwVI3V7srS9mlYESTkBFyEiBY4OJVyca57kp2c=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:16:16 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:16:16 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 20/21] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Topic: [PATCH v7 20/21] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Index: AQHVYzwT/TmE4RVItEaEX+vtCf8idA==
Date: Wed, 4 Sep 2019 16:16:16 +0000
Message-ID: <20190904161245.111924-22-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 338a4857-dd19-4f28-1299-08d731533661
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5504F3CC4C57DBFCD3E09B408DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:238;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(14444005)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(66066001)(44832011)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oQTc7cANtd0XH0H6ysANcC+aXYP/fJV24wJMlOyWmd1x1anNmaO0nigy81otTOZRdwLEmkJEVs7duqicnxLPX5jC82wbxihLsXsNka0RTED6aXROlOxqcuPio7NlEbMBgRJ8ql9E9BZlfPb0Q+1H0U2RamJ1fI2KIMWBixNBZ969BkRSjhRqgp7sWfKwaO7iNY9N4M3nmyi9pGWCWjLvLyz9Sv3K7isL3mPLStijIhP+VW/1XHRXvbBvZK+y3OnGQ+Il49O2g3TNe1KdcEONQoHugbFXgy6Mfzw1bQoN5su0atkh8BS3xV1ubNyTVY+FLGsP0qjntLx2iWN/UEsSb90kUNcUuZ5B3dxB44PbpcziebHfEILc1niHbhAjemzOmJ9V7NOThSeFzYFRSnKjdIQg4at31yxOwpFTiz3WecE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 338a4857-dd19-4f28-1299-08d731533661
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:16:16.2221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HkooxODKxAIWkrYNjyEeyUqsNU8/48F6aUzhqo+9t2CApFgaKP9WahbzgPoTlQ9ofX423wwLAB47GCSt4ARq0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091619_615443_A78EE249 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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

This patch enables more VIRTIO drivers (such as console, rpmsg, 9p,
rng, etc.) which are usable on KVM RISC-V Guest and Xvisor RISC-V
Guest.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/configs/defconfig      | 11 +++++++++++
 arch/riscv/configs/rv32_defconfig | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 3efff552a261..420a0dbef386 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -39,6 +41,7 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
@@ -54,6 +57,7 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
@@ -61,6 +65,7 @@ CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -73,7 +78,12 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -86,6 +96,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 7da93e494445..87ee6e62b64b 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -39,6 +41,7 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
@@ -54,11 +57,13 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -69,7 +74,12 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
@@ -83,6 +93,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
