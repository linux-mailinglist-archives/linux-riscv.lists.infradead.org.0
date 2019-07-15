Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95753687D3
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jul 2019 13:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgBRldiCFld/vqqxR2+JqNM+BMeqhvPGs7+v5zDOmVg=; b=nkxQnB3u46Wq38
	TR0mdLj2RRv3vLaoSTrJwnsxlukp1C9YANqCEbC4VqgesKUO2QK3VurycX36I2uTRpcQ1rWrDSWF7
	Zh2DlrD/vr2C7JJixMRL1U29lbCjuisWCoTXCG3SJ/AXKA7/ZaqfqI8Ftv+aiP7FClNncqAP+AaF7
	YHzD1+Y55VHtSc7iehO9NlUQ2KdjEj9tPOVyEsa0c3av7ICsODmR/I5VScjd8JFI3Hr2LSRGlZVDT
	7OQUOqNE8h+V+LAVl2OTEjVvwsnU17BcAVFkDdDNxlMJjB+/I2gkc2geR3NCQcxOi4ItpyoB+EUej
	CRXVR77ZMbWTXotUZI5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmynK-0001On-My; Mon, 15 Jul 2019 11:05:22 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmynE-0001Nl-CN; Mon, 15 Jul 2019 11:05:17 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: o7D0l77+7aaFuKdjr6e3XowsJj6pw0q8UnaaH2kT+5ggFhUUTTrmNzDMsSkpBCoVX7MMjSPsVd
 OgkvRZKBqZHpxifFuo/7La+WAOmD3iqm8SscFi6QujNPeaVXAf5bKgQ3F1QYLcOXyJoKFDFMLL
 UkUg4ExeWSKtY49hWsW1uHvsy2hy5wmwaQ5U6aZdWkKY9cSoQaq7b3conGnSOF2BbiwCo192MJ
 SMXG3tyaiNbHRiJDvzq8WHqhBxO5p3OpSHMXW8FqGCla4vX4YQIj0YPPSDFRz5Sw906oT6mcGs
 wWc=
X-IronPort-AV: E=Sophos;i="5.63,493,1557212400"; d="scan'208";a="41296455"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jul 2019 04:05:07 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 15 Jul 2019 04:05:06 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 15 Jul 2019 04:05:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BrUxpokEcuqOV2QPQAmT/AA71PgGRYoEN7Q5YCC45E0UKG29D3Fk1CP/3+fXxNZQbiKnbWfUME7ZPbAUtN1iNbrpNQqzbu+DNC9eeZWXLZ0BtCAeoMUpkhsV42HTUsrK4TSd4kMXEQZa1fdTjkDsUuIwKtzbb2HyuQolUBP0qJ/Al4CX331yRCGRds3CtAz3u+NVKFfz6BB60/AHvsqRiXDPxEe+ursGer68qVlJVr58lDs/WIoR0fKoj7aZsfZ0trstnASn/kFO4YIDPgX4nhgboSyVO4yvauzPg1rjLsSipTA7WUn/tM4Gz3B77+3tVsGtiENYQtMiHPK44tBF/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04ydRJRwVFHlaqEy3oz5Hj3yJqseCBem+3HIY9oHXs0=;
 b=lO7ckRJDLG9JCNa/92gqNhPbhEp15BCYSTgFj3YFp7iQpteSaDXgBZLF+rhDUd5SYInVrIHvvLZV7tjuiV+38WXEIB4tXk3KYNK/cA7B3rassoQH6GUsZuvyLuFOU9mff/X0Yy+jvybreinpk4ATfU64IyGsd6Iw1ImL7bqabUh40c9PkSD9J559YTeW1SB64p9jVA8hmG0rZwc8BfzoylfpgLSZElJuPr9Ca/EXuRZq7UVWqzS/+Zzb/lJsiYCOsWXq0wEKe5rJ6xuBWzi4IWtAytLLWlackQvO/mPPsZOxYMQ9JgAy3gjlr5oeSLfuZflupUeAAjtaw5Fa3d7OlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04ydRJRwVFHlaqEy3oz5Hj3yJqseCBem+3HIY9oHXs0=;
 b=pAp6I4wuvn7CTSkyI5QHCdhjRlFOVpxwr1rF7X3CQQ+kKDDKIYvcH3hTCGr5rZZnG9K//dS24w/cWA4wWcQfSwsgkg/9MhGkYkUxY19U0dWtQc/tAumhc5pRtsfrO1qt+xllwrA49LPMd2u952XuzO/C1/MjJD2S4kZ2c1aw5s4=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1379.namprd11.prod.outlook.com (10.173.32.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 11:05:05 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::6515:912a:d113:5102]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::6515:912a:d113:5102%12]) with mapi id 15.20.2073.012; Mon, 15 Jul
 2019 11:05:05 +0000
