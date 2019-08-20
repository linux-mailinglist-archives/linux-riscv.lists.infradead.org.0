Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9548795214
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 02:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/m0O7RhBT2SgFTxqOc5a4eQIFKCAbz9IO3/KyWPwhk=; b=DFqhVt0VtctBEw
	aGUqxR+9Gt9FAleQEfShaCRoHkc+H6lYl+W2/ZbVzkaKvjKUx3sQnpnblySqF9asbJujOAQi6YvYa
	IJb8tAF+In+Cu4rDciXvO/JqCbN2yWMXZ0abElEEk+FOnW5UCJDAi4nTZpcaJfSoYskGxU0Vlmmmg
	xc+SSEZplcr1AjGmNfitDbM+szpUVSfz0POL9pdsgDD5W7cXWIiIdbH6cZXrhbo4qfdevsLbVafYI
	bKKC3clfqMW1fWmPRr3U3KuX843trEzY9O9JCETn6/MyqsS4YHocdvGocpCrkvVkW4qi7URpTA2AJ
	DQHJxxypjO1IMFp9McTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrbx-0001HY-B0; Tue, 20 Aug 2019 00:02:53 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrbl-0001GR-Pk
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 00:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566259385; x=1597795385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=TZcS0nUDea+a+6+7Jh2sz6QMkoZG7u5VUqBE5oDjUHU=;
 b=Xx7DrYkSipIvQvmKA6lk4iATXoNf9gA4NRhOs/qFigNlBIe5+KFUvGcF
 ZdzjTG7c/nIuxK8ODoqzTbNpWcGGyDx+S702TQmkjKnszMRs+9UAmmxB4
 0qoCE+awL4qEtxk8ehcFv9ARTKRAWvxmCR561eLj0HVbIhvQXrXfWnloj
 eusoyy4wZAZiLhmXApHHv4NCULl2PIU9l/7lNJlCT+T94971mXZzdeCvX
 p2n6OoSUymLmy86ggcthPhatdB43Jtd3ODCqkNPAgWsj7H3NfXm6eTEjj
 fcUYV2+i6MDuLr92PrWI7NhjmLZDYtJj9jpQoz2KZlIUAvI2lTP8yqo8s g==;
IronPort-SDR: tsilV5LZVSkHckYgV3A2CZs5kOuEs4e2TpN0loKjJZnk5biBP0jtyzVRq/oh1pRhlmnRAjZQAZ
 B/55VRbNKWCxM3JdKOvGJiZS1FKVyGm+qa5EDegCQvNty1Os9x79O6lKFRnmBuDAt5I8o5NaiX
 OEsIpyc+rhxCEVC2W/+FUKA/kCWhKBBSTDU34grE9EXhB5LegWGgwAIh/Eb1IqPG83l239RdWC
 I1YbocLA/wW8W4mq+99mf8OEv1XrJPNFm1l9UdD33tmLmkKwHZWW1gamdSh4PjEWvRt1nRwK2M
 oa4=
