Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19395C33D
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 20:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wx6ztAr0MtitVShIa8qnWmA5R4Bfeg8DTyFfGM6h9ng=; b=BGlsaeYBiZgxZF
	UN6zQMyoyFOQnsBMz5DBRU/2fEM2GzgBMsKXOD/Kdzdet3iNK/+fnoLqznDivD4R237k4v+GKqRJj
	K8OqZKsVSRXEDhNQnzB734GYAv6oXdREwPRN8juvbeTIuE6Dft1snaa4RUCETkmT2+HNuH7glP5Cp
	shLsKN2K5HxIP8P+VfqgpVU7XOqt3g7R0UM2E2LO61YPLFu5nhRQ1C5mAozdgA3SLmq9MB05AvNQp
	4tPwyykLheT21w8d/fGDaDYqVEPS4uIQ8LTH8JHkcwauNGWxAfQcwwhY21WjQn2ImPHHFLtTuK+Fv
	vox74aAQAlN1QfS48Jiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi1PL-0002HO-7E; Mon, 01 Jul 2019 18:52:07 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi1P2-000268-Ga; Mon, 01 Jul 2019 18:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562007108; x=1593543108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wsFMrpFkypitlxZTPfuvrvWi2NGHfqSRrPvaLJ+D9eg=;
 b=ON7loX7CtTuhSUPxiT0o0eZ388SfRGjn0cR7T94lvmAADizE8VMAD1pL
 n6+0CB76ac+Q9C+y5X/HWFNZgAZDgJjWbdw3yQrfUrx9KWGeUbcd2xd5E
 JYO1InOwXSyfDpFySJCedEuw9fB9vr8Dnql11IwF18LbMoFmFWvt7PNHa
 74MGPKkDBOaKjozRaRFOlFAT/t/2pSnNQfoAExHs7EbA2P1Nlq70BduXS
 VHDQ8uv4Aiq8MCnaW9ph88SVhE9ShjLWfnjpinPbaq6gZtt6WsZpWwiJ5
 HNzNtfOj1HMIwA/EGfpCxEpXQRTNxTOZKKQCFslYvBUSkUVJWboiIAeBR g==;
X-IronPort-AV: E=Sophos;i="5.63,440,1557158400"; d="scan'208";a="113181740"
Received: from mail-dm3nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.56])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jul 2019 02:51:44 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsFMrpFkypitlxZTPfuvrvWi2NGHfqSRrPvaLJ+D9eg=;
 b=RfqzLov5NarLkM8BxjVMolrawSzZ7kxcMuH4T2bEZWPiciRW50zB0SlovdIj0CESN6p6JBqw6h40OWfHNQH7MSu6XR6bV6Nuo37FzXTdbd9x8C0FrhJgcR2lVkqg/HS5Kvc6x0muW1IX7d5d3ASy83QbIGjKMqqq2s0e06xF1Z0=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5573.namprd04.prod.outlook.com (20.178.232.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Mon, 1 Jul 2019 18:51:43 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 18:51:43 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
Thread-Topic: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
Thread-Index: AQHVLSJGz+hI7exIqkGm7p6W+lzWB6a2H8CAgAACBYA=
Date: Mon, 1 Jul 2019 18:51:42 +0000
Message-ID: <5f31cb3c576bdbd89665614582af66d04ece8f29.camel@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13061295-fae4-4586-376b-08d6fe5528e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5573; 
x-ms-traffictypediagnostic: BYAPR04MB5573:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB55733C91F6FA52B2049E51D1FAF90@BYAPR04MB5573.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(366004)(189003)(199004)(73956011)(99286004)(53936002)(76116006)(476003)(229853002)(66066001)(486006)(316002)(71190400001)(256004)(71200400001)(81156014)(66946007)(6512007)(4326008)(36756003)(6506007)(446003)(66556008)(11346002)(6916009)(66476007)(54906003)(14454004)(7736002)(26005)(2501003)(66446008)(118296001)(68736007)(2351001)(2616005)(64756008)(478600001)(6246003)(72206003)(186003)(8936002)(5640700003)(558084003)(2906002)(305945005)(7416002)(76176011)(102836004)(6436002)(6116002)(3846002)(6486002)(86362001)(81166006)(8676002)(25786009)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5573;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IF9yspacXgspoXBZOzePbf2cN0MuQl7fXZl5Jtw8FqSwpsLOjcIpk+GqwhGBqkNTCJrFcPv25KNNuBwQHOhrcfuRKS/z2yz5jr7IdakI4L8EmH0E/TRoZ+PThfdzNqrmilooHS4vFSjEeEVh/dol9E2vtXuAFmJOi6LxcUpuKJt3mh5skEXZ5ifOKIPh0rbe/C/lhO7ALP4+k2qQeIRh8Tbmw9cEX44LIEhkXB6XFm4ze+HKYVnXfdkUqkmKTwR2OdSCzLWXAeVrIrQYJxaBA8372tH3lOjphjDHF14637IzEb5STCFGQ8e/BYM4t/0Jsip3uFSO+jPXCW3kXPExjUMtG/XtUS8BsGQPj6VzUrBUVp/902X5i6aGbw5L7dhpo8GiWUUH2vVRwUKKjsgPd3RNjf4vAES0gO9W1qgQs4c=
Content-ID: <D7966FEDC0A0FA4DAA6BF6422A399875@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13061295-fae4-4586-376b-08d6fe5528e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 18:51:42.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_115148_672898_5ED17DBE 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
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

On Mon, 2019-07-01 at 11:44 -0700, Paul Walmsley wrote:
> Hi Atish
> 
> Looks like patches 1, 6, and 7 are missing your Signed-off-by:.  Can
> I add 
> those?
> 
Sure. 

Is it a common practice to add "Signed-off-by:" the sender even if the
sender has not touched the patch at all?

Regards,
Atish
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
