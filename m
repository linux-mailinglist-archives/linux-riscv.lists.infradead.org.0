Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F1D99EBC
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 20:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSpUp7+ldMMi8v6CpBAbQBUBBFXYMbesci2fETxwgBc=; b=n7VKedsukZzRSw
	V5MUCbGs/U/XmlK4R+MxQWOhA2zsFRmHXAUZgK3hlyi4XlKxSoGbc0FSAFmXHRpJkk/lkvwlUT/r3
	IeFHaEUf/9YvraQhbCoW2ehN9EaXZs1EFHxnlRU6DyQeaJNxQpZkVEhwDfWDP8Lg7kVrUedEfoIQH
	ss9kecDbP4SZUs87/OqUeLPFblQb82DgqwT6PQvvncUcsgEY4ZX3GOCUaIgNrILacVZ3ZErJ4qoHB
	EVlCXkuBCRfrhbjkO6z7amUBaSy64KivRc3HzVLAQVb+Oj7v3os7bp1Tv6cO6/OiLeylxybpDZWMa
	qGDk9eusbAw+dF9GrGDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rqB-0001ry-V4; Thu, 22 Aug 2019 18:29:43 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rq8-0001rb-OZ
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 18:29:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566498581; x=1598034581;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pTVZKKK0VyjSriAeFvJBRhqHEx2UoV85UNwZDRiIqYI=;
 b=nU1sfGSffEly16i03hLFbz/CIeb6mAvMUJTWd5+O8gxuSbbZy1D0A16W
 lxqxQwi/P8dJredcMlh0Zml8Rx8Qxled3PBDXdWlIgS7a8FlXHIYXLMcq
 Jize92Ewi/p6R0ndkTAKvduOX87Bmqw1z8yQY+T7v+6aLH4JJF1by9MlA
 XzwDaRbkKMFqgR5I+TBAyt5EpbfJULXQsccMK2qPhoeQQBszQxXw1IM5/
 xfYthVb16vkRGuHUVjHv/kMjF4sD0Cj8Mh+oAsIReMR/0gSJb478nPeA4
 VFTapySlFWjAvzXceC3btKn+uR9PRdg+CPcN8btmAV8bY+a2fF8TD/WnV Q==;
IronPort-SDR: xpSMR6TnqR1E8QfveKcX0MneyCFPLB/2+zFo9Y0K815AaSz0+Hz105JiuFEQ3HHaLl922UOfi6
 Rqy5RoIbsBvS6SGUSE4D+HLb/RDiI0Skgus052lsamFa1fXUAuG+fP3RVR/B8ppwgdJ1KqEgYp
 D0vjPQgyrvX55Sj/z553GmBzwoUZM3wLjkc62VMrrbXrvWmZMl4e3rJsTOJanP8N2yfqyx53pk
 mNOvTj6ePjuhmUPEpC/8YDu3dJZX6Osjv1IqZJpkmGja2pxqpJ1qPtHJmDWzMALtV+otrmEBbY
 r18=
X-IronPort-AV: E=Sophos;i="5.64,417,1559491200"; d="scan'208";a="118046492"
Received: from mail-by2nam01lp2056.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.56])
 by ob1.hgst.iphmx.com with ESMTP; 23 Aug 2019 02:29:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gvxdYLpzKk+ALil3ab8dFv3tj+U1oX/f8jZDKy2dPP/tXzRp5OWSg8Dr7TB/+EWAnENHw1B++jeKJ6FyWH30h3JxH0uqr7jGDdSS1D2XjP8Etp09joxYdqK5fGfwqoE6Df45Y+UmytH4hX2cXHvLz5JUHxyTvfXie6NMiaxcaTcCCNiGZ6WEXnQFuXOYO5hmFqXDczuxb40VY7CTWtIN8N/82g5a5jc0TrFyS456reJyDm2Cry1ysxkobel+/rSJu9HuM6aws6bsJ8Vw/B2q3UUFrMTmVT2V0qDPEDYSlkKE5sI52jltgGVayVB4ZiXCBHzwbxRcVQMkJgAh55G6sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pTVZKKK0VyjSriAeFvJBRhqHEx2UoV85UNwZDRiIqYI=;
 b=CX+VQjSHgPer/lwoVrOMqVr8btHEvFRwUjNIsFQjPejnU80FRmDxaRqclXc40TdEqncwJwyVlZC3p8e1mbHMSqvDdHWpXX+pv0FXqxAJpCV2DraVjmlv0lJcCYdfgjGOYwKlfayxqpvlE2/rA/pDBIjx3LhMDbVcwFYxOHOxgRY+AdOJWrsOVV0T7etRPSPL/LHZ43/iDjrP1knSO6/sUd6FlK1iRyZvmoPcaShtuEDRwj50wOdl3lnyXkUMIi0V7XDofaEoMZKxG3lNXdreMCkf+gNLnWpHoVF/o/lXn9LPPaeHbbETuoXbP91+jv7m88zKA2jbbelzmm9AmxW45g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pTVZKKK0VyjSriAeFvJBRhqHEx2UoV85UNwZDRiIqYI=;
 b=hWwmxNdrMHJLieq7AUfX5ASr+gdvxJrmggInDFA72LLh5pd7/wAn4E+Hsuwt3obgp4Abyl2AqDIUIdh+hF5vjGhQblFKbYD/UVyEIjtVrQM91jREa+LvXDp8AHvJbbNyccztQjSBD3vB5skauBaSpAH79uWzgmFRUuKg/+VRWVE=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB3909.namprd04.prod.outlook.com (52.135.214.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 18:29:35 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 18:29:35 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 5/8] riscv: actually clear icache_stale_mask for all harts
 in mm_cpumask
