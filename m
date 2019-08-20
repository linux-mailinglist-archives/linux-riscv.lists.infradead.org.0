Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E786B96C21
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 00:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuR7GsQhm1h1KRoxv2qPAoXaIAnp86CCv8ftcvpvm+s=; b=kTYGfuoyXE+G0q
	H/uDaNbHIfNdrpMNpCU7v9pTVnv9shfn8UM2cnC5/TtVee5KwpcXfCfD9BuY9y7+zCVxHhL2V2vmv
	8uTPaHIvk/Z4r7u5fwAHJvYgiiAEM6Fzy6tm6ndxR+zexkp1mXBdCfsZNA4rVB9kBrnjIN305Nv+a
	f3Ouyx/dJlMsDUDtxTPzvL118QNZ9kwRCK0iKwjx4GVFhNn6vgkefx1CmjzTellVqo3c3HRF+pM2r
	01KXL+VVQ/d/xhyFpdz83PYgDRHtaQUbcJUb1dhZhe2J9Tr+5PY+JqTBoPdEa0zHsF8kqHjdao6tg
	6YOlFglXeEv85eN2EMXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0CYj-0002aR-PZ; Tue, 20 Aug 2019 22:24:57 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CYf-0002Xz-Le
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 22:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566339894; x=1597875894;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+ZQsapbw25RmXHksLaual3EsTd6wQNBtj5LNKixCOKs=;
 b=ndEM3rSPfRRhSIWPKPGdqdi3viDQEY5CtxXgmPBaKAz3IX7hwhPUcWG5
 3x3kpzAlN7YUAZQEWB9bsxZ/7trdjS0J0ucAXofcOTCxlh7eZl7xgT3o9
 MOz8hs5uT9GKa0Wi7jEK7idyc9h58grxOgxsH3YJbvVovvDevESEgARB7
 t7lcr85CZr/1w+SVqbNeRnBZcsOfI2moKoTQCJBx04Av4F4WRiQnEf++N
 8BNNG7o3P/0zp/NVIVmC6sHkSvBiYAc43ImY8tvE8gTGfWQy0t5Vcfqqf
 3XKzzrVirprAoGTqGUOYqxSIEh6dRGu0cuNwSkXTx8kPHcdC+KjXzc9qN w==;
IronPort-SDR: xkuNVHo0OYeUtOJamCtAwwzR4vaYms3R87FR6vJ8LRXC/nowoUoXLZPjU2Qkrqp++qLV8wSpsQ
 gySb/TmzUOIgqbT5vWynYJ5g+4u3kCqOGxvodcyReMaHkLTSa4E6T1EY8x2eCPiS7Q+ZhFDXgE
 6i5aRLxnW/6YotKRd1CB1dhhEaN5Wl0sG4SwVX9A+wfko7xPTg83XY99rv09DWkw9wY07EdidJ
 8m4euR4pAfZcHnTSZmEGvzU1R7S29nMXuu2MgDvyJMEARRILTmy2O3C8WzYa6jQ4AXIkZt2SYQ
 N+Y=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="116282190"
