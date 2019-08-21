Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D8896E51
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 02:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1WrOcCI1xdPovo8YEaQWIgbeOrecOvCjkfku0aPy3U=; b=lMVDpBecB/7h3B
	0qNhjDrlM3GnAkI/98zF3q8BpdcLKb+6YToObWMfAAWoUIUceESJ1acdrwd7QIYrIPHQo/5PuXGLi
	7CEIcWWf3YHDiu+WN4CyKSGSDlymSmZHkHPpc59uMovudbt1UTaCSHuX5Pammn8XS5bMeJq0gO8QG
	P9YOdn+x3iaQVcfyOBpl1/75pqfHbdvZLPy3VwNoA5b00OzmKQzhxlYBhiB+1oiInsGausV8EPFKo
	FMqxxDzyETsvmDRtY2cexWGPUuvkrxWzqOBKr/zkbr299yQPEea/3H2kFtIrkxw2iIUr8S2oEzkhY
	a9xh9YWbnTGlQN0rMg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0EQb-0000H7-Tp; Wed, 21 Aug 2019 00:24:41 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0EQY-0000GG-4L
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 00:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566347079; x=1597883079;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mftVsfR2+f7v9DQOsvqnBEGsu9o0ST9AzjByLoAOWsU=;
 b=iNjb7WmjM2QvxBmM3E8VWE5nKAn5fB1i8E+h9+ggotf2O3x2N2zpEDeW
 yoPx5qSUtwXPnlNhy27pfxsdx8NocT1WekdODt1VtoHcIMs/VSpUZSgPV
 8/vzXUNFgHitAWQXuor0YxmfhAYAaVh7bBl17/l7N7+TnFtCFF+Fdikqu
 Yyf5on/ZzjaKSFYro/SkMJKQXRHVgVRS8DG24zscj07kDEP99skuz5vJS
 /DYMvfaFzKvB1olgmH9QV2y6k8GzyxeY3kgQKVhAU3nnCLW1N51fDY6f4
 siZa8ZLNykx9QJ9eNGFuCXwMF+/xTD4NQoeohFKlGsixhJtx7SUFgIs/B g==;
IronPort-SDR: krl/1Revqp8ETHjQfJ9TMyWJkEAvIFEoLXFy5Clf2Q2hkBWzi3H/RrFHhFEnTC2m05YQnJEyzq
 yehdU4JSNBagVfycLtVJBUpQNnorwE9Y2eWoGNdInvWTancNG7CQLUP2kxTyhP4fgTeJh9Xg6n
 vvC5hh1lSmxmGhbOzppvxqHmo9k0dSv8vMgVgl++Ecd5SM3+dS1ERkBG17UeRFibu96D3wUNB+
 z4LLQUXii+iS3wE4E2vQ2NpJ/48ccRlWMSE4SEzfoHA+2kQk1Gd54jmqnucFvvlBGRMYkT1tgg
 QO0=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="116287628"
