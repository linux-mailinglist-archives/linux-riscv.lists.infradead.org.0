Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9548A40D1
	for <lists+linux-riscv@lfdr.de>; Sat, 31 Aug 2019 01:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgtJcZyATZOSerELzUvbKp0we1jWaR32jjHXb6uWOJo=; b=NKyIZPelWMB+6l
	qdu8UM40A1b3IS6VfOev5nTLyLig1hyDGV9TlG+FTS3QvQPefJNP9dSASLiD6HtpIWMiPjO5PdnSo
	9i0hs7764Q6zV4kwCfrcgZefWvV5gRnkKF2VF5QBdiDf7yomz+ZPkAv5iXHvvi2uRAkuMVtjytWc3
	cuhSPnQN3bDPyFgIKqro00bHcM8gQC6NMqXHmL+cT/l8YMDRCKXbYiGbI0D1jBAUVb1y2X4X4nLys
	GzLk1WzF6/7pwHnkCwl6oH7WiPI12SAwRxBbFC9SO5T19XLrSLaoXHTsGSPztjz/5ETNLflpJ3E7S
	OliTf0Dfl3mvKXkBbYhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3q5G-0005ZX-54; Fri, 30 Aug 2019 23:13:34 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3q5B-0005Yp-Gw
 for linux-riscv@lists.infradead.org; Fri, 30 Aug 2019 23:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567206862; x=1598742862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=idaZZxYLZeoZpQOSdYf19iYiDOd/EXK2Lstx5Pdel6U=;
 b=ctL6tEmg6mZ4TI2GXz5M+nWm1Iy232iFplxIUDNXCUVUmOh9+N6Ug0U4
 VVUmv/ZxgB9kFhsOqdoXS4Fjcur1kBfmm3Av6g6BBKeLsj61Z7ZCTDW4f
 LypxOKeZlofZ3FbKuzAKJnvpJ3o9SNgFOtzrVdzKaOMlvUGCr2BTSxzUw
 Fdu2EBx/SQy9ZHaoLuSZ8uCNROGfXFBrY/4yrEIvBaH71vdmlQQ6r7doo
 ZjCb0kW30u7uy8OfTLU8m/sksIb5sBN756LQkiBjKksUL/SiNmPBKNGOt
 tijvnxerpq8MbekExSc7IXCe0FPu+maYYJb1ZPsCtkOcSS10So75kxYvp Q==;
IronPort-SDR: n5JhCh4okUxmPKQsPFxYLYUIa3Mgb4VWZGvbXAE58icN2v//dteGmKXy2vzvYsVsT4oNApUqsm
 YFtsPcatcz4FxNqMKKGIg5aVn1738MZk5aaDJTjCmkuzla1DMfmYM1U+51FUvxIQ/u5RzYeeMf
 +xFx8rFJsXlxk6X/CS4PAwM3mYyGwryUSwNNgIdritMqP3PC9JAMuvgDTvOjf3uQsT4X2WBvde
 CXGSuiqxA0URDL9DrhHShCNP8+o99Y+Eryj12FtgAmge48EIfSd4fklixgD29f7zBjMkqW4qDO
 ov0=
X-IronPort-AV: E=Sophos;i="5.64,449,1559491200"; d="scan'208";a="217610664"
Received: from mail-sn1nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.59])
 by ob1.hgst.iphmx.com with ESMTP; 31 Aug 2019 07:14:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nruJ9W8KfRl4IYErhSMD+iAPmpmBIPP8AULsZAlriSus7wPIYV8AbH62Ko6eajfDqlLMIR/2IGeHPfindqrUWQX0nP5H8j1vj70ezSf+T8UAOReSZ6XKMZGBJLZ1vI7GDLBJ3ABB9rIGLCxv9oce3HSpI2H7WyNDc86hcEsBk35xqt8zjxJDXtcq2FKJjPf21NU9PDTFoXnaF9xB5dLJ9kIpsE3rj1SAuW5I3GOUxmd4Sl5g2xUGh7ljLTpsb8f5ES5gAQb2ylmB7HPPCAGtzYSAc9+KFCMH0HLI7agbplzpGswRK0xe51AYl6mbZXEUCvNVRUQhSlIslC3Qvogz1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idaZZxYLZeoZpQOSdYf19iYiDOd/EXK2Lstx5Pdel6U=;
 b=V/2HOdoPen4lyFHdblWWgScjqA3v1HTzO7HJE6QWIgWUQ8Rip6eD2ck8yGZIQPC0kRLvuHrP+b5US9LnWbX1UznOyOU85hEoobiDww/TCiiQ6vtKwxpc5wYvU8IihRoVjaOFIDpFwCiKmeygNni7DV7eUbwsWooI3jNc2cdDy1PAZxtX39YOIDOfx2TVYUY5yXrn+qkPMkUlCw+82ch+gc8BFt9/hDr3u//1UNOFQnO6l7jmLxbySVzGYgMUazZURdVzkGbi0+y7vaIY8tDQpy42PygZH1o+OdlMija2ZfD9woPA0dB3+MQYsS1M1ny8pwyJ0X9FbgdtfLvHPZ00wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idaZZxYLZeoZpQOSdYf19iYiDOd/EXK2Lstx5Pdel6U=;
 b=NTFRB/Wnto2cwitZlXiuOXBQ2gKsygPoT+bNwN90s/0eQwc+RWz3HQ9NuqXktl9vFC/Dz7LY3yI3hfN+lgLD4FgYMwnY/VYTiSdd2Yk+BCbhFN8q9zRVOsEpD+vYChd7LtGQZZXf52vSjiUR8cIbwHQvKZ1tJPoqgWqJaFHPl84=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4134.namprd04.prod.outlook.com (20.176.250.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 30 Aug 2019 23:13:25 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1cc0:3996:ffa5:23c9]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1cc0:3996:ffa5:23c9%5]) with mapi id 15.20.2220.020; Fri, 30 Aug 2019
 23:13:25 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
