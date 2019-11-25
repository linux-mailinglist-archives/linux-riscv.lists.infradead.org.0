Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0357A108EC0
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 14:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LCoFGMkP0omqUnE/JpMcqEx4lE14U4OO6ox+qBCiB+E=; b=tWVxCnPYzcmSIX
	dmQXAaQC/IfJuLwz1daLLw6ePb62mvFC4sfGUdo7plJfd/BWFDkGeNe3EYM/8LuGoSd4J2TmMilBl
	DnqDhkF0+ihBbzfRJNAaldvPLeXmnPF19Tx3ssSVHbrmdSHuBn14VVVOkxNknOebERhjhcSjgKED5
	30othxs1nhwReeonL/ROxCPBGr+Frnx7Ph5GVBRab1wovQy4nMWO6YfT0CgWv2D0na6EsC4zXnXhT
	OqmrlW0Kb/XNLz5bdk8reDudhu5ntahdOnJpj40vP9xcoRSO34PaZm652H9OfXVPgJAU0QMoDL2Gu
	NI7XNhbs8QY6se21fBFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEJy-00052I-2q; Mon, 25 Nov 2019 13:22:30 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEJu-00050s-Sr
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 13:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574688147; x=1606224147;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=evCkJbpp2d6kDzaEJY/xVtdr+/sHbZXz6c1/WWq2YBM=;
 b=A1lPa+Res0z+0eyujgo5tRyRJIx2lvNcaOB54HN8drWNpEEh2g2L9Veg
 WmGBBIQlQdkahKyZIH8t9PjOw1QP0aNqSfhPaI+QM0JzL+Ye9ifWHtsjs
 fm5/JgzUuDIpP8QGwuTvKiv1uRHBak00D7KxhgUL6biLM6iOnm7qHV1x8
 LcleIJ6pdyTV8ecBkv9t529J7m4b7xKQnYBH6BPYWakglLoLxo0oPZHBU
 VwoDxEUHCNwW3XrFtuil1y28/soL9/iVXP+DE/wR3s0kPNX0ZHnEmAbHi
 /ksfBHpK1LtIfbo615f4UwmDO+IlY0/qSc2JgUUEdY9Sp73VfBwLCKr2z Q==;
IronPort-SDR: 8Zn/j/YVVEaaVPpOiSkJGv6e8y8rV0lax1lgld+suhicplX0tNRM9frK43Z1ZVFhv5Y59jPsvi
 uXObooMnDbjuBgb2dfCWett4ohL3NGNYk7ihn++x1ZgtsUr8OGqP11qsnvGk1OQUEIXTqTWgrN
 IAmRHOqdf6lcKt5TFUMul5dOmt/0QN0lqHwKWWldxhjKY5ybc93RmmP7BpIZPpGZstFEJclHgo
 E2ZN3ca8nWNoS6RHMI7LVHsFRE1BLQBLmPs1q+yZK317LR5Y3cYoBL9ImextCSIOsFCkw25VcF
 M4k=
X-IronPort-AV: E=Sophos;i="5.69,241,1571673600"; d="scan'208";a="125552352"
Received: from mail-co1nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.59])
 by ob1.hgst.iphmx.com with ESMTP; 25 Nov 2019 21:22:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcZizsvtxfCMhHFFAC6dHiXEtdp4mrSVu9WbKJ06u1iWD6KlD7FgFQB2EeMr+bF6owBD0wtsBtERjhvyRToZsoC3bFV8Lr5b79hD78Kd2vPet6zGLCKYqYrJlDjmIWc1XWOpSrb9wcIgBXKwhoOe2sG5bcjU2UbMMHqtdPYds7BxpfWwAYwTZ/D/P1gjcD8QqkBKgkwpdUI9uJyIxGKgd7xVK8znCoql7gR8RDcj00UakvlnGmx7HxlqZ9Z7XlvgPI4HdxIBSNtdu2lWc8hIN3cijhebcLDmuNif5Cv4mEWoa+AFHLzANy+JIQ0UzM/hTQIrTJVlauvz88OEZ8wfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0aJwRYzyZ3/itQRkXNvUQhdjpGbb+Qm6goquC6DHqo=;
 b=Ln7Qnfh+F4qR853kub0HkiTzUqUbC86F33hH9iifA7B3MB+wk1fjuNz5NZOwQKQZUm9CR2qzJiMS03YYSoZCRBKnqWVpPEeiAgylsW/1juiF/vh+YzPvNAhB5iMlWQuCDfKYyXoarSzLNDpTcSJu+ca9j4bK1Z5Jrd3vmFVHPI7HRqxZ6zHFeVmyH1SCX4aRSq8WTmjYbz03VBriqPqGK7od5EqjNSm90baVK6z7pdchZmaDF0lc8pYrGKoYnu2EThxcw0sZts/kErwdEQ9Vejf4xuRvbkcqWvdRwikz7+/TvfRa+hu4kqK6pOJKOsKuRH7fFhr3/WAwDWDxyIWLVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0aJwRYzyZ3/itQRkXNvUQhdjpGbb+Qm6goquC6DHqo=;
 b=VsqfUi+kuDtnCoqvZqYGLFJYawhomo5ShgoqZe2ekDZKu12HWUW6qA4PpaqUJHfDDBdBSYiW7xwqQlE3maTszZTkdMC8nLR7yQVe0zDuHU8mxe8fXEt+tmIRoQoXzEubzqySHwTSB3suT11y/4410wFf2UuGxaLsXDE8bD+ycLI=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5981.namprd04.prod.outlook.com (20.178.246.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Mon, 25 Nov 2019 13:22:14 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 13:22:13 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH 0/4] QEMU Virt Machine Kconfig option
