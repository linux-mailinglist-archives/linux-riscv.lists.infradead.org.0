Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3849F28E
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 20:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpfTLQLYcA9oipyZfiGe0q+mXf5jJnZcgaHyEHbG+is=; b=sQFuihvH/7661Y
	z02X+Njhrl81swJwYs24Jy7P/nLo/V5QxpRbiBnQY6U8RC9Bw+DulsCnGxRn/Dj3u8Qhx5xZypMln
	k9mZ6jyJxHCkSkoXnkiq5YHxNczPfLzLVNtgIn2PkhweFK9Kqvf8guXwMXUT8YggYay0+GFxw/FJ/
	S55o3cMGvn/pPKIxf3kPs7JfIk5zrnzbaOVceX4XOTwHsRPuDdQWTgS2ydLrNqxc33GbeRTFiGYIe
	HyxzYjZuSpxKy12FoWjNOGhI2lAYQTWe52OfmdGwlBkagGD5zmf1At9DxYM2vfvtXxQDKfLN+OIFc
	qpW2gvn/HYsVJLvRrY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gQR-0006MX-2U; Tue, 27 Aug 2019 18:42:39 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gQN-000682-4a
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 18:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566931369; x=1598467369;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KRHzFDpdMDNiBmiDc4mfN+DWOu7SDuhYWkNuVbpKQns=;
 b=bH71vAA9k7zRPiffLHq1t+tW42kV6YXVFJVjmOggGMlFtkjWnf7UAIHD
 GxPPpyvfHMz1Jd2RPVruzDcXqYNbfXopX/g7v6GkUdtCwwcFhXywnV2dt
 Waw3hYGRx0ezZM+mIXuRK6JmlZb6OPzDExTwv6h54J4TdUEmqsQO2HPmz
 ub9nwhNiN36/netZGZhsAW+lM+m0Xwc40rwEUMiw/ll2qJfOtphQV/Ewe
 IzTlVvRbnM2/tHZqVKa5nNvKdVFg6JUcLFOgghIMhYHskX7g8JI8cIQDE
 WSql0oM2dNqLrNjc1PoDCocmjpH8/GvUFL9MusaPIfO6OMXkPUwK3zCjc g==;
IronPort-SDR: oUAFmcejwGa7F/aWOOrOtUP5SUMwrLHHDo4ztTDK1/TmCQf8VpoafEBeWTYekRijH9ihyAeedR
 yNlj5pSHwKiJAtpW5qBsd1uHqzPyNw4zv12a5qwH48FzLTX/Tzk1jiTHz2Q53S0XKKIXA4JMg8
 nOhCzHduKghlyym4OpolNZSAd9I+wuiFnKH8jWnV8o4FBRd3FR0+I79hdax1Vhpw+AUZW/z6ul
 yOSPZcdCOZhmxv8y8a3Erkky4f75SYh6TDmZQPPGE3y1isigHUyA0Is2A5AHN0pb20pdSOvzNi
 zLQ=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="217294543"
Received: from mail-by2nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.52])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 02:42:42 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRvVacOAjPdOO2uCdT/LY6VLz7Z2vByRb3lmcxx5Ok2Xal6cd89SFx/AdOoEBI1B0dRXej3L5ZQG8cZRUvPtMw6XkFDQwUfyfmbh5tecSRUePw/N7pIUdAA1Hmqr7v8QGxw9BSXpCES5IFvojeoXJl91Cc6FPv4hSnxybYpMjA6/8K7d6bpIIBC/Bd3w2vDwlHAeUzW0fmfpgWLvXWOwIC48yFKJG7kFUzG0GDdxEflh1O6zfpPKq6qmXU8Uq8Rt3fKM/rg5zE7bQ+kYbb1lvYVlwseQ9r7vXDeGna0LrhDr1CbjzxOZRFZtgYEuAwuT9Vv2pkRRQKxA/XJV6K0dzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KRHzFDpdMDNiBmiDc4mfN+DWOu7SDuhYWkNuVbpKQns=;
 b=btcxzvU8c3gm67GZ3PP5F49foUsN8C6CCMOXM8mYHsJ6Pbhp6FTftdyPM5E0W5csi2wsUimFaVK9xOVIOC4It6R6ZsZkk9DKTBzvQL/PD1QETb7Y0ztSK/P+W1Qy3pbH32VMOY3wKEjuL7GIRzYuzG+7sf8qtMqQLJHFQqXEQQUeZv6VqHYT37jnx3t953XSrrmDm5GzE+Z+WBdieeIW3bDadhUkbMjzJQXV+Wjhe1GwATggDbnFBO+lUNilrLgjKaOa0fHwcdIOElwcGhFxFFLSwWZMevxxqT7WKBm3+6/6asKh62+7RtyJhOPTCdLBgtwtL4C//McBDWQIp+mjNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KRHzFDpdMDNiBmiDc4mfN+DWOu7SDuhYWkNuVbpKQns=;
 b=ZCPQYigLK+XiMn0K9AxFRUsWRmzKPtjvHq2XEmqpMm48xwDFVG4cnF5r8smy5mI4HOSaJR2CVTDkDfAr01XRtffT5VYkpzgOBzXpakS1vbp4KdxjIefh9f70Pb1ugX/r7rkSlbveux+4KbOIGgbCHft5iRFeEHmBVYSLVdJqvhU=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5399.namprd04.prod.outlook.com (20.178.50.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Tue, 27 Aug 2019 18:42:28 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 18:42:28 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH 6/8] riscv: use get_cpu and put_cpu in
 sys_riscv_flush_icache
