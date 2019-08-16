Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB23B907F6
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 20:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuMMTV7wlI1g/a7VlnwtN7ZZAaOwB2nRl8L9VYZNX/g=; b=mjHZQWVebGkkGV
	kKPVToCYwcBkweCDS/WQm72FlF26eLNy69UR/izfSuH7WxCYayq9dDg0YhTtKKBw8LvaeGZT/YcHu
	u0hkoZ3YNIKcSoxSPeMeUGJg+kTNvx2uWfsHReQx3v9LYlLRhL8uaWbSeEcVT9n3IJH7ynegFBtMd
	Jo/7aFjBTQW3b8KXjovclUFsWrA7qHCkSKwcWrJNlVQUdSqnfh68cusWQA0ut8X2eVa3lBrvZye17
	nOLvUQks8YXj6gsYsUmNAO4OeoXG/aeIyG+wYC09Mb47ogD6BxKeUQbfuHPQ1DlplJhepead/OL6w
	cq+gY0E5HDfzBqSF3Mqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhNn-0003Vx-AV; Fri, 16 Aug 2019 18:55:27 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhNj-0003V2-Qf
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 18:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565981724; x=1597517724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EP7D8dLGMksDUznalFCyjN0yhbWtiDz+9nroUKJi+LE=;
 b=HKOnXvMferG5wPrZHJjAKcb7VOc8Ub1FYrJQ0QLmtzseaCHgBkzbBR0/
 3NYBnnJzhH3OwKAUOycj4/uOlf8hcELrtFOo/i/jczt6nEtnOpMqIJqXq
 tvTBZuLIN7Z9t9Ls28eRAx+g5NBa4P2TfQppC6mTA04sdLQOGbb/3feYi
 4MIJ+TCfgLfDUPX/8H4DeTGK9qjdxNwfg8PyoSbRtqlqsZ/j5lRcjfDvV
 1TU2XcUmmlQ8ZrZodNI8WJHFBXPoMrsKrCHq9zOWZtES06YJVSwAnhZ4r
 Gu9cdaq8Hkvj6viweJv9nKYx2ircbO6uLiw5gay0vwgrpRTvg9ApSv5rw g==;
IronPort-SDR: JE3c9BCIMiIDrmcvS31iH+mUpWS5dveO5xqY5dBwECJN6ji7A/eEiOX+phULi3VvysEOJa5bx7
 NFZlxXfOTysZU1F5qepSmuomDQYa7klCHFN/cQtaL7AeloBF+8dR1d8Z5z/xXGmAKsaSP0uANr
 zA0I5Ma8LNS6TTB0TFrKuuLBgiJOycilUQLtdj1hLoiQhB1dJW0gNxkY6YK1AVVzg6rEyQ8iPK
 lyya2aOLK+O7aI65x8jlffiN9qj0rATlUm8IFveBd9k/qG6MIPPFQNHVrcxfxigh2Qwf8TEYy5
 rh8=
