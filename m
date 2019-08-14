Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8178C5A6
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pt6w8ggDuY8eg4mCUhQUvPnPLrj4nbUtl87yoIkphsk=; b=OBRKWLuvn6ljGf
	pfTauEVL33y+Qvm/FPHJkcon9yDbpToamczC58myyrC7VwZJ9d5RA0FRqqBYzse137ET/h6/vqMbX
	tLC96nrlaCagY17EOKAbPxWJKxc5X2ak824h7/gK2frWiGG7ijLpQPuA+LMqcLJRvQzyxY3RIJh0x
	GtiDBCG4ex4iyhdMzcaELZmRuH6El5jaT+seUAv8+bXhmg3/fqKSzPlcdEtKdG+x8mIDVHuvgzjZt
	imMHNHrjLVTGbYWq1MCsKTD5LtKxxP9SJ7hJx/90H7sf8jZ6vrheUh9ddUP+EhuLbThBHriXyMlUF
	v+vG9sNOQF3hMQcajAZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxiPp-0007wI-VJ; Wed, 14 Aug 2019 01:49:29 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiPk-0007vM-4G
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565747364; x=1597283364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rs8ouZzjxXDo41CBvnGowIwaYoVjPNUOtpCtVmqKP/c=;
 b=do5zIQxVk0cmOIaplJudLjieyZN5wip/2KbDOVCU3WpPERJt58xO0Oo7
 GVga3/rXn2RQRfdmrT6Se6/DmGOJX+JaIGmi/Bq4aoJagg8XfjbHG+aEb
 5+zl3vlIQLxwCEuNom2ZObhCI42j6f+6oWPJ5kTZSctLRytdVrdmd2JXu
 Ya5+EZoKuUaCAkVL12EcYmYPwn0AAEcDymr8w8zcs7k9hZvIJdHGSvu9B
 j9qIakpUlhXLWtbbAyVKl0Waea87y7ZY6Vni1Zb3VmLWyIieX3dFS2hPq
 laIABTBUSe1kmyKA5AFge5lM6m/kx45cGl5q5QnbigsdGcSFTQAYUuO7Q w==;
IronPort-SDR: GRo6Z+TLkeHIU7nL+CFTLSw+OxkETLfT9rS017WHHsn7V6PumOhaI62s3f8ElIyoDbJTevh1lL
 GIQdz6CE7wLTQmBEwaTdR5Cmc0potOlPvq/sJvk9EEW94ct74wKmqd0i82PzlHzsqwpL32taO3
 Nan4BaxcIEm2W4g29yttgnXZOxXJJJaFPeFLIFWzmkZk2CronGkFH82Vsqrm57GoE65JqTenA5
 8keF+csIoYDW00ONTW6V0z226zu2fK7onjKTFSjJEwPpOTvYGQa7DGC/lWxZmSpgeDc/z0rRLU
 xzY=
