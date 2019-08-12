Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413F18A413
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 19:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivkg1iAeRlUOIEpHCY6ftufbU5+MeckUo+GFeuwnqJQ=; b=eBhxrfjMUO2sA3
	rmK4bHYZgUv9TBVOQVfQnSP8N2T6qeB9IOLN/yPVFZKMV+raOaYaU+Tiptgug1ulwIJuDQHi03JWe
	fSCgKa2K1g8YTBuMYAmt5guZdpf0MEm0LRTr3heU2bfQdbwEKaqQB721X/RYYpJDk7gIFEdUSc7JB
	3eEZuZPFbNEpnvGpAvLMekr9+h4CnbAvwevk249D7y/krLd2b+xjD5feNL3N9VF0j8fTDzMwp9MF7
	kNIabqe8i48LthO9wmSiWtJFqncpf3yS/PawWtbJB7tqCWMKuzc+TW3UgDRERZOa6BpdlxOBWD/Z6
	LeH8UuIR7mODCofKFxLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDtL-00080i-2a; Mon, 12 Aug 2019 17:13:55 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDtH-0007zx-Q9
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 17:13:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565630031; x=1597166031;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vFJo+tHqL3RWOHoeVehBd13jVdVJPaazqoJj8dIzbJk=;
 b=TQK+oNVxwieuw8n9gIPRiXTVA4gUmcf2EcJqhaMTQ2wZyPhDbAfId/T+
 V8/hsXMMxqA4rDTJNoLumVdKdkqsmE5roaFwp1BOwlJwDLV9t1E7D8baH
 ItccjyhjP+KeP6fmzCBMn5ZEnWgnolS1HPEQi9DevkBSvUUG4SPh0o3F7
 gTMwTwn3DAr1w6PYzJL3Qy4LOEgXETsefkEil1Cq4WzAq0GmqlpVsQbAV
 yI4k//pC8tfBcJnJyAOs2ZcpFVhLrmex8X1w8XjmFBeSuej8zg9gLx5L+
 TTPqHvcIkJaFEG4fTx4OlNW/PzG+4UK6KJiUKgnrZY/0AzS2gImMoyl5F g==;
IronPort-SDR: txI8ceQ0qmmu21SOQGT2RPr43oYeBd7IrpPdW+f8WFODchNU4HxXip1eHnKHgkk9vKeAv4D5De
 krmVufoIJXo7gvSDDfregI5FGt6viHgRAk/8ofZdXOvJiMAO3niZaT8cPUjepiER/pWrNPFNp+
 5pzp7swsUMM8HL9Imu9MLcYQFsITi1T8HskgZM/1LHiTjs6XCVfK5W9HDentIer0UbPWiCI5bF
 wpE5TNzsUW74dceW59UV5ESh4aj6ainEqZWRQsN3ug4fQtodoy7+4AAnfW+XhUdTSSWKyERI+o
 hms=