X-IronPort-AV: E=Sophos;i="5.64,394,1559491200"; d="scan'208";a="117618533"
Received: from mail-bn3nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.50])
 by ob1.hgst.iphmx.com with ESMTP; 17 Aug 2019 02:55:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bg0DFy99WSjwbJHn3MKj5h6pf7tWTEdtCTqkU0XzBqXR3nM5r0T/7vKIUccTx9VwfWIbifB2Whnu0qK+kUxoXQzbKw37OHbTmZVh2FgKfTqVTNzcCmm3pJdHN5vNSg7UINrmbcEqMU+xk/puR9a5+xR8gcmtcNvsqFsLwBPJJ+cis64g0C2l0hMwxzmpEZB33x8Gh0ggZ5bp0IkqdB2Ykcmqn20bb/z7pkCjEtF7l58bAlPNNkDuRo+ioJl8Fyb2Xfy1J+ABnskm+DSKtN7J7iisUKWujx+4WfOPVPnbCh2y4DazAYV+IThIiBpsysisnXKek0Y5RgSNbt31fns9/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EP7D8dLGMksDUznalFCyjN0yhbWtiDz+9nroUKJi+LE=;
 b=F68RU+VmV7GSVfvdIhTf9XRuR357flkNB6ZhqRPlFRtWXWcsYTDHlor2Szu97wcu/vQkCbgDZC/R9uYux2x2UQCZPNIhTYAM1BTiALGMXTzRC4IBKt/2S67BEzZlU4mmmzEJPjYrBJU8L+qW39UmNqWz7Wlfbo0VdOHIvl5MnmqeBE/bYmXRshs5tsnaA9T6CpxIzzvBN+YERndksEGuWvnAVtRhJUYmT/BtwvWrUQHk3izQtfD8dIB3AdDC1SfiYfrL36Qcr51B80lZ0Y3g7SDCGKgd50OCY3v2buWj/ifagnijRmWY911g06Mz7i3Um8px8NZU6avAoondzl1i8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EP7D8dLGMksDUznalFCyjN0yhbWtiDz+9nroUKJi+LE=;
 b=KwxmVmK3AOHV2bY05iQ9GO0YJ+3tdsxP3NUvWboMs4sMoU5tYfnENgWcTKUMRKN91NM80VG5RyJlMJhKOuGREUqcP7KjesZE7tr+cGYQ0jGWXRNuSjngeJb1K3HhQg0VHtcrPBAFl+gDs9YOFN6dU+imC7FD7mYOegUnkgpxohQ=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5687.namprd04.prod.outlook.com (20.179.57.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.23; Fri, 16 Aug 2019 18:55:14 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9%6]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 18:55:14 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH v2 1/5] RISC-V: Remove per cpu clocksource
Thread-Topic: [PATCH v2 1/5] RISC-V: Remove per cpu clocksource
Thread-Index: AQHVRz65fC3jo+jL5k+gKVmQfc/Feab9+puAgAA/LIA=
Date: Fri, 16 Aug 2019 18:55:14 +0000
Message-ID: <089a5ee46759074af391c50f5e9d28344b429de4.camel@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
 <20190731012418.24565-2-atish.patra@wdc.com>
 <6ba37c45-2d9b-c01e-5f17-3ab919da4de8@linaro.org>