Thread-Topic: [PATCH 6/8] riscv: use get_cpu and put_cpu in
 sys_riscv_flush_icache
Thread-Index: AQHVWLa3LGWms5Pc4E+LLqn10p92iacGu+4AgAC2fYCABeG9AIACCMQA
Date: Tue, 27 Aug 2019 18:42:28 +0000
Message-ID: <71dbde4faaa03e0185b7b56b3ae5f45611cbf4a2.camel@wdc.com>
References: <20190822065612.28634-1-hch@lst.de>
 <20190822065612.28634-7-hch@lst.de>
 <157504fc8f48057a8198e39262a786f901e67cd2.camel@wdc.com>
 <20190826113834.GE15002@lst.de>
In-Reply-To: <20190826113834.GE15002@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5df72c9e-dd80-46d8-c016-08d72b1e5020
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5399; 
x-ms-traffictypediagnostic: BYAPR04MB5399:
x-microsoft-antispam-prvs: <BYAPR04MB5399103C37D6F73818AFF163FAA00@BYAPR04MB5399.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(366004)(189003)(199004)(6486002)(81156014)(99286004)(7736002)(66556008)(64756008)(5660300002)(6436002)(86362001)(81166006)(54906003)(1730700003)(5640700003)(66446008)(118296001)(76116006)(66946007)(316002)(66476007)(71200400001)(71190400001)(476003)(478600001)(486006)(256004)(36756003)(2501003)(3846002)(6116002)(8676002)(446003)(6506007)(25786009)(26005)(8936002)(53936002)(2351001)(4326008)(2616005)(186003)(2906002)(66066001)(6246003)(14454004)(6512007)(229853002)(305945005)(6916009)(11346002)(76176011)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5399;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FRNmv9hQmbYMMjbgy8rE+0bGgjs9432TMsh3g7haCV0k98F0XofmguwM2Lv48B3rJfJRKr/+xuoYKM/lHuQxTrq+khXzjJFqm/ru6HRmMRqbetiZtjrh4pm0NtRgKIYtJhlADqsLqKsRK+94cynIj4XRc8E0PMd/oA6+ajLVCuJkdd95PGsY1JZAquapdYiwtRvIgTuYwH8qAruimay5wrDyfzjj+cuhyodccTTBIIlVz3qBTdT6ViYATGGKJadnzD63EiXgqmdeBUmemErwAHNGyrRLrr+BrfI9wFCFxSRo0t4KxDizW+9AAec9uYCARTgpvWdOLlPHCVYYluTwIrXtt5L9NVa5LmFgvdF5ns4VjTSnrbQKhptyjT7xtvjsuQgrXT/tGVZUKWGEXY00TDV0n2gNVuq6HjZqwXXorCo=
x-ms-exchange-transport-forked: True
Content-ID: <B9C1EC83BAFC9D409365B7B334681966@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df72c9e-dd80-46d8-c016-08d72b1e5020
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 18:42:28.9151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: czZ+kqjl7BXwjvJrJrI/eMUjwiHq87tJpeykMDC9npEJ2lX9ISDcYjIG+/N+YCCphqMm+c4pcgEH4u+/jeohrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_114235_389756_D85CF1E5 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-26 at 13:38 +0200, hch@lst.de wrote:
> On Thu, Aug 22, 2019 at 05:49:20PM +0000, Atish Patra wrote:
> > On Thu, 2019-08-22 at 15:56 +0900, Christoph Hellwig wrote:
> > > Use get_cpu/put_cpu instead of opencoding them.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > >  arch/riscv/mm/cacheflush.c | 7 ++-----
> > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/arch/riscv/mm/cacheflush.c
> > > b/arch/riscv/mm/cacheflush.c
> > > index dacf72f94d12..9180b2e93058 100644
> > > --- a/arch/riscv/mm/cacheflush.c
> > > +++ b/arch/riscv/mm/cacheflush.c
> > > @@ -19,11 +19,9 @@ void flush_icache_all(void)
> > >  
> > >  static void flush_icache_mm(bool local)
> > >  {
> > > -	unsigned int cpu;
> > > +	unsigned int cpu = get_cpu();
> > 
> > I thought it is recommended to put variables with assignment at the
> > end. But I can't find anything about it in coding guidelines. So it
> > might be all in my head ;-)
> 
> I've never heard of that before.  In fact I usually keep them at
> the beginning.

Ok. I will keep that in mind :)

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
