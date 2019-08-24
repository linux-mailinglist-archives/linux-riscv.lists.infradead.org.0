Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375539B9CC
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5KtBzVGc4yI34rhFsMufegKSsEwW2Jw1Nb0mCAq2M4=; b=ZBdlRUkXoDs4tP
	Yxr5QZyah7IiRTCYvL5phh3Z+CH+jnZR31mc4b5uuvDIopbrp3UxXYpXB9muc97zDb63/dkaetY1e
	UKzIdTQnWiN3+Sy6dR7kSdRxegK/Evse1Cw7KJXQXDwFcYhlDzeJhM4SScdeGQHuieb6Rl36hLflF
	dJpLqHbqpTvfxZ+dDyW4BX8eQ/UfCECtn5HgjC6ZI09w82WH5OXtnS/ozXRVwTXHZ3erXc4GEM+t5
	ZFkMPaRDLMs2HvQ4oDK4M7bJptRrfgoAvElx0oVFkgE0uJAvHA3NifJpPOJ+DCQXly7D02lli6dIY
	g6MhkH/s3yLkUaRKCkdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1K3Q-0004sD-KG; Sat, 24 Aug 2019 00:37:16 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1K3M-0004q2-01
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566607031; x=1598143031;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7cHbbusmbASruy9yf8i/BlIXr9vSvBSSUfW7ap/N0Xg=;
 b=F+rnmjmyXmxkDzrj2yyz9ppN3zK14qugoxdwnm2eXdVD1zcHopRz47FY
 gc6IUuZ9+2XA/ehvzqSi6HEWjEgjj7/UGqz6DZoMfv1qqS6BpU6lda1Pi
 U+ww4c2mTGjfw07W2hANeaR+7f1l4o9e5lbKJPWZ5JTnVAUqkOgu0623V
 3XnLa8W5Ig4AM15AwFSvVegVsxg2CThfc6pjofc4bFWNHGUpsF4VGCSNQ
 JluqVYWuia8RurZsP4CSXiC2WthKHg0UVlnaBiGmFK3ZxVfX0ZV5iG7G7
 ImSQctJD0HqBO+SAIbKDIJVLSmt2E57436kQT+DHhi7X7OCCIErD+JTuA g==;
IronPort-SDR: drMlgozj6bRP3fm4EoKAz6ewwRWDhUjgoJ1hUJaXWB7tzG/Uy/T5n1JI/nqU86GXF8b3cmFrkN
 3taZ8lP0kx6+gXJ/VIcnnbDRDbzB5gVpiCW8ItdMFjd31pN0hoK3O0t8APoBAyavlwCFEj7Jmu
 z/J3TArwtvToVI6xeNZVnWe3DrosWFI5Z9hfLeZQOObdgXBd/K9WgSuN4BKKztSpAfjmSoVjDl
 18WzmFUg2GI3Dipjgaewp3j0tBhl4WlADSyfB/lL1AcGWdQnkdTr7aLigYROQp37r3YipgOfUw
 MWY=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="223176951"
