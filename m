Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD17110F5E2
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 04:49:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mLLYfNxI13zK+8fy87vWyxAGtShwIFsex/HAb/rxwzg=; b=WS7MrPL599ir/KA1K5ogxi1kG
	VC/Y05cAuiYuG/pimsyRpnDeumwulDinizC/Tq3w3pkFtBFXdrLEQ3B+17EtKhrS0JohOq0Z+NHpj
	i/MkLJxOpfp9hONgyMuSYA5qY9f11T9x0Ihfm/5bp02vygH4dkPelmvHbuauhtHbxV715WNz1qenF
	WU8RZbOEJvIeaJI8c/9knEyYSfxgh6HhelVRMGOU1SBk4skVHQ7k5mxvZOmK0H2O7iT2s4ZIcd2wM
	9ictycmxLeWN6tsUgAy7DsKa67JtZdMG7H1J7OOQCh6ph5kls3KfS9zDM8Sx30jmSpuqEDGDFweQQ
	NrVDsMmZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibzC6-0003da-3v; Tue, 03 Dec 2019 03:49:46 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibzC1-0003Tw-MF
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 03:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575344981; x=1606880981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Up47yL6qnLqX/ugK19gp59ta07M17uAHLHwuEPg04L4=;
 b=DNk9G/jicagU/qYudYcrrx4GHUTqP0va1MxsrN+xVa+ifMhlGgQ13htP
 JRr1qerPuP1m9EzRtnhhAfZSPjVmHfLpnuMMvm7d8hYqZtW3NXSoSvYD8
 5meF+FJWJDtj49dr4ujES66yzZcRx7uYnlDZ51Dd+FCTvDvUqgmmmUm8H
 dh7vAdyLT1v0t/jX5M54Fltipr5WzJu7TmEoLfsosMnc4qbUG2nxXkhiL
 CWnglIuHuROWDk7PmGRk+zzBzT4BpVnEH8zWmq1jya/LXYvmN7P19Kvwp
 CbVKanvZN/nGzAuJdyxg+i5sWFZhXstSECI4rb6MU8aOJcWg4V/LM8HRH A==;
IronPort-SDR: UNWsJ1ysMVbD4HsiG1JGWMDZL1Zq+BK5czE/CswVynPNUXbOi9b0U+iXyznDU6TRjJliNxQxbJ
 5ra4PdZoGCambzKYdg3OQXm+O4cJR8cKA2Awh3pDWb8D/I0SyBymAaaxPfp98rVTFsiWHTLaaW
 R1DoTewR6N19Al19DEKeaNXpf06/psfq6TiAgPK019H4GeA1UzVISQdm7+J1TlNjYZxG33+U7t
 FfT2pn0VlJdJGWUPzUDjQSeHydsKX5vQKxatj6IJb+MIFYjgZBWsgYFtZZ9WGhDfMaZPwIDz7R
 iJc=
