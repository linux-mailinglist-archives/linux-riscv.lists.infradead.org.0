Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0684F9B9E2
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkyYUVKM2P6p0glHObIEDXhEzIJJfdtWQrEIkRaWrn0=; b=TSGm2rh/99ioyk
	oginp6DwOK1QDeyIuvDONUIpTkReTcT4OS6Ab7/sOpqnfBNw6eQITTqoBPwToAaX5JfBCnSV0QcIy
	uvf20HnfN1R+MKUZ7CdgLgCBx+68MRa+kbZcaxdTuj3WsT7RwHPJLY5EY7JGbGP/yhhp3RKKeZZZu
	cRLIyJ5xDPzh1UwwiItFho/BdGfHNWzRt4OG6l673Xp4YSu3ZZQzZu+d0whDkegcD+D4J4AFYJT98
	wYJ2GvbZH3DSbVw6fn2XeC7zMsItGPp8ZJxUxt/ZQHkkjlNDvqdXjtBGcI+kCA6XCygXAtYEx0FmJ
	yGTlwNyVC0OwH6BSYllA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1K9T-0006aj-Ax; Sat, 24 Aug 2019 00:43:31 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1K9M-0006aL-Is
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566607404; x=1598143404;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=O5ode/GneolMMTDl3s7Cs3VEEHy+iiZAUjRptGYLzkc=;
 b=Ih6SrLoliDqG6QEzFjupI8q+9fvddYNI22dqZ3llVRBL8mu9j4CJFGR0
 sIAHih+42+MgrkDKIVUtl/OziECLekCrAyCsX5i/L/1s9N758MmvXh9nT
 jl5C0Ijs0Idqyy1U9ex0lfkCKW7ad89Z0/xsHDMz2bauFzI/YoPPQMo7m
 suHailMK83Z/iOu8Eb2JNNIaXQsBZj2ds+OKV7RGrLLApzrlq+bkqA1UO
 Qx8xlndppYifJSf3n9dMWffp/ODL9mBbHybNgtf6mXT72duu/e42ymWti
 oz1Kc/HdJenD0XzK8EwvdZVwUuOW+gqbMNoTjvpgpEgqttVC/DmRAAWz2 g==;
IronPort-SDR: cnGpgHJEewFEctFadd86Lxw75O+nq8YRAjSp8hRVeD9ScBkxR6uHElPYSgGIndNr1RbUD92ds2
 mJUcB9ZrIKz4dczCWFCOINsvV7/f/XAwGseIVqeWPQus2S8XxPOG41dTHB4UyunTaG5N7SXmtM
 dRSzB+9LD76PR+Y0GJg5ztXu4kdVYvWBja9AEfxqZNEdQvHe4f1j6a/2jT1+Jk6i5kbNdpvyb9
 oREB5vzc/L7hUIHVBKgLvNIEqMmFYDsI+Tl3ciYHHmlQ3xvTtJYT5a1jqh0YODUx7z/sQjrkLq
 yEU=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="116565307"
