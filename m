Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF2D4AEBB
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 01:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9JzN+zDQTaz/RiCbnMPlE0RNpa7AnqwkuJv+Qfd6Zs=; b=APv+GMIRPIvKn0
	cgMwXcVDUl4Ekqr37iPRZuJiw2Oi9RFMp4nMRcCU5rmuV8wNOOC17PFAtZWVOtkgoazylwTIkZdfa
	UpMn7a24eezegPQsQ1LDyvY3T5cFgluc+9H0IVI4L7FF+dnnxuA0pcSjDBEu/fZoM/u48Kr4mVaMa
	JT26gAuFp7fjxuGabR39PfSYvG2MF0H8fsONgTBnU8ktyTPyYYiT1b39tcMqs1O9xM7M9R02iTnUA
	4hiJqbYm7z055N5SyuLZTx0xEPMUDF+aRrqcdzfVr7AdDADDyslMpOHr5RLwgaA0mqw+9V6EVhwBm
	YrWqgLTWkCElWw3p72ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdNWL-0006DL-Oy; Tue, 18 Jun 2019 23:28:09 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdNWI-0006Ck-5d
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 23:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560900486; x=1592436486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=C+ejFAyAaDzYV1d6Ah7AhxW1J8PaUIPnCk0+XKPe5fQ=;
 b=fAa3/53Bd6BjzkGmu/tA+mhQhF28X/Irmr5s6nzaIBDVZUiMqDbqztGP
 JpY8VaP84PRZsG/XThyrTUmY4cuXExPGRPhfoXC9KLI+PKoG2185GolU+
 XaAHHChHVmx9Y849ARjWgnAa/2uw0ZerhVQTfCyfVUrjUAYz9RSDz2zo8
 bSf6SxtRLE80VYq5UllEX0OoENjRWczSzCwNirF+dL5E0uR/QCVcDL207
 OGWM6+O3lj1tOtkwOf64uqY+GW36FY5D5INjZ+kdoPSwnR9jdN89Y20st
 jqrv5Uoh+BJPQEqw8sb7UcPFMPK+gFHlYil2BCpE5JGC0RmYpuvQNpR34 Q==;
X-IronPort-AV: E=Sophos;i="5.63,390,1557158400"; d="scan'208";a="115813192"
Received: from mail-cys01nam02lp2050.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.50])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jun 2019 07:27:58 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C+ejFAyAaDzYV1d6Ah7AhxW1J8PaUIPnCk0+XKPe5fQ=;
 b=ufZypDtlmNv5FqEnVt6+hw6LSNXW3QPIhrfMU/SYansWzyOBUxhy7IgpF5qf9d52DkavlFzFyEmj8yY9Kc1ApgfI2KdidatLerZjf3CG5fyz15NU++Adq2w8LPKqJZ1JFuBqgs2Ldc/AqtuyjXtdikVqCbb7tmchWBR2/Sbl1Ek=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Tue, 18 Jun 2019 23:27:56 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 23:27:56 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "yash.shah@sifive.com"
 <yash.shah@sifive.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: Re: [PATCH v3 0/2] Add macb support for SiFive FU540-C000
