Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578DC9B940
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpIcgrrdIjL1pngN62KtVLbLdbgYqUZVWfMsAz2GiQ4=; b=EcFIeUrVnaroQv
	gtHvmVjfcb1auHRcerZgNuvQ1PtP+/8L61iXfy6JQpstDvUZSs+e166ZqBytuNA+B7Gk1O9IIQtxj
	4Y/mSLEM5MfL7X/SwCT3gXIykAkSH0M61Q0H2jZaEWkb7pomKNToG8KC4kR8Op49X7zLAN3sruz5Q
	6GAZ9jkkchr4pDsbCEh/KSVF4Z9si2HvcpRK0Kw/oWCc4wf5z3wGP8+zIkxiW3TsxsZriHrCyRn0U
	TzFk36/a0au9glxcWSCA3kSCrjNol6hKekU8ya9NqMgsB0yL70aDag8avZuHiH74e95Nql0czPP/V
	aeIe8wg6bqhX+mcs4avg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JWZ-0007Kc-Jv; Sat, 24 Aug 2019 00:03:19 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JWV-0007KB-Lr
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566604996; x=1598140996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rPx08Iy+sty+SC5r1YO8iclOTyj60ZqHhLn/rehqZ3k=;
 b=YP+3fgPjy/83Z+MhekSJ5Y4JNbUBs3Xsch4BGl4ZeeUh5UESqepxNS3y
 O+pLM3STys1W7Sv5zYFRuwg7NUOPYec4eUGu3dCmNBv0tvy5xb73vXci1
 BFz4YZiK7UXFTWwMj5uFoY6t40x/U7DypxEZVFPWUhGvZBVI3d8cP0Obo
 x9HhtCxWOdGQR0sVaL8WbQSGjd4nUnmZk3fwKjy2EUtFKDt0WerT/cZ4f
 qBlAjlgug/nCU5iFbn6Lv4kHq2uymsaYWTHHxanAuOK4166mA/9DJnG62
 yA+yH0cLCbkiIb6my8iRSccglyXt6rtZJlkfGqBlOVtdm+6b7A4gm/ZP6 g==;
IronPort-SDR: 7Gbd0xMzkRFGxzjTvhX9KbKwQuOccoIdoMTCeVAU1eK2K9FclWKaT1wUmOKG0m4TNE8KMgyEU6
 pJyUSlUsCNRFb4e1++1zFCpDiUmotaH4jDNLy9c5Uw9QNeODhRFcypHhF1du6WpIkmfY4i2nGX
 cVVVm50W9ggKD7Js6rVDz/hVP1EG81rj7pxWzz0UtHV9RYds2yZZvpAR9H9FkEpe7T3h30Vw0n
 fzj1g/QBY1AxBscZ7NFF9EiWg/e2NFJnRPm2k7sMC8hlfoyO2BeHiyvlXUp/KT78c3mGPlaodB
 z+c=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="118155368"
Received: from mail-sn1nam01lp2056.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.56])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 08:03:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3CunSPzRJYHrV1vcoVcEXsdz3EY5g3N4JLoL33ihEVWmX7CwXFcwNN07rwYN8qenJKPkFceeSt5nY95k7EZjFzJKZREoQPGDO0eyUHtoBzDjlNno6Boxvh5ToSBibY485CCaLngROW3qam9ICwCi1GGsLbHNIdahK9H9WUrHRbUhhrE8I+d01b70dHsdbnEDob7xCtI9PabI9XiWadIGSvFk3xRo7DSK2mQcD42IW+W7VnS+et0UeUNczHEC7Nd6HeiAC8qvvASJ7gM97bvc33mhmm0jQmOby4YquaGIwC2IL/DOdxu0rEVy2Lq4iPecV0IV/yONQNHp3vcXvRd8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPx08Iy+sty+SC5r1YO8iclOTyj60ZqHhLn/rehqZ3k=;
 b=JaG22Es85zpiUnSl55npsYOML532+JTjTWr4n1+O5tsu6Jetl4HQMkf3l4ECOjMUbR5Cw5u/PHwmHRdVIHBX7y1LsJ6uxbIAFk8BZGXWvI5b+tpiHY7j8+sGR0/c8JaHYpBxqTHcC8s6R9WUb3wei3loKtONXP4RRw2HylZVF9z5zAge7kmo/Q8GwilJx0lLhieYSQNlDqZ6K+2L97mr+lCwaB8amvohJHCpgZJX68AKTDJLIcOSA2OLRLRfCm0to7dqsAvxaeyecTcqgxCmf2FJasBUAg+wFtf3K34oaaAPxf1GxjjSzA7ifHeBqk9jWurzcjv5yIFHIS5uU9q4Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPx08Iy+sty+SC5r1YO8iclOTyj60ZqHhLn/rehqZ3k=;
 b=FdTV3ioK8Uc4n0cS43FWD3AT8+27sfUyvrccmffogr2TRxX6QUXJTpuQFQEepuF2V4CMFjVHw4metmgm6wvHEhmsIIhaxTTMd6AbMZL9DWco1CiVbSOkuHTHkP+xR4iUKPPkoVGGPE7mXHFc14DL24zL9z+skvwXE6gNiAVFC/U=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB6055.namprd04.prod.outlook.com (20.178.233.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Sat, 24 Aug 2019 00:03:11 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 00:03:11 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 4/6] riscv: cleanup riscv_cpuid_to_hartid_mask
