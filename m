Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3FD9B95F
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWmZKjt8fskjaULM7CV7Wj998yI95b6rC6cwiiqhjto=; b=BRCYwrk/JqNwvi
	dHSx/wMhsiWSWY7jt6gGpRXzUFTHulYU7rL4QMmYbhdhrnfF8r3KRYgRW7qaobE9/eDZd9JivwFgt
	S0nd4UO5mCeLp9V1qVux4BZiS1rK9aWVz60xnzluznU3kKEC5qjEbpYSHhChui9hS8/q0kCnqspR0
	zH5OPgfgCN9+OxIkr1qDAVulnhAd4mnQevZh7PCGZto0/D3CiQ5L66J8WHcETnTlMVTjCLZUn6O8V
	0nalwj/7BIeChmxRfa1c6NSyLB8B9q1/p19fpcMv10NliUv7DVG/i1Xp0qwsdVPatw5V6CvsBzSKG
	3c4kE1RTo9i8Kudy7t7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jeq-0002Wg-5q; Sat, 24 Aug 2019 00:11:52 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeK-0001un-N4
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:11:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566605481; x=1598141481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0AaTyBD4RYiGWkCs/1svdRmDIRLHWVXgJAu6ediNf4c=;
 b=JqKNRDl17WTJIwgZ4M2O9ZdcNRfMwYu+W4I2UMwyo66QpjeIW6bvVInv
 D3aaEsC4E5lw3JuIMFgXuz8ufNEXhtEJbpULWg5qncx9Sk6BXAXf2TVfU
 arnaMbcppwV7Ti7Y8kNuFT3UjmOAoVTDfr3AxFBOVpXqrdfiVVJXoq5cs
 l/BRjmULDSH7u0X20iSR/LWL8aCjqWy+tGTPMzpGZwQDPXiuEWvcavD14
 j+AdYhzEj9tEW7v/pdK74CigbAR+rDjw8jUWYcMnJi99G7tMJ+pRpOdCA
 12SN1G6zQU3+QkgjUx8Qmh4MxEP5KxXZiD5HGbL8GgspnGGA4fvdNlAzx Q==;
IronPort-SDR: nveaRbShxPw+PW3zrym+Vk1ScLqfyLRgRU4netLX1bWQMahhNU1YQl2fE3FSK2ITPhV8JgK8RF
 +/V2O0KQi8ybVo5Tv9WX87wyZKDOx9NXVlY8whKElC+ChdjSM1JWTlVZ9DnPPWZLVKHEjFy+96
 f0F0JSGCd+P5W9TMZD9bspm4G26uXnWZdJFeQ9CJWEz1gk8Cb7+Rqhp/9O+hp8Yeg2sz35uwoa
 98YUZcR322mHAtbQVrAcdmPG17G/uTc+Dx0yU76YKIaKsLtCeSku08sgiT7WS8dCZ/p8/M2JfR
 Npc=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="116564415"
Received: from mail-co1nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.58])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 08:11:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VY9Q1fXpZvCGA5QVHYDQfKw9crry+R/7XOXTLl1UYdmQlze63wfxsEu2Hw+YXbuQB5yRacDJIK3bhf7fXoyloU+eRE3NxlflHGTHpBS6ilp8wRJ8dlOAJWjZUXi3ec0IqKvZph76piGmfUvINmE4b9BXabqL6sWEs8ZDj7L/jqarvLF2YGMDSvkJOj3T6HxI80GaL3vJsjvekB48HVUPKTWu5tA7VsWGvm2Wragt7hL1cIYm5Jwaz6mfji1KfJuFK0kyDjeAv3+Lj0cEz4RX0XLTSeG64g6XIs+LsK6qv3D7G+sOoQykOXpr+NjrrwO3on5Rt+CV5zD5iZ0p2qoeVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AaTyBD4RYiGWkCs/1svdRmDIRLHWVXgJAu6ediNf4c=;
 b=NvRrR5u1OT6ZURYDkJoQhO+30B/AOTM1acmv4FI5Bp2+DU4nexyHYNihRNEYefVRsPpSDvPXf0B2Ysl8zvzAvuELhXRTufRZm3bJofune7tEsprXqD7xOP66rlZW7pudN0MeUEZKbmEhhJQg/1CSPmzZDOEmTb/ys5tHiQaNFpfzvDMx+Pu2k1Sz6l5F//KBfNXOzk2P/m39B5CmfqLYzYNnl1FYNRsxiJRFI3SR56zeKsli/9Y73YCoiFzaC49al8wulduh4Feq79dno/JiBm8Y7fg51xaE4CFDus/767GSqek1RlCsfY3mrCEdSSLXZ/8hXRsnEXNkCAcc3EBmIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AaTyBD4RYiGWkCs/1svdRmDIRLHWVXgJAu6ediNf4c=;
 b=bdkekRs18sY3Tg3rr+wxVopurumrUEN3Xf94ghY+/3/WTl8NMTK9QzX9Vr2bxDAnF+tQchwekN2n6Se3G3XvUEqKBfqe9f6uLS6kB1qj+3NM7Z/cjpCeAb9lnSLvG3mL0QqpDi0Zg+DCEOYb2MbBnA5qXfBCUu82fKKyS+ZLzeo=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5096.namprd04.prod.outlook.com (52.135.235.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sat, 24 Aug 2019 00:11:15 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 00:11:15 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 2/6] riscv: cleanup send_ipi_mask