Thread-Topic: [PATCH 0/4] QEMU Virt Machine Kconfig option
Thread-Index: AQHVo5NZE5Jo2xnU1keuEYpYfC9DRw==
Date: Mon, 25 Nov 2019 13:22:13 +0000
Message-ID: <20191125132147.97111-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.21.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7f351a5d-d865-493e-a415-08d771aa7bb4
x-ms-traffictypediagnostic: MN2PR04MB5981:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5981029E9DC7CCB1E4A976488D4A0@MN2PR04MB5981.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(14454004)(50226002)(66946007)(8936002)(2906002)(81166006)(81156014)(6506007)(66476007)(6486002)(305945005)(25786009)(256004)(9456002)(54906003)(316002)(8676002)(4744005)(6436002)(66446008)(386003)(66556008)(64756008)(110136005)(99286004)(52116002)(186003)(26005)(5660300002)(102836004)(1076003)(44832011)(55236004)(478600001)(66066001)(2616005)(71190400001)(71200400001)(6116002)(3846002)(86362001)(6512007)(36756003)(4326008)(7736002)(2171002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5981;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yyj6j2+bqN3u33/hotz8YnmdxWtFmZwlQLVzgX5WxMiVsReq3x3Wrv6gTrb6+4UCukxbGe5EzGSdB/hisYwsHs7fsO7rYIaMDeZSl3mwZypGlacAlwdCAP6vwJmR149xAvE8XhRM145UAz2Ake4T0rWI6JgpSzqpAGGPiTVh7YQC7Ld4quZeuZtjuns1E4XGizMAmTuvbi46LouoRnYmu+dyTK+qWilhBFogRszVMwYPkVT44GHrAXBpFfiD3nGOGUd00pIySdGqiURuRo1T0KYWcB0bApXSjG02yW01URX7BYdGUd8MsMnZk7AYQDHgFKdNCuXedK3nf/aI02IjpsnB41JDrCrIo7BHof41CVXxd8lcIh52QOKoHJPRa+9KejAs8VwblZbTpA/3kGeXO1CCOZMSB6xbZ638/Vb2dvQK/8tznQ74sMTbiy6jv4cu
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f351a5d-d865-493e-a415-08d771aa7bb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 13:22:13.6945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LafyBGIZrPkLDDAvc6VYoK3Kd1qwQdFvqsqLi4LLkMkovyoOhrGZ4EYPbEj6Urk+fsUna/qA1hbcH7GGmC+94g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_052227_022283_9C78CDFC 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.21.49 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series primarily adds QEMU Virt machine kconfig opiton and
does related RV32/RV64 defconfig updates.

This series can be found in riscv_soc_virt_v1 branch at:
https//github.com/avpatel/linux.git

Anup Patel (4):
  RISC-V: Add kconfig option for QEMU virt machine
  RISC-V: Enable QEMU virt machine support in defconfigs
  RISC-V: Select SYSCON Reboot and Poweroff for QEMU virt machine
  RISC-V: Select Goldfish RTC driver for QEMU virt machine

 arch/riscv/Kconfig.socs           | 24 ++++++++++++++++++++++++
 arch/riscv/configs/defconfig      | 17 +++--------------
 arch/riscv/configs/rv32_defconfig | 18 +++---------------
 3 files changed, 30 insertions(+), 29 deletions(-)

-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