X-IronPort-AV: E=Sophos;i="5.69,271,1571673600"; d="scan'208";a="231947968"
Received: from mail-sn1nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.52])
 by ob1.hgst.iphmx.com with ESMTP; 03 Dec 2019 11:49:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KGDatYs3LJ3vVA9P/AJ0Mjyrsm9aqbe/MLKfqjmkryq7Z0YouDrO0WDRv7+zOtN8p7Oct+45G4EzW005L4PVgN3DvrE/Ad4U7OJlo+Se8Bop3r2CVZVhsUOLEAKrR/MgU45vTkBsS5Nbyrp0Zin/iE6ttr8z1uZ2db3ZhNa8aNhLQMEpgZxN5IYCmSHfFjDDt8yxR34NPmmQs7j9qH09MkaIi62FgX+IW7FCxc5mgxTHMlW1e4rYx+qn7jDflYoJvbUf23Dw5LX2yLbQ3itjD9ZOlfpy34b7EwuAkfhz312EVV8szW90r5giOr62HJYv9onkdH7S83/y5qhJ/cthQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLLYfNxI13zK+8fy87vWyxAGtShwIFsex/HAb/rxwzg=;
 b=n7SKC9uhvyJnraTcTVIDkyelEavD7GUFiGE4bdJw5Dol9xhHUbb0TB2YOvVXtzTPnRiidVGkNFf2q1s+oJO0lPIcpI92XNRcArJKxEaH84VUQWrzDH/Rn78qJn/aUSQS+BAcdiDTTI5UHwLjkBO1tlSMflBL0XzR6iYN9wxoZzVyK7w1wJSn8glKE4KCttFMSinhr3Zn7jFia0+j7JSoo54eyD7cfVlKPQmkg0YTb08TTIlsdb5MwP86iPO6Z832yZzyq6/pzpqnJX5tFRABYhrkdmOlNtoqt6dYIFDF7zASj3J5VY7G8+ApsdGwKpjnORVX0EH4DDIHC3k0eraV2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLLYfNxI13zK+8fy87vWyxAGtShwIFsex/HAb/rxwzg=;
 b=VY5zFAmLThGvexX6W1rSvJVVYBTnSOImDUWbz94B3NWTmPIIQYrRvFWQu9dEVcetY1P9xHETKgsIJTx9XSkjqlhcU4jln0Vd9L8O/sZvkt+KbDq8yuHy+lp/w1bU2yTvQSuLt3EBlz4DKT2Cd/uUqHGXFqjDg+8z8B9uiGThw3Y=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5807.namprd04.prod.outlook.com (20.179.22.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Tue, 3 Dec 2019 03:49:39 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 03:49:39 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v2 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
Thread-Topic: [PATCH v2 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
Thread-Index: AQHVqYyw2RuSRsIdmEihcdKZ2s83Ow==
Date: Tue, 3 Dec 2019 03:49:39 +0000
Message-ID: <20191203034909.37385-5-anup.patel@wdc.com>
References: <20191203034909.37385-1-anup.patel@wdc.com>
In-Reply-To: <20191203034909.37385-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::40) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [12.169.102.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c7c290cd-bc20-467d-4b6e-08d777a3d2b0
x-ms-traffictypediagnostic: MN2PR04MB5807:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB580798D8DCBCA41C32326DF18D420@MN2PR04MB5807.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(189003)(199004)(1076003)(66556008)(6116002)(3846002)(66446008)(66476007)(64756008)(66946007)(25786009)(52116002)(76176011)(6506007)(386003)(186003)(305945005)(7736002)(26005)(102836004)(478600001)(316002)(71190400001)(71200400001)(14454004)(44832011)(446003)(256004)(14444005)(11346002)(2616005)(2906002)(66066001)(81166006)(8676002)(50226002)(81156014)(8936002)(110136005)(54906003)(4326008)(5660300002)(99286004)(2171002)(6436002)(36756003)(6486002)(6512007)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5807;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TUx6+Ex9FS1PqhEQU7EHRWtO9lq0yc5XtrhPxQKVxXbuesuRKxlkc/IEkeeY7sEb/w0e0sc/kzBYIS48hGKZOwRzTMS0CeD08J04yOKsUUY5zKMQPeu8Fezu38pxi/5rTU5PXxpLv9vcxvQaKjVWrjCLgObQ1TQNq6NiXN4P/jc2/GVu0Pjnmvub51/uPWxd8tP94haK9O0P02hHlkLi+e0ve6uXZumTBWIJTeQYgfHoCH7u8Z5WB9/NWzksspHndEYUAVJtFWBt492bZ32rv8qORabuFv+9aoJheLD83XeVxdbLAF2/im71X08HrJnl7W/3wQy05kP0mRIPmxaksDoavST9XDOHFHkmFF+KhAEDtAp4Sr8hEhibC4uFolR/n/GdGT7vyTZOovgMgu/u2P4ml8O6WQ1zeDGUWfl2Pft2E6EwlWDjHPFEhk8qANQE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7c290cd-bc20-467d-4b6e-08d777a3d2b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 03:49:39.6117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uq88zlSiKh4mPh29uXtC9SjjH+unjHpXIDxOQlYD8L2z5lxwv7311SXMsKyu3yb2mVuQDxXySZ/XWRWmwM8abQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_194941_764449_0D97216E 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We select Goldfish RTC driver using QEMU virt machine kconfig option
to access RTC device on QEMU virt machine.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig.socs           | 2 ++
 arch/riscv/configs/defconfig      | 1 +
 arch/riscv/configs/rv32_defconfig | 1 +
 3 files changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index bae4907b4880..65cf39867c60 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -28,6 +28,8 @@ config SOC_VIRT
        select VIRTIO_INPUT
        select POWER_RESET_SYSCON
        select POWER_RESET_SYSCON_POWEROFF
+       select GOLDFISH
+       select RTC_DRV_GOLDFISH
        select SIFIVE_PLIC
        help
          This enables support for QEMU Virt Machine.
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index bf33bd40ee07..c5e04384ec3d 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -73,6 +73,7 @@ CONFIG_USB_STORAGE=3Dy
 CONFIG_USB_UAS=3Dy
 CONFIG_MMC=3Dy
 CONFIG_MMC_SPI=3Dy
+CONFIG_RTC_CLASS=3Dy
 CONFIG_EXT4_FS=3Dy
 CONFIG_EXT4_FS_POSIX_ACL=3Dy
 CONFIG_AUTOFS4_FS=3Dy
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_de=
fconfig
index 234213b4ea74..7972b1d321c1 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -69,6 +69,7 @@ CONFIG_USB_OHCI_HCD=3Dy
 CONFIG_USB_OHCI_HCD_PLATFORM=3Dy
 CONFIG_USB_STORAGE=3Dy
 CONFIG_USB_UAS=3Dy
+CONFIG_RTC_CLASS=3Dy
 CONFIG_EXT4_FS=3Dy
 CONFIG_EXT4_FS_POSIX_ACL=3Dy
 CONFIG_AUTOFS4_FS=3Dy
--=20
2.17.1