From: <Tudor.Ambarus@microchip.com>
To: <sagar.kadam@sifive.com>, <marek.vasut@gmail.com>, <dwmw2@infradead.org>, 
 <computersforpeace@gmail.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <vigneshr@ti.com>
Subject: Re: [PATCH v7 0/4] mtd: spi-nor: add support for is25wp256 spi-nor
 flash
Thread-Topic: [PATCH v7 0/4] mtd: spi-nor: add support for is25wp256 spi-nor
 flash
Thread-Index: AQHVMQWfiPsPkD0Jj0iOEEvNMlu2s6bLksqAgAAFdAA=
Date: Mon, 15 Jul 2019 11:05:05 +0000
Message-ID: <14025233-db7d-2307-5367-d41ed24f371d@microchip.com>
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
 <CAARK3HkMz3AdcVyrteGmqczCaMDTYS1h9uALspm75RFE9c6jFQ@mail.gmail.com>
In-Reply-To: <CAARK3HkMz3AdcVyrteGmqczCaMDTYS1h9uALspm75RFE9c6jFQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0101CA0081.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::49) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b75437e3-e864-4deb-8222-08d709144a75
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1379; 
x-ms-traffictypediagnostic: BN6PR11MB1379:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR11MB137961C63DAF10BB55153D8AF0CF0@BN6PR11MB1379.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(366004)(39860400002)(346002)(189003)(199004)(53754006)(2501003)(476003)(256004)(31686004)(5660300002)(4326008)(53936002)(6306002)(6246003)(66476007)(6512007)(486006)(64756008)(26005)(66556008)(14454004)(2616005)(71190400001)(446003)(11346002)(186003)(66946007)(4744005)(71200400001)(76176011)(53546011)(102836004)(386003)(66446008)(6506007)(6486002)(81166006)(52116002)(316002)(54906003)(8936002)(110136005)(6116002)(3846002)(36756003)(99286004)(7736002)(8676002)(6436002)(305945005)(68736007)(7416002)(2906002)(25786009)(2201001)(478600001)(966005)(229853002)(66066001)(86362001)(31696002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1379;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KImi6EakB8GcXmW+YWy8cMioHwnlyaK4i9/4TLZGTpq0dZf5b+dOAmjqzGu82XpmzghVnTdpsAZa6StY87SwfuuDDw+zVrvupO2IOgT+yk0EbFvdI4TNGaqKPXXlZ1QJmWzFf4hBfjHmZwreBWYdWQ/Z/iCYcMn2pmCVfZfvo4aWXmEZ3VzOMa6WfLby3rwc9QW5GuHWAqc5rUEILmD9IZY4ygPcoFKhleUAGFXnL0tJnr0xrxX0ujSg3vglu5o9BEVO9asATg7BhFeQjLmvptQzirwY8TavtsMtdhASoSOPLkLPrXt+6xGVyyY52iBEP5BGsfVG3fK0PZRuyB5rjshdmWAGwVV/9T4bl0FJP9nc+zejK2JY+Yii7DbinpR9MYM/vuHfDiMdBVaVZ517kLQkD13p+o61ZA/EZv+N5tY=
Content-ID: <85B1051788F50241A7CCAE010E941EA4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b75437e3-e864-4deb-8222-08d709144a75
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 11:05:05.1814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1379
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_040516_535897_96451256 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 07/15/2019 01:45 PM, Sagar Kadam wrote:
> Hi All,
> 
> Any comments on this series?
> 

Hi, Sagar,

I was OOO the last 2 weeks and previously I was busy with other spi-nor patches.
The series is in my queue, I'll review it. You can check the status of a mtd
patch by looking in https://patchwork.ozlabs.org/project/linux-mtd/list/

Cheers,
ta
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
