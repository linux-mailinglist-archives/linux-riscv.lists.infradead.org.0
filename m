Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E0E96B0D
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 23:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH+oDMkruoOegNEsWEd/SvERo0jTfPlFv0FYluqqXcQ=; b=KvyypxVA+6fgrW
	tSmWKOSUgtuSlh3q1iY/Tny+i+SHzrwHFKSFCwnkSJeIJ3h2yV6WWceXTiqD1hirtPgxyIhXwkPbf
	Y+XG20/W6mo+ksIrH1azq4qC6YWboWvFHcKxN6M2Z+drZa96pFzANtXdHN4PjIYqAaY9k8v5dBzoJ
	u8yaJ1OYRkhSlaSiZ1Ic+htGOGxDh4/UxegsVeehV3RN5CbkIntXIX4/7S6XJapjQ5tjAQM6CJVis
	17Cn4iOHcGTzIvauapwq5BDRjeD3NjyZ5m1BS2dB496p5d77NgZSQp/hqKLW9sRpJ5ksmV27DyqOW
	m5p1hLtdngIqhVt2FKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BJP-0006bO-P1; Tue, 20 Aug 2019 21:05:03 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BJL-0006VJ-VA
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 21:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566335101; x=1597871101;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6kBuad4Y+wWNtvBqol4LM0EQY+Y3HPZMluS/SMiHtPI=;
 b=O8YFNc+Xb7CyK3IcQ+IJIIsn2OoGucfDwJ5V5ssr2OlTVjD+Yw47+Ymc
 BZ7cbsY/OVGHrrZZOJz1ZSZOkFmUk4Vg3xJQBd/ArNQv3+evo+Av/H+vs
 g98V0lOlrala7X/ClUXt+rsEcV1tLX+HEGs8TLT3xjz0V+2HoydkzO+u/
 zCJCd8jwwcraxmaapPTyLaPWmB0VmfwoiH4EhD1m6HINPf7E+9ztKRkLf
 2vkkJ/Yqo1gonnRQXGn5fYCqscQhJ+neurF7jA9wIJE10NByqjFqqBCop
 btVA3wZCug+Kx+XfSWtiPRBApxW45hiMaKL5atugTg0DyuadKUTShJLf+ A==;
IronPort-SDR: GKJ7+kuVpmOR6roKNkYqfRvten4725RcPEN+460TDseYQzsZY1rBf8yikJMfg28sNkN7lyiP5F
 mC6CaH2zblWMTsoqwQvHMerpEFKSmosF0jP85pdTx10VlrUp1dqPowRqeCS4FvJpdbIXzDgHN3
 DfkhQiXgusTXR3nQxa9rUlUvse37i4FDZHnEdGLXH8KPIjR5BTAtcobN9ns52OW5hjaDYNwxAU
 ZF3bmc3q2NB4bK9BS9R1acYX7VVPdOvysj0k5fUe+zTzsH5MwpP+nl2SDfIN4Yd3T+G49+URf0
 6OY=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="120872935"
Received: from mail-by2nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.51])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 05:04:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cij2CEf4uSfkBjlc4fiExvQ8VU+SsoKnrdb3y95+i49dhyzRxX5KuR5RzT5rxzRWtIMcCJiY3a5jClvmC2QuFcgRzU2bGySbUu42/XuEfg4zvRUNuF/Ce+pu5tJXBXLGMDvj9UcKhhkhPrGrXmeBk/Qt7rEvB2h3ny+d5aSk6Mg0/X0kl8jmRf2O01EbQyUc//bWZIvjjiWP4z3nRR25T55tguaZ/btXaE/mFRHJ5M3BHerz+4DcAr2PSNBBphmh5d2M5eYp/PBKit5o+/lyYHK3OdhaGm/boCywJbYPVrlTWbg0eQ9ikHGAUtAlSaLElZObe9cFUzShE8o9l2PhyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kBuad4Y+wWNtvBqol4LM0EQY+Y3HPZMluS/SMiHtPI=;
 b=KLHvV32+Jim4E2Q9A0R1yMn6NTubp7ou1KXurHC0NJDCLVeVneOlc2iQYb0+DqxcfVKTAOyF0zGMFO2YjXYJHg7bETy42r9RYpmXXkaarRvIRwJEyIv6EoC9cUukJEBR9qIIVyhxRl+i/4D1gLl8UXVjz02zffa7/bxmIOISgv8L1jq46H8EvFDKLDm+1PaOBBUReoNI0s+0HAHxeH+5pEg+WCGwJWURM/ZGkQzEPy6RWbC9B/dmcZh0WL/rQ6yugquHNHR7EwwZSGbgmw/k71JbMC23wjqlUqkQ3AVAU0Q90S7zM3FegOPQEgc3tFX5AKpy36pvOjO/EBZR7scOGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kBuad4Y+wWNtvBqol4LM0EQY+Y3HPZMluS/SMiHtPI=;
 b=RJb/bwLmRyR5YGP5PFwES9332/3DQCx6MeXYmW7/GSwCayyXXvMii6AFGmORgctulCD+vGJMRnAV77NwiVhGhv78Qo6kysWYmMoVjxSgYEiolZ5Q6QONIRNBVbUOJhM+3O/QGygyn7an2pUDAWCUv8ECTMGEK8MO5aGwWtKbptI=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4310.namprd04.prod.outlook.com (20.176.251.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 21:04:57 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 21:04:57 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 09/15] riscv: implement remote sfence.i natively for M-mode