Thread-Topic: [PATCH 4/6] riscv: cleanup riscv_cpuid_to_hartid_mask
Thread-Index: AQHVWDDz2G1QLrIi60Ce1VeRiFA8bacJbj8A
Date: Sat, 24 Aug 2019 00:03:11 +0000
Message-ID: <2a4403f41a5cbdfd3aad66bee112f1552106dba9.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-5-hch@lst.de>
In-Reply-To: <20190821145837.3686-5-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f319832-0d3d-4bac-2f51-08d7282673d5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6055; 
x-ms-traffictypediagnostic: BYAPR04MB6055:
x-microsoft-antispam-prvs: <BYAPR04MB6055DA04B00F8DC691844FEFFAA70@BYAPR04MB6055.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(189003)(199004)(2501003)(478600001)(5660300002)(81156014)(71200400001)(6506007)(36756003)(66946007)(4326008)(446003)(118296001)(6512007)(86362001)(11346002)(102836004)(14454004)(66476007)(6486002)(76176011)(486006)(6436002)(26005)(316002)(71190400001)(99286004)(2906002)(110136005)(6116002)(66066001)(8676002)(186003)(7736002)(81166006)(8936002)(6246003)(2201001)(229853002)(256004)(2616005)(25786009)(76116006)(64756008)(53936002)(3846002)(305945005)(476003)(66556008)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6055;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NYNLHoT9P/XxBzINx8gSMaUbPlvOuhXwCepLL9CkPvgnmWo08SKLYJ+QJ/kisG3u8kRdO95oX7kaBnJA0thKbmRZpl5sn1Ygy4tIdd9sa+dCnaF+7E/BwrkpKqvWKum9LkStZd9qzQgGGdp3P/4STIhDOVnFfxBj+pcU+xmz2iQgMVmmaCNQu3hZ/GW5DXbW2HtPFvupcabQVudFeUCu5qIXvjp/KvcJ6X4UveSezJbY7RWvAytxdTrFY/f4jMWoBf7hClvbtKw7jJduTGfeSy/2ovyTkKoybxRZVv8UM9W8nWvzW0UHHbGcHoWCgoFw81iJAc+EX5qy5WPWv/vZ7dQ1hhluEJqb4gU6bBAeJ6OrN+YOkjXVkGFKlSPX5wPXpLA8BPAFu52gvktvpbmO6om6M/Ir0FYPioArqfg/S8g=
x-ms-exchange-transport-forked: True
Content-ID: <C3E6A8BE6C2BF442A3BB485CEDE765D4@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f319832-0d3d-4bac-2f51-08d7282673d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:03:11.2254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BaAo9TWqk5elJU8ArT/YveAFJ/ln9mhWyNK+SPzC/rqOJ4/Xm6bYE27X0lUScSl1GQVyXe1QcNXmpOnv2jpE9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_170315_796340_D85EC0D1 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 23:58 +0900, Christoph Hellwig wrote:
> Move the initial clearing of the mask from the callers to
> riscv_cpuid_to_hartid_mask, and remove the unused !CONFIG_SMP stub.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/smp.h      | 6 ------
>  arch/riscv/include/asm/tlbflush.h | 1 -
>  arch/riscv/kernel/smp.c           | 1 +
>  arch/riscv/mm/cacheflush.c        | 1 -
>  4 files changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/smp.h
> b/arch/riscv/include/asm/smp.h
> index c6ed4d691def..a83451d73a4e 100644
> --- a/arch/riscv/include/asm/smp.h
> +++ b/arch/riscv/include/asm/smp.h
> @@ -61,11 +61,5 @@ static inline unsigned long
> cpuid_to_hartid_map(int cpu)
>  	return boot_cpu_hartid;
>  }
>  
> -static inline void riscv_cpuid_to_hartid_mask(const struct cpumask
> *in,
> -					      struct cpumask *out)
> -{
> -	cpumask_set_cpu(cpuid_to_hartid_map(0), out);
> -}
> -
>  #endif /* CONFIG_SMP */
>  #endif /* _ASM_RISCV_SMP_H */
> diff --git a/arch/riscv/include/asm/tlbflush.h
> b/arch/riscv/include/asm/tlbflush.h
> index 4d9bbe8438bf..df31fe2ed09c 100644
> --- a/arch/riscv/include/asm/tlbflush.h
> +++ b/arch/riscv/include/asm/tlbflush.h
> @@ -47,7 +47,6 @@ static inline void remote_sfence_vma(struct cpumask
> *cmask, unsigned long start,
>  {
>  	struct cpumask hmask;
>  
> -	cpumask_clear(&hmask);
>  	riscv_cpuid_to_hartid_mask(cmask, &hmask);
>  	sbi_remote_sfence_vma(hmask.bits, start, size);
>  }
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index a3715d621f60..3836760d7aaf 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -56,6 +56,7 @@ void riscv_cpuid_to_hartid_mask(const struct
> cpumask *in, struct cpumask *out)
>  {
>  	int cpu;
>  
> +	cpumask_clear(out);
>  	for_each_cpu(cpu, in)
>  		cpumask_set_cpu(cpuid_to_hartid_map(cpu), out);
>  }
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 9ebcff8ba263..3f15938dec89 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -47,7 +47,6 @@ void flush_icache_mm(struct mm_struct *mm, bool
> local)
>  	cpumask_andnot(&others, mm_cpumask(mm), cpumask_of(cpu));
>  	local |= cpumask_empty(&others);
>  	if (mm != current->active_mm || !local) {
> -		cpumask_clear(&hmask);
>  		riscv_cpuid_to_hartid_mask(&others, &hmask);
>  		sbi_remote_fence_i(hmask.bits);
>  	} else {

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
