Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8F6B2966
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 04:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXI5IpkBHJ5rceYrsVWvJRUeHTHqZU/G7CwkuZHwjms=; b=OtwZ3UpKLAue+r
	1KGOLJlbVfByxj6/67krKGQasOvc89LL9SBu67pe/bq3C3G5FlHKWqEhGCkH/0yewk2/deMpxwpa7
	CM/evytMuLqTMcMZWl/r8Q++GpbZ7SRM0F9QM4otMPHQztxdvzCyBX2mHI+Igwas+2+sJQzC27xtf
	v3YuHNfeMBW7oBJZ94HSiKBNCaLGlvRIuT0OcrML02cCve98KqUwnwwiuWbxuYuOmfYm21RzfGp+g
	2APfXPZcMbygQfrugp6GJLO+PPvoMku4eSIx9wNYg0n4aHhSWMFHgCJxnIFNF7Ye7FyrYzYgy8nr8
	1uV6x0HnALHa5VcWeY/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8y4g-0002ri-50; Sat, 14 Sep 2019 02:46:10 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8y4b-0002rM-Tp
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 02:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568429243; x=1599965243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mKcRMYpshTFUGU5F3waOSDLPl8Ou1B1JB4yv9aR3V70=;
 b=mE5mMhYtg0tVtsVi+fRBGoGYT8x+cdkZJCFpw99y/xdOHnwL3XiZoLCd
 0Bu6NQgHPaNqH0MhJgALNpG2FHf5kx90MRyJb9byPhdEiIdL0qJhQheBs
 bkCm0HYOGRiEZYSgHtwgo7D1PgaOPBucpTLqx+IYwXpu7ieVYTNHmMGJR
 ljjKMcXWRyI6WQ0PAmXHYe8zkqbuMZ5/6c2iDqMh6cwSyp37riwWercmS
 qWXpus8YrmW+kRHyVPHiZV3OflczBE4iXHsbxPTUWpm7anlu+D9foTgqK
 Aacc4gykv8znvcnnW8PxEYCDZjCtTJiwwpczLk5AHV7HY6up/geAPddC0 A==;
IronPort-SDR: RwbgtsXk3CU6WW6ab4wesQKWEoLjmxCTqFP/+7RAVXaS4kTXp8WdyyAUtgUmZ0/sp5lHnKvoe+
 xLqUHOCzDPobC26b2v/raxXfEBi4V9biM0NEseOKXcTx5bk69Db8FqIUOOE2ZJLknRYNgkJFK1
 Hq6BYkVB1I8dvw5wYqHnvSHtM0kuZnMOKIkWTW1RYBipBkg/qzOpUVjV6eCXPAoJ9MRDjMZbrK
 8Nbc1Rq7T610gr2qY52aceAASn4eErX8yXD2/hV9oxqgkqV3NyA3xLkOT2xz7uALZ+KXO/iY7q
 BiA=