Received: from mail-by2nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.52])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 08:37:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvmFsQ5jGeNpTYEGIKPcG0Q4tMwA68+kczyIcBpkb7/jFGf2Ry2g3IsdUyylMTpl/EtM40nWM1fuKms5zSelv+Bv3UvkSLbVcl5KqjRIf/B/ph2b2Qr/10vH6UBCengwhnGk0x84H+1YpFvfsf59oxKAA2ctj9xvy3fv3ZgRBdt1+/6U9VVhiHjs79S38xm0qmYxHkG7NYMuHGU9gNDzQNYxfrxTpykGm7gLB7dlx68FE++jQ5DpNtQNrYOyjD+CVvYJKz5C94WVenkHYaGsCDVhlXHWPUM9Du/JsV4IitIqK90aPTgo7T0NGOT+O+/oMohvuTBrZN6fqPCVT1gpFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7cHbbusmbASruy9yf8i/BlIXr9vSvBSSUfW7ap/N0Xg=;
 b=jXiHy61EsYP36Zi235l1LNxCC9k9R8eWdZHkcgqzFGi0APR0gxaOouX330pq12AvaPVa7CVzNONoS1YAaDL3bZTDRqAFfq5H8WHh4ux1mwcjAOLNEeptaosFbhKZz2ndUI5iyv6r5PNzNG+mUUOE3yeYSrIX+IqeDhNPGi7aeVMMeqpv19dx4e2qBGljcomEwvrduc+OQ7N6JPNgb2+TpKDwWm4sGVQ68qFdb0jaoi8AcQWhYh5GjCozOE0z+OHeHZ+r9nyN8XaSrRkJk8HHAoNL62iniQB3EG8URb5Ulijl2kCkkPDkN2/mMGe9g8IhEL2CakFWdy22u+0QKpmmow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7cHbbusmbASruy9yf8i/BlIXr9vSvBSSUfW7ap/N0Xg=;
 b=K21hG0C2E7Wudo3TS9P1I5fMyTIty9Gz0m14wTIhl9zCozk9LEGejlW+7jWNkxNRYkoeoNVsmS8LbkfuCLxOOfJ91QqrT3KN6il6OWAdKU0boi7ww9jx6gJ5qeeGOhOokZdSn+QMezzp/L4JU1b63gVAlc2+WYi+1TNivOO9YoA=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4327.namprd04.prod.outlook.com (20.176.251.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Sat, 24 Aug 2019 00:37:02 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 00:37:02 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Thread-Topic: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Thread-Index: AQHVWDD0EkCa56AaCkmaoPCBGi6gHacJd7UA
Date: Sat, 24 Aug 2019 00:37:02 +0000
Message-ID: <d15a578760061a5a0ebad8ca6024768f831686d2.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-6-hch@lst.de>
In-Reply-To: <20190821145837.3686-6-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d5d2982-9096-4d8b-c932-08d7282b2ea2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4327; 
x-ms-traffictypediagnostic: BYAPR04MB4327:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB4327CDC0778538010B5C02A3FAA70@BYAPR04MB4327.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(346002)(39860400002)(376002)(136003)(189003)(199004)(14454004)(64756008)(66476007)(6306002)(6512007)(66946007)(66446008)(36756003)(316002)(6116002)(3846002)(256004)(2501003)(76116006)(76176011)(66556008)(99286004)(71190400001)(71200400001)(6486002)(14444005)(2906002)(6436002)(5024004)(229853002)(8676002)(25786009)(476003)(53936002)(2616005)(26005)(66066001)(446003)(11346002)(186003)(110136005)(4326008)(2201001)(102836004)(6506007)(81156014)(966005)(81166006)(486006)(6246003)(7736002)(86362001)(5660300002)(305945005)(8936002)(478600001)(118296001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4327;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PtEK5JpLHhl8w1d0mMax6WAbi7TKjYwexXqNdCrBvJCOtuFYEWGcgkQL5/OoyPcAc/qXITT+mpCpDjPDRoIZkgNZDVeXzSxaH7Zqp9AbgwGaNIBzEgEpAzpMWq95Ayso8y9czXGqK6+0mJsMUQIrWVToP2bINviodcKzHm3DkBwZaFQ+VMSiJ/PL7Tlt+vwX6nlSC5tCD/2IMJ9Nl0qRtbxD3CGAGAiCMI1oC5sage0wjoEnd2q98mumwA4mKPL88OwKRA07n8PjjFphlvwlN+OhJrrKDmJTc9OVHpNfsPPA6CprNkm3DXcLA6AJMpAhDvOoFGpia0JgMezpPEj0sRAD+8Y8tehRU977fihzhP0Q2tfZ51u+mlpw2gs3C+5q/Okg9IMAoOBHqzdiQ3wJoCFOAwCTAw5r6ehwEZjbZpM=
x-ms-exchange-transport-forked: True
Content-ID: <05954C9DA972FB49ABBD60D35EA25A0D@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d5d2982-9096-4d8b-c932-08d7282b2ea2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:37:02.6560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DYgVwbA9o5gi66i2eszn9SSVuSygC+hDZRGaBJP+5UVD7KDYG5ibwiFU1qxZFJO4ZWDVMb1cghMYyq0qtalymA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_173712_152444_C3FAE384 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
> If we just use the CSRs that these map to directly the code is
> simpler
> and doesn't require extra inline assembly code.  Also fix up the top-
> level
> comment in timer-riscv.c to not talk about the cycle count or mention
> details of the clocksource interface, of which this file is just a
> consumer.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/timex.h    | 44 +++++++++++++++------------
> ----
>  drivers/clocksource/timer-riscv.c | 17 +++---------
>  2 files changed, 25 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/timex.h
> b/arch/riscv/include/asm/timex.h
> index 6a703ec9d796..c7ef131b9e4c 100644
> --- a/arch/riscv/include/asm/timex.h
> +++ b/arch/riscv/include/asm/timex.h
> @@ -6,43 +6,41 @@
>  #ifndef _ASM_RISCV_TIMEX_H
>  #define _ASM_RISCV_TIMEX_H
>  
> -#include <asm/param.h>
> +#include <asm/csr.h>
>  
>  typedef unsigned long cycles_t;
>  
> -static inline cycles_t get_cycles_inline(void)
> +static inline cycles_t get_cycles(void)
>  {
> -	cycles_t n;
> -
> -	__asm__ __volatile__ (
> -		"rdtime %0"
> -		: "=r" (n));
> -	return n;
> +	return csr_read(CSR_TIME);

Does this work correctly in QEMU ? I was looking at the qemu code and
it looks like it returns cpu_get_host_ticks which seems wrong to me.

https://github.com/qemu/qemu/blob/master/target/riscv/csr.c#L213


>  }
> -#define get_cycles get_cycles_inline
> +#define get_cycles get_cycles
>  
>  #ifdef CONFIG_64BIT
> -static inline uint64_t get_cycles64(void)
> +static inline u64 get_cycles64(void)
> +{
> +	return get_cycles();
> +}
> +#else /* CONFIG_64BIT */
> +static inline u32 get_cycles_hi(void)
>  {
> -        return get_cycles();
> +	return csr_read(CSR_TIMEH);
>  }
> -#else
> -static inline uint64_t get_cycles64(void)
> +
> +static inline u64 get_cycles64(void)
>  {
> -	u32 lo, hi, tmp;
> -	__asm__ __volatile__ (
> -		"1:\n"
> -		"rdtimeh %0\n"
> -		"rdtime %1\n"
> -		"rdtimeh %2\n"
> -		"bne %0, %2, 1b"
> -		: "=&r" (hi), "=&r" (lo), "=&r" (tmp));
> +	u32 hi, lo;
> +
> +	do {
> +		hi = get_cycles_hi();
> +		lo = get_cycles();
> +	} while (hi != get_cycles_hi());
> +
>  	return ((u64)hi << 32) | lo;
>  }
> -#endif
> +#endif /* CONFIG_64BIT */
>  
>  #define ARCH_HAS_READ_CURRENT_TIMER
> -
>  static inline int read_current_timer(unsigned long *timer_val)
>  {
>  	*timer_val = get_cycles();
> diff --git a/drivers/clocksource/timer-riscv.c
> b/drivers/clocksource/timer-riscv.c
> index 09e031176bc6..470c7ef02ea4 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -2,6 +2,10 @@
>  /*
>   * Copyright (C) 2012 Regents of the University of California
>   * Copyright (C) 2017 SiFive
> + *
> + * All RISC-V systems have a timer attached to every hart.  These
> timers can be
> + * read from the "time" and "timeh" CSRs, and can use the SBI to
> setup
> + * events.
>   */
>  #include <linux/clocksource.h>
>  #include <linux/clockchips.h>
> @@ -12,19 +16,6 @@
>  #include <asm/smp.h>
>  #include <asm/sbi.h>
>  
> -/*
> - * All RISC-V systems have a timer attached to every hart.  These
> timers can be
> - * read by the 'rdcycle' pseudo instruction, and can use the SBI to
> setup
> - * events.  In order to abstract the architecture-specific timer
> reading and
> - * setting functions away from the clock event insertion code, we
> provide
> - * function pointers to the clockevent subsystem that perform two
> basic
> - * operations: rdtime() reads the timer on the current CPU, and
> - * next_event(delta) sets the next timer event to 'delta' cycles in
> the future.
> - * As the timers are inherently a per-cpu resource, these callbacks
> perform
> - * operations on the current hart.  There is guaranteed to be
> exactly one timer
> - * per hart on all RISC-V systems.
> - */
> -
>  static int riscv_clock_next_event(unsigned long delta,
>  		struct clock_event_device *ce)
>  {

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