Thread-Topic: [PATCH 09/15] riscv: implement remote sfence.i natively for
 M-mode
Thread-Index: AQHVUe6Ste5QyM3L50+bKaWbkCQXSacEkfiA
Date: Tue, 20 Aug 2019 21:04:57 +0000
Message-ID: <d3ca4c6174dea85a4a55f2ec62875b226f05b69d.camel@wdc.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-10-hch@lst.de>
In-Reply-To: <20190813154747.24256-10-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8931afa-639f-42a4-ef0f-08d725b20e5d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4310; 
x-ms-traffictypediagnostic: BYAPR04MB4310:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB43107754AE335F34E46FBB42FAAB0@BYAPR04MB4310.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(199004)(189003)(81156014)(81166006)(53936002)(316002)(110136005)(8676002)(118296001)(14454004)(186003)(256004)(5660300002)(6246003)(102836004)(6116002)(305945005)(3846002)(6506007)(2616005)(2906002)(11346002)(25786009)(26005)(4326008)(486006)(7736002)(71190400001)(71200400001)(478600001)(8936002)(446003)(36756003)(229853002)(76176011)(476003)(2501003)(76116006)(86362001)(6436002)(66066001)(54906003)(66446008)(66556008)(66476007)(2201001)(64756008)(6486002)(66946007)(6512007)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4310;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QSc+McBQaVF24NWReMYlDmQrQkxEsiOhFw5d6u52I5wuoebgHQykbmpSJh/hqTTEW98q8YIOlwawJrPbMDd431mj3fd6nGGfyF0w0xfXuXiW100Dmuf28VEL1Q0z4uL+ZmL/aFqdHy6CUKA/uAvtzb+G7ENc2OoFPqE1t6B7gK0NIEl4O3HrSn6wnZseHWaQK8G0RW8TvCnEkPUVk6Go9nf0q+bdTF8EtgGxtE8NAAOFIyOsT8L/Dt3k42NU1mtxxWC16spkgO3M1fdtRV502XfI0dT3GqHCU8tzAcoMYDEbJhW3w+RCz+uxYtBHiE7ih1h8lY2zG0+wjP4/FzJ87CmMwzGypZ/vUO96bFYCXdoC2ryZC8SpirCdEh8q1CD8c9kK+Rmgv8HSii2nGtoyeP0d+V42rx2d6pPhvGvD6CM=
Content-ID: <5CA2AAD6A7152345891D03CEE309E4DC@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8931afa-639f-42a4-ef0f-08d725b20e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 21:04:57.0598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dmaE4lzShq7EUi9Ip8b6eoMRh4mq1jnQSs0uSqW1+XGXY33qz7xcR29s2IBAbMFD73Rfi2kAWb2X1+9cfI3s1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_140500_150447_6DE8B064 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 17:47 +0200, Christoph Hellwig wrote:
> The RISC-V ISA only supports flushing the instruction cache for the
> local
> CPU core.  For normal S-mode Linux remote flushing is offloaded to
> machine mode using ecalls, but for M-mode Linux we'll have to do it
> ourselves.  Use the same implementation as all the existing open
> source
> SBI implementations by just doing an IPI to all remote cores to
> execute
> th sfence.i instruction on every live core.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/cacheflush.c | 31 +++++++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 9ebcff8ba263..10875ea1065e 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -10,10 +10,35 @@
>  
>  #include <asm/sbi.h>
>  
> +#ifdef CONFIG_M_MODE
> +static void ipi_remote_fence_i(void *info)
> +{
> +	return local_flush_icache_all();
> +}
> +
> +void flush_icache_all(void)
> +{
> +	on_each_cpu(ipi_remote_fence_i, NULL, 1);
> +}
> +
> +static void flush_icache_cpumask(const cpumask_t *mask)
> +{
> +	on_each_cpu_mask(mask, ipi_remote_fence_i, NULL, 1);
> +}
> +#else /* CONFIG_M_MODE */
>  void flush_icache_all(void)
>  {
>  	sbi_remote_fence_i(NULL);
>  }
> +static void flush_icache_cpumask(const cpumask_t *mask)
> +{
> +	cpumask_t hmask;
> +
> +	cpumask_clear(&hmask);
> +	riscv_cpuid_to_hartid_mask(mask, &hmask);
> +	sbi_remote_fence_i(hmask.bits);
> +}
> +#endif /* CONFIG_M_MODE */
>  
>  /*
>   * Performs an icache flush for the given MM context.  RISC-V has no
> direct
> @@ -28,7 +53,7 @@ void flush_icache_all(void)
>  void flush_icache_mm(struct mm_struct *mm, bool local)
>  {
>  	unsigned int cpu;
> -	cpumask_t others, hmask, *mask;
> +	cpumask_t others, *mask;
>  
>  	preempt_disable();
>  
> @@ -47,9 +72,7 @@ void flush_icache_mm(struct mm_struct *mm, bool
> local)
>  	cpumask_andnot(&others, mm_cpumask(mm), cpumask_of(cpu));
>  	local |= cpumask_empty(&others);
>  	if (mm != current->active_mm || !local) {
> -		cpumask_clear(&hmask);
> -		riscv_cpuid_to_hartid_mask(&others, &hmask);
> -		sbi_remote_fence_i(hmask.bits);
> +		flush_icache_cpumask(&others);
>  	} else {
>  		/*
>  		 * It's assumed that at least one strongly ordered
> operation is

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
