Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D7D7931D
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 20:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJThrMkMK6zLoSqcPhCF9cMZa3n4Ex5M831hkWnueLo=; b=iY/J0YR9snOI2i
	zCe8uMwJSqVxmZP1IGvSz9fduI9GstlaCZ584MckYuP+PdzsaZXWGXKIWWlBPk24CfpDYeel8YaXe
	KZaBHcNzSguy5ZR9XXskzyyJzvodc28gY48MT6G6K5kHf1V/pTHnhyTx1sKnxdKXl0BXeakAmYyFs
	OFrqF7kgtpJETKxM2DF1HhKtcgSrleh19+aBRADgkMH8OJfobPWVWl0LVfgDBQ7uQoqeXvJaPfjvp
	NfZ7xcC3HNRy/emz5cCuaGRzkZUQm+jhFGaO/cLPLBa7u8eUmzFME6/hruYJaMm/OY7UxEirxZ6oq
	RH4DnigzZrMAB6+Jlb8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAR9-0000sk-My; Mon, 29 Jul 2019 18:31:55 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAR5-0000rh-F4
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 18:31:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564425112; x=1595961112;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=I3u0eN3jpLSX6MmkWRj2yR6KaE3ivdfHq4UfTECioWU=;
 b=Thn3z/09nNkcmXS03QopCxydwtx8IdGKoFLOxtfwKzWyOk13HgEIhPmO
 luj/EV7YGKa8XPQwbDKZMBdchWVNhWGXBKw9JwaiDXpzL6oSNgKqKFxFD
 CcYbtg+DgLKrThMWj9QpCLanCbD1+JdpoTxyqkftlqJ2xak+eOa9/50kO
 7JApYpzjS6affsJqexPwHD6qFbNyvVf67oEErfdRF37kQC9rqWZQ3w/gZ
 nDeXuTnoC9MPzsE2gsRcI+TTiGEXz+j389rX5k+NChjTuqhCNYAWf9/Nf
 j/Nq/NFqEpLXbruiTlWkpN++xpcT9tnunS4LW7oVQ9KXLCPFveGx48LOW g==;
IronPort-SDR: 2kz2EdLmGhD5Bycq7f8LVyOTrwUgOSz9XnfIILsghGzyO0pAfex2TzL6WjQdGDngWBSBZbmZHN
 p/muyVBmtcT7ZH+sdFNn4qwE1L/IJvX4eFYI28QKonU+HJQLWWFr2CSufLj96k/evu1e7zY0ow
 LWNdGzv/pgY7zRil862tFTu9JpFbRk9JCk2BPyJRq2M2DcLXwI2YXd80RUkgzaETx3FJngrA2U
 DyVy0IyTq7NqBSvd3Da1HYy231YNEEj6Z0UOTwjalYBlYelNGVOh8+1mI5IS9dEorAVIPjfsaY
 2Tk=