X-IronPort-AV: E=Sophos;i="5.64,382,1559491200"; d="scan'208";a="116726777"
Received: from mail-sn1nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.58])
 by ob1.hgst.iphmx.com with ESMTP; 14 Aug 2019 09:49:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NIpuqLgrFRLBya5xtoU7oyK4BsmN1Qrl8c5Ee0qOwNI8jY1+aOZiJNtVvhVl+fbEd++LN8HdKbuDPckttj00GidEjowsxQ9pHjho0kQ3eDwGnEksGimsk0MeRBnYl5Qw43qL1lX1Z1OjQl+02LT+H5a4Vv42fu9bbdzHT+LCrHTwrASsJ7VQ3HF9hC0QrT04hvex7pOg0hSu2gaFpMdPeJc/RdHs6Y4ZsTSS5AZT3IqWcUlqa5c8dJqBogE7uyvItXegBnfAQezgKgwopCwbLSiWybXEZGpbhGsAmd1H6rDyRIUwHkl7jCYcYDA+a9UHHFuBW5j62BjkKb9e3KAy2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rs8ouZzjxXDo41CBvnGowIwaYoVjPNUOtpCtVmqKP/c=;
 b=NMx0VHYzixDgzVtIO2WR8bOdM972gSz9LMnDMf0lpBz7BV4yWaXOGId6kL7choQv7aN5yZq3irYn6hDTh9x/DPgp2Xlazk4G8Pc32KJgkSylDvSMthEcIyjB3wnOvcm2DvKgl3jaDmX8iOhr8FVQLUADr60Cjqgm3LXzc6btaqM33yfI2i5dha1HExWijdc+7K+nxtwQInHBpA1WL2M1OsYUO2S8A1xqrFGcfXeGbYxOlW3MGweoTnDjc6lgm1vGMloMgwkRD6TU4vnmGL0IJVbJVdWBp25hrfyNcvYqdz/6JQpquypKEKEwcI5L5Jy3/epWCEP+EQQGIv0HOWcUNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rs8ouZzjxXDo41CBvnGowIwaYoVjPNUOtpCtVmqKP/c=;
 b=FkqwKg1t3tskZaCLywQESeTRN9XL4BF8aZbwRZFo8Lx0sDLZrtA4bHgj95WrnHGhEJ53suDhmaC6ZNEn+eLpAEphZzRL5MlDBI5CN9KT6ryMjGXM2JF1EzlkCHEACoK2BGw1VEfkZYgN0owRDXWxwgVv3E0/4niEkikrjYPkY34=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5990.namprd04.prod.outlook.com (20.178.233.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 01:49:18 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 01:49:18 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Topic: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Index: AQHVTxz5XkoGRRVrekixM0/zCIcSeKb5aq2AgAB8D4A=
Date: Wed, 14 Aug 2019 01:49:18 +0000
Message-ID: <e2156347093aad1a05e1c59da9110faf703406c0.camel@wdc.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908131053520.30024@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908131053520.30024@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0322e90c-fd8c-4b85-3a6e-08d720599eb1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5990; 
x-ms-traffictypediagnostic: BYAPR04MB5990:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5990520C0CF08623C30C6E4FFAAD0@BYAPR04MB5990.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(199004)(189003)(2501003)(25786009)(478600001)(6246003)(4326008)(66476007)(66556008)(76116006)(64756008)(66446008)(6916009)(53936002)(305945005)(8936002)(66066001)(71190400001)(71200400001)(7736002)(81166006)(66946007)(256004)(36756003)(8676002)(81156014)(26005)(6512007)(486006)(14454004)(11346002)(6506007)(316002)(76176011)(54906003)(118296001)(2351001)(102836004)(446003)(2616005)(476003)(5640700003)(6436002)(229853002)(86362001)(3846002)(6116002)(5660300002)(186003)(6486002)(99286004)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5990;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hn33LVoYjz3nGRv0WvWG8E+cXM3pcU5/r2rmO+aBuuRWa/3n1Bhn5KIJhGmfJWYhxu9pHf1R+q9/E6t/H6E8b/zSlGpwAUIenkXmqhcaIO7mlZ8A+EyErAehFwlBhswx5RsAL8SuiIKCBYTK6VkBQl+djzMHKIfJKAt6BrQbvxGso0Usp4XF0FsgieuTBbTQEAStQcAkWYmlOA6ft01QN+nDpQBsMFEuFTtCRrcEwpBbii3So7udKZzx07+sDNARu/tGo1rO+sC436rBD/v3uwOqesMKkqnvw7IoJ1kTQTF5HyZRqWG3a4cPcyx8eGYcbCyDSfrGsV1emrWkuVmaRaG8NqgSqpLVbVl86ERAA72j91WzMTjTwo6JRHHg5j8Nmqdjr2mlvmatUJSHDf2ZMITswBY+BUPiomm/1SD7fNI=
Content-ID: <140DFC64D05F75478F7595C7E0690F56@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0322e90c-fd8c-4b85-3a6e-08d720599eb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 01:49:18.1318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zveAUCspsQ6bcdGewgViOWAq1qTc0kX72bYPABAuo/75raF9D3WpeZWUjjtVgqVHWDDi/hBpVxnHduY7sVF1fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5990
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_184924_586892_C13C43F1 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "palmer@sifive.com" <palmer@sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 11:25 -0700, Paul Walmsley wrote:
> Hi Atish,
> 
> On Fri, 9 Aug 2019, Atish Patra wrote:
> 
> > In RISC-V, tlb flush happens via SBI which is expensive.
> > If the target cpumask contains a local hartid, some cost
> > can be saved by issuing a local tlb flush as we do that
> > in OpenSBI anyways.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> 
> A few brief comments/questions beyond the ones that others have
> mentioned:
> 
> 1. At some point, some RISC-V systems may implement this SBI call in 
> hardware, rather than in software.  Then this might wind up becoming
> a 
> de-optimization.  I don't think there's anything to do about that in
> code 
> right now, but it might be worth adding a comment, and thinking about
> how 
> that case might be handled in the platform specification group.

I am fine with adding a comment. But I did not understand why this
would be deoptimization. I not exactly sure about the syntax of future
TLB flush instructions. But if we have a hardware instruction for
remote tlb flushing, it should be executed only for the harts other
than current hart. Right ? 

> 2. If this patch masks or reduces the likelihood of hitting the 
> TLB-related crashes that we're seeing, we probably will want to hold
> off 
> on merging this one until we're relatively certain that those other 
> problems have been fixed. 
> 

Yeah sure. I don't see any stress-ng error but still chasing down the
glibc error.

Regards,
Atish
> 
> 
> > ---
> >  arch/riscv/include/asm/tlbflush.h | 33
> > +++++++++++++++++++++++++++----
> >  1 file changed, 29 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/tlbflush.h
> > b/arch/riscv/include/asm/tlbflush.h
> > index 687dd19735a7..b32ba4fa5888 100644
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
> > @@ -46,14 +47,38 @@ static inline void remote_sfence_vma(struct
> > cpumask *cmask, unsigned long start,
> >  				     unsigned long size)
> >  {
> >  	struct cpumask hmask;
> > +	struct cpumask tmask;
> > +	int cpuid = smp_processor_id();
> >  
> >  	cpumask_clear(&hmask);
> > -	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> > -	sbi_remote_sfence_vma(hmask.bits, start, size);
> > +	cpumask_clear(&tmask);
> > +
> > +	if (cmask)
> > +		cpumask_copy(&tmask, cmask);
> > +	else
> > +		cpumask_copy(&tmask, cpu_online_mask);
> > +
> > +	if (cpumask_test_cpu(cpuid, &tmask)) {
> > +		/* Save trap cost by issuing a local tlb flush here */
> > +		if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> > +			local_flush_tlb_all();
> > +		else if (size == PAGE_SIZE)
> > +			local_flush_tlb_page(start);
> > +		cpumask_clear_cpu(cpuid, &tmask);
> > +	} else if (cpumask_empty(&tmask)) {
> > +		/* cpumask is empty. So just do a local flush */
> > +		local_flush_tlb_all();
> > +		return;
> > +	}
> > +
> > +	if (!cpumask_empty(&tmask)) {
> > +		riscv_cpuid_to_hartid_mask(&tmask, &hmask);
> > +		sbi_remote_sfence_vma(hmask.bits, start, size);
> > +	}
> >  }
> >  
> > -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> > +#define flush_tlb_all() remote_sfence_vma(NULL, 0, -1)
> > +#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr,
> > (addr) + PAGE_SIZE)
> >  #define flush_tlb_range(vma, start, end) \
> >  	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> > (start))
> >  #define flush_tlb_mm(mm) \
> > -- 
> > 2.21.0
> > 
> > 
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
