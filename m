Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F89F42F
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 22:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nB33NOsfuccg5eOaPzd6Z4NuZyWk9FLZnhfTVwABMv8=; b=e/fImO/yJQePRt
	GLWOzY1xGk7n9YkeoJyipvNhMD2hSQZOo6n09HTfY0BicWormDu2f/Ykial1WqKRwHWPcDyFGsemv
	Mf2U9dg4xcmoGxSukIAwfrYUAZW/PVW84O6rI8mPGP6vqBaf8BL5hNYWeXg4VLYZsxIuXSLornWpI
	zLhvEekjaupEQtg32JPtixX1W2z5quAtXK+49naXYWeF89wFqGQXgIzCmmdWks26ZiB+RdJTan/hR
	CjKB2m20E45IbY9H0iC8smxHSFj39hYJPuVuTW150sIOHysmuypB8UranmWWCdtpmcItERv4DG8hc
	h3puWDXYicXeEHtz2PVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iB4-0001mL-29; Tue, 27 Aug 2019 20:34:54 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2iAw-0001lW-OQ
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 20:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566938087; x=1598474087;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=axSkrLbitHNo85MyKLQWeJvuI+K12TsWzJgXu4Otg3E=;
 b=Aq33W7hjlliopKu5BN1yccexwqFG9I455OXOgv/UBNNvf+VAm78fGDm0
 mwhbuJS5SE7CBe4o/1ETWjZLxnArOwaVaZhPW46g1w89UMo+yDdZI/fMF
 pMd7ucPxQsH0zWC6Md+Fp7pPBcQnXMM/Ry1cD/lzGK9/5t5665SD+79IN
 ec62gWwDCL6GYGDX26Lt45bKXzXK1/2vdrJmnfERk6rkRvTg69QfcSrpA
 XDaNUmJfgzhmghuchHYx3Sx/Vdk5S2kEKlswQf6MHWBpdgsIvk9Q2WrnN
 1EMmJslmSlhlEdSdIA/shbQ/fbVPERmlYB8laVTGNQ9zoLmV3eydq0EDZ A==;
IronPort-SDR: vpKhE5huQkGO7zrjzCYcQMJ43fDYALg69vQ/fPfNWgvGIawy/2hR6bnZLMgBBN0GMj7gdqc3m7
 JwX7q2kRax3qHFVm2quybAveX5UbmOGpvINOgLGMkIrTMN23++m0o84P7h1ZsjwP6meLKQUwAg
 fvUqVvEa79toNJidhHEosXhw7Cwg1ScXspDh24r37kxQNQno2SdgTSG06DhPs+fhYZF16Zd9FB
 zbOu+8JaCoKgZ2N0USSWyCBobr8VpPPHrcYvsAO8iIMLMXmkUqKfeYMp6HX7IJK7quJTTLczDO
 Iro=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="118394645"