X-IronPort-AV: E=Sophos;i="5.64,323,1559491200"; d="scan'208";a="119103625"
Received: from mail-cys01nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.53])
 by ob1.hgst.iphmx.com with ESMTP; 30 Jul 2019 02:31:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9DM+SPo4oovZDVGqiyUTfFILvY1yb4E1atq5VxKhTw2u7oSSad7xtiJ9yjiv0bVV4VbzWw6WHJ1LCTn7UnvQgRfdueeb++Tsx6U7dvnikWYSCMARwYJ5eIwC4rHkogEjAOIZuzojPYs+0Nbj91g3DZc0nATDjhz+g0a5Y5tPI5RONqtqdSUiNy+PlxQmph7y0720ATI430WKG4c6q30yzW/OnltGt9CZXUQNsJlyMqbhFe6k8JLEX/cjiuGR4QjSbEaqPlrMRc8X1QRFbiRCNmuDg94pnx0cahUXO11E5BwNaD7Nuo/TyvISpcygJxwRTjBi+naxKXsbRm6Kh6ufA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3u0eN3jpLSX6MmkWRj2yR6KaE3ivdfHq4UfTECioWU=;
 b=DysTij+efFBEndtgrDrOGh4SmSI38PGPmPNGcgScuUBySSYLTnwCIJ9WAu/PyBDMwQu2ckrSZ8TmJADEVIxtLo1JRaE1mVVXOQinma9jdcTaPF3kmAHHYuTGkroApQLus7Ef2H//qmhipHerWNSgQRKM3L7tXV0pc65/UmATjTQSOpum3rP1Rcc94En4nLN0c73rLlkSCD0GUbuBkQdgK2GBggYQIFz8NjiSHFoDddEaHOh0fLSiuy5yNIVqciqDdvs6VA/Jtp2gUpa/79tNIVVWtpzi8BKBGoC80FDjq+hxOsS+f72o5JCKoswt2v/m/6cAAKDYcnQO85IMTko86Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3u0eN3jpLSX6MmkWRj2yR6KaE3ivdfHq4UfTECioWU=;
 b=smN9E/nvy3T6bia4ne/NSVIZmAAki7AVN5axjVqORXHL18vi2SP/bVByapQIZ26WYCtTMtqWQbdz/WPzQm34/H7L1+tK/1xwCn4L23Ocle0RV0fnUpskfymwkWIGgEDMEOJOLREk04FaSiyauVp90sr+65EMqUu5IW22rIcsdJA=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB6072.namprd04.prod.outlook.com (20.178.234.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 18:31:47 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 18:31:47 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "anup@brainfault.org" <anup@brainfault.org>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Topic: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Index: AQHVQ+refROWkRWGQ0GJqrWaHX74e6bdXtyAgAAaDYCAABM8AIAAMKIAgABcAYCAAAOGAIAAAveAgAPQpgA=
Date: Mon, 29 Jul 2019 18:31:47 +0000
Message-ID: <8ed4d461ffe5ac41b475d22b38019578b29a8d09.camel@wdc.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
 <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
 <MN2PR04MB6061790AFE4E0AAA838678028DC30@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1907270043190.26998@viisi.sifive.com>
 <CAAhSdy0Eycc0ORSnh6LJeC_D_x9yLOkoc7OkPNuN6qOcZEGVWg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1907270108420.26998@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907270108420.26998@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.45.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c9e69bf-7225-45d6-2788-08d7145303bd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6072; 
x-ms-traffictypediagnostic: BYAPR04MB6072:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB6072E990FCD448A37D418B55FADD0@BYAPR04MB6072.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(189003)(199004)(68736007)(81166006)(81156014)(6306002)(6116002)(8676002)(71200400001)(3846002)(2501003)(86362001)(6436002)(7416002)(118296001)(71190400001)(2906002)(8936002)(6512007)(966005)(478600001)(25786009)(14454004)(5660300002)(53936002)(6246003)(102836004)(446003)(26005)(186003)(66066001)(66946007)(36756003)(76116006)(64756008)(66476007)(66446008)(66556008)(14444005)(256004)(2616005)(476003)(6486002)(229853002)(110136005)(486006)(54906003)(76176011)(305945005)(99286004)(6506007)(4326008)(316002)(11346002)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6072;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8u3F/d4Yw6JTNQe8Lf4xdSLr7KCCaTDeO+NBiOh8xt5pJg4I9/jnbGi7K3dHQnwuZ/0ae65kS5ZpbrCc+jBBshw7MWxLt/0689s7iesOXN2Sd0vwZM+csBXVz7ql00e5c482dM4HnBsFZK23rP4r4KyH46UlT+kSZJWqnE4SBktUu/gESB8y/ZOOybS2ucKsqba5RVJuKbQky5cRqDOk58BZBuPRd18zkS94Hal0ESPrMFAGVafZZiUdFvvC6MqtvdtSpRWaFxoc6bF7maIm2UVt/Jv/IMiLl2CFZ22oJVZWmd914gkw1qjqSS38Yypo5MlY0Q++LoaBHj42Jie7g9NqNb9Jveqdc8w35B8/DVuqBh3wXR5sfuNMRRMYxMqQb5fUX7Gw4aelKjoIK4rDM/2mcQ7fHbs3Fl+pIoFMySs=
Content-ID: <B1174BAB203B9D4C8B8F25B87456C7BD@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c9e69bf-7225-45d6-2788-08d7145303bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 18:31:47.2864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_113151_628061_AD026A8A 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 2019-07-27 at 01:16 -0700, Paul Walmsley wrote:
> On Sat, 27 Jul 2019, Anup Patel wrote:
> 
> > If your only objection is uppercase letter not agreeing with YMAL
> > schema
> > then why not fix the YMAL schema to have regex for RISC-V ISA
> > string?
> 
> I don't agree with you that the specification compels software to
> accept 
> arbitrary case combinations in the riscv,isa DT string.
> 
> > The YMAL schema should not enforce any artificial restriction which
> > is
> > theoretically allowed in the RISC-V spec.
> 
> Unless someone can come up with a compelling reason for why
> restricting 
> the DT ISA strings to all lowercase letters and numbers is
> insufficient to 
> express the full range of options in the spec,

The yaml document did not specify anything about all isa-strings has to
be lowercase unless I missed something. The two enum values are all
lowercase but the description says all ISA strings are documented in
ISA specification which describes the ISA strings to be case
insensitive. IMHO, this creates confusion resulting the patch.
The existing enum strings are already outdated with kvm patchset.

I am fine with dropping this patch if yaml clearly document the case
sensititve thing.

Following approaches can done to avoid this confusion in future.

1. Update the enum strings with every new extension added.
	- Good chance that somebody miss something and this gets
outdated in future.

2. Just add one line in DT binding description saying that 

"All isa strings has to be lowercase strings". We should mandate this
in Unix Platform specification as well to be in sync.

Thoughts ?

>  the additional complexity 
> to add mixed-case parsing, both in this patch and in the other
> patches in 
> this series, seems pointless.
> 


> 
> - Paul
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
