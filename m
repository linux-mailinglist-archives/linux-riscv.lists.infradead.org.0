Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B225C47C2
	for <lists+linux-riscv@lfdr.de>; Wed,  2 Oct 2019 08:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbwLILHrgVQrvuD4rnUyqcraqpFiqElx0mKBZ/f+aeQ=; b=uM6NZYdDStgBea
	01BN4fAS2uVZUfxOIlNVFJ8nrgtbxkfJxFQusAs9CQ8zUS0QIOrbH1OWsJqfBjeidjfNL71OmegSv
	772UOx2R/is/2UvlG7dZ/1ApfmlvlK0xtCSNUUBkO4BbJmgylDBV42kvexVYngf8UqiY4ox4y/m9d
	A5g6R+amHKMWH0Et/hLo/cOkrHvSf+KuoetS51hhLSPyb9Ir/uclwe3dSyOcDw3O1G2kUH5Trvnv1
	7Tuv9lHccDox+9rcbW67+T/+BsPXHwFJBvhR1IrAdY9e1KbEVoW9j0450BHPwcMKO7ZiD4urn6qJX
	tGEz2/gAIaxqnZM0Gi7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFY8J-0005WK-4C; Wed, 02 Oct 2019 06:29:07 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFY8F-0005Vt-Sy
 for linux-riscv@lists.infradead.org; Wed, 02 Oct 2019 06:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569997743; x=1601533743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UzYkHkEOmMP5qbsWK9Iap/UZT1AjOFYKp5WANIT7QTo=;
 b=ENMLmGtSPD257oAC90/6EEq5gznYIVMI3JNORqrSShn4SEp9C1mdyjOQ
 C48DoLcxG8vneEMglR6jCnhH3Xd3TLzoihRCNoIwF4XxxZlxZMEHCcdir
 7X799mafw76zN+vXo3Il4XzmZtBr9ottLXiQeuaplzkszB4MoKbMUmnbd
 r0Y9V7RJFH5MdOhae7hwI0Wb1OY8jecIQjugrWUrg5Ysdl22BBmedsL49
 FXEg6tQR6yUlgETIGjk35mvCL/rWETmtjGwBJgvPmjW2otGAriFwe6eSn
 hD1Qtp1H613siVHxIexy9RIb8sgSLeKq7y0/552RYS7g/8xI+WBlZEFKK g==;
IronPort-SDR: /koFlAyJj3q8gqF6Z0DhzMgMolu3QLUAZQE/SML6QZOW4EIb09V4dGr/wmwLg5YIpS29/zPqfd
 pN42KhDtTCGMuxHcBe4PGPD6wd/QklENhWRvUJcosYSd2YLkQhHQ3abY+dlnX9XlaIhX3/aEtd
 nlmLyKuhCW9QVbrWU2Y0B0KEXUQ++7/P2bhpLpMmp1N/7RzMrriTD0mqv/adpChRGxR+DFe6kp
 yWNdSmcK+444OjL5fByrHg/gwTbBH/lktymf6thKYY7yI0SJNPPmB3Bsupzs2kcFVl0XkuhwhD
 X3Q=
