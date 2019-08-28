Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C846FA0D9F
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 00:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVEf11hPvjas50LkyqAYjfalAsD3WelUd0LzUyWYCno=; b=T3C99JOZrv1vIy
	B0DNzzolHonq114Vipqyj2bLLix4PmiOFAptrAQqfb6ZY+n5sx34IDE6gxgVnaD+4PKYX5+BPK+7G
	8fcX1zeTGmJzBHQpZZwRYw5ap0udwveWj3LmE/6eYLmrdAw7604R/jvBNWSe5WWlv2QhTRGxI1Vt+
	fPKN70OGYyiTNk8bpBNF+9WyEral5mnXD8N61jMgr6lp0bE7QZjFfDHa0TGWL3lGTnb/8TRianFz/
	TMwTNoxeTwL+ebX+qITlIiyUeaDPciD4nnYOrMbf+WB6oVAs+QUGBxlcXn0jjVsY6LBXu+CwLxAam
	tlIO20Z8eKlwOxPSkHNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i36Ut-0002jA-Ax; Wed, 28 Aug 2019 22:32:59 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i36Un-0002hf-Ul
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 22:32:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567031575; x=1598567575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BnZjWVBxTN3AAzy8CtockO/Uc9G3NFIK+joUrS3Fsnw=;
 b=EDYcH+vqjug3rHd82msWKfQ3fr80MrdQKfhdg+spGOWwXKaM15bsFsJC
 ZlYg9AIb8TDo3XJXIB5bpDzJyoodtTCaZXpsaiDlO+VPLIE1tjBbSxk/R
 UyZlpzSkEBFZ4MYVkSfoPUGZbabOZ82Ny1DPdidklrRToSRc7nqacs4Im
 HIgWJfCje6WcA3XR3dTdg1wCO7MVYwwyKw4ndZMhTHdcGIJ305+yE1PZ4
 OKORJF0gQzz9OG7+BJDzbaNzjVMtFJELbXXYMIxoBEdhvlmBEx+TfksA/
 3Cofe29Y4dd9ZeCGhPyx34hgyhe0nRxK3ymm8RZbledKopwiMsL6LbDpE Q==;
IronPort-SDR: zjlQsQ+ObgJ73l2qDF2CpJbGi8+R5akhWgHrRGv2/tLeKwHsVpvSdPvxMC4YrSs7boSEOcjUaL
 D8LFc8HdCLGJH7SgkKRJrva84DqM1XN7rNI1bamGNR2QAZnk54YRLEow2XBnzzBIQf7t9FljvT
 7WvoWzyDCBq7MhhuNhVuW2no5C5jt/jFvTuYcyovU0xB08MzkRrTWnPzoZgfkAz50ls7VAORux
 js4bp4omKrANrq8b8SjbnfraNJ2+8lfrqNxeoSsZWGkrY74/LO/+bPabtz+vxiiK6LePjI6DfA
 OT0=
X-IronPort-AV: E=Sophos;i="5.64,442,1559491200"; d="scan'208";a="117815811"
Received: from mail-co1nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.55])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 06:32:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nmLrtBDi0MWdChBQcTd2hs5IzfhruCdAl7N+iiAhAgt5+4VbfNuCbWyboxy4jRUBq9czG0kau1FtBmMTHCPFF6Wvgcm1ecSqObUzgETi3UJdrmlzduHX2C5Fb8MieLNus8wP0EEOI1he17tgSkpi99ychxXh3aR8VbOzcZFcS0m40cDu/K5N1Ys1O8g81k+c2NUonlKL13qrZmWYjgKmf3t+xgyAPgW1fIn8gDS2YncPiMKjT+xA0CgxRf2eHEX8S8JH6dyrK5vx/bSJHPCjIj+n9CDgMSHlJJdTc9eiO5IN7ZVARGfu2eViakQ+3nfVxAMDQqmwSnQMUGikYqQo4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnZjWVBxTN3AAzy8CtockO/Uc9G3NFIK+joUrS3Fsnw=;
 b=cER+lM/Ff1MZodwmTn3J3WJZ4T/HzrEKm7W1j1dSQ0MeGH+6UHm8kUC/4wZChj11xSlRDZweSMYhQA37UV7C5C2Nm/S0TAXVjbJU4ERanTXiA1Aia16b1iLu7J6Cqm6foG9ndgn4PqpQpe6CBkvP0pau0ZppnfB91Uf1ADTstQ0f35zBkk/4f46IifizT3PCWnSr1YN+rSClfn39SDKyLbUGvYklWweh3/s9W5Tpnwe7xnkTpT13t5G6Lr4RUDTSnXAW083fSRVfZDJLt3SkUw+8P4k3kUC/HQRzl8bsmcir6qXTYug1M9Vk8qSupsCqQNw+GTrYN5qNVHzBr40Snw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnZjWVBxTN3AAzy8CtockO/Uc9G3NFIK+joUrS3Fsnw=;
 b=Km/e7Pqre7PYOsVywsYS69TFr8EZC52dj4L7Pjmc03L+1ihYFZZVdlOxuMO4KD+xETrgy3ukTrN1CmW2Pta5GZpLQX0lqFmYqAvH0DSC155yzkxoIEKIN2J3/kyQt+TxJxJTZnG2e+6IHL7n0jQWLUxtI+nT4qKX1myQuilwad0=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4902.namprd04.prod.outlook.com (52.135.232.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Wed, 28 Aug 2019 22:32:48 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a%2]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 22:32:48 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] RISC-V: Fix FIXMAP area corruption on RV32 systems
