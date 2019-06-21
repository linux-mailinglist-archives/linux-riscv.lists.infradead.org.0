Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AF74F0CC
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 00:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/kRX772pm8GYM17UUTfDcvugR/AsbaPVYYKiToFEiE=; b=NbSg0wK+GqUFN4
	qudiVI4BWYI+zCVMgeBLWvS+HFJi3PIYFvnpjiKXXXUxbqqbS0q1U7LnSycbPV0bN08L/X2ktB2fO
	wSrMO58hJBUyvDI63JqjjyserX89dndl7m3usfoPm+ADVMZySDYzenPLBHdSQE6KCO40LoiUwBNU2
	9UyDtM8HBbeHkFkJucGk2Hwo+5LTQpK7IshLmeoqAGWqrni/OlYZ9DmnPuFjeBKOsME/hBy0SJ/fx
	eY968mPFpaPn0AlPrvlUi1seB6m5Etxl/7pmJN5vo4iWVNkSaxjHKXTAB3h8v0aC55SKlxehlArO2
	64iNwwRgdo0N/CZBrV/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heS4R-0000DK-6H; Fri, 21 Jun 2019 22:31:47 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heS4B-0008RH-De; Fri, 21 Jun 2019 22:31:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561156292; x=1592692292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CwTyE5oAojXhA3u6jQqYZFBh1XJD0rLbYRD5s+d6l+g=;
 b=mvXM5Ffvne75jfiPNmgh/rmehvxP2+PvN1afgfPA41sD4dXGWb+gyqCL
 N3NSBpLVMcfKxE4K0rEDUyPoZnsnFN9vN4nj0qNYtZe19RyIu2/UGQ+V2
 WiuuUUWE3LFBrML+3DQCtA1uK42le4qT0vrGjU2DSka4Ks+wGRgKApG0d
 ZgPU/UKwsYNLE2Jgaq5v2j23qwhE/VPushgHoirLu+kRDmUpXvDHn0BWQ
 +KhYvq8gywAM73DnSv1pB2Do/gVMWXGmYeQ3C7N9pCr/u7kbtOp8SExHX
 GKpRNobgdZXx/dldgWUbzgZAQG9ZL6YsCuM1zYUUXvD1h0YMmGTSWy1M0 A==;
X-IronPort-AV: E=Sophos;i="5.63,402,1557158400"; d="scan'208";a="112418534"
Received: from mail-by2nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.50])
 by ob1.hgst.iphmx.com with ESMTP; 22 Jun 2019 06:31:29 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CwTyE5oAojXhA3u6jQqYZFBh1XJD0rLbYRD5s+d6l+g=;
 b=zRRJtZps0xN7icO/bbgp9vv4vZ+DpwoqgPZ2ua8a1oQyM74WtUKFLVNFyVeErlEsgmQe1+8J8uMoH96TR3M1lLJjJ2aRVm2ki8zM2bn3MVF8vxo8v+amyI/z5T51bS4ftJ3J1FskGAvz7h3qurhGr2fRvnZSvmxd4ZPmjfJFKXY=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB6056.namprd04.prod.outlook.com (20.178.233.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Fri, 21 Jun 2019 22:31:28 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 22:31:28 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v7 3/7] cpu-topology: Move cpu topology code to common
 code.
Thread-Topic: [PATCH v7 3/7] cpu-topology: Move cpu topology code to common
 code.
Thread-Index: AQHVJT7xIDv/dWmHkUmsJR6AXUgH+qajQP2AgAN2pAA=
Date: Fri, 21 Jun 2019 22:31:27 +0000
Message-ID: <91559562f2958fa904b53e621e596d6216efa9fb.camel@wdc.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-4-atish.patra@wdc.com>
 <20190619173801.GB20916@kroah.com>
In-Reply-To: <20190619173801.GB20916@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16275102-8761-4c03-078c-08d6f6983390
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6056; 
x-ms-traffictypediagnostic: BYAPR04MB6056:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB6056F3504653162A4ECF3035FAE70@BYAPR04MB6056.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(346002)(39860400002)(376002)(199004)(189003)(6116002)(5660300002)(76116006)(6436002)(76176011)(72206003)(81166006)(66946007)(256004)(99286004)(68736007)(2906002)(102836004)(54906003)(6506007)(3846002)(4744005)(6512007)(14454004)(316002)(478600001)(71190400001)(36756003)(81156014)(229853002)(8936002)(7416002)(73956011)(53936002)(8676002)(6916009)(66556008)(71200400001)(11346002)(476003)(446003)(4326008)(25786009)(26005)(2616005)(6246003)(66476007)(6486002)(66066001)(66446008)(64756008)(486006)(118296001)(86362001)(186003)(7736002)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6056;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bpihA2OFNr62h73iZ0P9jpk7naT/xsUgCEuMtbqqLoDVkS7ut1yKmx7k5/M05DetLwIjsnkuRWpqVN4gG1eT15gXOUhOhlywGAEFiAcsNRdVZAOP2cb6wleyzYMOo6zyIEyVgbBdkbX6VwK/ZTV3BHtFsEkblh7Nzrw7969PBhELT/aZMvf8VxbwrwaXb0U1T6SQVFavyAmT34jNWdoqbkZvOk4ekx5tfaCFu0FIAcxDrSDbcD38GFh7BAGQtYlxVjBZHUjsx1iW41IlccMcMebWMA2xoPeLvfSm+x6RY9Vf2ZiUFbgA3y38BIyHoqnBXVIl7v45TAgQo65lxV1es8IP6JGnYzamQUrM1rRHFEQvjahVOHnI2jddpJHl716o/bEbwOwxSeV2P0w34/4e3VZgasiNf+3vPHjwWXjQTtE=
Content-ID: <27C05F5F6A9C554FA6F50BCF64D1706A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16275102-8761-4c03-078c-08d6f6983390
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 22:31:27.9153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_153131_939523_C9FE91C3 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
 "jhugo@codeaurora.org" <jhugo@codeaurora.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ottosabart@seberm.com" <ottosabart@seberm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-06-19 at 19:38 +0200, Greg Kroah-Hartman wrote:
> On Mon, Jun 17, 2019 at 11:59:16AM -0700, Atish Patra wrote:
> > Both RISC-V & ARM64 are using cpu-map device tree to describe
> > their cpu topology. It's better to move the relevant code to
> > a common place instead of duplicate code.
> > 
> > To: Will Deacon <will.deacon@arm.com>
> > To: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > [Tested on QDF2400]
> > Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
> > [Tested on Juno and other embedded platforms.]
> > Tested-by: Sudeep Holla <sudeep.holla@arm.com>
> > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> > Acked-by: Will Deacon <will.deacon@arm.com>
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Hi Paul,
I guess Greg has acked the series assuming that it will go through some
other tree. Can you take it through RISC-V tree ?

Sorry for the confusion.

Note: We are still waiting for RMK's ACK on arm patch before it can be
sent as a PR.

Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
