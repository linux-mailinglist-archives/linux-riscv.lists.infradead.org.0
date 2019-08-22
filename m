Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C4799E45
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 19:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KcSe1ewIT2buM/sOLIrChxW9EjQ1ZHx02WwG7cI9DA=; b=lg+v+UL61fzK4G
	Nw+z2u/KBeYxEHwkMCF0nOL+l+CdlIeDR9UeyIyLWemg4zX+n2uA/3dhxvZXdCJ3tgHc0ogvLMKWu
	l87vYNQHvsL9hJawZWrMW9oNLDftwu91/3LjbM6a3kbKWk0rg5lWQxt4v9/MUN7/il/6ewonaX/kS
	qgKtcKZs5MrpSVIfOZLo3w6D4V3vPDVHQsD1A1r1bAe6JO9ghsYVg2H4jPRvMd6gGV1d6hRd781Um
	HME8awwF9yaTUBdjyQWKLJESBlKXzCqmNihw7IAZUAyGX1DVktYR9xk7G9WMoItENtVmO1CKzT54d
	Mx5VnYwKYy8YlvKN9GBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rDG-0001UJ-Ci; Thu, 22 Aug 2019 17:49:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rDC-0001TW-Gg
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 17:49:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566496185; x=1598032185;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FZI07xPMvohdC4dIeK081ipMHL/0rbgqAueSQ3zlqDQ=;
 b=Qqut8J5lAjgWadqNaOF7w5n54ips9+TDizJxS6NhVeY0QfdwS39zdO1r
 OL9ievhsYuycIHUX62BhTpd8Y1mmErp5MohmijyLKFo5Y9zyRgD6+cGXB
 tq6WNjKipYsJQmEgqdES4h2GoELytVZ4mKSr0/4NzCoazI3/lsx+qvNXI
 By+xjOp6p9L28mELayEtQn24sZSdkOP4Ll2N/yhrHX/pB5dE2+fGxmbOT
 JwmP5x4ozJp0RjNd9C59cSG9xQCoNxGR5tXx6fs8gWB6ratSXjdQelLY7
 FGxiFXZvXIOJFWIcajUyplqD1/CtFWJLgyRvOFWHBhgnRH/THA7FAjJmi Q==;
IronPort-SDR: yx9XUMv09tRiOysEVlZ04P7LFXHjVL9jcEJipKLfYtBaUTVmriWLV0KP5JJygKIfsZXiVLBGDy
 C7RNMOmVKw985WY/w/SKWRMEKEHiSXCNuUimk6ZciDYvymlWpQA55e9WEyCSQRXiU+gSRcoP1V
 lH+jILd7wybNn/OL5lh4lsh6bpQKgr1CuPCuNnLovG2ZLQ0h5A5zId9g4lp8ts1Xo7ZqLfSic9
 OeizvwDL3146pvm2FBc0N7vrRWG7Ny2qPqdZ3Fp5XeNMy6HB3II91PYP4zXY4fn/jPx6lWFGlY
 a9M=
X-IronPort-AV: E=Sophos;i="5.64,417,1559491200"; d="scan'208";a="216888274"
Received: from mail-bn3nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.52])
 by ob1.hgst.iphmx.com with ESMTP; 23 Aug 2019 01:49:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ClVdJbneph7v5OwO09cXnNmfFaOVzs3mNOEGu3WfjxhPPrJeuDMw0XQO9R8Kq9PkE6Gp4BBTqqifqH8VuMPvQ5BDqvc3QI5jAdcoXGBOoMTxHMiXtdVyq5HIRtrMBdgKVFvvkZK2+kuwieSU/6wEXc79SdnNQpnOfThCrVnFHFEu9njdx4Dh+G/I0MIxQoSNyBcgt62eh1Ihux+787SqDSVJPpCwNLI2C4/NOHAZCwtJSzu0CT4TU3NzE8ZPOM4dZgG8yhiQh9tpspryJZy93lQzXLfOC1urs1CrlYbuBWAx1mcryeV+6r9cdyUkGPtB0C9oKiaH+331VQ0N7cFSrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZI07xPMvohdC4dIeK081ipMHL/0rbgqAueSQ3zlqDQ=;
 b=M4iuGLZeA7pfvI/6v/31fy6TRO1UmeGMDiQisINuVxVNSrTLRc4PnJaKEQRMxCdb/vCsErkEsPsqlVKMwHLYQJKrfchZsgVsgIYPKO/pJMa1eBgJ6tQZTNGWnOCOtSaPg067NZe8mAQLhVjMKq9xyjZ7afB2tH0HdUmj1jRHiJkdkUDU8cwFUFDrHNYBqd1SRecmemt4LZXi456zc3MvVWv5q2oydaw2hmRyNFS5NB2YLtv4Qpn9p6XPgctzMAn0HCbK3/sn004O1pt4AJJ0O9mA6O9aGd+IIEst+oSxINuqauG4DwYIAQdE1QiuswJT9KaUkzAHFKOyqDCoywXYPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZI07xPMvohdC4dIeK081ipMHL/0rbgqAueSQ3zlqDQ=;
 b=DWQjRq4GjPKMgcgtd0eh0m9s4lUuymYNwZt52sjTHx/J5t3T69YY4mnxbWQwtHx8E/BsDzpZL2fjuWa1JGL/QiFKYZMZeR718WSbFfrGoCy+fUoWSWxOvgjsn6sdJo3cnt8scPQuWgTShkISz5YtJwbL6f4Whxo+mvl9eLqZrVM=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4998.namprd04.prod.outlook.com (52.135.233.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.19; Thu, 22 Aug 2019 17:49:20 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:49:20 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 6/8] riscv: use get_cpu and put_cpu in
 sys_riscv_flush_icache
