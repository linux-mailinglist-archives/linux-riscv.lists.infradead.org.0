Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D228DBB8B8
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 17:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYRd6LHIWCZAMcHUiWTdDs+EQ3vaOjR+oEEYJMN1IBc=; b=t8maNWYR8rvFpx
	arRevErOLYYTg8j+IwCpD9opxpKTR8xpJxDK9Xu7HydO3dWrnMxM91t64/ELXTqJeVmNPtJ7vgm1D
	383n2rHhIAFT/9ndPtbaJCrkhL9ID/gbre0T66f9e5a1/HLnyMnoEji+AE+muWJX38UfRFu9y7bCP
	AYTszOjLJhJUUeOs+Kg19SOOt2HbExjBaHvBxwvrhLwns2bpLLmwLDohmhta7pWOSaDGazlGitGGb
	cO4qtLAvyCV5pgHo3L3YXJwff591i3U7NpzfdPv/+dDJ6V1MgUgEfr5QNekEFTRZTmLaMujHgMlai
	NlGSj9o41kojT73MxgwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQfk-00023E-Uw; Mon, 23 Sep 2019 15:54:45 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQfQ-0001ui-My
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 15:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569254065; x=1600790065;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VsgaMYZYPxZ3VuFCLT3hIQiQyAHAw2ctQDrPes/rVB4=;
 b=HEJQ34EFPTcZkw1raHu9Oe8lCm51lNKzTyEuAjuuyOKcIPItPh+97mMQ
 FdV3qmVPD3cm5/lc4jbOVDFnBXE3RqZP2r0F2GZ2vOWg89oRMLnxnoL7x
 MDGAtM9q2n7i29oTncwY5IS6D06O95W/no0xdiKY+KVL5LQnz62AFP4FU
 XS92tNKO2qMXNLlP9Ei1PB0JFy6WFIWGjXUe4YWCI9igURaKYextRq0T+
 L97cDdmg4uZQs19HILLFzdFAaD8kYFV3YOuAccxi+EHDbqmUXc6Jg2l4Y
 pN9oM8BPFzedjveHhqfsBkFAxRmhHWdAsk2836tgN62XuzmSO7hyWYE7t w==;
IronPort-SDR: ESupE+JnmGYCtVe/KyD/c2T+F9eobYI3Vr6xFn0eYhWiEZ63sXsyE9e8lLvD3JcJzZKWByBOSn
 tEBAHW3SnsqHvu+lrgTdSChyhyrdxjq+yEWrtsEe2HpWFSadPaan+GpDjEChzJ0Sb+yorRf1G7
 Ls67zoNTujmLLbA8uTvH6Us9hx8ewAQ9TuLvYaKnt7nA5Aj62i88FuhRqaSTx/gt/2VySo/pB/
 jGBu7eFbtR41Ox3lal1HKfhKjToj5OuAsCnBCN5c1b5M0zQl8XSQ08FJEOOpVOwuuVXJ/upMqd
 gCA=
X-IronPort-AV: E=Sophos;i="5.64,541,1559491200"; d="scan'208";a="118895028"
Received: from mail-bn3nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.54])
 by ob1.hgst.iphmx.com with ESMTP; 23 Sep 2019 23:54:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pzp60LK28k01qz27WgkvrCUJwZ4CMHwnjIeUVruEEB5EZ4xorAxZTVLvFksSx9Uv8CEPaJoF2UpxdQY1DZLR8MU0IL9mwhlPyuo2Zzd0QQl19kpqU14ftbTEc/icu9HXiBmrYr4SNTD3GTQ7XCpLdexyHJgjgzYuSPFXz7Uhc3wnmoIHaoBg8V11ScCvDDDFdgrTtskDFj1yOTIf76tWuiWDPYKrVsZ8hhizpMKWLZFUQTTopxCr8cPjX0Fslg0cx2bbNTiQxhcrTr7B85zSAt1PkOb1cBfJ694ITGvaCZaGUA/44z4PVo4fwc3taBeh9MrSyDRu0p41t2i5+sgCkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsgaMYZYPxZ3VuFCLT3hIQiQyAHAw2ctQDrPes/rVB4=;
 b=UwiytMRizjPVZz5rqH2h/TQsGoPoofy6dmSa7mikpsk4tWSIhqiYz6ZoDRU88vJbSdQ0L8mBRNVgdEVhyAbnivgF4/hi1PgHWdbEQhcDCJVOM8k0erYLzLOqp5VXvtxBP5TjjXCOjf+jW4OAkZsArv28e424Lk5kvbgCIZmsbh2he0bskkfCU3ha6lRKsye+XB0UR0nkyqkPjvp3fFdYACaZoOx/I/6g5+HkkkkAg3OUTPLOVqfg79DW0g6IWNVlbv0C09MdAgBzuOCsuBHgNTY4XI30XF4dx88u4T2hM0cL4NeH1VFnSoqoHy81LRBm/GjVDAo/V7VQd9eBndT0NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsgaMYZYPxZ3VuFCLT3hIQiQyAHAw2ctQDrPes/rVB4=;
 b=jZtku2hmDSiNg/ZNjRTlF8Tthmvj2pFMyuWeV0SVqY1C/1vdMJUrfgTE3NE3vtRlXeP2IogZoszrUkA9a1eYOEwItfBXdCOB3wKgsGr7NcfDHP37GWOakCYWeVeh/yE5l+PTADTLc1BBbdCtzpBjfG9GzI1/JXX2JwIL6ZOMYjw=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB5349.namprd04.prod.outlook.com (20.178.50.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Mon, 23 Sep 2019 15:54:19 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::88bb:c568:c010:3208]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::88bb:c568:c010:3208%7]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 15:54:19 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, Anup Patel
 <Anup.Patel@wdc.com>