Received: from mail-dm3nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.50])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 04:34:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bC4pNOs+8jm9DStZSVr7S2e6UNedUcx7dqCxFyFJkLBoVBvcNd9pjksUkpm594+qV5tM9Sgn7jmxR+j85IQrMzHt9uw+/VxKzMs6YR3fCtwEvgPaBLFjcgGZW6UO3/5t3LmPJDxZ7mVuOlkehwCO2ZJY1HRt6PUnlKiL+nPk6gSdVoL4ShSZQxuhK22/5c679wdYmi8b8eB3f1oiJ9HdemEVOInYHgNXyx0Illok6fN7cm8omUJ43VHnpXdESPvIXKtR3NrOi7ORsf0jjb20+qkDa2ahjQeDrBX9PSpK2MEg6Oz2lV3wF69op2bEiVT4fZq676+acHL/wwG9X5XBhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axSkrLbitHNo85MyKLQWeJvuI+K12TsWzJgXu4Otg3E=;
 b=axRw9QrinEd4oAvuuz0bRgh5A20MoY5CHBpzJEGRLk1vhpF8okNZeXFPXjYC1NBHrPsnWDRozs1L5jSD54jGv1PI3JReXTE0yjG6Z2TzjOjbJuFxHpivvp0vx+Iihas8mjazPShx7lIcym6ri85jxL2f5oqwmipqjmXYA3NltbJsp4og+u1RTpNyTmUFT4bcerozSVgRAAHZp0e7Vp12Ae9LhcxfhzvxM2MY8b5f36h9IcCK0vlwTeN+Zt35QW7143hC5t/O700vcJZUwYhBwNg2AA+bR/KbnKRzDIwQd4Jrn20eAplYo58sJWEqTH8bIpGDhVk19TIF1tPo2cpg4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axSkrLbitHNo85MyKLQWeJvuI+K12TsWzJgXu4Otg3E=;
 b=Dy9B5CDfPpI0N81TYqDYbWTZppw3BlSvqzYwIhLpwyFSeaAx50S9GuFyQocZJiIK/BEa4zk012z4gjo4S4O/eQYLcwtbXSSQz/MrEdNTuxg2F6mfOQFT0Pc9SN/NwWiW4VofA0LVxmAymDrAHLZgb3U0FHUZmO8Zy40eZdLrI+g=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5079.namprd04.prod.outlook.com (52.135.235.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 27 Aug 2019 20:34:39 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 20:34:39 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "rppt@linux.ibm.com" <rppt@linux.ibm.com>
Subject: Re: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
Thread-Topic: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
Thread-Index: AQHVXGawW0XtdcDDakm9TmNp3/W3LacOn7MAgADVMAA=
Date: Tue, 27 Aug 2019 20:34:39 +0000
Message-ID: <79b62541ce3d2b65e2572c52db7fd24d5ff4b898.camel@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-2-atish.patra@wdc.com>
 <20190827075136.GC682@rapoport-lnx>
In-Reply-To: <20190827075136.GC682@rapoport-lnx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0508fabe-5763-4fe1-fa05-08d72b2dfbfc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5079; 
x-ms-traffictypediagnostic: BYAPR04MB5079:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB5079B67CFBE44252EBFAF0CAFAA00@BYAPR04MB5079.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(366004)(39860400002)(396003)(199004)(189003)(25786009)(14454004)(6486002)(966005)(7416002)(86362001)(64756008)(66446008)(2906002)(54906003)(256004)(99286004)(5660300002)(2501003)(4326008)(8936002)(71190400001)(71200400001)(8676002)(81156014)(81166006)(1730700003)(316002)(76176011)(66556008)(66066001)(118296001)(66476007)(229853002)(5640700003)(66946007)(11346002)(3846002)(6116002)(6436002)(446003)(53936002)(2616005)(186003)(476003)(26005)(36756003)(6246003)(486006)(102836004)(7736002)(6306002)(305945005)(478600001)(6512007)(2351001)(6506007)(76116006)(6916009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5079;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3Yx/uGN2hbNKAHt8ckpHc90ISRREmiE7UJGhNZWK4pBmUoJp6Xzk9U+J5JqqMStUJrbWHfUjohusSegrBRxbHhKCjs7A73V3qwnyhXuS70lT+dKa7sMShBmI6EfkmiPN/AhvXWUTF22R7uARsBDJCmyYd2EO0aS9efEQe05R7j+/KAS/O/woQvQT97I7C7gfV49g9hv2FD/jdW8MEXPBLr7exuU5iVVkU5Zz1op4YF5kcHjlIayxIwBefhJVR6+05S+b5e5EoQWHTcj/UyIviJlzNVLs73WK0sAXTjs3lQBrn6k4lPvFAv7NaghU8FMJdpXglX6KlwSRqLCRdBhNsDOvbNUzNfojOmYPV44tF96PqveNH0mSN6Ub5ozu1vv4UjSEGnw8TAB0+3Y9E2eF5FSJcYO3TK3/xDJqX6u4FDI=
x-ms-exchange-transport-forked: True
Content-ID: <CAF300CEC5184B458C12DC0EE5BDB322@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0508fabe-5763-4fe1-fa05-08d72b2dfbfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 20:34:39.6078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xyGdt+qgFjNSrVJJp0KygMLBPPIzyq1jsalX9UcgzUYesfWsh7vYJwaHRn8Bra3gQk1Y/JIiBb1rBRWbJpZUlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_133446_952519_8AAE5821 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 10:51 +0300, Mike Rapoport wrote:
> On Mon, Aug 26, 2019 at 04:32:55PM -0700, Atish Patra wrote:
> > As per the new SBI specification, current SBI implementation is
> > defined as legacy and will be removed/replaced in future.
> > 
> > Rename existing implementation to reflect that. This patch is just
> > a preparatory patch for SBI v0.2 and doesn't introduce any
> > functional
> > changes.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h | 61 +++++++++++++++++++-------------
> > ----
> >  1 file changed, 33 insertions(+), 28 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/sbi.h
> > b/arch/riscv/include/asm/sbi.h
> > index 21134b3ef404..7f5ecaaaa0d7 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -8,17 +8,18 @@
> >  
> >  #include <linux/types.h>
> >  
> > -#define SBI_SET_TIMER 0
> > -#define SBI_CONSOLE_PUTCHAR 1
> > -#define SBI_CONSOLE_GETCHAR 2
> > -#define SBI_CLEAR_IPI 3
> > -#define SBI_SEND_IPI 4
> > -#define SBI_REMOTE_FENCE_I 5
> > -#define SBI_REMOTE_SFENCE_VMA 6
> > -#define SBI_REMOTE_SFENCE_VMA_ASID 7
> > -#define SBI_SHUTDOWN 8
> > -
> > -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({		\
> > +
> > +#define SBI_EXT_LEGACY_SET_TIMER 0x0
> > +#define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> > +#define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > +#define SBI_EXT_LEGACY_CLEAR_IPI 0x3
> > +#define SBI_EXT_LEGACY_SEND_IPI 0x4
> > +#define SBI_EXT_LEGACY_REMOTE_FENCE_I 0x5
> > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA 0x6
> > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> > +#define SBI_EXT_LEGACY_SHUTDOWN 0x8
> 
> I can't say I'm closely following RISC-V development, but what will
> happen
> when SBI v0.3 will come out and will render v0.2 legacy?
> Won't we need another similar renaming then?
> 

Noope.The idea of renaming 0.1 calls as legacy comes from the fact that
these calls will be eventually be replaced or depcreated after a
certain time.

v0.2 defines base specification which will be mandatory for any newer
implementation. Any versions newer than 0.2 will only add new
extensions but not necessarily replace the ones in 0.2

> > +#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > ({             \
> >  	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
> >  	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
> >  	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
> > @@ -32,58 +33,61 @@
> >  })
> >  
> >  /* Lazy implementations until SBI is finalized */
> > -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
> > -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
> > -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1,
> > 0, 0)
> > -#define SBI_CALL_3(which, arg0, arg1, arg2) \
> > -		SBI_CALL(which, arg0, arg1, arg2, 0)
> > -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
> > -		SBI_CALL(which, arg0, arg1, arg2, arg3)
> > +#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0,
> > 0)
> > +#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which,
> > arg0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > +		SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > +#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > +		SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > +		SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> >  
> >  static inline void sbi_console_putchar(int ch)
> >  {
> > -	SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
> > +	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_CONSOLE_PUTCHAR, ch);
> >  }
> >  
> >  static inline int sbi_console_getchar(void)
> >  {
> > -	return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
> > +	return SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CONSOLE_GETCHAR);
> >  }
> >  
> >  static inline void sbi_set_timer(uint64_t stime_value)
> >  {
> >  #if __riscv_xlen == 32
> > -	SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
> > +	SBI_CALL_LEGACY_2(SBI_EXT_LEGACY_SET_TIMER, stime_value,
> > +			  stime_value >> 32);
> >  #else
> > -	SBI_CALL_1(SBI_SET_TIMER, stime_value);
> > +	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SET_TIMER, stime_value);
> >  #endif
> >  }
> >  
> >  static inline void sbi_shutdown(void)
> >  {
> > -	SBI_CALL_0(SBI_SHUTDOWN);
> > +	SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_SHUTDOWN);
> >  }
> >  
> >  static inline void sbi_clear_ipi(void)
> >  {
> > -	SBI_CALL_0(SBI_CLEAR_IPI);
> > +	SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CLEAR_IPI);
> >  }
> >  
> >  static inline void sbi_send_ipi(const unsigned long *hart_mask)
> >  {
> > -	SBI_CALL_1(SBI_SEND_IPI, hart_mask);
> > +	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SEND_IPI, hart_mask);
> >  }
> >  
> >  static inline void sbi_remote_fence_i(const unsigned long
> > *hart_mask)
> >  {
> > -	SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
> > +	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_REMOTE_FENCE_I, hart_mask);
> >  }
> >  
> >  static inline void sbi_remote_sfence_vma(const unsigned long
> > *hart_mask,
> >  					 unsigned long start,
> >  					 unsigned long size)
> >  {
> > -	SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
> > +	SBI_CALL_LEGACY_3(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA, hart_mask,
> > +			  start, size);
> >  }
> >  
> >  static inline void sbi_remote_sfsimilarence_vma_asid(const
> > unsigned long *hart_mask,
> > @@ -91,7 +95,8 @@ static inline void
> > sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> >  					      unsigned long size,
> >  					      unsigned long asid)
> >  {
> > -	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size,
> > asid);
> > +	SBI_CALL_LEGACY_4(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID,
> > hart_mask,
> > +			  start, size, asid);
> >  }
> >  
> >  #endif
> > -- 
> > 2.21.0
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > 

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
