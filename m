Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803DF85338
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 20:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=992ndI1ScSH3HFeuYF8NXGSVh3peOA1vNUB9Re8zP+M=; b=m4RVl97rA1UHBU
	gajZpMSwMjGNa+k0b3MB22xeTA4Hmr9q3ijfuYbai/NbCIJmYaDwK7V1LoV1ZDVVJE1jIecON798N
	rGjoyJod2eeFA8cHZk/900M7/4oAj5ihtNQ49E/5AdCdBhBONdw0zw8sXj7JLIUmNTDC/j0iVcbV/
	Iutis3d2OoSjM8nLAExFe+H27OCuQlTjiAfUYQD5YE4r1QoZB3y3dnYTw3Cq4tvsiarP9/Fgoz2lI
	WTJZWApmnk6bBJ5c6+4qUGxlWT/s+QNWNrTxGfnDAoaSxuo3i3EmoRa6v4fqYwCx9UftqyvCnOmPT
	9tFN3r25Op6qQ3kIuT0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQyx-0001TC-7F; Wed, 07 Aug 2019 18:48:19 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQyl-0001DP-Ku
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 18:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565203687; x=1596739687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/5YonVRLW2yKki6aZkgXx3v3RLqtovvvOIpbZIXYHpg=;
 b=SnSMXL9l3iR94LlTthaA/1N6JPmtg6POQCZKMDhv7NlrW0r++IQuBUJq
 EiMy/cNcYZXF7N4AO0ExcPj9AXl8o2nW5bvSI1w1gbjHoAHFhFihPP1ZP
 1HDw1BjjW5lDfZqP8tYkv69zUoWSVxlORpfqLz2goJgqBtsu7Guj8hw5I
 nVHusbR3ZCOTFgscWKfEviaEfsZu3bGVnchHDMlQe86GwU+Rfb0kSZQT9
 cSYEd1g+2ysqzEy2ncRfkwND9WknyC2KyGffc65luCmxN2AXzplZ7g6gl
 /mOJDMJa66WFkezVs/DxOY77BQHCwyENEZPlXoC469QKArsAV5Go9C1zl w==;
IronPort-SDR: wuPjjE3Yi8m4mImHPtuvz8oabR6dugvX9mGTz7CJGo9n5ImWtkj5Z6mIz1CKM6V2I8Csxy7aXw
 wtRWPw9mAJZ0PMO1/UiTxSCymBukQN7D6WalaT5oseJyDQpA/s43++gKG1u0H+0GUQG8WN12Jj
 L+0XzkpCzdO0xQcM7xn2AQYLKodh1ppdfQgK6KAu8mKvyiD43d9Jd1x7pELWrsmBhRkKeaZGlE
 6pDIxBA0O6A06tKWPNO8iv99EcEyA5dbQIxpcb2ifP9c1ZJZuPj0IZsOIATgeZWtL5zzJNr3JX
 Ri0=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559491200"; d="scan'208";a="115289244"