X-IronPort-AV: E=Sophos;i="5.64,406,1559491200"; d="scan'208";a="216586457"
Received: from mail-co1nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.51])
 by ob1.hgst.iphmx.com with ESMTP; 20 Aug 2019 08:02:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QA5AThGxHDdCUCqEGg6lS3OX0+miyEgC1dwThR6uKlXNvzmMLx8JPjiBcJog+fjSOjxdEgJF2D7OGVRxDpWGh8L1lTkjB8sTzn8Pgce+8UxnvyH4315RSkpteygEp8oTDr7qYGJIHauVI7e79aVz8Kd/7XHOvTJhOdvM6cFquvssVRcLAoYr79AVewPMwUbVNc31MT5O4Mv5SAPoWK3eLOf+b+ASL+a3I/lLd/DGKIJ1gMvH3OyG68XChFYHZchYAQTS55hDCP3Q7R/QYP2It3tVgW6/ww1YniS8XP42xVk9P9qgRJJHtgd9hikUHc3lwrnsH6bRSr0fnP02UWmPKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TZcS0nUDea+a+6+7Jh2sz6QMkoZG7u5VUqBE5oDjUHU=;
 b=Uiiu0azmra/rDnbWWQb7RWDqplzYBAitqK3anA6Pd/CTttOTXBChTCH75M7x3a8IBQXEDZueO3vCv79R6ZO0xQUgsn7ygi35wCyQTNU4IumPN2BpVprTkm74p0KEkeFp5/6O58sr4oHJ+UFPjz+VIsa6GQ/ztTSwqel7B5ePcZmq2hGlVeamJjTUvEIyTxJeYSELLDihsVmp90Ingxlq+RdFc0A23dmwoyJuqhd8QlWclrk3BOm4Fb777bCxQIVW/v4hXBh3Kn6zwMNqT1eyhT6XGvUAfAtVwfcwEt9ngutwlBYqUtSvjndetg8FZ+bwjGb48Y6rBaiRXjHvINJ6Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TZcS0nUDea+a+6+7Jh2sz6QMkoZG7u5VUqBE5oDjUHU=;
 b=Eej2rG7k0GHND6uYDYN8y8z8FzXmNSDeYA84/ousyNzzbTkGx419OaxfBTZ9P1TanKvc6n0EhwKiS90h3d8DWR0mSFoc1GZ8LFmE56gezY/ExsPQaTDeWVeuOHuHofN7uw32VJrAbkuKPMV0eLkE1Mc57KO/x66L72Kcl4O9wBg=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4711.namprd04.prod.outlook.com (52.135.240.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 00:02:31 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 00:02:31 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>, "hch@infradead.org"
 <hch@infradead.org>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Topic: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Index: AQHVTxz5XkoGRRVrekixM0/zCIcSeKb3ngaAgACcGwCAAO7ygIADixaAgAXnX4CAAAZPAIAAAFqAgACUswA=
Date: Tue, 20 Aug 2019 00:02:31 +0000
Message-ID: <797e3d1cd06dfc98cca0b595a738d297e9e858be.camel@wdc.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <20190812145631.GC26897@infradead.org>
 <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
 <20190813143027.GA31668@infradead.org>
 <3f55d5878044129a3cbb72b13b712e9a1c218dc7.camel@wdc.com>
 <20190819144627.GA27061@infradead.org>
 <CAAhSdy3KLCW540mLVk4F6nAqYP2dYuiGqO4FuwTD1Hra_gHcGg@mail.gmail.com>
 <20190819151015.GA3316@infradead.org>
In-Reply-To: <20190819151015.GA3316@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d97cf9f6-fa81-4282-b956-08d72501b255
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4711; 
x-ms-traffictypediagnostic: BYAPR04MB4711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB471163090DB1C19B6793BC62FAAB0@BYAPR04MB4711.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(110136005)(478600001)(3846002)(6116002)(54906003)(76116006)(4326008)(5660300002)(66946007)(66556008)(66066001)(66476007)(66446008)(25786009)(102836004)(118296001)(6512007)(53936002)(64756008)(6246003)(2906002)(14454004)(316002)(7416002)(71190400001)(99286004)(2616005)(2501003)(305945005)(486006)(476003)(8676002)(8936002)(229853002)(11346002)(446003)(256004)(81156014)(6436002)(81166006)(7736002)(26005)(186003)(86362001)(6506007)(6486002)(36756003)(71200400001)(76176011)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4711;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: afvscNeV9o9pBfQac2G65nVCzlZideJ+auUNW8RyMtmJ0T15DV/7Am7kQH/1vW0oZGq4iQGK8AegGvyHtb3WZRDY1jf0cZ6L8YhqdnNQ/8PCrip3PvD4n7wpUr7oxbJzyfVZBw0Ks331hh2U+9ynhUavD40iGIG4eZkiog45eTcTus7BMZFK/ThwNBXSzhOp6fmIftiMkOvYqhSDWZfed2TPHPsO8KFrZySFYvhp3hwEBQjVg/X9FEWYCmnMdnn/m6KOfQYLOFEvypKYvPPvQQwhN1t4PopozGBo/1qIagzxO+n2Ec/h7Vsbza7oQgrqXgbjBSC87vdWWs/QqWH+YDRBff60GJmjDCG/D1l3ky+U5Sjf4JVcIKxsr8iVWsdXAUr8DjjUBMcnnySHPqRUu3sGlvl2uWxWA6diOJyw6Eo=
Content-ID: <555FADDD74BB684F9EA1BCB6B3332D5E@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d97cf9f6-fa81-4282-b956-08d72501b255
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 00:02:31.2392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rAS7NPfeCzDyOvGsk0wIALTmynx1fZ5+UGOlGVAijDq6bcyJ/tjgfMS2zP1ovi4gXisxeHHuIDFtvPUCnvahoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_170246_767933_6E1C2425 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-19 at 08:10 -0700, hch@infradead.org wrote:
> On Mon, Aug 19, 2019 at 08:39:02PM +0530, Anup Patel wrote:
> > If we were using ASID then yes we don't need to flush anything
> > but currently we don't use ASID due to lack of HW support and
> > HW can certainly do speculatively page table walks so flushing
> > local TLB when MM mask is empty might help.
> > 
> > This just my theory and we need to stress test more.
> 
> Well, when we context switch away from a mm we always flush the
> local tlb.  So either the mm_struct has never been scheduled in,

Looking at the stack dump, it looks like this is the case. cpumask is
empty possibly after a fork/exec situation where forked child is being
replaced with actual program that is about to run.

I also looked at x86 & powerpc implementation which doesn't seem to do
anything special if cpumask is empty.

I will send a v2 with no tlb flushing if cpumask is empty.

> or we alrady did a local_tlb_flush and we context switched it up.


Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
