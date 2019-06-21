Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883894F094
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 23:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPp1CbFHZw7T5uy1ZMN1EDnprU8B9flvdm0jGUTBQyU=; b=t1aBCrTgpXtbO9
	E8T15uBEbe/qHAOapudt9mBytjTsFcRRceM34aQvCc2ePOKBWK+qrxH5QZFhtib6mTOGjxs7ngkV2
	hADtOJuXuerdZ50mI6vPF9GiIveUMSAU2GoBLk5VU7Vpa7PhBIRlZMy+PU554jBEzOfAb4vm1PYj/
	i2q3AaA6GYdidujS/LubhfaQ0F8Omo5tfWvTXZF8sTZ+V3fanxinMQ11zBrfZELP4KAX8nuF4YPd+
	q0Mg0PzbcrkgnB/D2LG97UBoFingbLWCo/l2bzMkiu2x/25RQaso1gKN3BJjpCw7QKMKkZyYpYvtA
	Q3YKbQ71JoJgZsTQvtIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heRZJ-0005pp-CA; Fri, 21 Jun 2019 21:59:37 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heRZF-0005p0-Nm
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 21:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561154373; x=1592690373;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=iOeMgtPuKdHHp3Gj75vrS+FljHMJyjkSg9MW3eosJKI=;
 b=JJDXR4ez9M/bw3ekuVI1sQIJBM/4P/lOCgfVgKFpsgxSXivEyHV3pZWv
 hH1qgH2et6zFaYF5eqG1AbDvLzrcfjhomqU8MeAsGF8EA/C1Rq79D/SE4
 uLuJbQIz+XYJT658N+DqXooPmab/KGHhasm/E0vI8Ad8tVhod7o7nXzs6
 8mnkno3zizWvRDsmkMVsAaayqtsrgJVrqRVMMSePxI+9T7tDoCXhdFvlF
 rXWL9nIw40LTFX0/GCP1fAmYT9KBxisMuANxkIy55VPUDOpjE7BQ6ja3b
 48jf3XetQH5y7Mlyo2yIMYLrER5tijq8wt74RRqT1yVmY2TrhpRIc81h3 w==;