Received: from mail-dm3nam03lp2056.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.56])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 08:24:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KA5Poa/czlZHPI5mBscEk0GdhUGeHI8v/7y6ChR4irfWePIUa6iP8QpOma/YGLFpKatxYPVPrtLS7/mvGVwiHXT2jkuhwZ7zgekTYoa7PCeYrLN+KDrWvnbWusNmDETdbjN5l1PNYBdnuXsyR85AlBd1ReFDjd49kv6yT0HGmzTwW/TUxBk94DpmAf7aaUDyO+ybh17URt5fC3jvYS7WhBaet+rcQ9FRF3RAqS18KKCLGrtsmOXEv9KiB7ulh4PP0qDQ8HIA2kOcSIuKmw3F+YxTcebsqnwyN3xqE7Iyw3JOt99Lpvdt21qsovoeG3wkG+4n+4438k9c3k4Kdf6n/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mftVsfR2+f7v9DQOsvqnBEGsu9o0ST9AzjByLoAOWsU=;
 b=F2bfEDrKpMXSyIzwjvwGpVrAM9FMdmbdNlLbrMa0rwKLAMvz2t/EZVQJcW3Bw5tm2nNLaCbwEurt3Urpmp6LTNqsHPXm9E8KiR75Tv6Fl8zHkiin8C64xL+jkK0XWDWQXuxjpw/TmNTsnTAro4qqxxvK1mlf9hLQP2nbfeBNppQeOrh35FEg90+SsYHk1L7hbwT9U4AIdzNmG3h6+qfDL8Dw7ZZGbHtdBrH8zJyarEha5jMhbaaOq8hhJADP8h+MDb6v/4OCRHgFSLvnXaYe/CD+XfQPcIBrUtspMN+P2XreXQ2hYObzdMpCg/JK4m8q4rfxVAEbu1FmuLGoaNybPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mftVsfR2+f7v9DQOsvqnBEGsu9o0ST9AzjByLoAOWsU=;
 b=K1NtsN3b4Tv9vAx437KkxvyZBsNpjZ4JrkfTKKSj4j14OsSvNg0hypb39tY0+NWYvHFf8sH2BhCfqOcuHKwxqJn8KcLzOnkH2gIhyr6uLgPMzdo8H0JiSI2siF9kbeQYD4bEX30JnRa5zC3RtjJ2gpwvOYUvHZLp4dMpIBLSH2U=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4822.namprd04.prod.outlook.com (52.135.240.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 00:24:32 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 00:24:32 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
Thread-Topic: [PATCH 08/15] riscv: provide native clint access for M-mode
Thread-Index: AQHVUe6JLh/TmNGxQki99mEs0p5k7KcEybyA
Date: Wed, 21 Aug 2019 00:24:31 +0000
Message-ID: <fa0570285684e03587ee8f09b86f0d058d757c55.camel@wdc.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-9-hch@lst.de>
In-Reply-To: <20190813154747.24256-9-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 987ed33f-41db-422b-2b72-08d725cdeff9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4822; 
x-ms-traffictypediagnostic: BYAPR04MB4822:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB482261014AB8B55B43B947C4FAAA0@BYAPR04MB4822.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(189003)(199004)(53936002)(6436002)(6116002)(6486002)(476003)(8936002)(2616005)(3846002)(102836004)(2906002)(486006)(6506007)(6512007)(6306002)(2501003)(26005)(478600001)(66066001)(11346002)(4326008)(256004)(966005)(5660300002)(446003)(118296001)(14454004)(186003)(6246003)(76176011)(71190400001)(71200400001)(86362001)(36756003)(25786009)(54906003)(110136005)(99286004)(8676002)(7736002)(305945005)(229853002)(81156014)(81166006)(2201001)(66946007)(66476007)(64756008)(316002)(66556008)(66446008)(76116006)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4822;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K2Xzlm1wwnCrrhbyKS1iR7OIiuNbb5LbETv7k+bNloascP0bVnKaH9XwwLTuwyVYitYqcaRGo5mYh9ihh88GOpkNYhlwCWacbLCU+rZ0UIzVkwtfoOxMtUYrkDgfGMJ4B0CWNWADkir+Kax2KzLeUQeeB+Qn35vbSPI6N6PzuoLqCfFxTmy9wXPFSUOkQ/3KdEwq+busmLYLPX6mFyHkwDnAAbGeyc0u2twWZVlg5dk0ukp8QeFL1a7pXT5WNxfGdcoXizKxj2QfJyvaWlp7IwDDSDiVtaVd2o8yWwfeZFydS+FT4X2pwJvt6Fu6v71Q/TfmQQV4yAZBYbeXeErWAKfeo+NNT8UK+SE7AGiFuTIwwfeK4q4UNvqPuhi82I+gGJgo3HocHbBe83LSJtq20ozef9qaepd9JoD5703udyM=
Content-ID: <2A2171DD9D8D334EA3C8D64C1E696ED1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 987ed33f-41db-422b-2b72-08d725cdeff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 00:24:31.9382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AfoAAa1eXP9dD1/1XmnJEsy0abne3J3n4ndjGgzf+zqQgPB1rbUvyvWhKxR+REoutidHnRWFbZ6DEJJLZgq6+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4822
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_172438_305578_A8B2FAAF 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
> RISC-V has the concept of a cpu level interrupt controller.  Part of
> it
> is expose as bits in the status registers, and 2 new CSRs per 
//is expose/is to expose/

> privilege
> level in the instruction set, but the machanisms to trigger IPIs and
> timer events, as well as reading the actual timer value are not
> specified in the RISC-V spec but usually delegated to a block of MMIO
> registers.  This patch adds support for those MMIO registers in the
> timer and IPI code.  For now only the SiFive layout also supported by
> a few other implementations is supported, but the code should be
> easily extensible to others in the future.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/clint.h    | 40 +++++++++++++++++++++++++++
>  arch/riscv/include/asm/timex.h    | 17 ++++++++++++
>  arch/riscv/kernel/Makefile        |  1 +
>  arch/riscv/kernel/clint.c         | 45
> +++++++++++++++++++++++++++++++
>  arch/riscv/kernel/setup.c         |  2 ++
>  arch/riscv/kernel/smp.c           | 24 +++++++++++++++++
>  arch/riscv/kernel/smpboot.c       |  3 +++
>  drivers/clocksource/timer-riscv.c | 16 ++++++++---
>  8 files changed, 144 insertions(+), 4 deletions(-)
>  create mode 100644 arch/riscv/include/asm/clint.h
>  create mode 100644 arch/riscv/kernel/clint.c
> 
> diff --git a/arch/riscv/include/asm/clint.h
> b/arch/riscv/include/asm/clint.h
> new file mode 100644
> index 000000000000..46d182d9a4db
> --- /dev/null
> +++ b/arch/riscv/include/asm/clint.h
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#ifndef _ASM_CLINT_H
> +#define _ASM_CLINT_H 1
> +
> +#include <linux/smp.h>
> +
> +#ifdef CONFIG_M_MODE
> +extern u32 __iomem *clint_ipi_base;
> +extern u64 __iomem *clint_time_val;
> +extern u64 __iomem *clint_time_cmp;
> +
> +void clint_init_boot_cpu(void);
> +
> +static inline void clint_send_ipi(unsigned long hartid)
> +{
> +	writel(1, clint_ipi_base + hartid);
> +}
> +
> +static inline void clint_clear_ipi(unsigned long hartid)
> +{
> +	writel(0, clint_ipi_base + hartid);
> +}
> +
> +static inline u64 clint_read_timer(void)
> +{
> +	return readq_relaxed(clint_time_val);
> +}
> +
> +static inline void clint_set_timer(unsigned long delta)
> +{
> +	writeq_relaxed(clint_read_timer() + delta,
> +		clint_time_cmp +
> cpuid_to_hartid_map(smp_processor_id()));'

This is not compatible with 32 bit mode. IIRC, timecmp is a 64 bit on
RV32 as well. Here is the implementation in OpenSBI.

https://github.com/riscv/opensbi/blob/master/lib/utils/sys/clint.c#L104

> +}
> +
> +#else
> +#define clint_init_boot_cpu()	do { } while (0)
> +#define clint_clear_ipi(hartid)	do { } while (0)
> +#endif /* CONFIG_M_MODE */
> +
> +#endif /* _ASM_CLINT_H */
> diff --git a/arch/riscv/include/asm/timex.h
> b/arch/riscv/include/asm/timex.h
> index 6a703ec9d796..bf907997f107 100644
> --- a/arch/riscv/include/asm/timex.h
> +++ b/arch/riscv/include/asm/timex.h
> @@ -10,6 +10,22 @@
>  
>  typedef unsigned long cycles_t;
>  
> +#ifdef CONFIG_M_MODE
> +
> +#include <linux/io-64-nonatomic-lo-hi.h>
> +#include <asm/clint.h>
> +
> +static inline cycles_t get_cycles(void)
> +{
> +#ifdef CONFIG_64BIT
> +	return readq_relaxed(clint_time_val);
> +#else
> +	return readl_relaxed(clint_time_val);
> +#endif

Same comment as above. Both RV32 & RV64 bit have 64 bit have 64 bit
precission for timer val. You have to read 32 bits at a time and "or"
them to get 64 bit value. Here is the implementation from OpenSBI

https://github.com/riscv/opensbi/blob/master/lib/utils/sys/clint.c#L69

> +}
> +#define get_cycles	get_cycles
> +
> +#else /* CONFIG_M_MODE */
>  static inline cycles_t get_cycles_inline(void)
>  {
>  	cycles_t n;
> @@ -40,6 +56,7 @@ static inline uint64_t get_cycles64(void)
>  	return ((u64)hi << 32) | lo;
>  }
>  #endif
> +#endif /* CONFIG_M_MODE */
>  
>  #define ARCH_HAS_READ_CURRENT_TIMER
>  
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 2420d37d96de..f933c04f89db 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -29,6 +29,7 @@ obj-y	+= vdso.o
>  obj-y	+= cacheinfo.o
>  obj-y	+= vdso/
>  
> +obj-$(CONFIG_M_MODE)		+= clint.o
>  obj-$(CONFIG_FPU)		+= fpu.o
>  obj-$(CONFIG_SMP)		+= smpboot.o
>  obj-$(CONFIG_SMP)		+= smp.o
> diff --git a/arch/riscv/kernel/clint.c b/arch/riscv/kernel/clint.c
> new file mode 100644
> index 000000000000..15b9e7fa5416
> --- /dev/null
> +++ b/arch/riscv/kernel/clint.c
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 Christoph Hellwig.
> + */
> +
> +#include <linux/io.h>
> +#include <linux/of_address.h>
> +#include <linux/types.h>
> +#include <asm/csr.h>
> +#include <asm/irq.h>
> +#include <asm/timex.h>
> +
> +/*
> + * This is the layout used by the SiFive clint, which is also shared
> by the qemu
> + * virt platform, and the Kendryte KD210 at least.
> + */
> +#define CLINT_IPI_OFF		0
> +#define CLINT_TIME_VAL_OFF	0xbff8
> +#define CLINT_TIME_CMP_OFF	0x4000;
> +
> +u32 __iomem *clint_ipi_base;
> +u64 __iomem *clint_time_val;
> +u64 __iomem *clint_time_cmp;
> +
> +void clint_init_boot_cpu(void)
> +{
> +	struct device_node *np;
> +	void __iomem *base;
> +
> +	np = of_find_compatible_node(NULL, NULL, "riscv,clint0");
> +	if (!np) {
> +		panic("clint not found");
> +		return;
> +	}
> +
> +	base = of_iomap(np, 0);
> +	if (!base)
> +		panic("could not map CLINT");
> +
> +	clint_ipi_base = base + CLINT_IPI_OFF;
> +	clint_time_val = base + CLINT_TIME_VAL_OFF;
> +	clint_time_cmp = base + CLINT_TIME_CMP_OFF;
> +
> +	clint_clear_ipi(boot_cpu_hartid);
> +}
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index a990a6cb184f..f4ba71b66c73 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -17,6 +17,7 @@
>  #include <linux/sched/task.h>
>  #include <linux/swiotlb.h>
>  
> +#include <asm/clint.h>
>  #include <asm/setup.h>
>  #include <asm/sections.h>
>  #include <asm/pgtable.h>
> @@ -65,6 +66,7 @@ void __init setup_arch(char **cmdline_p)
>  	setup_bootmem();
>  	paging_init();
>  	unflatten_device_tree();
> +	clint_init_boot_cpu();
>  
>  #ifdef CONFIG_SWIOTLB
>  	swiotlb_init(1);
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index 8cd730239613..ee8599a7ca48 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -13,7 +13,9 @@
>  #include <linux/sched.h>
>  #include <linux/seq_file.h>
>  #include <linux/delay.h>
> +#include <linux/io.h>
>  
> +#include <asm/clint.h>
>  #include <asm/sbi.h>
>  #include <asm/tlbflush.h>
>  #include <asm/cacheflush.h>
> @@ -78,6 +80,27 @@ static void ipi_stop(void)
>  		wait_for_interrupt();
>  }
>  
> +#ifdef CONFIG_M_MODE
> +static inline void send_ipi_single(int cpu, enum ipi_message_type
> op)
> +{
> +	set_bit(op, &ipi_data[cpu].bits);
> +	clint_send_ipi(cpuid_to_hartid_map(cpu));
> +}
> +
> +static inline void send_ipi_mask(const struct cpumask *mask,
> +		enum ipi_message_type op)
> +{
> +	int cpu;
> +
> +	for_each_cpu(cpu, mask)
> +		send_ipi_single(cpu, op);
> +}
> +
> +static inline void clear_ipi(void)
> +{
> +	clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
> +}
> +#else /* CONFIG_M_MODE */
>  static void send_ipi_mask(const struct cpumask *mask, enum
> ipi_message_type op)
>  {
>  	int cpuid, hartid;
> @@ -103,6 +126,7 @@ static inline void clear_ipi(void)
>  {
>  	csr_clear(CSR_SIP, SIE_SSIE);
>  }
> +#endif /* CONFIG_M_MODE */
>  
>  void riscv_software_interrupt(void)
>  {
> diff --git a/arch/riscv/kernel/smpboot.c
> b/arch/riscv/kernel/smpboot.c
> index 7462a44304fe..1b7678d86ec8 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -23,6 +23,7 @@
>  #include <linux/of.h>
>  #include <linux/sched/task_stack.h>
>  #include <linux/sched/mm.h>
> +#include <asm/clint.h>
>  #include <asm/irq.h>
>  #include <asm/mmu_context.h>
>  #include <asm/tlbflush.h>
> @@ -132,6 +133,8 @@ asmlinkage void __init smp_callin(void)
>  {
>  	struct mm_struct *mm = &init_mm;
>  
> +	clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
> +
>  	/* All kernel threads share the same mm context.  */
>  	mmgrab(mm);
>  	current->active_mm = mm;
> diff --git a/drivers/clocksource/timer-riscv.c
> b/drivers/clocksource/timer-riscv.c
> index 3ad2fa52bac9..09f2165bd0a5 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -24,12 +24,16 @@
>   * operations on the current hart.  There is guaranteed to be
> exactly one timer
>   * per hart on all RISC-V systems.
>   */
> -
>  static int riscv_clock_next_event(unsigned long delta,
>  		struct clock_event_device *ce)
>  {
>  	csr_set(CSR_XIE, XIE_XTIE);
> +
> +#ifdef CONFIG_M_MODE
> +	clint_set_timer(delta);
> +#else
>  	sbi_set_timer(get_cycles64() + delta);
> +#endif
>  	return 0;
>  }
>  
> @@ -45,14 +49,18 @@ static DEFINE_PER_CPU(struct clock_event_device,
> riscv_clock_event) = {
>   * within one tick of each other, so while this could technically go
>   * backwards when hopping between CPUs, practically it won't happen.
>   */
> -static unsigned long long riscv_clocksource_rdtime(struct
> clocksource *cs)
> +static u64 riscv_sched_clock(void)
>  {
> +#ifdef CONFIG_M_MODE
> +	return clint_read_timer();
> +#else
>  	return get_cycles64();
> +#endif
>  }
>  
> -static u64 riscv_sched_clock(void)
> +static unsigned long long riscv_clocksource_rdtime(struct
> clocksource *cs)
>  {
> -	return get_cycles64();
> +	return riscv_sched_clock();
>  }
>  
>  static struct clocksource riscv_clocksource = {

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