Thread-Topic: [PATCH v3 0/2] Add macb support for SiFive FU540-C000
Thread-Index: AQHVJautaYczd+F3bUKX3+FaLXpAT6aiD5AA
Date: Tue, 18 Jun 2019 23:27:56 +0000
Message-ID: <ecded54c9b7bb7c85f029920db225cf19e1ee325.camel@wdc.com>
References: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbd639a7-4e7a-43d4-3ca5-08d6f44497fb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5749; 
x-ms-traffictypediagnostic: BYAPR04MB5749:
x-ms-exchange-purlcount: 2
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB57494C90F4EA518832AB5924FAEA0@BYAPR04MB5749.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(39860400002)(366004)(376002)(346002)(136003)(396003)(199004)(189003)(256004)(68736007)(2501003)(6436002)(66946007)(72206003)(6116002)(4326008)(3846002)(446003)(118296001)(36756003)(53936002)(5660300002)(76176011)(186003)(14454004)(7416002)(7736002)(81166006)(476003)(73956011)(81156014)(8936002)(229853002)(110136005)(11346002)(54906003)(66066001)(6512007)(6246003)(66476007)(2616005)(64756008)(66446008)(478600001)(2906002)(2201001)(6506007)(6306002)(99286004)(76116006)(6486002)(966005)(66556008)(305945005)(486006)(316002)(26005)(71190400001)(86362001)(102836004)(71200400001)(25786009)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5749;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pp8xA2wOzSSW1SwycGQhNiZmNbYql1XjRZYQuMemsIToSTkYsBjCZ4+SZ5jfqGChQns1Yd18J3EzvJ7EHoumUpdm7A3KEPPmmiK+03eUjQs93UQa9hRM93OY4L3848nUwed1GxlafT5t/m3psfrZw2j+gfahI0Oo2zkZxvnNWmhQgE3eaIb5NqGnP2v59/eKeTgQ90vFdX1yll/DnEbSDu8goWZWFCLCgfoGMaUZnixUuNnosejkeakM3T8Qo7xncnYMPBs15hs0AT0h2f8+S2ktOocEEhGHQKibl6lVR2EePtIUwW8qaSC2AY2W5c2Q0nCVNNUONrpFV7XElGoTPoB8Y3bV96ppJdz9IOcmIOJAnXNCz+qKmwCA0HQ6xtINArMD+iqei2XWEYBrLrNs+AWtdIHlFicmhS2rQx3BW3c=
Content-ID: <AFC52306D091CA4592F396976E2BC5AD@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbd639a7-4e7a-43d4-3ca5-08d6f44497fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 23:27:56.3662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_162806_340488_1FEAC3E6 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "ynezz@true.cz" <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 13:26 +0530, Yash Shah wrote:
> On FU540, the management IP block is tightly coupled with the Cadence
> MACB IP block. It manages many of the boundary signals from the MACB
> IP
> This patchset controls the tx_clk input signal to the MACB IP. It
> switches between the local TX clock (125MHz) and PHY TX clocks. This
> is necessary to toggle between 1Gb and 100/10Mb speeds.
> 
> Future patches may add support for monitoring or controlling other IP
> boundary signals.
> 
> This patchset is mostly based on work done by
> Wesley Terpstra <wesley@sifive.com>
> 
> This patchset is based on Linux v5.2-rc1 and tested on HiFive
> Unleashed
> board with additional board related patches needed for testing can be
> found at dev/yashs/ethernet_v3 branch of:
> https://github.com/yashshah7/riscv-linux.git
> 
> Change History:
> V3:
> - Revert "MACB_SIFIVE_FU540" config changes in Kconfig and driver
> code.
>   The driver does not depend on SiFive GPIO driver.
> 
> V2:
> - Change compatible string from "cdns,fu540-macb" to "sifive,fu540-
> macb"
> - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
>   driver. This is needed because on FU540, the macb driver depends on
>   SiFive GPIO driver.
> - Avoid writing the result of a comparison to a register.
> - Fix the issue of probe fail on reloading the module reported by:
>   Andreas Schwab <schwab@suse.de>
> 
> Yash Shah (2):
>   macb: bindings doc: add sifive fu540-c000 binding
>   macb: Add support for SiFive FU540-C000
> 
>  Documentation/devicetree/bindings/net/macb.txt |   3 +
>  drivers/net/ethernet/cadence/macb_main.c       | 123
> +++++++++++++++++++++++++
>  2 files changed, 126 insertions(+)
> 

Can you also post the ethernet dt entry[1] along with this patch ?
I think it would be good to all the dt related stuff reviewed together.

[1] 
https://github.com/yashshah7/riscv-linux/commit/6d3af64bc5efed3915d658dc3bfe82dc1dbfafb3

I am able to get networking up in latest kernel + your patches in
OpenSBI + U-Boot(with updated compatible string) + Linux bootflow.

Tested-by: Atish Patra <atish.patra@wdc.com>

Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