X-IronPort-AV: E=Sophos;i="5.63,402,1557158400"; d="scan'208";a="111179228"
Received: from mail-bn3nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.59])
 by ob1.hgst.iphmx.com with ESMTP; 22 Jun 2019 05:59:27 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOeMgtPuKdHHp3Gj75vrS+FljHMJyjkSg9MW3eosJKI=;
 b=o26EfRG2vlpSzAPTfU+R0Kw1K3HagHl3nlYmGu7bcI6dIucTmYElx310BvV/+AOBY1OGqJE0rEwnq3gWF5kTJJmYRXQs2FtryUxl+9L0xsESl0Lrbb9pBU8snoB8ch1wMaaNM/IuoRE+lPlj1XL764yVKMuEHa6yDgLEVQQfjV8=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4471.namprd04.prod.outlook.com (52.135.237.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Fri, 21 Jun 2019 21:59:26 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 21:59:26 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
Thread-Topic: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
Thread-Index: AQHVKCA1s3Kn2VpoYUKwjMwaF74JUaametQAgAABOwCAAClhAIAAA3wA
Date: Fri, 21 Jun 2019 21:59:26 +0000
Message-ID: <43da99709709d2a480b78f25356cda9255205372.camel@wdc.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
 <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
 <CAF5mof3QB8C7VjOyEvCsf9NEDkJhV3cBO5sBD+8z-GrWrnrAyg@mail.gmail.com>
 <3f91c8032e113a19dcec10ca71b017af1427ef7e.camel@wdc.com>
In-Reply-To: <3f91c8032e113a19dcec10ca71b017af1427ef7e.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 196fe958-7585-4908-8648-08d6f693ba50
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4471; 
x-ms-traffictypediagnostic: BYAPR04MB4471:
x-ms-exchange-purlcount: 3
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB44714C1281D03C65A3A2879BFAE70@BYAPR04MB4471.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(396003)(376002)(346002)(366004)(136003)(39860400002)(199004)(189003)(26005)(68736007)(66946007)(86362001)(14444005)(186003)(76176011)(2351001)(305945005)(476003)(6506007)(2616005)(7736002)(66066001)(966005)(66446008)(14454004)(66556008)(64756008)(486006)(72206003)(76116006)(66476007)(8676002)(81156014)(73956011)(8936002)(71200400001)(81166006)(478600001)(5660300002)(6916009)(2906002)(3846002)(4326008)(99286004)(25786009)(6116002)(5640700003)(6436002)(229853002)(256004)(54906003)(6246003)(316002)(71190400001)(36756003)(118296001)(6512007)(102836004)(53936002)(446003)(5024004)(11346002)(7416002)(2501003)(6306002)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4471;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 89QSf4qlqjoU3XNf5agDwrD2G4cHCNuxXdAigCBdXchT6tomZyEXOVnKBGgIxI7csa/VInXOBJAdlZHEWSo/LePMrzUghLE6RtkukuH/M7G7YuTktd5dN8bHRVsJVjkssHj1JSNwH0dpd6NSjBwm1/b06X47AySYOTwsKKEG982MIv3QDUktFOdQ7HJkR2IkxkLCHCFxkKWH6v9hUd7CA2aQAIx8m6sjQ3J1khL56p5RxaE2uErfx8cysel6VKnjyqb6JBKfnH5hH4Dgm5BKnGTmZq3ESSdAeQbUrC6mGkpNGdD9JV4ZGVG6lifPYx3Ntp+9w//A15i10aGO1oI2EDwMha6ooCKhw02PxKtbD6c64Z7TIPYE2lSDa/DQUtswAmE/tpEmq5uHBTtYOtHITKNIXZdryGy9ULNXLXsZAQA=
Content-ID: <BD9208840D07144E8976D72F4B6703FB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 196fe958-7585-4908-8648-08d6f693ba50
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 21:59:26.4859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4471
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_145933_826361_87D509CE 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-06-21 at 14:46 -0700, Atish Patra wrote:
> On Fri, 2019-06-21 at 14:18 -0500, Troy Benjegerdes wrote:
> > Can you post the fsbl and other images you used to boot/test this?
> > 
> 

Resending it without the attachment. Obviously, the mail did not go
through with the binary blob attached :( :(. My bad.

Let me know if you still want me to share the binary with you. I will
probably share it via some other method.

> I have not changed fsbl. It's the default one came with the board.
> Here are the heads of OpenSBI + U-Boot + Linux repo.
> 
> OpenSBI: cd2dfdc870ed (master)
> U-boot: 77f6e2dd0551 + Anup's patch series (v4)
> https://github.com/atishp04/u-boot/tree/unleashed_working
> 
> Linux: bed3c0d84e7e + Yash's Macb Series + this patch
> https://github.com/atishp04/linux/tree/5.2-rc6-pre
> 
> I have also attached the OpenSBI + U-boot binary as well. But this is
> pre-configured with my tftpboot server. You need to change that.
> 
> > I keep running into various failures when I build from source and I
> > want to rule out potential hardware issues related to clock and/or
> > ddr initialization
> > 
> > On Fri, Jun 21, 2019, 2:14 PM Atish Patra <Atish.Patra@wdc.com>
> > wrote:
> > > On Fri, 2019-06-21 at 16:23 +0530, Yash Shah wrote:
> > > > DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver
> > > added
> > > > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > > > ---
> > > >  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16
> > > > ++++++++++++++++
> > > >  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9
> > > +++++++++
> > > >  2 files changed, 25 insertions(+)
> > > > 
> > > > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > index 4e8fbde..c53b4ea 100644
> > > > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > @@ -225,5 +225,21 @@
> > > >                       #address-cells = <1>;
> > > >                       #size-cells = <0>;
> > > >               };
> > > > +             eth0: ethernet@10090000 {
> > > > +                     compatible = "sifive,fu540-macb";
> > > > +                     interrupt-parent = <&plic0>;
> > > > +                     interrupts = <53>;
> > > > +                     reg = <0x0 0x10090000 0x0 0x2000
> > > > +                            0x0 0x100a0000 0x0 0x1000>;
> > > > +                     reg-names = "control";
> > > > +                     status = "disabled";
> > > > +                     local-mac-address = [00 00 00 00 00 00];
> > > > +                     clock-names = "pclk", "hclk";
> > > > +                     clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> > > > +                              <&prci PRCI_CLK_GEMGXLPLL>;
> > > > +                     #address-cells = <1>;
> > > > +                     #size-cells = <0>;
> > > > +             };
> > > > +
> > > >       };
> > > >  };
> > > > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-
> > > > a00.dts
> > > > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > index 4da8870..d783bf2 100644
> > > > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > @@ -63,3 +63,12 @@
> > > >               disable-wp;
> > > >       };
> > > >  };
> > > > +
> > > > +&eth0 {
> > > > +     status = "okay";
> > > > +     phy-mode = "gmii";
> > > > +     phy-handle = <&phy1>;
> > > > +     phy1: ethernet-phy@0 {
> > > > +             reg = <0>;
> > > > +     };
> > > > +};
> > > 
> > > Thanks. I am able to boot Unleashed with networking enabled with
> > > this
> > > patch.
> > > 
> > > FWIW, 
> > > Tested-by: Atish Patra <atish.patra@wdc.com>
> > > 
> > > Regards,
> > > Atish
> > > _______________________________________________
> > > linux-riscv mailing list
> > > linux-riscv@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-riscv
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