X-IronPort-AV: E=Sophos;i="5.64,573,1559491200"; d="scan'208";a="226518798"
Received: from mail-sn1nam02lp2051.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.51])
 by ob1.hgst.iphmx.com with ESMTP; 02 Oct 2019 14:29:00 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTldFei08MIqd2Fp6kmXCXQ19EIDoQCdpgbrDL7NIMKIMpOL4GwmSGQiJz8SVPFrZhVD5cjRWSID6Y6HAhQZ5IF9ds24lT+IplRYl8XEaBS3aOwdVBFIHeOxuB/2L8rcjjt7kbXz0bSxUjJUqz7mFdFvG+U8xEThiktVtcrMtfgxSDDwd3sxB849akDrHb07c8t1ZqmpfyoL2F96CO/4dfh/dFrRuvb2STYR825L2rZOdLCEIFp8ksHAzQIapOr1xoW8tVmVG+A+bCDmlMY9SuwTKpiFKBgi1TyRQFe72La5qt4zOW9KhclgJSa8c2aKK6yG1rCFl8EpnHDEPpyBkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzYkHkEOmMP5qbsWK9Iap/UZT1AjOFYKp5WANIT7QTo=;
 b=KV7bEfyyIfpaB7nwTD9ejR71Mly2bo52xUql1+WppvPMbzxaRHQ5+IWCXK+A0BoHEQf4//6GaTwekhVk98qybQhkZcyzmEVRVlMlgfiXjZq6iwoGaecZ2PjOx6WSwwEh/vxoEfl++VZ7zVviU0ip5cSm07I/r2CiW2QIcXI8riM1mbjVUPhcw17UIPpMj0hNGo1o33IaOCI1yLxGDkkFQp2U2X8prOaxX137/8NBViBvgp8xFL9WHM4GJp2WLexX19KfGwwr7Hq7IKLNaw8ztr6PdAEm+TkX7iyyxKUtcw1neQIjfLtHAC1fPmFxcGtIS/Z2RKS2qJFc0Wg7le+wog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzYkHkEOmMP5qbsWK9Iap/UZT1AjOFYKp5WANIT7QTo=;
 b=a1VA7allulVn+6XdxA0MUPHuW93mCoCimmVrbALBG2KpcPf8QGj8TBB5RK9g7PgMQsIQATifqAoFTdDpqkL0dy687FJOeg0Kng3bz0+OYpOVMlOJKiTGx9Rta3YmNs+T0AOv6AoHiweK8yQu79sWo+LuOd14jX/pueTfEhRiwdc=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB3784.namprd04.prod.outlook.com (52.135.217.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.22; Wed, 2 Oct 2019 06:28:59 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2305.022; Wed, 2 Oct 2019
 06:28:59 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>, "alankao@andestech.com"
 <alankao@andestech.com>
Subject: Re: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Thread-Topic: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Thread-Index: AQHVd+597x5i5uf5J02UT+QA3h/uMqdFXIsAgAAWWgCAAB4VAIABB5SAgABM7AA=
Date: Wed, 2 Oct 2019 06:28:59 +0000
Message-ID: <bc0d2f2803950ebb38fd487fddb0fcf8a370512e.camel@wdc.com>
References: <20191001002318.7515-1-atish.patra@wdc.com>
 <20191001070236.GA7622@infradead.org>
 <b0c39a9895698d74e2f44eb1f2faed46eee54bc3.camel@wdc.com>
 <20191001101016.GB23507@infradead.org>
 <20191002015338.GA28086@andestech.com>
In-Reply-To: <20191002015338.GA28086@andestech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [73.162.108.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41067940-68bc-40ae-6554-08d74701cf34
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB3784:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB3784CE51C7A8494B49F813A6FA9C0@BYAPR04MB3784.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(199004)(189003)(305945005)(229853002)(6486002)(6306002)(6512007)(6436002)(8936002)(7736002)(118296001)(5660300002)(2501003)(71190400001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(71200400001)(256004)(36756003)(8676002)(81166006)(81156014)(6116002)(3846002)(66066001)(2906002)(966005)(4326008)(316002)(14454004)(99286004)(186003)(26005)(102836004)(6506007)(76176011)(486006)(476003)(478600001)(2616005)(446003)(25786009)(54906003)(11346002)(110136005)(6246003)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3784;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /lm+Y4isaTKq+gsML+rG1TB6/yt3pCOzvs5+gyA0bMMSwntWUiNA0VwV+IciyJVyX1Kg0WuY4isAPXXYyG+StgJ/V0/wudcr/XBVkxRI7rvQf9zNtU5BasXwnG8VHwuBw9DGizqzzlIbIjSbNbAlT7Jg6Xdecf56eYZogch+FfwofE9eSDp1qPnbXr5GVDv+4sC5/43P+2UD520HHGhfF4imwkAayg6saXg8cxD41IyvAN6vkWbMUpNOh3uulXgLHHwZOvBGTN3hu/IzNVs7RslVmbNY1JeK8O8qfbU/bXUeJgNVoJ1Ke2tn63HgiRheCSFoNrtkxnSVbEj8JYPhkjytBs+zIMO03Lp4BcsM6nOUfXgyZhu4rVICp2fr5BHAzyWTpI/ARPvdbXqakwl9/r0Bd43zNGe1CgKNtaquMNDgYJAd0a7rqp+7a1pdEpII78tR6nn3nc2sbDVA2PSEOA==
x-ms-exchange-transport-forked: True
Content-ID: <3E04A680A98562449A11428D2831F1BB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41067940-68bc-40ae-6554-08d74701cf34
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 06:28:59.1272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tAFl5itzCpFgw8ftJP4adcO36LkLdkpoz9J+UaY2i0kbv5DsR3ZOuyUxaY4P1NCyeM+F6HTRVkk6CDX9ztIE3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_232903_967417_72506435 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-10-02 at 09:53 +0800, Alan Kao wrote:
> On Tue, Oct 01, 2019 at 03:10:16AM -0700, hch@infradead.org wrote:
> > On Tue, Oct 01, 2019 at 08:22:37AM +0000, Atish Patra wrote:
> > > riscv_of_processor_hartid() or seems to be a better candidate. We
> > > already check if "rv" is present in isa string or not. I will
> > > extend
> > > that to check for rv64i or rv32i. Is that okay ?
> > 
> > I'd rather lift the checks out of that into a function that is
> > called
> > exactly once per hart on boot (and future cpu hotplug).
> 
@Christoph
Do you mean to lift the checks for "rv" as well from
riscv_of_processor_hartid as well or leave that as it is? 

> Sorry that I am a bit out of date on this.  Is there any related
> discussion about such checks?  

We are trying to remove all the checks in /proc/cpuinfo and just print
isa as it is. Here is the previous discussion.

http://lists.infradead.org/pipermail/linux-riscv/2019-
September/006702.html

> Just want to make sure if the check
> stops here and will not go any further for extensions, Xs and Zs.
> 

At least not here. I don't think we need to check for optional
extensions anywhere except in the extension relevant code.

> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