Thread-Topic: [RFC PATCH 0/2] Add support for SBI version to 0.2
Thread-Index: AQHVXGav48Iq39BuIEaKaF29rj3wXqcPE5gAgAB+pYCAAmaSgIACX24A
Date: Fri, 30 Aug 2019 23:13:25 +0000
Message-ID: <4bd0a62ba36587661574e1bf8b094b0a28ec8941.camel@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190827144624.GA18535@infradead.org>
 <a31c39e8653bd04efe0051a5fd6f0238d33a80e7.camel@wdc.com>
 <20190829105919.GB8968@infradead.org>
In-Reply-To: <20190829105919.GB8968@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7725f00-97a3-4b00-3a77-08d72d9fa8f1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4134; 
x-ms-traffictypediagnostic: BYAPR04MB4134:
x-microsoft-antispam-prvs: <BYAPR04MB4134A019DC21EB1922C750FDFABD0@BYAPR04MB4134.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39860400002)(366004)(396003)(346002)(199004)(189003)(6246003)(6436002)(2616005)(229853002)(476003)(1730700003)(99286004)(486006)(54906003)(76176011)(11346002)(6916009)(316002)(26005)(36756003)(6506007)(8676002)(25786009)(66066001)(81166006)(81156014)(6512007)(53936002)(8936002)(6486002)(5640700003)(5660300002)(478600001)(102836004)(2501003)(6116002)(118296001)(186003)(7416002)(446003)(14454004)(7736002)(2906002)(305945005)(71200400001)(66446008)(66946007)(64756008)(76116006)(256004)(14444005)(71190400001)(66556008)(2351001)(66476007)(86362001)(4326008)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4134;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aDOmN2HHwGWOvkChQfiMw3OwnycP8uvehyeZJhNHz4oQyUKeiD5kO4BiVjv3xyWjkgFbSq7AWVqxLJkSHSbBaC/XV5JS0Llt+gIvQ7luTFgS9y1B57XaJNqrTEYwoP4OLEEjtUEshaNcIX9V0ql/Y9LF0m3SaeU3wDEToqXrT9xvjXNFw239tzzodWwkPw7WO3pUDPuYX0sJsnD2aG1fdOsf2zhXpZFMDi1mJ/1Ou6BaUGcnpN4kIxFbXtdBOHTAot3Vnh5upe7VlmpMKax1wRDomZ8bFH9Nkc17xnlEv9DK4klDVki/wLPqvecPCfDot8CgPfglrEf1biWlvS3TABiwpNR+ghmQEeDX8SM/++XT73WwfiWPViGdlLRA4U6jnfzIOga2U35IhdzcVCy9VJ4uuaXgc29oB7sSrFFvaeA=
x-ms-exchange-transport-forked: True
Content-ID: <0FF9975AEF3AB24B8A68052B5A4F1630@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7725f00-97a3-4b00-3a77-08d72d9fa8f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 23:13:25.2796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zs16T0SjjNILeJKC2tNVasv+DFbUiolFBxdBlL2RWW4NDIlmZznTz8QuSCwKH4AbHpyaRJ2geefdbyL693zD1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_161329_768499_7DAFCDC7 
X-CRM114-Status: GOOD (  26.19  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-29 at 03:59 -0700, hch@infradead.org wrote:
> On Tue, Aug 27, 2019 at 10:19:42PM +0000, Atish Patra wrote:
> > I did not understand this part. All the legacy SBI calls are
> > defined as
> > a separate extension ID not single extension. How did it break the
> > backward compatibility ?
> 
> Yes, sorry I mistead this.  The way is is defined is rather
> non-intuitive, but actually backwards compatible.
> 
> > I think the confusion is because of legacy renaming. They are not
> > single legacy extension. They are all separate extensions. The spec
> > just called all those extensions as collectively as legacy. So I
> > just
> > tried to make the patch sync with the spec.
> > 
> > If that's the source of confusion, I can rename it to sbi_0.1_x in
> > stead of legacy.
> 
> I think we actually need to fix the spec instead, even if it just the
> naming and not the mechanism.
> 

If I understood you clearly, you want to call it legacy in the spec and
just say v0.1 extensions.

The whole idea of marking them as legacy extensions to indicate that it
would be obsolete in the future.

But I am not too worried about the semantics here. So I am fine with
just changing the text to v0.1 if that avoids confusion.

> > >  (1) actually board specific and have not place in a cpu
> > > abstraction
> > >      layer: getchar/putchar, these should just never be
> > > advertised in
> > > a
> > >       non-legacy setup, and the drivers using them should not
> > > probe
> > >       on a sbi 0.2+ system
> > 
> > In that case, we have to update the drivers(earlycon-riscv-sbi &
> > hvc_riscv_sbi) in kernel as well. Once these patches are merged,
> > nobody
> > will be able to use earlycon=sbi feature in mainline kernel.
> > 
> > Personally, I am fine with it. But there were some interest during
> > RISC-V workshop in keeping these for now for easy debugging and
> > early
> > bringup.
> 
> The getchar/putchar calls unfortunately are fundamentally flawed, as
> they mean the sbi can still access the console after the host has
> taken
> it over using its own drivers.  Which will lead to bugs sooner or
> later.
> 
> And if you can bring up a console driver in opensbi it should be just
> as trivial to bring up the kernel version.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