Subject: Re: [PATCH v7 02/21] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Topic: [PATCH v7 02/21] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Index: AQHVYzu9uPc5gAk8X0m4h7HdgR2XEKc2AJmAgAOHPwA=
Date: Mon, 23 Sep 2019 15:54:19 +0000
Message-ID: <19bd7db1983e98de10ef1b083bc1b884f587aacc.camel@wdc.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-4-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1909210245000.2030@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1909210245000.2030@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [2601:646:8e00:37b2:d3fd:11e9:7cc1:adaf]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a960ee0-436f-4ec2-aa56-08d7403e4b79
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5349; 
x-ms-traffictypediagnostic: BYAPR04MB5349:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5349392B35928B657089184C90850@BYAPR04MB5349.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39850400004)(366004)(396003)(376002)(51444003)(199004)(189003)(71200400001)(4326008)(71190400001)(6306002)(229853002)(486006)(2616005)(118296001)(966005)(2906002)(6116002)(81156014)(81166006)(6486002)(186003)(14454004)(46003)(6436002)(256004)(6246003)(476003)(8936002)(11346002)(446003)(36756003)(76176011)(2501003)(8676002)(6512007)(99286004)(7416002)(66476007)(305945005)(66446008)(54906003)(6636002)(66946007)(316002)(110136005)(64756008)(66556008)(7736002)(76116006)(25786009)(102836004)(478600001)(5660300002)(6506007)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5349;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GgUIF5TUDDFNze+BBhMLJfq/6cdslt+i3keGIaeV3lQu0RhRAwuIr4erO29xNzTylEh8nCYgrCOfmZIIs2BL48h5BVYXsrweEiqzWfoUWuPtoig6iOc26iOOy2Px4stuQVl2MMCtkfL9wgul0t0W94phxN5XgVYAM1RX3gNPliFiAcFI3UaqjyzBKh7Ptd0ltwHUhwWwnu22AfNp1X+fwjIH05Cy0XwIu7zpLtUTh6zjb7SpezhL27tuIDcoUqIve6xW4+HWqANkphHkqo+T1tayX72OtO5zh4LN6qBRBFA4+u6oWXRa5DspZ0o9aQESEEXnXuv2Yo/mqcZVoW+/yFwtoMBn1kK+F66BoGlHWBfJwqsxgDe7RGM8EKEe+TIFYyP1VEVi75Lpl2e7VZhpjXamDqka/Nm5ULnsbkrXSU8=
Content-ID: <4B3CF02758A605449E45C785E6F3B0FA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a960ee0-436f-4ec2-aa56-08d7403e4b79
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 15:54:19.2677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mT9mO7Gq8KJF1Ric2/aR88B+tutlFF0VqZW2Db7HwROQHfzys1fKn1/mqjgkeHICFUb6dAJR/CzL1L8gLB21oKfrlp68Eg6myh5VLxg+4lU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_085425_101843_2C9ABA46 
X-CRM114-Status: GOOD (  28.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "graf@amazon.com" <graf@amazon.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 2019-09-21 at 03:01 -0700, Paul Walmsley wrote:
> Hi Anup,
> 
> Thanks for changing this to use a bitmap.  A few comments below -
> 
> On Wed, 4 Sep 2019, Anup Patel wrote:
> 
> > This patch adds riscv_isa bitmap which represents Host ISA features
> > common across all Host CPUs. The riscv_isa is not same as elf_hwcap
> > because elf_hwcap will only have ISA features relevant for user-
> > space
> > apps whereas riscv_isa will have ISA features relevant to both
> > kernel
> > and user-space apps.
> > 
> > One of the use-case for riscv_isa bitmap is in KVM hypervisor where
> > we will use it to do following operations:
> > 
> > 1. Check whether hypervisor extension is available
> > 2. Find ISA features that need to be virtualized (e.g. floating
> >    point support, vector extension, etc.)
> > 
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Reviewed-by: Alexander Graf <graf@amazon.com>
> > ---
> >  arch/riscv/include/asm/hwcap.h | 26 +++++++++++
> >  arch/riscv/kernel/cpufeature.c | 79
> > ++++++++++++++++++++++++++++++++--
> >  2 files changed, 102 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/hwcap.h
> > b/arch/riscv/include/asm/hwcap.h
> > index 7ecb7c6a57b1..9b657375aa51 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -8,6 +8,7 @@
> >  #ifndef __ASM_HWCAP_H
> >  #define __ASM_HWCAP_H
> >  
> > +#include <linux/bits.h>
> >  #include <uapi/asm/hwcap.h>
> >  
> >  #ifndef __ASSEMBLY__
> > @@ -22,5 +23,30 @@ enum {
> >  };
> >  
> >  extern unsigned long elf_hwcap;
> > +
> > +#define RISCV_ISA_EXT_a		('a' - 'a')
> > +#define RISCV_ISA_EXT_c		('c' - 'a')
> > +#define RISCV_ISA_EXT_d		('d' - 'a')
> > +#define RISCV_ISA_EXT_f		('f' - 'a')
> > +#define RISCV_ISA_EXT_h		('h' - 'a')
> > +#define RISCV_ISA_EXT_i		('i' - 'a')
> > +#define RISCV_ISA_EXT_m		('m' - 'a')
> > +#define RISCV_ISA_EXT_s		('s' - 'a')
> > +#define RISCV_ISA_EXT_u		('u' - 'a')
> > +#define RISCV_ISA_EXT_zicsr	(('z' - 'a') + 1)
> > +#define RISCV_ISA_EXT_zifencei	(('z' - 'a') + 2)
> > +#define RISCV_ISA_EXT_zam	(('z' - 'a') + 3)
> > +#define RISCV_ISA_EXT_ztso	(('z' - 'a') + 4)
> 
> If we add the Z extensions here, it's probably best if we drop Zam
> from 
> this list.  The rationale is, as maintainers, we're planning to hold
> off 
> on merging any support for extensions or modules that aren't in the 
> "frozen" or "ratified" states, and according to the RISC-V specs,
> Zicsr, 
> Zifencei, and Ztso are all either frozen or ratified.  However, see 
> below -

Hey Paul,

I think that this should be documented somewhere in the kernel tree. In
QEMU land we have decieded that draft extensions will be accepted and
there are currently two extension series on list (Hypervisor from WDC
and Vector from CSKY). I suspect as RISC-V grows there are going to be
more and more groups that are interested in some specific extension and
want it upstream. In this case it makes sense to have it very clearly
documeneted so that everyone knows what will/won't be accepted.

If it's clearly documented then everyone will be on the same page as to
what will/won't be accepted by individual projects. As a side note I'll
probably look at adding something for QEMU as well :)