Thread-Topic: [PATCH v2] RISC-V: Fix FIXMAP area corruption on RV32 systems
Thread-Index: AQHVVkz2mzRBOANcr0Cpw6hsdQg8z6cOK+CAgAApSgCAAt47gA==
Date: Wed, 28 Aug 2019 22:32:47 +0000
Message-ID: <e43024d42164377794d6ba85d4b80ec69db3eb67.camel@wdc.com>
References: <20190819051345.81097-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1908261704500.10109@viisi.sifive.com>
 <CAAhSdy0XALGpc-bCuO7njiBT3p-YvLqhMnRTRu4Hd4gMKeQMTw@mail.gmail.com>
In-Reply-To: <CAAhSdy0XALGpc-bCuO7njiBT3p-YvLqhMnRTRu4Hd4gMKeQMTw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4774e1e8-0f89-48dc-3a12-08d72c07a771
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4902; 
x-ms-traffictypediagnostic: BYAPR04MB4902:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB49028245AC523788F226D83890A30@BYAPR04MB4902.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(189003)(199004)(26005)(4326008)(25786009)(102836004)(256004)(186003)(14444005)(99286004)(54906003)(81156014)(316002)(36756003)(110136005)(6506007)(53546011)(76176011)(66066001)(118296001)(2616005)(8676002)(476003)(81166006)(6486002)(66476007)(5660300002)(229853002)(446003)(11346002)(6116002)(8936002)(86362001)(486006)(6512007)(3846002)(66446008)(478600001)(6246003)(2501003)(53936002)(66946007)(76116006)(71200400001)(305945005)(2906002)(66556008)(71190400001)(14454004)(7736002)(6436002)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4902;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bQLdI4gNUvY3g6DLA12mn0IbQejho8Nw7mLzvaebmPnWWfWuyGh7VTG6/gZtQ6VmbnSTNPLnFd+VHPVZbHeGfysusRqmAOvYKnx9gNRB6VfcKx0SwKKHvO+GHwxg78HUDgoyixZ9EKg/N1NmScm4zCpwhGgDeDFWexQMhHXprm7mkWxFWfVUjyWgDXolwEPp6usztG8W1EvF5SRPuF4miOBMFw19Bdwm07xaiW/PlkUYpGy1oqVu57jFlXFgKdfWoa4bw5XyUSlFqO3plSBzPrB0CRSyucysr197ojKk7xUuNoY51z+MvYe614ZtAQcL5epantgrnpZ8L1RY3XQxrufK5UGUu2QialHXU+4kmh7Ii0jeeI0EViiQuUHU5/RlDwLqcM/T1tKBYBEDkkKFMUO64jfDt11Uaj1t0BaNtJs=
Content-ID: <467585749D66CF40AB10302709E933A7@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4774e1e8-0f89-48dc-3a12-08d72c07a771
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 22:32:47.8885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sWWLOC/ekEO13kRstxFbX+bKzLAsVQ02CGm08FwQoGdriTVAzFQnfY1YUinL8DrTi+aX90JHxKzqCrco1MDs6YG7U3daiOO8fyeZhD4zXNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_153254_168675_CA97AC25 
X-CRM114-Status: GOOD (  32.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 08:11 +0530, Anup Patel wrote:
> On Tue, Aug 27, 2019 at 5:43 AM Paul Walmsley <
> paul.walmsley@sifive.com> wrote:
> > Hello Anup,
> > 
> > On Mon, 19 Aug 2019, Anup Patel wrote:
> > 
> > > Currently, various virtual memory areas of Linux RISC-V are
> > > organized
> > > in increasing order of their virtual addresses is as follows:
> > > 1. User space area (This is lowest area and starts at 0x0)
> > > 2. FIXMAP area
> > > 3. VMALLOC area
> > > 4. Kernel area (This is highest area and starts at PAGE_OFFSET)
> > > 
> > > The maximum size of user space aread is represented by TASK_SIZE.
> > > 
> > > On RV32 systems, TASK_SIZE is defined as VMALLOC_START which
> > > causes the
> > > user space area to overlap the FIXMAP area. This allows user
> > > space apps
> > > to potentially corrupt the FIXMAP area and kernel OF APIs will
> > > crash
> > > whenever they access corrupted FDT in the FIXMAP area.
> > > 
> > > On RV64 systems, TASK_SIZE is set to fixed 256GB and no other
> > > areas
> > > happen to overlap so we don't see any FIXMAP area corruptions.
> > > 
> > > This patch fixes FIXMAP area corruption on RV32 systems by
> > > setting
> > > TASK_SIZE to FIXADDR_START.
> > 
> > This part -- the TASK_SIZE change -- makes sense to me.
> > 
> > However, the patch also changes FIXADDR_SIZE to be defined in terms
> > of
> > page table-related constants.  Previously, FIXADDR_SIZE was based
> > on
> > __end_of_fixed_addresses, as it is for most other architectures.
> > The part
> > of the patch that changes FIXADDR_SIZE seems unrelated to the
> > actual fix.
> > 
> > If that's indeed the case -- that the change to FIXADDR_SIZE is
> > unrelated
> > from the fix -- could you please split that into a separate patch,
> > with a
> > description of the rationale?  I think I understand why you're
> > proposing
> > it, but it seems odd to explicitly connect it to page table-related
> > constants, rather than the contents of "enum fixed_addresses", and
> > I'm
> > reluctant to merge that part of this patch without a bit more
> > discussion.
> 
> The FIXADDR_SIZE change is related to the TASK_SIZE requirement and
> it is not a separate change because:
> 
> 1. TASK_SIZE must be evenly divisible by PGDIR_SIZE. The
> FIXADDR_START
> is defined as (FIXADDR_TOP - FIXADDR_SIZE). The original FIXADDR_SIZE
> defined in-terms of __end_of_fixed_addresses is not a multiple of
> PGDIR_SIZE
> hence it makes sense to make FIXADDR_SIZE as PGDIR_SIZE.
> 
> 2. Let say we ignore point1 above then still we cannot continue to
> express
> FIXADDR_SIZE in-terms of __end_of_fixed_addresses because of cyclic
> header dependency where asm/fixmap.h includes asm/pgtable.h and
> __end_of_fixed_addresses is defined in asm/fixmap.h. We certainly
> need
> to move FIXADDR_TOP, FIXADDR_START, and FIXADDR_SIZE to
> asm/pgtable.h so that we can express TASK_SIZE as FIXADDR_START
> for RV32. If we don't simplify FIXADDR_SIZE then it will result in
> compile
> errors.

Ping!

Are we going to regress 32-bit support in 5.3?

Alistair

> 
> Regards,
> Anup
> 
> > 
> > > We also move FIXADDR_TOP, FIXADDR_SIZE, and FIXADDR_START defines
> > > to
> > > asm/pgtable.h so that we can avoid cyclic header includes.
> > > 
> > > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > > Tested-by: Alistair Francis <alistair.francis@wdc.com>
> > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > > Changes since v1:
> > > - Drop braces from "#define FIXADDR_TOP"
> > > ---
> > >  arch/riscv/include/asm/fixmap.h  |  4 ----
> > >  arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
> > >  2 files changed, 10 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/arch/riscv/include/asm/fixmap.h
> > > b/arch/riscv/include/asm/fixmap.h
> > > index 9c66033c3a54..161f28d04a07 100644
> > > --- a/arch/riscv/include/asm/fixmap.h
> > > +++ b/arch/riscv/include/asm/fixmap.h
> > > @@ -30,10 +30,6 @@ enum fixed_addresses {
> > >       __end_of_fixed_addresses
> > >  };
> > > 
> > > -#define FIXADDR_SIZE         (__end_of_fixed_addresses *
> > > PAGE_SIZE)
> > > -#define FIXADDR_TOP          (VMALLOC_START)
> > > -#define FIXADDR_START                (FIXADDR_TOP -
> > > FIXADDR_SIZE)
> > > -
> > >  #define FIXMAP_PAGE_IO               PAGE_KERNEL
> > > 
> > >  #define __early_set_fixmap   __set_fixmap
> > > diff --git a/arch/riscv/include/asm/pgtable.h
> > > b/arch/riscv/include/asm/pgtable.h
> > > index a364aba23d55..c24a083b3e12 100644
> > > --- a/arch/riscv/include/asm/pgtable.h
> > > +++ b/arch/riscv/include/asm/pgtable.h
> > > @@ -420,14 +420,22 @@ static inline void pgtable_cache_init(void)
> > >  #define VMALLOC_END      (PAGE_OFFSET - 1)
> > >  #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > > 
> > > +#define FIXADDR_TOP      VMALLOC_START
> > > +#ifdef CONFIG_64BIT
> > > +#define FIXADDR_SIZE     PMD_SIZE
> > > +#else
> > > +#define FIXADDR_SIZE     PGDIR_SIZE
> > > +#endif
> > > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > > +
> > >  /*
> > > - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
> > > + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> > >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> > >   */
> > >  #ifdef CONFIG_64BIT
> > >  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
> > >  #else
> > > -#define TASK_SIZE VMALLOC_START
> > > +#define TASK_SIZE FIXADDR_START
> > >  #endif
> > > 
> > >  #include <asm-generic/pgtable.h>
> > > --
> > > 2.17.1
> > > 
> > 
> > - Paul
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