X-IronPort-AV: E=Sophos;i="5.64,503,1559491200"; d="scan'208";a="218964056"
Received: from mail-by2nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.55])
 by ob1.hgst.iphmx.com with ESMTP; 14 Sep 2019 10:47:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpZfT/EeaH66AE09706q3ZD2A6nJimuB9jgaoT1rkPOYOesllG9KixOnQdPdQ1W5vSlb53jiMUepv0xsjNRblx5cGmWTTnV4FwoHZuuPeggh/yIjHVg9IYF79W3lyXzmmiwdTVmf5ptvn0vDyfXPWA+JGiPzvjTwmSxsgo/sVEG2y8vGT7B0d68U+8y13IVwelRYa/yFJK/qGWSIs75wvD5/0bgJs8UCGNOxmKK9v/jkXbp4Pb2XX0N4C3kWRzANbTfbRMOz2Ry0Fz4UT9BYKyyIjQqI55YPuLZR3+sgo/48gYnEZHBAkLRNTiUrssIPj8HjSk/OtrXimy6RvBVgVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKcRMYpshTFUGU5F3waOSDLPl8Ou1B1JB4yv9aR3V70=;
 b=TIWIrkaVlRJG/VCxLR+2XeLY+AUWgnLeSQPPu4YL6r7d1/+V2xCW8AqsATHC5wOgi5q8ivM5LGzUIZD/kCiD9u8PQXWSUdj0/dSeAPH0cQrAuFqD/fSSjWxl4wVhl50xMrCzOlyv9O1QPV7G7sAWKWqb0qufVacdObCfPhr9+Pwr7FiDRZaLNb/BgmgA30CX/t0SD+9PBdprWYDpIhkwZMqtS0EBo77lLcEqUVScCA2TJ6oIGWhRuNZLmKdR5reR6Effm9fDDiYm4w8U7Ud+HvECNFbXhr343FBw71TtvPX+U4Hqde0PPRQa8q7xLBx9fxRI5RaBZyFBonhPSKycgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKcRMYpshTFUGU5F3waOSDLPl8Ou1B1JB4yv9aR3V70=;
 b=Y6Nt5L6gGyM00FSzhiZJ/6MQxdoQ/Hd7fAdaHcyKhveZSD1YqvUBStxiQLEMExCNORVi/GJb0eiwHsqAtQDaqBo9L9NuK3mGlRHy83+ywEMbnnBnM2pwFLgOPv28+i/vwenygPyaIridoygDN0y7FifS9+69wXZ6dWkJ6TCBNMg=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4693.namprd04.prod.outlook.com (52.135.240.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.13; Sat, 14 Sep 2019 02:46:01 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2263.021; Sat, 14 Sep 2019
 02:46:01 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@sifive.com"
 <palmer@sifive.com>
Subject: Re: [PATCH 1/4] Documentation: riscv: boot: We're not compatible with
 arm64
Thread-Topic: [PATCH 1/4] Documentation: riscv: boot: We're not compatible
 with arm64
Thread-Index: AQHVamlX/Jl8Z6bCCEWQdoJ0Jj6GvqcqXn6AgAAZswA=
Date: Sat, 14 Sep 2019 02:46:01 +0000
Message-ID: <194c2f10c9806720623430dbf0cc59a965e50448.camel@wdc.com>
References: <20190913192433.4316-1-palmer@sifive.com>
 <20190913192433.4316-2-palmer@sifive.com>
 <alpine.DEB.2.21.9999.1909131553051.9752@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1909131553051.9752@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [122.171.172.160]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ca7e057-1b1a-4178-294f-08d738bdae30
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4693; 
x-ms-traffictypediagnostic: BYAPR04MB4693:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <BYAPR04MB4693BDBB2429DBF2066B57EEFAB20@BYAPR04MB4693.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01604FB62B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(346002)(366004)(39860400002)(396003)(376002)(136003)(199004)(189003)(316002)(6436002)(446003)(76116006)(66476007)(6246003)(478600001)(81156014)(81166006)(6486002)(7736002)(305945005)(6506007)(66946007)(5660300002)(86362001)(3846002)(2906002)(966005)(6116002)(66446008)(66556008)(64756008)(256004)(186003)(561944003)(229853002)(2501003)(110136005)(4326008)(8936002)(14454004)(8676002)(91956017)(76176011)(486006)(99286004)(53936002)(66066001)(11346002)(36756003)(71190400001)(26005)(476003)(118296001)(71200400001)(6512007)(2616005)(6306002)(102836004)(25786009)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4693;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: w5AkVZDd0N9Qx9TAmiZOSJrs9PhyV7vU80ufJwAYQ5oy6kwJcVd/ebC0JTlPsVB3ieZNkn2R7YJqIzTvgcjKWzUZF/rxoXI8I46gJh8/AmdzJEgtWuimcPTS34fgzJagNXXM02E/DSPAPEPavn35gs9AzguVY2WVX252sLpMwGvN4UP6hqljXnPnqXUiYLAN8pTcL+7A+SLhSBxI+Pfs7bnKNB+pm3Vr3fNwPG8kEiWMWPl+fN+M/RnpNYUjQ0Otf7CzIn5dDxWLgneMvXLJbYZEvSJX0JZKVGQngn8wioysygMqD9aQZUAxzQAqVJMFE7O/I162N10cTT+Za8EM45BHxfWTMYx7zueGuY7Bxpr0TYcpM/Q/COJGlas0a/69rR3ACOVhTmelIZ4VQcIjpmFv68K+s0Zjuy1CDzJTbpI=
x-ms-exchange-transport-forked: True
Content-ID: <866B84C68E7F5B49A3CA689A74AD0559@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ca7e057-1b1a-4178-294f-08d738bdae30
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2019 02:46:01.7591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p18yshI6Dy9aWPWQWgdsjafuHG0SwEfJgfEIB2svIzHkE0PvMLS3F+9KFinjrUcC5r9DSqvtBkpj8HsMkF7/rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_194606_164204_71ED0B90 
X-CRM114-Status: GOOD (  27.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 18:13 -0700, Paul Walmsley wrote:
> On Fri, 13 Sep 2019, Palmer Dabbelt wrote:
> 
> > The documentation for our bootloader claims that it can be made
> > compatible with arm64, but that's not true.  There are some
> > differences
> > between our format and arm64:
> > 
> > * We've used the first 32 bits of their 64-bit "res2" as a version
> > number,
> >   which we're currently setting to non-zero.
> 
> During the review of this patch, I assumed -- maybe incorrectly --
> that 
> ARM64 didn't require the reserved fields to be zero.  In retrospect,
> this 
> was not a good assumption to make.  It would have been better for me
> to 
> get explicit agreement from the ARM64 folks.
> 

Any reserved field is set to zero. The idea was to modify the reserve
field for ARM to have a flag version if we ever unify both ARM64 &
RISC-V headers.

> > * We're using their "res4" field as our magic number.
> > * We're treating their magic number as our "res3" field,
> 
> This looks like the key issue.  Let's rename the 32-bit RISC-V res3
> field 
> as magic2, and just use it.  Then over time we should be able to
> deprecate 
> the original RISC-V 64-bit magic field.
> 

Originally, "RISCV" magic value was a 64-bit value. That's why I kept
in res4 field. Again, my plan was to have a arch specific ifdef only
for magic values if we ever unify both ARM64 & RISC-V headers.

We never got the ack for unification of boot header proposal from ARM
maintainers. Thus, these things never got implemented.

> >   which nominally contains a flag for big endian systems
> > already.  This 
> >   can't get set, so we should just drop it -- it's also not
> > described 
> >   what the flag means.
> 
> This one I'm not seeing.  In both headers, the flags field is in the 
> same place: towards the beginning of the headers, before the
> reserved 
> fields:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/include/asm/image.h#n56
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/include/asm/image.h#n49
> 
> The endianness bit in that field is defined the same way:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/arm64/booting.rst#n106
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/riscv/boot-image-header.txt#n46
> 
> Please let me know if I've misunderstood your point.
> 

I agree with Paul.

Regards,
Atish
> > This patch removes the claim that our header can be made compatible
> > with
> > arm64.
> > 
> > Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> > ---
> >  Documentation/riscv/boot-image-header.txt | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/riscv/boot-image-header.txt
> > b/Documentation/riscv/boot-image-header.txt
> > index 1b73fea23b39..77e8e505bc41 100644
> > --- a/Documentation/riscv/boot-image-header.txt
> > +++ b/Documentation/riscv/boot-image-header.txt
> > @@ -21,9 +21,8 @@ The following 64-byte header is present in
> > decompressed Linux kernel image.
> >  	u32 res3;		  /* Reserved for additional RISC-V
> > specific header */
> >  	u32 res4;		  /* Reserved for PE COFF offset */
> >  
> > -This header format is compliant with PE/COFF header and largely
> > inspired from
> > -ARM64 header. Thus, both ARM64 & RISC-V header can be combined
> > into one common
> > -header in future.
> > +This header format is compliant with PE/COFF header and largely
> > inspired by,
> > +but not compatible with, the ARM64 header.
> >  
> >  Notes:
> >  - This header can also be reused to support EFI stub for RISC-V in
> > future. EFI
> > -- 
> > 2.21.0
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > 
> 
> - Paul

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