Thread-Topic: [PATCH 6/8] riscv: use get_cpu and put_cpu in
 sys_riscv_flush_icache
Thread-Index: AQHVWLa3LGWms5Pc4E+LLqn10p92iacGu+4AgAC2fYA=
Date: Thu, 22 Aug 2019 17:49:20 +0000
Message-ID: <157504fc8f48057a8198e39262a786f901e67cd2.camel@wdc.com>
References: <20190822065612.28634-1-hch@lst.de>
 <20190822065612.28634-7-hch@lst.de>
In-Reply-To: <20190822065612.28634-7-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6b7754a-450f-4421-b68d-08d727290fc9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4998; 
x-ms-traffictypediagnostic: BYAPR04MB4998:
x-microsoft-antispam-prvs: <BYAPR04MB49980DD260E7750DDD6A4918FAA50@BYAPR04MB4998.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(376002)(366004)(346002)(136003)(189003)(199004)(2906002)(6436002)(6486002)(71190400001)(4326008)(2201001)(446003)(76176011)(2501003)(256004)(6512007)(6246003)(316002)(476003)(53936002)(2616005)(71200400001)(229853002)(25786009)(486006)(110136005)(99286004)(11346002)(66556008)(64756008)(66446008)(66476007)(6116002)(8676002)(46003)(305945005)(86362001)(66946007)(36756003)(118296001)(6506007)(14454004)(81156014)(81166006)(7736002)(186003)(102836004)(8936002)(5660300002)(478600001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4998;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OtP4Y5A8wU4TStjTovxSuEBVNB2UzB7paXW058a8GRLqERY8XLNduDK2wkf4HR8cyXg5xek0dstXCLlcPvLsR//6cNyVDsnCHsf4F4hwVxAmEqormGdpK7pvKg+DxpmclFyPvi6cwEdDfdXXCTR2kLBskb00XELCVu87Dqp8UYJt9VTVGM3T4jIRCtjACP/KVyOez4KCur/500hSCpv4bdmHQunUuIjvVVv0Qin57/1t8znlBmQ6ImNp9NA6SedD6ziqAvh7z9dWlMom6BuzCaOH7irAJuUjhk+RGMY4sDo31TmxFv9iMYGF5HNLl9bd3u6jzzYc+5tQTYyklW8jO9OR4Q5MO7qgYTWVrRim9+CPAEyox5gIRLSDVhI/ll24q1wE1Xf2Vh+0W3DEgWB1lTLE4z1cCUfzkkNTJKBFB80=
x-ms-exchange-transport-forked: True
Content-ID: <A5239E143C55F948A130FC7670D026C8@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6b7754a-450f-4421-b68d-08d727290fc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:49:20.6685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rCeq38RdJmjr5ylIWp0quVm8RVGLiNA60Myrdvi+pK/UBI8fr8Hoor/dka3KLuOU6NJ1CSn6f8X6RaDsmbJVrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_104926_596063_B4A3875F 
X-CRM114-Status: GOOD (  18.76  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, 2019-08-22 at 15:56 +0900, Christoph Hellwig wrote:
> Use get_cpu/put_cpu instead of opencoding them.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/cacheflush.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index dacf72f94d12..9180b2e93058 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -19,11 +19,9 @@ void flush_icache_all(void)
>  
>  static void flush_icache_mm(bool local)
>  {
> -	unsigned int cpu;
> +	unsigned int cpu = get_cpu();

I thought it is recommended to put variables with assignment at the
end. But I can't find anything about it in coding guidelines. So it
might be all in my head ;-)

>  	cpumask_t others, hmask;
>  
> -	preempt_disable();
> -
>  	/*
>  	 * Mark the I$ for all harts not concurrently executing as
> needing a
>  	 * flush for this MM.
> @@ -32,7 +30,6 @@ static void flush_icache_mm(bool local)
>  		       cpu_possible_mask, mm_cpumask(current->mm));
>  
>  	/* Flush this hart's I$ now, and mark it as flushed. */
> -	cpu = smp_processor_id();
>  	local_flush_icache_all();
>  
>  	/*
> @@ -55,7 +52,7 @@ static void flush_icache_mm(bool local)
>  		smp_mb();
>  	}
>  
> -	preempt_enable();
> +	put_cpu();
>  }
>  #else
>  #define flush_icache_mm(local)	flush_icache_all()

Otherwise, looks good.
Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