Received: from mail-bl2nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.59])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 08:43:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CPIbjfHLR2FhnFahxiIfx6LqdhOctFQcRCq56C8EBC0qRlNmXE8lengQNSAJj5NzE2fjco8f2yQv/v4GhfAfkFqW2AXUfQFqA006FvdAcP26BRMTLNLyKZVXCf4aJBpddmYzmDY0cva4tYgpCRYEAk36BUfQlzF/gvE8VOgwt/X4SMgKO5ww0kIJ1vHOWD74dkTs6QXP/vxjFXgqiVkKRSB62xVhSmsEnuVVBBZTqU0G0gdqOUVMI/ah6bP0JDxqK/Ll+lJkCCSU1jUvQ/7tDmKFUoz/tc2roJxAiHaylFnfCdGgaUUu30jLAoPx9m3LV9TAN/4H/dNlI8dONWZWyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5ode/GneolMMTDl3s7Cs3VEEHy+iiZAUjRptGYLzkc=;
 b=DXC8HRqDkIZp2HhScUvnnn7r4zk5iWf+radmR/eJrfEfi0e9xvo2b09xVUdDrjhOD+OcdmEp8CGqBt5DU+YPrnh7NYJHFKs0Yh8oWAbE5qNv+TVxHkK69wXaUXKb4zbx+xdIKcYbUUlUEbBaHpbkOS9Rh7Dj0km/lMCCN+G8yKIMtzLUnyQ36FNGkXVxBMkXy0YNJOnOiJr4yQ3stalwt6Vkh0qYMN8LkN+5uThbUt9AgfoehXQEi5xDFNsD9sFY4op8ZNCYsToTtbu6K2QBr/EDXhL6j5sRPeH1pjtOWzmcCtsqDpc5iavJZF7UKJn/SpZ2H5dCgyN+kg42C1sRJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5ode/GneolMMTDl3s7Cs3VEEHy+iiZAUjRptGYLzkc=;
 b=XYROtrNsujxT9Ab/v7jzOa8w9VokTBVnC74dLewn95c7ZKxjkiMdgbxDwcLzJGbmCQmMr3YomavLCJxejD0sUO/6pIj9K5JVBc1RfrgqHVKD8grPr7uVd2IvM99L+qp3Qgt198r29zDZ4lgDMuxAdBPh0DEtBTrrUlq1aaiEWgI=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB6216.namprd04.prod.outlook.com (20.178.234.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Sat, 24 Aug 2019 00:43:21 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 00:43:21 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Thread-Topic: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Thread-Index: AQHVWDD0EkCa56AaCkmaoPCBGi6gHacJd7UAgAABwwA=
Date: Sat, 24 Aug 2019 00:43:20 +0000
Message-ID: <bcc437eca5ed4196fc6cba5b852bd9d4e858f405.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-6-hch@lst.de>
 <d15a578760061a5a0ebad8ca6024768f831686d2.camel@wdc.com>
In-Reply-To: <d15a578760061a5a0ebad8ca6024768f831686d2.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae0aae81-58ca-4812-7b5d-08d7282c101a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB6216; 
x-ms-traffictypediagnostic: BYAPR04MB6216:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB62166075F4869063564CD14FFAA70@BYAPR04MB6216.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(346002)(366004)(39860400002)(396003)(189003)(199004)(6306002)(36756003)(26005)(966005)(2906002)(102836004)(86362001)(478600001)(305945005)(71190400001)(6512007)(186003)(76176011)(53936002)(25786009)(66066001)(110136005)(14454004)(6246003)(229853002)(6486002)(6436002)(4326008)(8936002)(99286004)(66556008)(14444005)(64756008)(66446008)(256004)(5024004)(316002)(8676002)(81156014)(11346002)(71200400001)(2501003)(2616005)(66946007)(76116006)(446003)(66476007)(3846002)(7736002)(118296001)(476003)(486006)(6506007)(5660300002)(6116002)(2201001)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6216;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ow4TvBBoCgkez2wuA2MRKvRO7afh6IyrhEbJ1vYjPSPdfF22d02Ja6djYPBm4rvMn3rL01yrbfwDHfQqnx2GorumV4YU1Q5EBeJtL6hp4xRWiKgaOK1jd76VBKeOo4BYLfjG/+XA3eN/QShRsuO1O5fodhEq0gxpBEt645qbxiYll8BKVPilkgUFQqfgFQdgFf8VHvikEgkL9NIaje7EaNoL7mLMmvezNz1NuHbatadykV5FdombNHZz/o0Wpuq8tf+L7ouy6kWQPIWqGqnAEuzNdcrnZWu3Aw8Hi20ESVOumo5SceUoxsca0QGQZco+fFeCfIjUlc0uHkvzGvjT+G/yxS1UzGIcMwEFvNCzai3vX8Og9xfahPeZJiIoBzf5l5HlhT8wo7sq9EcghQM2+kZSm2HjtuM7ptlOctSr8+g=
x-ms-exchange-transport-forked: True
Content-ID: <F8EA803595DD4043B7D78F4B25D166AF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0aae81-58ca-4812-7b5d-08d7282c101a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:43:20.8928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6l1xaFVhcpOqGpC9782s5Yh2rfYaGqbaEeeq3HbWVIx8glkgc6KvgzYEXhyFNRfpEPiVFZEJT75jlTmWyFayOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_174324_689397_8B5B47CF 
X-CRM114-Status: GOOD (  27.71  )
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

On Fri, 2019-08-23 at 17:37 -0700, Atish Patra wrote:
> On Wed, 2019-08-21 at 23:58 +0900, Christoph Hellwig wrote:
> > If we just use the CSRs that these map to directly the code is
> > simpler
> > and doesn't require extra inline assembly code.  Also fix up the
> > top-
> > level
> > comment in timer-riscv.c to not talk about the cycle count or
> > mention
> > details of the clocksource interface, of which this file is just a
> > consumer.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/riscv/include/asm/timex.h    | 44 +++++++++++++++------------
> > ----
> >  drivers/clocksource/timer-riscv.c | 17 +++---------
> >  2 files changed, 25 insertions(+), 36 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/timex.h
> > b/arch/riscv/include/asm/timex.h
> > index 6a703ec9d796..c7ef131b9e4c 100644
> > --- a/arch/riscv/include/asm/timex.h
> > +++ b/arch/riscv/include/asm/timex.h
> > @@ -6,43 +6,41 @@
> >  #ifndef _ASM_RISCV_TIMEX_H
> >  #define _ASM_RISCV_TIMEX_H
> >  
> > -#include <asm/param.h>
> > +#include <asm/csr.h>
> >  
> >  typedef unsigned long cycles_t;
> >  
> > -static inline cycles_t get_cycles_inline(void)
> > +static inline cycles_t get_cycles(void)
> >  {
> > -	cycles_t n;
> > -
> > -	__asm__ __volatile__ (
> > -		"rdtime %0"
> > -		: "=r" (n));
> > -	return n;
> > +	return csr_read(CSR_TIME);
> 
> Does this work correctly in QEMU ? I was looking at the qemu code and
> it looks like it returns cpu_get_host_ticks which seems wrong to me.
> 
> https://github.com/qemu/qemu/blob/master/target/riscv/csr.c#L213
> 
> 

Nevermind. I missed the CONFIG_USER_ONLY and got confused.
csr_read will also trap and get the correct value.

Regards,
Atish
> >  }
> > -#define get_cycles get_cycles_inline
> > +#define get_cycles get_cycles
> >  
> >  #ifdef CONFIG_64BIT
> > -static inline uint64_t get_cycles64(void)
> > +static inline u64 get_cycles64(void)
> > +{
> > +	return get_cycles();
> > +}
> > +#else /* CONFIG_64BIT */
> > +static inline u32 get_cycles_hi(void)
> >  {
> > -        return get_cycles();
> > +	return csr_read(CSR_TIMEH);
> >  }
> > -#else
> > -static inline uint64_t get_cycles64(void)
> > +
> > +static inline u64 get_cycles64(void)
> >  {
> > -	u32 lo, hi, tmp;
> > -	__asm__ __volatile__ (
> > -		"1:\n"
> > -		"rdtimeh %0\n"
> > -		"rdtime %1\n"
> > -		"rdtimeh %2\n"
> > -		"bne %0, %2, 1b"
> > -		: "=&r" (hi), "=&r" (lo), "=&r" (tmp));
> > +	u32 hi, lo;
> > +
> > +	do {
> > +		hi = get_cycles_hi();
> > +		lo = get_cycles();
> > +	} while (hi != get_cycles_hi());
> > +
> >  	return ((u64)hi << 32) | lo;
> >  }
> > -#endif
> > +#endif /* CONFIG_64BIT */
> >  
> >  #define ARCH_HAS_READ_CURRENT_TIMER
> > -
> >  static inline int read_current_timer(unsigned long *timer_val)
> >  {
> >  	*timer_val = get_cycles();
> > diff --git a/drivers/clocksource/timer-riscv.c
> > b/drivers/clocksource/timer-riscv.c
> > index 09e031176bc6..470c7ef02ea4 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -2,6 +2,10 @@
> >  /*
> >   * Copyright (C) 2012 Regents of the University of California
> >   * Copyright (C) 2017 SiFive
> > + *
> > + * All RISC-V systems have a timer attached to every hart.  These
> > timers can be
> > + * read from the "time" and "timeh" CSRs, and can use the SBI to
> > setup
> > + * events.
> >   */
> >  #include <linux/clocksource.h>
> >  #include <linux/clockchips.h>
> > @@ -12,19 +16,6 @@
> >  #include <asm/smp.h>
> >  #include <asm/sbi.h>
> >  
> > -/*
> > - * All RISC-V systems have a timer attached to every hart.  These
> > timers can be
> > - * read by the 'rdcycle' pseudo instruction, and can use the SBI
> > to
> > setup
> > - * events.  In order to abstract the architecture-specific timer
> > reading and
> > - * setting functions away from the clock event insertion code, we
> > provide
> > - * function pointers to the clockevent subsystem that perform two
> > basic
> > - * operations: rdtime() reads the timer on the current CPU, and
> > - * next_event(delta) sets the next timer event to 'delta' cycles
> > in
> > the future.
> > - * As the timers are inherently a per-cpu resource, these
> > callbacks
> > perform
> > - * operations on the current hart.  There is guaranteed to be
> > exactly one timer
> > - * per hart on all RISC-V systems.
> > - */
> > -
> >  static int riscv_clock_next_event(unsigned long delta,
> >  		struct clock_event_device *ce)
> >  {

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