Alistair

> 
> > +
> > +#define RISCV_ISA_EXT_MAX	256
> > +
> > +unsigned long riscv_isa_extension_base(const unsigned long
> > *isa_bitmap);
> > +
> > +#define riscv_isa_extension_mask(ext)
> > BIT_MASK(RISCV_ISA_EXT_##ext)
> > +
> > +bool __riscv_isa_extension_available(const unsigned long
> > *isa_bitmap, int bit);
> > +#define riscv_isa_extension_available(isa_bitmap, ext)	\
> > +	__riscv_isa_extension_available(isa_bitmap,
> > RISCV_ISA_EXT_##ext)
> > +
> >  #endif
> >  #endif
> > diff --git a/arch/riscv/kernel/cpufeature.c
> > b/arch/riscv/kernel/cpufeature.c
> > index b1ade9a49347..4ce71ce5e290 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -6,21 +6,64 @@
> >   * Copyright (C) 2017 SiFive
> >   */
> >  
> > +#include <linux/bitmap.h>
> >  #include <linux/of.h>
> >  #include <asm/processor.h>
> >  #include <asm/hwcap.h>
> >  #include <asm/smp.h>
> >  
> >  unsigned long elf_hwcap __read_mostly;
> > +
> > +/* Host ISA bitmap */
> > +static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
> > +
> >  #ifdef CONFIG_FPU
> >  bool has_fpu __read_mostly;
> >  #endif
> >  
> > +/**
> > + * riscv_isa_extension_base - Get base extension word
> > + *
> > + * @isa_bitmap ISA bitmap to use
> > + * @returns base extension word as unsigned long value
> > + *
> > + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> > + */
> 
> Am happy to see comments that can be automatically parsed, but could
> you 
> reformat them into kernel-doc format? 
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/doc-guide/kernel-doc.rst
> 
> > +unsigned long riscv_isa_extension_base(const unsigned long
> > *isa_bitmap)
> > +{
> > +	if (!isa_bitmap)
> > +		return riscv_isa[0];
> > +	return isa_bitmap[0];
> > +}
> > +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
> > +
> > +/**
> > + * __riscv_isa_extension_available - Check whether given extension
> > + * is available or not
> > + *
> > + * @isa_bitmap ISA bitmap to use
> > + * @bit bit position of the desired extension
> > + * @returns true or false
> > + *
> > + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> > + */
> 
> Same comment as above.
> 
> > +bool __riscv_isa_extension_available(const unsigned long
> > *isa_bitmap, int bit)
> > +{
> > +	const unsigned long *bmap = (isa_bitmap) ? isa_bitmap :
> > riscv_isa;
> > +
> > +	if (bit >= RISCV_ISA_EXT_MAX)
> > +		return false;
> > +
> > +	return test_bit(bit, bmap) ? true : false;
> > +}
> > +EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
> > +
> >  void riscv_fill_hwcap(void)
> >  {
> >  	struct device_node *node;
> >  	const char *isa;
> > -	size_t i;
> > +	char print_str[BITS_PER_LONG+1];
> > +	size_t i, j, isa_len;
> >  	static unsigned long isa2hwcap[256] = {0};
> >  
> >  	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> > @@ -32,8 +75,11 @@ void riscv_fill_hwcap(void)
> >  
> >  	elf_hwcap = 0;
> >  
> > +	bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
> > +
> >  	for_each_of_cpu_node(node) {
> >  		unsigned long this_hwcap = 0;
> > +		unsigned long this_isa = 0;
> >  
> >  		if (riscv_of_processor_hartid(node) < 0)
> >  			continue;
> > @@ -43,8 +89,20 @@ void riscv_fill_hwcap(void)
> >  			continue;
> >  		}
> >  
> > -		for (i = 0; i < strlen(isa); ++i)
> > +		i = 0;
> > +		isa_len = strlen(isa);
> > +#if defined(CONFIG_32BIT)
> > +		if (!strncmp(isa, "rv32", 4))
> > +			i += 4;
> > +#elif defined(CONFIG_64BIT)
> > +		if (!strncmp(isa, "rv64", 4))
> > +			i += 4;
> > +#endif
> > +		for (; i < isa_len; ++i) {
> >  			this_hwcap |= isa2hwcap[(unsigned
> > char)(isa[i])];
> > +			if ('a' <= isa[i] && isa[i] <= 'z')
> > +				this_isa |= (1UL << (isa[i] - 'a'));
> 
> Continuing from the earlier comment, this code won't properly handle
> the X 
> and Z prefix extensions.  So maybe for the time being, we should just
> drop 
> the lines mentioned earlier that imply that we can parse Z-prefix 
> extensions, and change this line so it ignores X and Z letters?
> 
> Then a subsequent patch can add support for more complicated
> extension 
> string parsing.
> 
> 
> > +		}
> >  
> >  		/*
> >  		 * All "okay" hart should have same isa. Set HWCAP
> > based on
> > @@ -55,6 +113,11 @@ void riscv_fill_hwcap(void)
> >  			elf_hwcap &= this_hwcap;
> >  		else
> >  			elf_hwcap = this_hwcap;
> > +
> > +		if (riscv_isa[0])
> > +			riscv_isa[0] &= this_isa;
> > +		else
> > +			riscv_isa[0] = this_isa;
> >  	}
> >  
> >  	/* We don't support systems with F but without D, so mask those
> > out
> > @@ -64,7 +127,17 @@ void riscv_fill_hwcap(void)
> >  		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
> >  	}
> >  
> > -	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
> > +	memset(print_str, 0, sizeof(print_str));
> > +	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> > +		if (riscv_isa[0] & BIT_MASK(i))
> > +			print_str[j++] = (char)('a' + i);
> > +	pr_info("riscv: ISA extensions %s\n", print_str);
> > +
> > +	memset(print_str, 0, sizeof(print_str));
> > +	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> > +		if (elf_hwcap & BIT_MASK(i))
> > +			print_str[j++] = (char)('a' + i);
> > +	pr_info("riscv: ELF capabilities %s\n", print_str);
> >  
> >  #ifdef CONFIG_FPU
> >  	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
> > -- 
> > 2.17.1
> > 
> > 
> 
> - Paul
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
