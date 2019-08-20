Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D167196A8B
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 22:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFWIAcPDLSrd1Z8hOW7XSOAepKe/hESN0ecrSDeX4MY=; b=YwZEQBYlswjCT8
	xrnwFW3asjYBJXsCAAjYNJAFDkp/aXLMhy3EbiIekmRpFj07slKWFXqRhKlq/Zc1cCY7ayR39qmD7
	NUHcebp2Riw3ZGbJ7SBJD2Gvm53g0279MNRXyxOqtH/sgtyopuedVhuhcHfeCMRK/JzVNlkuliPee
	fcKz4M71y8loFqVeHJuapHCcLvQCWD5UQpanGFZd0diXcUDfa7Z1p0as7avlbZHXWg0lyZnCNsOTV
	fCJg5itd/jk5OlaGjPGtVjKnYnka825kBvP1cYJrf5QJ6CmhGdmxZQPhQkVYcSwVgeBPmpF2iv1c2
	2dJ+5aGDF5I3mMAvnFuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AlN-0005Y7-AV; Tue, 20 Aug 2019 20:29:53 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AlJ-0005XN-OD
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 20:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566332990; x=1597868990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=O1SvXr94+aBuhezicF2UtLS/6BWYlUxtYT7VCJG9jno=;
 b=GWcXBGGEMyO75ATZZa7U3knDSZgv9knIDEom+1mN3Dm5SqMgjPOokCrf
 bYRPWNWUuprjFB9KzhOjHT+5PpZfNwFcxxkbyBMLLrfV54G/CyZCGe/9Q
 ycBVBtOiiDaVVjrzzCxEi55U5LFnZnOY+GyKVDppppgjwI9FlPcvT1NfI
 ybyESUcDoPiG/wx29F5EeMRQr+3u77g+uquJ99V80OAIsblGsTOwYw2Xu
 pPPdHbIy8UOsulV+DNeEhGzhtvtrL3MUAICqGHu6GkmWHU6CHwFLtsfu1
 QtvmqyM07DWzR7aAPgLDxru7viUZoRh4Cm7enkHG+MS4biRjHqrUTA/zi Q==;
IronPort-SDR: 5J5wtKN6vNz1ZdSOztd2htI3GqdsmUw62JzR/CLbE7BeI6AYKjNOMDnWy/r5iGyXePOic3CykW
 eOpxziXi551Ba0GdmAWvz/vWdHVwo9DSkOWSgO0bYBdFPuMhQgbzcBKQFaHGHDU38T+Avih/aJ
 IO1R/3bJGYyoUG/nXubghW1B5vbgcNSUjTSc9TPdjQlaGjU1uKc2t5ZzOdPxeoLFPwYnM/SQFU
 L7Ncl1Chpz5ERl7JHz4yjqzYqxalTFa2A6zrRFGUlqccD+8uDImqeR008rJhTa+9GuZLTv+aHq
 NZs=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="117212209"