Thread-Topic: [PATCH 5/8] riscv: actually clear icache_stale_mask for all
 harts in mm_cpumask
Thread-Index: AQHVWLbBlRrCD3076U21YSh8MgWPU6cHfakA
Date: Thu, 22 Aug 2019 18:29:35 +0000
Message-ID: <53f59546a691888c07bfb16780c6d5550b4be4fe.camel@wdc.com>
References: <20190822065612.28634-1-hch@lst.de>
 <20190822065612.28634-6-hch@lst.de>
In-Reply-To: <20190822065612.28634-6-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44d159f2-01d2-4a86-5e03-08d7272eaf18
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB3909; 
x-ms-traffictypediagnostic: BYAPR04MB3909:
x-microsoft-antispam-prvs: <BYAPR04MB39090B02884D65CFAF5EF829FAA50@BYAPR04MB3909.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(189003)(199004)(102836004)(6116002)(486006)(478600001)(5660300002)(11346002)(446003)(186003)(46003)(99286004)(118296001)(305945005)(2616005)(476003)(76116006)(66946007)(110136005)(4326008)(25786009)(14454004)(64756008)(66446008)(66476007)(66556008)(2201001)(86362001)(8936002)(81156014)(81166006)(8676002)(229853002)(6506007)(7736002)(6246003)(2501003)(76176011)(6436002)(36756003)(71190400001)(256004)(316002)(6486002)(53936002)(2906002)(71200400001)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3909;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5FNlQPGINFCgUpP7zaNCnEyqIetTCU+ZjQZbizKeXymprpD3ati+97Tu2PY/8AD9Ol/ubd6xiYNj8BcyT23ytzsksLurpHuvuqiu8/mBMFkZ8rvcahZxLxjY2rlQRLRlV16u+qwqFYiIBGgfFmZJHea+tQkfVG5UG6h+ZqR8T029c/qe1vFrMdKcteGXUN4HFSkPs/3Eo6iuS8BmtmulEm0l6FcFkGGvxGkA5Fs286GrbhZBp0vOGjVVpm2PhvPX3dp2h+PF1if4/qIHk4ZRQmfn5W229jyoQGTH1NXcBNXJajZQbNaKQ0uIQoXOec6ecm1B/4gbi+til/S7lI3Yl9j52L+uxY71ua1mXGOpqmkkmmMInX0gvOR4WHyvzFB7qOqHn4TH7P8a6O62Q0h8xzCSk/HeIBU/W7ek4tmearo=
x-ms-exchange-transport-forked: True
Content-ID: <1C7AC79026B77D4CA708DCF7E5A58312@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44d159f2-01d2-4a86-5e03-08d7272eaf18
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 18:29:35.4473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eeye2Vc/Z+fYHLE2S1wbZEKwbivwCdzZmVtMN26PiP278oNVqV55mBtWGLUidmhkDbzUeuabABR60hTV40sElg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_112940_844066_9545353A 
X-CRM114-Status: GOOD (  19.76  )
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
> The comment in flush_icache_mm claim that we mark all harts that we
> are sending the remote sfence.i to are marked as flushed, but we only
> actually do this for the current one.  Fix the code to actually mark
> all.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/cacheflush.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index eed715de4795..dacf72f94d12 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -20,21 +20,23 @@ void flush_icache_all(void)
>  static void flush_icache_mm(bool local)
>  {
>  	unsigned int cpu;
> -	cpumask_t others, hmask, *mask;
> +	cpumask_t others, hmask;
>  
>  	preempt_disable();
>  
> -	/* Mark every hart's icache as needing a flush for this MM. */
> -	mask = &current->mm->context.icache_stale_mask;
> -	cpumask_setall(mask);
> +	/*
> +	 * Mark the I$ for all harts not concurrently executing as
> needing a
> +	 * flush for this MM.
> +	 */
> +	cpumask_andnot(&current->mm->context.icache_stale_mask,
> +		       cpu_possible_mask, mm_cpumask(current->mm));
> +

I guess you have added cpu_possible_mask keeping cpu hotplug in mind
for future.

I think it should be cpu_present_mask instead of cpu_possible_mask as
they can be different in case where some cpus are just waiting in the
boot loader.

>  	/* Flush this hart's I$ now, and mark it as flushed. */
>  	cpu = smp_processor_id();
> -	cpumask_clear_cpu(cpu, mask);
>  	local_flush_icache_all();
>  
>  	/*
> -	 * Flush the I$ of other harts concurrently executing, and mark
> them as
> -	 * flushed.
> +	 * Flush the I$ of other harts concurrently executing.
>  	 */
>  	cpumask_andnot(&others, mm_cpumask(current->mm),
> cpumask_of(cpu));
>  	local |= cpumask_empty(&others);

Otherwise, looks good.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
