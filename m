Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2E438407
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 08:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ig85M470duwSDvq61yjfDIu0WeW2RCMUPG8vHhi7ukw=; b=Iz6Abnig+EohLh
	3qZd6TNTLGZR15rAixEP284LxWSWjcDWFuI9CrkykVyDR5pV1mbzhiDE4JHduXRoHi1YzupEQxhe8
	/gGGKTuOEDAVgX4OkpPl1jnTxsRuBfWGqx2FdejIYK87yUfVmx4cVj3bY/p11Id1TWDeXJAT52xSo
	JwzysWoKiW6fjzCuKCxiN1er647P7n+MZ7bbXK7SRAV+9JajdwVXP+b/FXUsqe2f2cVUXZevmZ16I
	NyvSHzmH28RFaVwDokikc2+tnhgEjs/WWLS/mYEUc92YK4n1OP6qp5zPatFNknb+a/z5RE+XC4lZE
	R7HszoCBjF/8BZFgV/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7wV-0001Pr-1f; Fri, 07 Jun 2019 06:01:35 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7wQ-0001OB-SR
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 06:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559887290; x=1591423290;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=F55XFh+0L2QVaK0P9ne3JsQL6JQK5dEWWxxIHPMXMP4=;
 b=QAtnJmb3pQKvd1KYIZlctfIokqViQb31tLehQWkswzZR+SKpQwocveLE
 dVm4gZtWTuxUkC/wZ11zgCPRPG4Nr0k8XoqxpPdJyYstxqaFcynyR+5O/
 nktuWw3gig9EmkvezFfNj99olFEbUBagr796+qAQF5olCb/1rxqfn9VYd
 aCB0VxadaweJ5TkWu+wwjJBqC/Ngq0Q3zEFC65ZaG/KUJQbUkZ+XRDT0S
 pvY5+G2X9g11TI8bGyN3kq9xZz4ljtaqMJO4IRz32RhuTLvNb6LY8Cvuq
 xhZSEM7IfwbKMNkJYZvDBNsU6gCMHaGnTqD0rOnr9SGl8Zvykt7o27vID Q==;
X-IronPort-AV: E=Sophos;i="5.63,562,1557158400"; d="scan'208";a="216314725"
Received: from mail-by2nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.58])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 14:01:25 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F55XFh+0L2QVaK0P9ne3JsQL6JQK5dEWWxxIHPMXMP4=;
 b=CjfhZxKUB9rKNudLXoG0I6GK8jEr7avvMs3fqu3Q+dWSxoe/sxKsBzwVR5sAY7weNDyNzpJLfdNEfJ6rTR7FyYjVfU/zCXbrV4jwqaZMewrtQMvBlS1d51ebCjqpYtJVZxnzjXkvCjO54t3f92X25BJWbRCctgxhuyOJNxXY1TA=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5920.namprd04.prod.outlook.com (20.179.21.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 7 Jun 2019 06:01:24 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1943.026; Fri, 7 Jun 2019
 06:01:24 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v5 0/2] Two-stagged initial page table setup
Thread-Topic: [PATCH v5 0/2] Two-stagged initial page table setup
Thread-Index: AQHVHPZv/4z6R2LBokaKhvaK1uY0gg==
Date: Fri, 7 Jun 2019 06:01:24 +0000
Message-ID: <20190607060049.29257-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::40) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 782186a4-33f9-4b70-4c3b-08d6eb0d921c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5920; 
x-ms-traffictypediagnostic: MN2PR04MB5920:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB59209CF918D57FE29A73DD868D100@MN2PR04MB5920.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(396003)(136003)(189003)(199004)(68736007)(256004)(6512007)(54906003)(2906002)(386003)(81156014)(71200400001)(52116002)(81166006)(110136005)(72206003)(476003)(26005)(2616005)(53936002)(8936002)(8676002)(99286004)(7736002)(4326008)(2171002)(305945005)(6506007)(102836004)(50226002)(71190400001)(14454004)(186003)(25786009)(478600001)(486006)(6436002)(86362001)(6116002)(3846002)(6486002)(66476007)(64756008)(66446008)(66556008)(66946007)(73956011)(1076003)(316002)(66066001)(44832011)(5660300002)(36756003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5920;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jUdzOvHf8gZUpu8RjyiXIcYmYgvaPthoMvtLEs/QmSo/pQOjDXQ5CBfxW0SH7ImEWyP9I+rL3O1kLsGhYMEHyHJw/NPlIT7BaavD7E1RAvfytY7n3/b/uFELKFIsSaphLfMslaidu4r31tA4PuF+ZcCII006jF2ytVHb9QOnW8WRE7c93TxUyx0AmkOr+w0C3FHzb92kni0/lPr4I425HAfZLqN+nuVWCGh2UTJdpdVt8tJy5bLLcb5pTpJ1rLfjppZIrhtFVq7smTq2FZDqrYiUI6ozc02jvL8EfcQPeqq3uNB3v0BfvNzXibXfgvWkkixRVG1eeC96HvZxurRT9opm+l8bT8mdeHNR2ZcRgW/zU/hXlfqZGDoAqBO3fr0g7CtlQjFsGB8p7wXm+ZBtihFNWuOIzy5qSd7voMdZsCs=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 782186a4-33f9-4b70-4c3b-08d6eb0d921c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 06:01:24.2851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_230131_040472_B65DCD9A 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset implements two-stagged initial page table setup using fixmap
to avoid mapping non-existent RAM and also reduce high_memory consumed by
initial page tables.

The patchset is based on Linux-5.2-rc3 and tested on SiFive Unleashed board
and QEMU virt machine.

These patches can be found in riscv_setup_vm_v5 branch of
https//github.com/avpatel/linux.git

Changes since v4:
- Added dtb_early_va which points to DTB for early parsing

Changes since v3:
- Changed patch series subject.
- Dropped PATCH1 because it's already merged
- Dropped PATCH3 because trampoline page table handles a corner case
  for 32bit systems where load address range overlaps kernel virtual
  address range
- Revamped PATCH for 4K aligned booting into two-stagged initial page
  table setup

Changes since v2:
- Dropped PATCH2 because we have separate fix for Linux-5.1-rcX
- Moved PATCH5 to PATCH2
- Moved PATCH4 to PATCH3
- The "Booting kernel from any 4KB aligned address" is now PATCH4

Changes since v1:
- Add kconfig option BOOT_PAGE_ALIGNED to enable 4KB aligned booting
- Improved initial page table setup code to select best/biggest
  possible mapping size based on load address alignment
- Added PATCH4 to remove redundant trampoline page table
- Added PATCH5 to fix memory reservation in setup_bootmem()

Anup Patel (2):
  RISC-V: Fix memory reservation in setup_bootmem()
  RISC-V: Setup initial page tables in two stages

 arch/riscv/include/asm/fixmap.h     |   5 +
 arch/riscv/include/asm/pgtable-64.h |   5 +
 arch/riscv/include/asm/pgtable.h    |   8 +
 arch/riscv/kernel/head.S            |  17 +-
 arch/riscv/kernel/setup.c           |   6 +-
 arch/riscv/mm/init.c                | 331 ++++++++++++++++++++++------
 6 files changed, 292 insertions(+), 80 deletions(-)

--
2.17.1
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