Received: from mail-co1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.54])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 04:29:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ez46ZQKJIbOTbsurGTF737BukyetYHD6Vze8Qjl6J0KSLDWAib4gNLqVxPWw+FbGQKMieL5z6ETsMHeUjY+L9PU1IWeYWcnVVOhwi/FmAxKAfTKmEztJbo05CGQzw0lP645sMOExEhdklvVBgWWYz4sgaFAIX6aScIc3EgIunxso89iQButaWGs63reBhhFQbGuUgX3wqoy+0iyh6uktX8aB1jfbpkXH9KfzhHvpnSe/6VaGlwWtQnDsQSRlRI/aeuPi9ZdEk8NJzU2D8AG95Cv4BLtBiVHFlY+HuOSvKIQXhr9gi0ulAI0RGzzVr1IUBeS3SDypbKBORV1BLgCj1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1SvXr94+aBuhezicF2UtLS/6BWYlUxtYT7VCJG9jno=;
 b=oH5tS/DH4EUmzT1NNRvU4Qt3yLM4ZlJM5unzIpWF0yT7QOrqpnIoSlObtATTggENCzlVk2qmBz3HRp2hNg4qHz+AWiWMm0JwjIpH+TKvq1p036swqmZml5GsqCpjheui7fNJ1P11yEFim/FQxc1ERKLMlS/tPPUPqgbpDZRR/Fuf2c6ouChg9xl22boGtTDa3s7co6Vjj5noAgppcIUcx+bVnvXD78SEZ5lqF9eeBNxSE2zd7wB6Ky5DuOWCPLB65GLt4nCK/Qpw0tDCjjoC5AIi7dGGT5AIPVWKTUVL0CPuLDUIfpRV1Tii4xIiiXBwa9YpH4I5I4inP59E2k9NlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1SvXr94+aBuhezicF2UtLS/6BWYlUxtYT7VCJG9jno=;
 b=XQgOCv+telPd67zweL/Kcn6PM7Kp0I7swBPPnEHbCyURoL/D+mRe80Q6hulV+TpAtmY9zFTc/NHrRGaggQmI6PyFUpDYvTxB4Df/C6l552zeTgALzi65oxeINgZhuVXRd/rlK7FHkg8MfOL7+Qa3h9UdVfIUIdThE2Bh9XBqIKw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5864.namprd04.prod.outlook.com (20.179.59.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 20:29:47 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 20:29:47 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Topic: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Index: AQHVVvDfUBJCIAOoL0y7jXfLdcYugacDuw4AgADDFIA=
Date: Tue, 20 Aug 2019 20:29:47 +0000
Message-ID: <171bb233718ba2897fa5fd48853721108825d22c.camel@wdc.com>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <CAAhSdy3uQ=CSg4pHb_BYCEOh_MMTyLf8SW2o9SCn0UZDYwgGpg@mail.gmail.com>
In-Reply-To: <CAAhSdy3uQ=CSg4pHb_BYCEOh_MMTyLf8SW2o9SCn0UZDYwgGpg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8229c90f-1b64-4022-3e5d-08d725ad2515
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5864; 
x-ms-traffictypediagnostic: BYAPR04MB5864:
x-microsoft-antispam-prvs: <BYAPR04MB586493FCA9815B6EFE38C344FAAB0@BYAPR04MB5864.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(199004)(189003)(25786009)(476003)(2616005)(81166006)(2351001)(6246003)(2501003)(1730700003)(76176011)(6916009)(81156014)(14454004)(4326008)(229853002)(8936002)(99286004)(3846002)(316002)(2906002)(54906003)(305945005)(6116002)(71200400001)(71190400001)(66556008)(66476007)(26005)(86362001)(64756008)(76116006)(486006)(66946007)(6436002)(66066001)(186003)(478600001)(53546011)(446003)(5660300002)(7736002)(11346002)(53936002)(118296001)(6486002)(102836004)(5640700003)(6512007)(6506007)(36756003)(256004)(66446008)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5864;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pJay5Fl+4voQ49Sk0fuH1BtkKtOx+Plf4PTGuIRfL8VG4syRuVb0Vc3s63WWqpYZy35Ib2wjrJ3JbdwbwkQwzrY8aOVEIX9VUDzt93NMOud1eLIPi1UDX11tkJTZCxnZe+cytvr+GtDyQgA4CJCX2LO/xQMYlBsB6wblRAiee/qhVWipS3+T29gb1U/UmR12KXPRpKlrdUo2E0Jx7cHB3VOF41OACAMRckyUGtcBdXpUuqrl/SUvz443lr26J6P9DbtF/dvMx8hmtefszmLFMPKTmaH4TSXi9zPFU3xN6NjXJFNmg6IBkCH/2qMJna7eH8EkHAdoSPTs+iEpRvGbEzzVd9BQdtzoQAguevlDVy7NGOLWAazWfi/+JIdsruLTfpORIIKfVveGleG5JsnjX2MFnUr1gu0MlqjmTVgYuT4=
x-ms-exchange-transport-forked: True
Content-ID: <676BF3AC5FF9F243836EFCF14992B59E@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8229c90f-1b64-4022-3e5d-08d725ad2515
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 20:29:47.7014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hNDRjTEWxEbUXO+n8lB75bMB5vyeLarGrM1BmnCYTXPlNqGXDpggKzZ78pBAq5iKvjivn+NYhbtYoO9bDEk7Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5864
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132949_901934_358D2D60 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 14:21 +0530, Anup Patel wrote:
> On Tue, Aug 20, 2019 at 6:17 AM Atish Patra <atish.patra@wdc.com>
> wrote:
> > In RISC-V, tlb flush happens via SBI which is expensive.
> > If the target cpumask contains a local hartid, some cost
> > can be saved by issuing a local tlb flush as we do that
> > in OpenSBI anyways. There is also no need of SBI call if
> > cpumask is empty.
> > 
> > Do a local flush first if current cpu is present in cpumask.
> > Invoke SBI call only if target cpumask contains any cpus
> > other than local cpu.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/tlbflush.h | 37 ++++++++++++++++++++++++++-
> > ----
> >  1 file changed, 31 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/tlbflush.h
> > b/arch/riscv/include/asm/tlbflush.h
> > index b5e64dc19b9e..3f9cd17b5402 100644
> > --- a/arch/riscv/include/asm/tlbflush.h
> > +++ b/arch/riscv/include/asm/tlbflush.h
> > @@ -8,6 +8,7 @@
> >  #define _ASM_RISCV_TLBFLUSH_H
> > 
> >  #include <linux/mm_types.h>
> > +#include <linux/sched.h>
> >  #include <asm/smp.h>
> > 
> >  /*
> > @@ -42,20 +43,44 @@ static inline void flush_tlb_range(struct
> > vm_area_struct *vma,
> > 
> >  #include <asm/sbi.h>
> > 
> > -static inline void remote_sfence_vma(struct cpumask *cmask,
> > unsigned long start,
> > -                                    unsigned long size)
> > +static void __riscv_flush_tlb(struct cpumask *cmask, unsigned long
> > start,
> > +                             unsigned long size)
> >  {
> >         struct cpumask hmask;
> > +       unsigned int hartid;
> > +       unsigned int cpuid;
> > 
> >         cpumask_clear(&hmask);
> > +
> > +       if (!cmask) {
> > +               riscv_cpuid_to_hartid_mask(cpu_online_mask,
> > &hmask);
> > +               goto issue_sfence;
> > +       }
> > +
> > +       cpuid = get_cpu();
> > +       if (cpumask_test_cpu(cpuid, cmask)) {
> > +               /* Save trap cost by issuing a local tlb flush here
> > */
> > +               if ((start == 0 && size == -1) || (size >
> > PAGE_SIZE))
> > +                       local_flush_tlb_all();
> > +               else if (size == PAGE_SIZE)
> > +                       local_flush_tlb_page(start);
> > +       }
> > +       if (cpumask_any_but(cmask, cpuid) >= nr_cpu_ids)
> > +               goto done;
> > +
> >         riscv_cpuid_to_hartid_mask(cmask, &hmask);
> > +       hartid = cpuid_to_hartid_map(cpuid);
> > +       cpumask_clear_cpu(hartid, &hmask);
> > +
> > +issue_sfence:
> >         sbi_remote_sfence_vma(hmask.bits, start, size);
> > +done:
> > +       put_cpu();
> >  }
> > 
> > -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > -
> > +#define flush_tlb_all() __riscv_flush_tlb(NULL, 0, -1)
> >  #define flush_tlb_range(vma, start, end) \
> > -       remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> > (start))
> > +       __riscv_flush_tlb(mm_cpumask((vma)->vm_mm), start, (end) -
> > (start))
> > 
> >  static inline void flush_tlb_page(struct vm_area_struct *vma,
> >                                   unsigned long addr) {
> > @@ -63,7 +88,7 @@ static inline void flush_tlb_page(struct
> > vm_area_struct *vma,
> >  }
> > 
> >  #define flush_tlb_mm(mm)                               \
> > -       remote_sfence_vma(mm_cpumask(mm), 0, -1)
> > +       __riscv_flush_tlb(mm_cpumask(mm), 0, -1)
> > 
> >  #endif /* CONFIG_SMP */
> > 
> > --
> > 2.21.0
> > 
> 
> I think we should move __riscv_flush_tlb() to mm/tlbflush.c because
> it's quite
> big now.
> 
> In future, we will also have __riscv_flush_tlb_asid() which will
> flush TLB based
> on ASID.
> 

Sounds good to me. Christoph has already mm/tlbflush.c in his mmu
series. I will rebase on top of it.

> Regards,
> Anup

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