Thread-Topic: [PATCH 2/6] riscv: cleanup send_ipi_mask
Thread-Index: AQHVWDDwebiim2H4l0SE4FhCSsd/SacJcIGA
Date: Sat, 24 Aug 2019 00:11:15 +0000
Message-ID: <2597d2209f37f064880d97dcb7162528c53f0dbb.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-3-hch@lst.de>
In-Reply-To: <20190821145837.3686-3-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d59760e-2ea9-4e4c-cbbc-08d7282794a1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5096; 
x-ms-traffictypediagnostic: BYAPR04MB5096:
x-microsoft-antispam-prvs: <BYAPR04MB5096D711AF5B200EB72FCC94FAA70@BYAPR04MB5096.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(478600001)(81156014)(81166006)(76116006)(66446008)(6486002)(256004)(8936002)(3846002)(6116002)(229853002)(66946007)(66556008)(64756008)(76176011)(66476007)(53936002)(99286004)(71200400001)(486006)(2501003)(7736002)(305945005)(6436002)(71190400001)(36756003)(186003)(14454004)(6506007)(2906002)(102836004)(26005)(2201001)(66066001)(6512007)(4326008)(2616005)(5660300002)(11346002)(316002)(476003)(110136005)(25786009)(118296001)(86362001)(446003)(6246003)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5096;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QQI7Q6OVJVIisp5s30GJdjHYrDGPNPsEjR48k+ZJZHup2z8DQ8OosA+XHceXJPtM/bUd5QXumER/C3YVUciLtkm6BIwzep+K4e+GC8BvZW0ysL1XLpr1jXLmHvsqdQTCR7XgVMUDlv71jmHPscEEbwv0oMs3tiR1Zo5y9LEY06t4fQ0ytgrIUTEN40r2MxlpaPgLTC6QZdOFO5nvr2UTUBCyKY1S7IU7B9Xk0e3zDT8qbYhjzISiDjirrHJ7U2+OphOLzMroCUfQoLJy5wlkxV9iu5zUMXnWQpDCNqyH7eb3Au+cZrgpAttbf8b40FBWm1qUfqI52L0A9YNG6RSwOduhhELfJgn720rqFZUvssJPKjiftm6ne919qmldvL3Xlz53cmE+NZ1vd063NGgW5VifBDFYmQhGVlctF24zSyw=
x-ms-exchange-transport-forked: True
Content-ID: <679607C2B543834583CACCD33F242ABF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d59760e-2ea9-4e4c-cbbc-08d7282794a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:11:15.7672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dGSPvldqtJkrrzzMcmmXW8nJZUw7fpbeKh5cp3nG9wDMuxmq9SpE3txAg0X+fWeiRnAUx27RXW/BWtxzkXBWog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171120_923509_741A96E5 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
> Use the special barriers for atomic bitops to make the intention
> a little more clear, and use riscv_cpuid_to_hartid_mask instead of
> open coding it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/smp.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index 8cd730239613..2e21669aa068 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -80,17 +80,15 @@ static void ipi_stop(void)
>  
>  static void send_ipi_mask(const struct cpumask *mask, enum
> ipi_message_type op)
>  {
> -	int cpuid, hartid;
>  	struct cpumask hartid_mask;
> +	int cpu;
>  
> -	cpumask_clear(&hartid_mask);
> -	mb();
> -	for_each_cpu(cpuid, mask) {
> -		set_bit(op, &ipi_data[cpuid].bits);
> -		hartid = cpuid_to_hartid_map(cpuid);
> -		cpumask_set_cpu(hartid, &hartid_mask);
> -	}
> -	mb();
> +	smp_mb__before_atomic();
> +	for_each_cpu(cpu, mask)
> +		set_bit(op, &ipi_data[cpu].bits);
> +	smp_mb__after_atomic();
> +
> +	riscv_cpuid_to_hartid_mask(mask, &hartid_mask);

Isn't that less optimized than previous one ?

This will iterate all the cpus set in mask twice during every ipi sent.
For now, we won't see any different. As we have more number of cpus in
RISC-V (hopefully one day ;) ;)), this may affect the performance.

>  	sbi_send_ipi(cpumask_bits(&hartid_mask));
>  }
>  

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
