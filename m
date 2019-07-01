Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA145C43F
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 22:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bH512cgwk6cdZlLV9+YFazxDFLYauHeEIn2+EN6g6ro=; b=IV1wWTP75hQEgG
	JPfqJBilkE8EmbxRiTspBxGaU7HGdRc0/48z6PXofCaEIDK5Bwk9QikqQ8FkqVaEc4k2wEzXVsarJ
	SBEihJFmv3KwjF8T6gzF/pkpdbG7tjR3TkPeLKgurQoCbNGO0ZzIxR7HBsIHxyhnxi7VESBz+b4Fi
	xzr8VS9rZWQ7FIyYATSiphwyjccJ76L0Hb1SS/2GA9Jxk6idWzb5l1hTuqw6MKeykpQv7mUb5Azom
	s/mL+klLoeKB+yQZZznDUW4mcL0U+gkbcyLFjGBKKNVxDUglfSjiucCn14kND/caZ5oBE29S/dGwh
	Bef9qDM2HepBnxFbWNjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi2lT-0005DV-5d; Mon, 01 Jul 2019 20:19:03 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi2lF-000552-BR; Mon, 01 Jul 2019 20:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562012339; x=1593548339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=N8FdXl9fQhVeMl/osm7KAlS6gPFgaAA9xTyaCj4BAvw=;
 b=hE0mA2cokNguxHHDHrioNJGNB0qvih89X+kTGL1KeZjjTWKx1InYKbqh
 uWHVbTX72vlcAB23LMBTNdfdlAt859pjdE9apWJMXWUcj1S3A168yCxwK
 fLVBtJHDuu54RMG9nsV9JNzjQ18dfIFEehMIGX1DsonFa0fvkGywEVxDd
 7Osw+AD4uJf7gO2Y3QwBMxrBqzQNS5H6tPdripdgkUKyDJahyWJh1J+DB
 f2ooI8G+mIixy74bniwE73BJbDg5qncKqi7O0CUlzQvbLGLMeqn7ezRub
 YxLMPeMzfY9m3K/VShqP4mH/iBT5ImDAUxEpdSjIyQB2SFyzh40bR1omf g==;
X-IronPort-AV: E=Sophos;i="5.63,440,1557158400"; d="scan'208";a="211832433"
Received: from mail-by2nam03lp2056.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.56])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jul 2019 04:18:55 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N8FdXl9fQhVeMl/osm7KAlS6gPFgaAA9xTyaCj4BAvw=;
 b=fUaChbDyboOJkSkpFbOeD6ynlDJk3hv5TXEFgpEXSHjJ4Szj4f1xiw4DH6HGUMATnS585m3k1VXdlqfQOziVg30gOiGGwf88/18iAwoXBWFxg6OVVuCnNyNRPzqmwtampVfXnGNRiynkbfq3e9UjSlYinVOhTjnadOw8rJ2wq84=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5509.namprd04.prod.outlook.com (20.178.232.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 20:18:45 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 20:18:45 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
Thread-Topic: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
Thread-Index: AQHVLSJGz+hI7exIqkGm7p6W+lzWB6a2H8CAgAACBYCAAAEiAIAAFy+A
Date: Mon, 1 Jul 2019 20:18:44 +0000
Message-ID: <daaf6f4e6512402bd8b6fcefc3dba9c045921b38.camel@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com>
 <5f31cb3c576bdbd89665614582af66d04ece8f29.camel@wdc.com>
 <alpine.DEB.2.21.9999.1907011154310.3867@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907011154310.3867@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.45.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 392baa72-e3fe-4abc-8622-08d6fe615186
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5509; 
x-ms-traffictypediagnostic: BYAPR04MB5509:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB5509E1C8D65A9917F7C2D528FAF90@BYAPR04MB5509.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(51914003)(199004)(189003)(478600001)(76176011)(118296001)(25786009)(102836004)(99286004)(54906003)(26005)(5660300002)(6306002)(6512007)(6246003)(66476007)(5640700003)(316002)(72206003)(6506007)(68736007)(66446008)(6486002)(66556008)(64756008)(6916009)(73956011)(229853002)(7416002)(66946007)(76116006)(6436002)(86362001)(486006)(446003)(11346002)(2616005)(476003)(81156014)(81166006)(2906002)(36756003)(66066001)(966005)(3846002)(6116002)(14454004)(2501003)(8936002)(71190400001)(186003)(2351001)(53936002)(71200400001)(4326008)(4744005)(7736002)(305945005)(8676002)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5509;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DmK/3pHc9Bd04sX1oPOoOSDuOu9s7ntx/WZT3Mizz7c47m29yOQe6UjfIzZz2IMXnEILYkg5h+GGCzZmnm6CMXHQtDsB212OpPb0pl2GM7WwVi/Liwei84bfApPMHiilt4lkniFuOgrLzE9lxyux7ClpwqKeUqoZV9ksizKHgctG7hhWKV8nhKpdnjn4IKmgdcSu0c3z+DlNwiaLdxP/lbpCKpNnE6EofBTzfNUQVC8ZcpSi+ilpT39pXFiv74DoMIVxNDJIuoPgDvpZTcJHAKXzuxGzYpp7MBfKN9mhVm9DS4sArjNgjK6pAcQhBr805YeZVifxKJ3hK8D+pPaYAMoEgncSMgXl4AByAt12tnlDPMDjkx/J5b67+8vdP7uGqqs185LyhGUesXJkrIngUdRzMqH9K/YBwVUt14cxZtc=
Content-ID: <19593EB42262524DBDC8DEE9233E70C3@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 392baa72-e3fe-4abc-8622-08d6fe615186
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 20:18:44.9279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5509
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_131849_518157_BAD0DB5C 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>,
 "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "johan@kernel.org" <johan@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jeremy.linton@arm.com" <jeremy.linton@arm.com>,
 "ottosabart@seberm.com" <ottosabart@seberm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-07-01 at 11:55 -0700, Paul Walmsley wrote:
> On Mon, 1 Jul 2019, Atish Patra wrote:
> 
> > On Mon, 2019-07-01 at 11:44 -0700, Paul Walmsley wrote:
> > > Looks like patches 1, 6, and 7 are missing your Signed-off-
> > > by:.  Can I 
> > > add those?
> > > 
> > Sure. 
> > 
> > Is it a common practice to add "Signed-off-by:" the sender even if
> > the
> > sender has not touched the patch at all?
> 
> Yes, see section 11(c) here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n418
> 
> The main factor here is that you collected and resent the patches -
> thus 
> you're in the patch submission chain.
> 

Ahh okay. Thanks for the link. I will keep this in mind in future.

Regards,
Atish
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