Received: from mail-bl2nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.55])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 06:24:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPg4cnYA5LGLGoH+0OjvfKmghGLOHqv9dY3+bFN19X5ZvBgKzkpescbC8/Z7ZUrCM6uGKBAd158fgP7zo6TZmhg//HPe1nOTrP9v98pMAFibtp7hpROYKt2qAaLLgUdnFqrgj+u36eVl9LfuJsT7mVLYxhv6Qu0RlCilsNRxnO1QF19pJn3Zp1gmJ5seWMPjnw/t+6eRc6EPQBqYHqAmgs8DaE9J2skJsAFIqgnnwD+TQnP+WyUkAykofJUS2IxMTvPOFSLMBtqJ6Gw4LwnpjbslXM59MtkFSl64BbJzKeyttaLeZNNXBj9/1tbpDF99OMDqUdX2QBHr+PH3RyuELw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ZQsapbw25RmXHksLaual3EsTd6wQNBtj5LNKixCOKs=;
 b=HXwVgHjgcaE4Qdk/lAH9/BdQDFdtNGarDK7ChOqfzJydH7faUm9SDGMKrGRY01oFt0lvMH39Zd+Cqkuyt2pmGI5vfdQayL+2IPzXPBZrfq+kEgfgxhc2pZDnc0Lu+jsWQ4d1bzaDtqVMMMQ8uI+YCy6iagaGXKWCsqelyJTHNjTFv+ItKhEUmcSt6UaqckvixbG15u2/OmEuNOb61hVoxFgcYhkv7RPY+5e3WK1JIXSF+UZB7rUTb56JmE5j7tLv02X6IHwOEuMYACrXyLQou9UcknMwXVkbzoAkUrV9No+YKEf/1fTX0vEzYZbdKZ2NCRUhTvim4rOzyJhl1uoMUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ZQsapbw25RmXHksLaual3EsTd6wQNBtj5LNKixCOKs=;
 b=mynpM7W3e735XFM0SrH0jQSHtKAx0AtBKBo7Qe4FO6ID9pmuv8tfbJSeSTsj2OFkfZqHSskaAi9ol8dKAz0Z4mv1sV3GXdJ5NRQ+bWKVMkGCelDqOdjavb7ymno36jiVRdCJmPid91NdpTwTRbcPub0n0HON9PQP0kGX9G1BBIs=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5607.namprd04.prod.outlook.com (20.179.56.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 22:24:44 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 22:24:44 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Topic: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Index: AQHVVvDfUBJCIAOoL0y7jXfLdcYugacDqN07gAAPmgCAAAsggIAAujWAgAAen4CAAAHUgA==
Date: Tue, 20 Aug 2019 22:24:44 +0000
Message-ID: <a9c7e078bd1944652274b4606dba7fa52b6112f5.camel@wdc.com>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
 <20190820092207.GA26271@infradead.org>
 <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
 <20190820221811.GA2256@infradead.org>
In-Reply-To: <20190820221811.GA2256@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2ec0f04-8b10-4082-d45a-08d725bd341a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5607; 
x-ms-traffictypediagnostic: BYAPR04MB5607:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB5607D4A0FBB63BFE8224BD28FAAB0@BYAPR04MB5607.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(189003)(199004)(81166006)(316002)(186003)(2501003)(256004)(71200400001)(6246003)(2906002)(5660300002)(99286004)(7736002)(8936002)(6916009)(4326008)(66066001)(71190400001)(6306002)(86362001)(8676002)(966005)(36756003)(118296001)(6512007)(1730700003)(305945005)(53936002)(66446008)(66556008)(76176011)(64756008)(478600001)(6506007)(5640700003)(66476007)(81156014)(6116002)(54906003)(76116006)(476003)(446003)(26005)(4744005)(66946007)(486006)(6436002)(11346002)(2616005)(229853002)(5024004)(14454004)(6486002)(102836004)(2351001)(25786009)(3846002)(562404015);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5607;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hJcUZevKC/+/e7BRjXbW7/BjZ5wTSJRi1yRhNcYoxLd9+SHym2bjNyBShkzQSiFRvpEyV3FxUx63NVUpDFDS2LP/esN9kIYoodjVXQGffSHR4cKPwKloOILg4m47GkQ1rHzpTDbQnMYDiRNhvnuK25mdeWJQ7HdRoUhN99uPks8aXi1awrvZoz9VasrudNwavuiet0jisPHvOZpTMJ84eR633MHofM4BRaFBju5U+/beTQeofYVb4kbbvLAF8QI4qjMKPjdG1qX1LX3zzDdSAbpGxPXbiSZWhsLe5xrL3kkZY7PPhJyG6CUM/8fPHiOWBTelmojQHAxVMvw9MxBrFfggXhFiLNMZIrmRBxaqfYBH1OBoAtrSNXo1ovBVY/OUCiUbjYRAsAjJNnC9VYZp6jjO9awx/N7vK677vSNUaaY=
x-ms-exchange-transport-forked: True
Content-ID: <800C977B9016CC4EB7C894007593F47F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2ec0f04-8b10-4082-d45a-08d725bd341a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 22:24:44.7855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GAqcDeJaN9RUR/YMxIyI4P9waZArOtXnH36Z98N57hyR5nYO6wdDkLLm8l9FQN12n6HZyYL60tV1+OcY5IzI0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5607
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_152453_778402_0552131C 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 15:18 -0700, hch@infradead.org wrote:
> CAUTION: This email originated from outside of Western Digital. Do
> not click on links or open attachments unless you recognize the
> sender and know that the content is safe.
> 
> 
> On Tue, Aug 20, 2019 at 08:28:36PM +0000, Atish Patra wrote:
> > > http://git.infradead.org/users/hch/riscv.git/commitdiff/ea4067ae61e20fcfcf46a6f6bd1cc25710ce3afe
> > 
> > This does seem a lot cleaner to me. We can reuse some of the code
> > for
> > this patch as well. Based on NATIVE_CLINT configuration, it will
> > send
> > an IPI or SBI call.
> > 
> > I can rebase my patch on top of yours and I can send it together or
> > you
> > can include in your series.
> > 
> > Let me know your preference.
> 
> I think the native clint for S-mode will need more discussion, so you
> should not wait for it.

Ok sure. I will move the code to tlbflush.c and refactor the tlb flush
functions similar to what you have in your patch.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