In-Reply-To: <6ba37c45-2d9b-c01e-5f17-3ab919da4de8@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91821217-9a93-4693-c3a1-08d7227b45ec
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5687; 
x-ms-traffictypediagnostic: BYAPR04MB5687:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB568716BCF2CE159C5F78C326FAAF0@BYAPR04MB5687.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(189003)(199004)(4326008)(5660300002)(2906002)(66066001)(11346002)(76116006)(2201001)(64756008)(229853002)(102836004)(66946007)(6436002)(66476007)(66446008)(66556008)(2501003)(25786009)(99286004)(54906003)(53936002)(486006)(110136005)(256004)(316002)(36756003)(6246003)(476003)(2616005)(446003)(86362001)(6486002)(478600001)(6306002)(8936002)(81166006)(3846002)(76176011)(118296001)(71190400001)(7416002)(81156014)(8676002)(14454004)(7736002)(6116002)(71200400001)(186003)(6506007)(305945005)(6512007)(53546011)(26005)(966005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5687;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 48ViOSj15fVdY5IiizhJ+DGgM+6Oe1jxlDZR4p+iTKTCS/pI5UwtqwotyOyy+y6urMSjKOK/Gx73HTN9XYUiZOeKgUCh58JR/2JxA/Kj0mc3MO58Mr/EzJpwN/ebFH0f39GmnfkFDeN5787rPPIrGNvD5IbTJsqLPf8LgCpu6buXBY2inC5CYf67viREBqho0Xw1P3raN1QOr+wGVS2CpCwvHxpL9bm8Xbi2FY69bmtWQsuLx3c82rvy0c9JHiQQuy4coaKTgAtNf+wJWdEHrWdCuTip7OzlM9w4GnWZ8Tohq+s/DYwDvaZz7wJdohv6EmowzYH8SvZJYPkKRI3RsTKgV2J/R2U9/ioIaVFzLsW79MDus6mLvwhvhYSoxOjZ0o6HQTVzIqauHybG1vU8COedr8m+gIhdbC4p9VTFdRs=
Content-ID: <EFC2111BBC7AEE47B65ACD5C5909EF48@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91821217-9a93-4693-c3a1-08d7227b45ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 18:55:14.3961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wdmaUROIGtxIxVdUl0fuR5jDt9qudKlCh8B2AH/bM3KQ5HzV6qYD4EIMtcLARm4uzEx2f1A1HrA8QYRa8F1abw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_115523_905643_6E299E0E 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, "johan@kernel.org" <johan@kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "info@metux.net" <info@metux.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-08-16 at 17:09 +0200, Daniel Lezcano wrote:
> On 31/07/2019 03:24, Atish Patra wrote:
> > There is only one clocksource in RISC-V. The boot cpu initializes
> > that clocksource. No need to keep a percpu data structure.
> 
> That is not what is stated in the initial patch [1].
> 
> Can you clarify that ?
> 

I think what I meant to say was "There is only one clocksource used in
RISC-V Linux" as it is guranteed that all the timers across all the
harts are synchronized within one tick of each other [2]. 
Apologies for not being verbose here.

However, reading the privilege specification(1.12-draft) 

Section. 3.1.10 states that 

"Accurate real-time clocks (RTCs) are relatively expensive to provide
(requiring a crystal or MEMS oscillator) and have to run even when the
rest of system is powered down, and so there is usually only one in a
system located in a different frequency/voltage domain from the
processors. Hence, the RTC must be shared by all the harts in a system"

This is different from the commit text in [1].

Perhaps I misunderstood something. @Palmer ?


[2] 
https://elixir.bootlin.com/linux/v5.3-rc4/source/drivers/clocksource/timer-riscv.c#L44

> Thanks
> 
>   -- Daniel
> 
> [1] https://lkml.org/lkml/2018/8/4/51
> 
> 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  drivers/clocksource/timer-riscv.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/clocksource/timer-riscv.c
> > b/drivers/clocksource/timer-riscv.c
> > index 5e6038fbf115..09e031176bc6 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -55,7 +55,7 @@ static u64 riscv_sched_clock(void)
> >  	return get_cycles64();
> >  }
> >  
> > -static DEFINE_PER_CPU(struct clocksource, riscv_clocksource) = {
> > +static struct clocksource riscv_clocksource = {
> >  	.name		= "riscv_clocksource",
> >  	.rating		= 300,
> >  	.mask		= CLOCKSOURCE_MASK(64),
> > @@ -92,7 +92,6 @@ void riscv_timer_interrupt(void)
> >  static int __init riscv_timer_init_dt(struct device_node *n)
> >  {
> >  	int cpuid, hartid, error;
> > -	struct clocksource *cs;
> >  
> >  	hartid = riscv_of_processor_hartid(n);
> >  	if (hartid < 0) {
> > @@ -112,8 +111,7 @@ static int __init riscv_timer_init_dt(struct
> > device_node *n)
> >  
> >  	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
> >  	       __func__, cpuid, hartid);
> > -	cs = per_cpu_ptr(&riscv_clocksource, cpuid);
> > -	error = clocksource_register_hz(cs, riscv_timebase);
> > +	error = clocksource_register_hz(&riscv_clocksource,
> > riscv_timebase);
> >  	if (error) {
> >  		pr_err("RISCV timer register failed [%d] for cpu =
> > [%d]\n",
> >  		       error, cpuid);
> > 
> 
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