X-IronPort-AV: E=Sophos;i="5.64,378,1559491200"; d="scan'208";a="120262497"
Received: from mail-cys01nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.52])
 by ob1.hgst.iphmx.com with ESMTP; 13 Aug 2019 01:13:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YOo6N6CQcdXIH8/2nMLk62A1NCd7N2w+6YsFdLkZ6z1IVlgTJuaOEeHnWaPcEcHMwSCZexDKUnQqpJNdKCxe2Wn3Ys7prNdkQ636r2pBPnXskA2nuYpDMOsUp7bf69wsDP04Y/04pd5/k/ICjk+dduhTeJzN99k6qawu+Y5gPd4jMySImuIlv3+K6E5PUPescoL+sYETFf0ZYFC+l3grnjDeAw5RFpozy411Hp8HVfqgGC3Y42Vd2lm7Q3XuCB9tsNXZvRdlOAS4TbE/lBpoGc1HhqKXlXSWtArGWLvhFUw6wMeOjme8GO/3C+wIC1wxkRqU1HPHSwqusNdSnxkBkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vFJo+tHqL3RWOHoeVehBd13jVdVJPaazqoJj8dIzbJk=;
 b=NpbVO2IM3ZPP2IMi0ngLg96foGK7oTW8eVfwiWftW7C1yDpBfUSzONW89uqDqPUOFOODW45y8Ku156SGGfpHWBeuEPM1UIKmOWZRZGqftDz9HIM5Niz7E9hfTVHcBHT/CiV9m/UsDiMwqyefOqugavsAJMyy+ksKg886lQqdAAn0vsI9bkax062SocQPA5AsxKXRbXUE9JWBQsfHlOJC+q/O3qfQ08EhJAzQUOcZRWeefzei/FZipWE6hy1xleNgshYR6slRhMvIwfb1TkLmR9praTRpMhAzCPE6bPzvt1dnh1+C0bIuR4T8cK4bHAl1vVA9RotbjsCUO6m34PWH2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vFJo+tHqL3RWOHoeVehBd13jVdVJPaazqoJj8dIzbJk=;
 b=lSsLj8z51cCmz2A0q2SFj9WKZiCai1dr3oml5TxGjwLk8mLxTRCIw9SLGr00eWt1e+MUMCikUdNdaTJ/qhNEGBKtfsOeqgqKvWatXvdqNhx8WNnfAgOjfqFEy7a7lY8FLtKHccqC0ic7Gzim1fQAgwj0CVVYLOh0AsW3bs2USt8=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4966.namprd04.prod.outlook.com (52.135.232.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Mon, 12 Aug 2019 17:13:37 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Mon, 12 Aug 2019
 17:13:37 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Topic: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Index: AQHVTxz5XkoGRRVrekixM0/zCIcSeKb3qSyAgAAbJwA=
Date: Mon, 12 Aug 2019 17:13:36 +0000
Message-ID: <17a6582c28ff3a008d3ef960c3e36c0bc7013e33.camel@wdc.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <118B0DE7-EDCC-4947-88E5-7FF133A757D8@sifive.com>
In-Reply-To: <118B0DE7-EDCC-4947-88E5-7FF133A757D8@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26319d05-97b8-424c-1996-08d71f4869dc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4966; 
x-ms-traffictypediagnostic: BYAPR04MB4966:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB49661DB11F013687E4915B52FAD30@BYAPR04MB4966.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(189003)(199004)(6436002)(81156014)(81166006)(8676002)(71190400001)(4326008)(6916009)(53936002)(5640700003)(102836004)(64756008)(66446008)(7736002)(66556008)(66476007)(305945005)(66946007)(86362001)(316002)(6506007)(26005)(118296001)(76116006)(6486002)(8936002)(186003)(53546011)(36756003)(76176011)(6246003)(229853002)(2616005)(446003)(11346002)(486006)(5660300002)(476003)(54906003)(2501003)(71200400001)(14454004)(2351001)(6306002)(2906002)(7416002)(66066001)(966005)(256004)(25786009)(99286004)(14444005)(3846002)(6116002)(478600001)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4966;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Zm6ua4J7ghCBPhCScn6fHbvNGNx7Gio3RjBdzC6ux2mE61HLJHF8zgey+BPxqFvT0ka3ouTlkD99Ptu4JVZwAMWKHnaAqRbjnLF97VJv1lsWSG+IRAV3DeM4MlImxlFOe6yBNgGN/vgCeLedk3VhAO8IjTsQ8My7NVVJDFsZPHPuMZaiMxnnRCgf9043dyIX8FVXNLhBeRLXGZ5RcFcexk6i5awspKxeJfLQws3PBvAoqn15Fji6G2DoOxQSMaH8MaCcP90iTMeSr+MgQE7YNZsPQILQSKV7QivIahhp7Jag/JM7ZaMCizO/h0L38aXhZxz0EVdNPPmEBL4J2wDGCRMlpD48cTSfx+ZQq7u216/BQVVkJxRdl70kdd0mhiLVWplBKUm2yvg9lOi+RDJNtSDNgcEyVPmrQ6h9hSZ+XBs=
Content-ID: <814AE27BD0DD2D4CBA2F5FAB20E9F7D3@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26319d05-97b8-424c-1996-08d71f4869dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 17:13:36.8933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4966
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_101351_969820_48381742 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rminnich@gmail.com" <rminnich@gmail.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 10:36 -0500, Troy Benjegerdes wrote:
> > On Aug 9, 2019, at 8:43 PM, Atish Patra <atish.patra@wdc.com>
> > wrote:
> > 
> > In RISC-V, tlb flush happens via SBI which is expensive.
> > If the target cpumask contains a local hartid, some cost
> > can be saved by issuing a local tlb flush as we do that
> > in OpenSBI anyways.
> 
> Is there anything other than convention and current usage that
> prevents
> the kernel from natively handling TLB flushes without ever making the
> SBI
> call?
> 
> Someone is eventually going to want to run the linux kernel in
> machine mode,
> likely for performance and/or security reasons, and this will require
> flushing TLBs
> natively anyway.
> 

The support is already added by Christoph in nommu series.

https://lkml.org/lkml/2019/6/10/935

The idea is to just send IPIs directly in Linux. The same approach is
not good in Supervisor mode until we can get rid of IPIs via SBI all
together. Otherwise, every tlbflush will be even more expensive as it
has to comeback to S mode and then execute sfence.vma.

> 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> > arch/riscv/include/asm/tlbflush.h | 33 +++++++++++++++++++++++++++-
> > ---
> > 1 file changed, 29 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/tlbflush.h
> > b/arch/riscv/include/asm/tlbflush.h
> > index 687dd19735a7..b32ba4fa5888 100644
> > --- a/arch/riscv/include/asm/tlbflush.h
> > +++ b/arch/riscv/include/asm/tlbflush.h
> > @@ -8,6 +8,7 @@
> > #define _ASM_RISCV_TLBFLUSH_H
> > 
> > #include <linux/mm_types.h>
> > +#include <linux/sched.h>
> > #include <asm/smp.h>
> > 
> > /*
> > @@ -46,14 +47,38 @@ static inline void remote_sfence_vma(struct
> > cpumask *cmask, unsigned long start,
> > 				     unsigned long size)
> > {
> > 	struct cpumask hmask;
> > +	struct cpumask tmask;
> > +	int cpuid = smp_processor_id();
> > 
> > 	cpumask_clear(&hmask);
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
> > }
> > 
> > -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> > +#define flush_tlb_all() remote_sfence_vma(NULL, 0, -1)
> > +#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr,
> > (addr) + PAGE_SIZE)
> > #define flush_tlb_range(vma, start, end) \
> > 	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> > (start))
> > #define flush_tlb_mm(mm) \
> > -- 
> > 2.21.0
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