Received: from mail-sn1nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.58])
 by ob1.hgst.iphmx.com with ESMTP; 08 Aug 2019 02:47:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/mjA3V2NLkZmxf01SGG0YSruIHJq/OxDTMFNAZLTL3Zh4RGqwe419MYDSYmjNLDphDUCP6G1ZhHYsyH63ZmTjCJCG0pR9OGgmloEzJ8fLXrnRT8qScFqFBwsjgKE3rfwXN7mUmzqB+yTP20IlOasbXpAMY0UGJCyrHiLhv04OpcDCKabJd8UozfBASnoIidXkfzxHPxuSkIBBKv6QDZvclf5qUyw+KNXREUWqC3xNOt8JWQzvoB5p18Ol7UG3VKqXkgskh/LIXwjVs1wwT6DbEdRCLujCVrvOTHYm2Rf6qFDzAuCLeqQo9WHC2k5iKroiEKyt3LUm76i2ZCG6hxIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/5YonVRLW2yKki6aZkgXx3v3RLqtovvvOIpbZIXYHpg=;
 b=GykXTJT7X32qjwh4uqJIZEbktDXY4xcTO3eOPog1m1HRrM80f0IBXqbUcvXkQRklIOQzsETX/pFfkRPIVNdgXFI4rFYMpOwnHehmM/l4lFiNlG687FAMErImiBlBbfL1S3iWYASzd5vtffgEihN25sbpjYNbkm41aB0BKluxwI0kzTa2zpmvjJ6WRHRq+ztmrquxblcAyNkD6cxdt9jfl11WKOQ2+zTmyTRYDWoNZoDAVCF0WEb1lEWp4ERh1SFFeIjvqR1abbZF1TA6dI112DmVHPGLIK7v6KlyUfn73S3ZuNpb3S2i8AzYKXGkCGNSkCNMkP9eBmkT8BRZx2D1qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/5YonVRLW2yKki6aZkgXx3v3RLqtovvvOIpbZIXYHpg=;
 b=EHEQXl/XA4ZhIqFNh9ile06Hjtb3ahYyUWCFenrWpGF0q5B1G7/WAZb/ghRmZCx1wLbhPGp/6uOPc1dEaA9Gtp3EBNqVHNmKdxResPv/xXl9ks/+NnWhiTp5KVkHJDplJtgeqhj+MjGbzLhQ/RRb8iOyNohYwBaWf6hNTTwrV8o=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4679.namprd04.prod.outlook.com (52.135.240.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Wed, 7 Aug 2019 18:47:53 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 7 Aug 2019
 18:47:53 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>, "pbonzini@redhat.com"
 <pbonzini@redhat.com>, "palmer@sifive.com" <palmer@sifive.com>, Anup Patel
 <Anup.Patel@wdc.com>
Subject: Re: [PATCH v4 02/20] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Topic: [PATCH v4 02/20] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Index: AQHVTRuUzwWCWNtkKEePaQqrt349jabwBwQA
Date: Wed, 7 Aug 2019 18:47:53 +0000
Message-ID: <750dc9365c02d20616ae8ca22ac454d0e54e994e.camel@wdc.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <20190807122726.81544-3-anup.patel@wdc.com>
In-Reply-To: <20190807122726.81544-3-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e4edf90-89cd-48fe-36af-08d71b67c181
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4679; 
x-ms-traffictypediagnostic: BYAPR04MB4679:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB4679FEE545FD5E62E642E11EFAD40@BYAPR04MB4679.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(189003)(199004)(118296001)(8676002)(2616005)(476003)(11346002)(446003)(81166006)(81156014)(2201001)(256004)(6306002)(71190400001)(71200400001)(486006)(6512007)(3846002)(6116002)(8936002)(6436002)(53936002)(7736002)(6486002)(25786009)(5660300002)(229853002)(66066001)(6246003)(316002)(2501003)(26005)(66556008)(478600001)(2906002)(66946007)(14454004)(7416002)(186003)(99286004)(110136005)(4326008)(66446008)(64756008)(54906003)(102836004)(6506007)(966005)(305945005)(86362001)(76176011)(36756003)(6636002)(66476007)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4679;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oYOjKZBZdxRBL3WJE0KAfQTBAMgz/df9NwAePo1XOlyQjA+Ac8DF3WfK0WofJCsZCawHp0wMNk7iuky5/hfvn0C/dMOulHBDM//B7VhbHdwgCzpx62KVn+gdH+xe28apWSR5al6D4FfDAIuQ6e0OvKyZXkwsb8kC/WRayqL97OoaoUWrj64y6TNn1/MrlwVC5Jbzfd+8Nf7KKrrbc3frTVgqxey21KCojKI+vze9/e5xRgjE4vacE/uGZE82jAaQNr8OOm0TlHaaNTLF4aTQkUKmugo/BhnV9/2glkvV1ZKLcV/uIzM5/Z+INzKclBoN923/aDAj9q++BP8PUicHNMdzZCewyDKMQvhYnjFNmkkbwv2cxBq7Gao0x5ybl2WRKhF+h9qKl4jYi3/Dg8gj3Eqr/dbNQ8kFGd0HUqLpAK8=
Content-ID: <EB4C7231F5A34A48BB3CB320AABA7F92@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e4edf90-89cd-48fe-36af-08d71b67c181
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 18:47:53.6008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_114807_840278_8C8F8BBB 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 12:28 +0000, Anup Patel wrote:
> This patch adds riscv_isa bitmap which represents Host ISA features
> common across all Host CPUs. The riscv_isa is not same as elf_hwcap
> because elf_hwcap will only have ISA features relevant for user-space
> apps whereas riscv_isa will have ISA features relevant to both kernel
> and user-space apps.
> 
> One of the use-case for riscv_isa bitmap is in KVM hypervisor where
> we will use it to do following operations:
> 
> 1. Check whether hypervisor extension is available
> 2. Find ISA features that need to be virtualized (e.g. floating
>    point support, vector extension, etc.)
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 26 +++++++++++
>  arch/riscv/kernel/cpufeature.c | 79
> ++++++++++++++++++++++++++++++++--
>  2 files changed, 102 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/hwcap.h
> b/arch/riscv/include/asm/hwcap.h
> index 7ecb7c6a57b1..9b657375aa51 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -8,6 +8,7 @@
>  #ifndef __ASM_HWCAP_H
>  #define __ASM_HWCAP_H
>  
> +#include <linux/bits.h>
>  #include <uapi/asm/hwcap.h>
>  
>  #ifndef __ASSEMBLY__
> @@ -22,5 +23,30 @@ enum {
>  };
>  
>  extern unsigned long elf_hwcap;
> +
> +#define RISCV_ISA_EXT_a		('a' - 'a')
> +#define RISCV_ISA_EXT_c		('c' - 'a')
> +#define RISCV_ISA_EXT_d		('d' - 'a')
> +#define RISCV_ISA_EXT_f		('f' - 'a')
> +#define RISCV_ISA_EXT_h		('h' - 'a')
> +#define RISCV_ISA_EXT_i		('i' - 'a')
> +#define RISCV_ISA_EXT_m		('m' - 'a')
> +#define RISCV_ISA_EXT_s		('s' - 'a')
> +#define RISCV_ISA_EXT_u		('u' - 'a')

As per the discussion in following threads, 'S' & 'U' are not valid ISA
extensions. So we should drop them from here as well. 

http://lists.infradead.org/pipermail/linux-riscv/2019-August/005771.html

https://lists.nongnu.org/archive/html/qemu-devel/2019-08/msg01217.html


> +#define RISCV_ISA_EXT_zicsr	(('z' - 'a') + 1)
> +#define RISCV_ISA_EXT_zifencei	(('z' - 'a') + 2)
> +#define RISCV_ISA_EXT_zam	(('z' - 'a') + 3)
> +#define RISCV_ISA_EXT_ztso	(('z' - 'a') + 4)
> +
> +#define RISCV_ISA_EXT_MAX	256
> +
> +unsigned long riscv_isa_extension_base(const unsigned long
> *isa_bitmap);
> +
> +#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
> +
> +bool __riscv_isa_extension_available(const unsigned long
> *isa_bitmap, int bit);
> +#define riscv_isa_extension_available(isa_bitmap, ext)	\
> +	__riscv_isa_extension_available(isa_bitmap,
> RISCV_ISA_EXT_##ext)
> +
>  #endif
>  #endif
> diff --git a/arch/riscv/kernel/cpufeature.c
> b/arch/riscv/kernel/cpufeature.c
> index b1ade9a49347..4ce71ce5e290 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -6,21 +6,64 @@
>   * Copyright (C) 2017 SiFive
>   */
>  
> +#include <linux/bitmap.h>
>  #include <linux/of.h>
>  #include <asm/processor.h>
>  #include <asm/hwcap.h>
>  #include <asm/smp.h>
>  
>  unsigned long elf_hwcap __read_mostly;
> +
> +/* Host ISA bitmap */
> +static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
> +
>  #ifdef CONFIG_FPU
>  bool has_fpu __read_mostly;
>  #endif
>  
> +/**
> + * riscv_isa_extension_base - Get base extension word
> + *
> + * @isa_bitmap ISA bitmap to use
> + * @returns base extension word as unsigned long value
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */
> +unsigned long riscv_isa_extension_base(const unsigned long
> *isa_bitmap)
> +{
> +	if (!isa_bitmap)
> +		return riscv_isa[0];
> +	return isa_bitmap[0];
> +}
> +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
> +
> +/**
> + * __riscv_isa_extension_available - Check whether given extension
> + * is available or not
> + *
> + * @isa_bitmap ISA bitmap to use
> + * @bit bit position of the desired extension
> + * @returns true or false
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */
> +bool __riscv_isa_extension_available(const unsigned long
> *isa_bitmap, int bit)
> +{
> +	const unsigned long *bmap = (isa_bitmap) ? isa_bitmap :
> riscv_isa;
> +
> +	if (bit >= RISCV_ISA_EXT_MAX)
> +		return false;
> +
> +	return test_bit(bit, bmap) ? true : false;
> +}
> +EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
> +
>  void riscv_fill_hwcap(void)
>  {
>  	struct device_node *node;
>  	const char *isa;
> -	size_t i;
> +	char print_str[BITS_PER_LONG+1];
> +	size_t i, j, isa_len;
>  	static unsigned long isa2hwcap[256] = {0};
>  
>  	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> @@ -32,8 +75,11 @@ void riscv_fill_hwcap(void)
>  
>  	elf_hwcap = 0;
>  
> +	bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
> +
>  	for_each_of_cpu_node(node) {
>  		unsigned long this_hwcap = 0;
> +		unsigned long this_isa = 0;
>  
>  		if (riscv_of_processor_hartid(node) < 0)
>  			continue;
> @@ -43,8 +89,20 @@ void riscv_fill_hwcap(void)
>  			continue;
>  		}
>  
> -		for (i = 0; i < strlen(isa); ++i)
> +		i = 0;
> +		isa_len = strlen(isa);
> +#if defined(CONFIG_32BIT)
> +		if (!strncmp(isa, "rv32", 4))
> +			i += 4;
> +#elif defined(CONFIG_64BIT)
> +		if (!strncmp(isa, "rv64", 4))
> +			i += 4;
> +#endif
> +		for (; i < isa_len; ++i) {
>  			this_hwcap |= isa2hwcap[(unsigned
> char)(isa[i])];
> +			if ('a' <= isa[i] && isa[i] <= 'z')
> +				this_isa |= (1UL << (isa[i] - 'a'));
> +		}
>  
>  		/*
>  		 * All "okay" hart should have same isa. Set HWCAP
> based on
> @@ -55,6 +113,11 @@ void riscv_fill_hwcap(void)
>  			elf_hwcap &= this_hwcap;
>  		else
>  			elf_hwcap = this_hwcap;
> +
> +		if (riscv_isa[0])
> +			riscv_isa[0] &= this_isa;
> +		else
> +			riscv_isa[0] = this_isa;
>  	}
>  
>  	/* We don't support systems with F but without D, so mask those
> out
> @@ -64,7 +127,17 @@ void riscv_fill_hwcap(void)
>  		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
>  	}
>  
> -	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
> +	memset(print_str, 0, sizeof(print_str));
> +	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +		if (riscv_isa[0] & BIT_MASK(i))
> +			print_str[j++] = (char)('a' + i);
> +	pr_info("riscv: ISA extensions %s\n", print_str);
> +
> +	memset(print_str, 0, sizeof(print_str));
> +	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +		if (elf_hwcap & BIT_MASK(i))
> +			print_str[j++] = (char)('a' + i);
> +	pr_info("riscv: ELF capabilities %s\n", print_str);
>  
>  #ifdef CONFIG_FPU
>  	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
