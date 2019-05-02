Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC0911270
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 07:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M5/9Ubmnr8/VLsmxE5A37XMD/ApQ0fnVoVz8qe+biIg=; b=faLgd2jZgUTIeL
	LnyZZBdkxGtZ/RTJkIeVuQhwtXFqoXL2IdYON0wxnQ6qa8+GOLlxxajtRUdCbOnp5If76s8UvAqt/
	nDvJF8mmOrr0dsSttq3d+DpGNy7rmawJmfWS0pXojswztIo36dvEP2N3eNDTfW1HpvmlDt1ozP78P
	lsfykZEXXKXMhq1AkjQ9ZzV/tfgCT/6NOeQZqwDZdr67Emt+KlNLcsxnRsSrx3zz2DfBSxAfQ6EHT
	4UeNZkCGvSwmBUmtfDiJX6OqWE1wh8N5jC/ra3np276l4HXMEcUf5lY7Eaa8/2wCmnn85Hm/xdFmJ
	Sd/oJGCfonpr95vHGijQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3ri-0000EO-Av; Thu, 02 May 2019 05:02:38 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3rf-0000Db-FW
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 05:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556773355; x=1588309355;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JCJLG/kg5ol/IyFGoBXS5qz9YmBN5nMfmWI+NFAdTAI=;
 b=dp9C/C9C7e9Y/vEi7/fXJvOFOK+oNIDzii6yNO1maFjN4v5C/yzV3G+h
 rf8fB/o6NvffySLUmMN+330uJ8WIpeTzEadG9nQHWxzK+3H9vbM2XWMTF
 GAcP0Dhby9EZQP0rndr8NrNVcOs2AtUtaPBoOw3Kmf9ezbtxwndRpGXrQ
 zbB4JEGx8tZY+d/sQtGciyCKLblqI0MPgbQv+BRgrE7BlXVLn23eA4M5O
 j85oBxEr67rMja9fyjrnXR53DNHWhbqJxiKFMnFtfbGo5sPPEm4n8ROGM
 iueTGqaV1nJ1/7BowupuItTIQBGxDAIFqgwZGVy+dd9rbfI06calDjv4h A==;
X-IronPort-AV: E=Sophos;i="5.60,420,1549900800"; d="scan'208";a="213245483"
Received: from mail-bl2nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.56])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2019 13:02:31 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JCJLG/kg5ol/IyFGoBXS5qz9YmBN5nMfmWI+NFAdTAI=;
 b=C9GEZdbnYCM2S0DBFJM6Adj+XxuBaEzCwpHNb08GT185n9fq3wdxBl5gU+EOuuDvou8wS414bDVSPBhvMxqDAM9DWgaohjL6H/4ymYJiPz1GI9vM9r05zibcel2h5Itn+/nRFuuHd4mgJMZvhLUra05ynMTKBeSOS80Ih1S0cjA=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5582.namprd04.prod.outlook.com (20.178.248.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 05:02:29 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::c500:5fd2:9194:e38]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::c500:5fd2:9194:e38%3]) with mapi id 15.20.1835.015; Thu, 2 May 2019
 05:02:29 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v4 0/2] Two-stagged initial page table setup
Thread-Topic: [PATCH v4 0/2] Two-stagged initial page table setup
Thread-Index: AQHVAKQ9pUYUirKbmUWBsUMaMukDWw==
Date: Thu, 2 May 2019 05:02:29 +0000
Message-ID: <20190502050206.23373-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0049.namprd07.prod.outlook.com
 (2603:10b6:a03:60::26) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f87ee622-b327-419e-0537-08d6cebb600e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5582; 
x-ms-traffictypediagnostic: MN2PR04MB5582:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB55826C3C814D3B8C0280630B8D340@MN2PR04MB5582.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(5660300002)(1076003)(6436002)(486006)(305945005)(66066001)(476003)(71200400001)(71190400001)(26005)(44832011)(81156014)(86362001)(81166006)(8676002)(102836004)(54906003)(2171002)(25786009)(186003)(110136005)(316002)(6486002)(386003)(50226002)(72206003)(6506007)(8936002)(53936002)(256004)(73956011)(36756003)(3846002)(6116002)(2906002)(4326008)(68736007)(2616005)(66946007)(99286004)(7736002)(14454004)(6512007)(478600001)(66446008)(64756008)(66556008)(66476007)(52116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5582;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bC26Y8avk1eQvdQs4H+OH42SIeWx9we5LtNpb9nYAzdynyOuPKWk0hxOssCWRIHNDTBt3fJx2i/UpLR7LwUyZgy8RFGxpnT/TWGYLFThhxD2eT5f+7pkywhicGbzUcJNFL+Okh1LBdg9z3X8EvHUwDlRp0bs0yqL2cFEQdGGWbXUvbyfohgmc3sNiOpwX63XruUBWOWkYkpT9yxRoaYA7XF4xbxC35dPTLo3o0vkEjKa1pCZ09joEhJ93H+sS2Y1nBv21O7UKKDdKWVBH+5EYy95Q17hxiQMmnxXsUYH7jjtoaHeDSq/NieUPOzeih61mXIOOFJKSlPdoLXWiaUsR02SxexoTjaHzlIckxtSgh0tYCMVAKlUNYybA2heh00krN2xcj43frOMa+GG9qEKan4aAc2YfVU/z4lmxPIRIuk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f87ee622-b327-419e-0537-08d6cebb600e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 05:02:29.0915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_220235_720741_39640FD5 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The patchset is based on Linux-5.1-rc7 and tested on SiFive Unleashed board
and QEMU virt machine.

These patches can be found in riscv_setup_vm_v4 branch of
https//github.com/avpatel/linux.git

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
 arch/riscv/include/asm/pgtable.h    |   7 +
 arch/riscv/kernel/head.S            |  17 +-
 arch/riscv/kernel/setup.c           |   4 +-
 arch/riscv/mm/init.c                | 327 ++++++++++++++++++++++------
 6 files changed, 289 insertions(+), 76 deletions(-)

--
2.17.1
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
