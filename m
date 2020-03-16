Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F1A1860D2
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 01:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=orsOFD0nCuSlxwndQOiSFiPu+wv5kjv163LF0OMYApQ=; b=ow6gNtOd9NM3NQDc0KBIYDa4A
	jB2G6L7WhDI4bLsfc+nbSd4CpSMIdOK58VnNTYwHhCYDbTEIf+XI+nQKmnw7Eww5sXp3eKwTHUMCU
	43GNCvUmDo1dF+ic4OuT8bO/Bwx7ojp+H5RTVwGDubs6Myg3zQbntXqU0w0tqOzc7rv8k2DY4oQSg
	5vXM/XAUVAXCQvXCauI/Af8pKeZ8p9hZrs9yy8uoDb3ApIG/HRE3inqNhzQw3nQ/ElVWmgrJyL7Vg
	NZzk7GGx2vt2gd+fwWn3pYgcINzec6A6lMUjiN//BubTiDNrpmprayJ9+WUG76GyVnUUEqdCohA2B
	XVfhc+s6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdiE-0000Uw-Im; Mon, 16 Mar 2020 00:34:34 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdiA-0000UU-VW
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 00:34:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584318870; x=1615854870;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=KERGJTXiOnen/qV2V3+rAuRbgX7EefGekJdVQ5oHd8c=;
 b=VF1MdLl3/j7UdFoF+o+uKl0zW1BeWik5a71txagIgGnpdlyCjaYLT0/i
 l2I7sudOsq4i+MungSDbPcygfw9QqcqtZ2nRoA6VVPg7KQb4i5mWWlGVY
 I51b7XqwkKYf9vt3WMNa2kKW2T4+9WZjUF8IoBYo6YIWChnwjPVS+5Bvd
 tJOY91S8FoIKJfwQDIbYkkrhqcmGCSH12AeN2ZkqoWbVMK+vXqptqoO1d
 FQplAYIVegwSZCHT1NSIdqCUFpO4PXuShya9AHbenDBabgPY+nGKoFWEF
 tzhvxa9rVibqGqPPV3iwdDt7e7LCOoKCHkaY8WxmTaRHAvgcAR1bwiYC9 w==;
IronPort-SDR: luOiidz4yCbRpAj1ZO6+iyr+iCU0cPMO9fmB8UOwUoc8KcTWBmiBFZ7cFXdzWHcWmOnw0lowHJ
 BBbvOdYxQeQ1L1PKWa39RmyPNOohaHDq/clxyZdtlHoJXd6M/h0RkfIZypaqyfskxMIYP5a9iT
 9v8xRRXHduT+6E9xUZuxS5zURrzT1lqfRuKCgv3J53jrbZ3P6OnBzrBAHLuNcGo94nYSHD/UDT
 VnV0yArZ6jAuwBh+SN96kvCp2HyZv2EC9mUA7ycDWqFVOTIL9OWkPMP/YaEEY5qk/z+pA4YqSL
 /sw=
X-IronPort-AV: E=Sophos;i="5.70,558,1574092800"; d="scan'208";a="240891258"
Received: from mail-mw2nam12lp2047.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.47])
 by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2020 08:34:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BUb6BeGiFVPFs+MKDqOKXRosCnPPe5nsVDplklL5mzIXSsGOC1U1IeHw+bjSzzWDE7BoVERDBw3EwC0i+gbNQc60ysTqy15+IksoiMYID22t0HcoLbq/sLzc1I990mEWoOVJlV7YltA8NRUdWojG3oiJ4XhjEbO2af0zO6Ju0ShYtk5nDdRiqss7kOSEwiJz8PIjbaqVfS7sSNpSn/TBYj2OridPSSBNTK/CdN5hUH161IPihihZeznDaJG2buxiLhQq+HChH+tx1Ls1aKoiOtS48fx0DL+8/n17KN4X1M0cFJ8TUjK8ht8kIZciJrmKJzWBfv8NL4V5BrBmvcRpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=orsOFD0nCuSlxwndQOiSFiPu+wv5kjv163LF0OMYApQ=;
 b=jIKYL03vXh0xHGyUVf2l7/SPp6faTk4E2e4jKsN1LkdQlMS1ZJM/ab8Giocbpak3lqVC/94tAfe6jekdBvbzg0a6RsDFigq3CicsSo45txI8w0WUbYZixZgLg2FuInWQ4IPWmAIKedSTOitNGEwsLliYffMIBHlFyAZRS8CmXP9b09jhk4tskbJK0aEN/5qncisS71cKzFzMt2HtlrklSWXOcWE0K/ikmhmX4HsvnH/+u8kjZelyZYFxM/naBXq9y1Yw1KMLnia23FR3qcHDZf3LkXhdmxKVXJMLUa1I/uQXiuyMRFX2syZPZxkWG8jb6zPiViKOoECdIn/puE2qyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=orsOFD0nCuSlxwndQOiSFiPu+wv5kjv163LF0OMYApQ=;
 b=tVXh42Xhljb6dTitMiugR5eDXKowabV62P93vKiKL4h489GBRlJLDAemfO5Vx3YVNfxq3suY6SQU9tyMg6SplZgdpgs4+5lTp8RG8L+vHAqGLf8nf77qaHkEs6obpeMyI76SuYCgDOa8Kqwv5A38jzZSMR2vzlgqN23L9CvD6j0=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2296.namprd04.prod.outlook.com (2603:10b6:102:6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Mon, 16 Mar
 2020 00:34:25 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 00:34:24 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Atish Patra <atishp@atishpatra.org>
Subject: Re: [PATCH v2 3/9] riscv: Add SOC early init support
Thread-Topic: [PATCH v2 3/9] riscv: Add SOC early init support
Thread-Index: AQHV+LBGs8UKHOTEo067LJD3Wn16NQ==
Date: Mon, 16 Mar 2020 00:34:24 +0000
Message-ID: <CO2PR04MB23434DEE0CF8D04186E78B2DE7F90@CO2PR04MB2343.namprd04.prod.outlook.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-4-damien.lemoal@wdc.com>
 <CAOnJCUJ_aHi1tZ4WoMQVFctq6YMC5CbL4+XEQP0T3_zGZk8F3A@mail.gmail.com>
 <2b565ad4afd7453a5b1aca6b5d8d8368d6688518.camel@wdc.com>
 <CAOnJCUK4dZcBFwn1i4O-jEZWya_yDh2zoRwAVSxxwYTZBi8hLw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [2400:2411:43c0:6000:cce:de2d:a9eb:2695]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b6da7eb8-3ac2-480d-501e-08d7c941c748
x-ms-traffictypediagnostic: CO2PR04MB2296:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO2PR04MB22960258B254A7F3D7D6A8E0E7F90@CO2PR04MB2296.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(199004)(76116006)(91956017)(54906003)(81156014)(81166006)(8936002)(8676002)(71200400001)(5660300002)(33656002)(316002)(6916009)(7696005)(86362001)(186003)(4326008)(53546011)(64756008)(66446008)(55016002)(66556008)(66476007)(52536014)(66946007)(6506007)(478600001)(2906002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2296;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 32p9BthJg8oSINclT/voj32VUgc6k+gYal242kU+lkZCVQpIRID17CQBTHkJA4et7x5xxxhLFV8yaN0LeUujWoEZ+0LD028DtijKvi4k5MndBXm8x+bLdej3jrhoVgzclmUpV1vDErhQ4HCY9tHHbixSnp7JJ522KaQS/vtSGkAqCeWzqD0TQAYB1KG/Dz4sZDxvcG+mP8q17fwtHnJF5wVVKGwfwhbLeQE0Etq8lFybrHRUB2N/DaQkc8TVvHgh9lgJtYAhuny2Y6YwbSPoZJ5MBy5Pxc+IMEGFmdzrg6HQl+SMscybnlpWv+5CkKDcqXCfFN9/rdHIovwIyT23RrxGnebuW/Rcr3ZG5VqiVA/qZzb5Vy0SfciGdTiYi018hvss+LvPhpwgye2TzPrnnbpvIp7Ep6U9V0oV3vTbqMpAGcPTHucxC5QODr7+uPjU
x-ms-exchange-antispam-messagedata: 6fO72n8sN8+mGOM9Q27WHh9HkKWQi7+nKQsYpSGqFhfOyqh03FHYFh7SJfF13BmWP5sTpCe5DxAU7X/CUmRvKxqamHqA2bz9KFfmY5VRASipV9RJMYskeXU80wtgG/gpYbo7LNL2pwuQSV8rQ5ajLc6/ON6+Fu3eJ4aKgqyRbFYX5tRof72cfEbgKcIKXHcJxfMsA7pO3DTIImcjha416w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6da7eb8-3ac2-480d-501e-08d7c941c748
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 00:34:24.7507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nuK18kc6H4ZojKnfkh4McqorTTW4H2hs+iX5kBhcwRQYm8zXeTGoYYiKv+xLEWouphIGJFwic1fgjF9W53WQIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2296
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_173431_116643_F5289C51 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/14 6:10, Atish Patra wrote:=0A=
> On Thu, Mar 12, 2020 at 11:42 PM Damien Le Moal <Damien.LeMoal@wdc.com> w=
rote:=0A=
>>=0A=
>> On Thu, 2020-03-12 at 13:53 -0700, Atish Patra wrote:=0A=
>>> On Wed, Mar 11, 2020 at 10:11 PM Damien Le Moal <damien.lemoal@wdc.com>=
 wrote:=0A=
>>>> Add a mechanism for early SoC initialization for platforms that need=
=0A=
>>>> additional hardware initialization not possible through the regular=0A=
>>>> device tree and drivers mechanism. With this, a SoC specific=0A=
>>>> initialization function can be called very early, before DTB parsing=
=0A=
>>>> is done by parse_dtb() in Linux RISC-V kernel setup code.=0A=
>>>>=0A=
>>>> This can be very useful for early hardware initialization for No-MMU=
=0A=
>>>> kernels booted directly in M-mode because it is quite likely that no=
=0A=
>>>> other booting stage exist prior to the No-MMU kernel.=0A=
>>>>=0A=
>>>> Example use of a SoC early initialization is as follows:=0A=
>>>>=0A=
>>>> static void vendor_abc_early_init(const void *fdt)=0A=
>>>> {=0A=
>>>>         /*=0A=
>>>>          * some early init code here that can use simple matches=0A=
>>>>          * against the flat device tree file.=0A=
>>>>          */=0A=
>>>> }=0A=
>>>> SOC_EARLY_INIT_DECLARE("vendor,abc", abc_early_init);=0A=
>>>>=0A=
>>>> This early initialization function is executed only if the flat device=
=0A=
>>>> tree for the board has a 'compatible =3D "vendor,abc"' entry;=0A=
>>>>=0A=
>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>> Signed-off-by: Anup Patel <anup.patel@wdc.com>=0A=
>>>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>=0A=
>>>> ---=0A=
>>>>  arch/riscv/include/asm/soc.h    | 23 +++++++++++++++++++++++=0A=
>>>>  arch/riscv/kernel/Makefile      |  1 +=0A=
>>>>  arch/riscv/kernel/head.S        |  1 +=0A=
>>>>  arch/riscv/kernel/soc.c         | 28 ++++++++++++++++++++++++++++=0A=
>>>>  arch/riscv/kernel/vmlinux.lds.S |  6 ++++++=0A=
>>>>  5 files changed, 59 insertions(+)=0A=
>>>>  create mode 100644 arch/riscv/include/asm/soc.h=0A=
>>>>  create mode 100644 arch/riscv/kernel/soc.c=0A=
>>>>=0A=
>>>> diff --git a/arch/riscv/include/asm/soc.h b/arch/riscv/include/asm/soc=
.h=0A=
>>>> new file mode 100644=0A=
>>>> index 000000000000..9b8c332cbe76=0A=
>>>> --- /dev/null=0A=
>>>> +++ b/arch/riscv/include/asm/soc.h=0A=
>>>> @@ -0,0 +1,23 @@=0A=
>>>> +/* SPDX-License-Identifier: GPL-2.0-or-later */=0A=
>>>> +/*=0A=
>>>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>>> + */=0A=
>>>> +=0A=
>>>> +#ifndef _ASM_RISCV_SOC_H=0A=
>>>> +#define _ASM_RISCV_SOC_H=0A=
>>>> +=0A=
>>>> +#include <linux/of.h>=0A=
>>>> +#include <linux/linkage.h>=0A=
>>>> +#include <linux/types.h>=0A=
>>>> +=0A=
>>>> +#define SOC_EARLY_INIT_DECLARE(compat, fn)                           =
  \=0A=
>>>> +       static const struct of_device_id __soc_early_init             =
  \=0A=
>>>> +               __used __section(__soc_early_init_table)              =
  \=0A=
>>>> +                =3D { .compatible =3D compat, .data =3D fn  }=0A=
>>>> +=0A=
>>>=0A=
>>> There may be some future kendryte board or some other RISC-V board=0A=
>>> which want to use SOC_EARLY_INIT_DECLARE.=0A=
>>> There should be a name parameter as well which allows multiple usage=0A=
>>> of SOC_EARLY_INIT_DECLARE.=0A=
>>=0A=
>> I am not sure I understand your point here. Currently, the call to an=0A=
>> early init functions is driven by the value (name) specified in the DT=
=0A=
>> compatible entry. If what needs to be done in the early init function=0A=
>> for one SoC is common with another, the same function can be used for=0A=
>> different SOC_EARLY_INIT_DECLARE() with different compatible strings,=0A=
>> or the same compatible string used in the different boards DT. No ? Am=
=0A=
>> I missing something ?=0A=
>>=0A=
> =0A=
> To use different compatible strings, SOC_EARLY_INIT_DECLARE has to be=0A=
> declared twice.=0A=
> As SOC_EARLY_INIT_DECLARE is just a macro that declares=0A=
> __soc_early_init, redefinition compile error=0A=
> will happen. That's why __soc_early_init has to be suffixed with name=0A=
> to avoid the redefinition error.=0A=
> Here is the diff I am talking about=0A=
> =0A=
> -#define SOC_EARLY_INIT_DECLARE(compat, fn)                             \=
=0A=
> -       static const struct of_device_id __soc_early_init               \=
=0A=
> +#define SOC_EARLY_INIT_DECLARE(name, compat, fn)=0A=
>          \=0A=
> +       static const struct of_device_id __soc_early_init__##name=0A=
>          \=0A=
>                 __used __section(__soc_early_init_table)                \=
=0A=
>                  =3D { .compatible =3D compat, .data =3D fn  }=0A=
> =0A=
=0A=
OK. Got it. I will make this simple change and send a v4 of the series.=0A=
=0A=
> =0A=
>>>=0A=
>>>> +void soc_early_init(void);=0A=
>>>> +=0A=
>>>> +extern unsigned long __soc_early_init_table_start;=0A=
>>>> +extern unsigned long __soc_early_init_table_end;=0A=
>>>> +=0A=
>>>> +#endif=0A=
>>>> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile=
=0A=
>>>> index 97d0c35f8b37..e4a22999dbc6 100644=0A=
>>>> --- a/arch/riscv/kernel/Makefile=0A=
>>>> +++ b/arch/riscv/kernel/Makefile=0A=
>>>> @@ -10,6 +10,7 @@ endif=0A=
>>>>  extra-y +=3D head.o=0A=
>>>>  extra-y +=3D vmlinux.lds=0A=
>>>>=0A=
>>>> +obj-y  +=3D soc.o=0A=
>>>>  obj-y  +=3D cpu.o=0A=
>>>>  obj-y  +=3D cpufeature.o=0A=
>>>>  obj-y  +=3D entry.o=0A=
>>>> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S=0A=
>>>> index 85f2073e7fe4..52ed11b4fda6 100644=0A=
>>>> --- a/arch/riscv/kernel/head.S=0A=
>>>> +++ b/arch/riscv/kernel/head.S=0A=
>>>> @@ -131,6 +131,7 @@ clear_bss_done:=0A=
>>>>         call kasan_early_init=0A=
>>>>  #endif=0A=
>>>>         /* Start the kernel */=0A=
>>>> +       call soc_early_init=0A=
>>>>         call parse_dtb=0A=
>>>>         tail start_kernel=0A=
>>>>=0A=
>>>> diff --git a/arch/riscv/kernel/soc.c b/arch/riscv/kernel/soc.c=0A=
>>>> new file mode 100644=0A=
>>>> index 000000000000..0b3b3dc9ad0f=0A=
>>>> --- /dev/null=0A=
>>>> +++ b/arch/riscv/kernel/soc.c=0A=
>>>> @@ -0,0 +1,28 @@=0A=
>>>> +// SPDX-License-Identifier: GPL-2.0-or-later=0A=
>>>> +/*=0A=
>>>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>>> + */=0A=
>>>> +#include <linux/init.h>=0A=
>>>> +#include <linux/libfdt.h>=0A=
>>>> +#include <asm/pgtable.h>=0A=
>>>> +#include <asm/soc.h>=0A=
>>>> +=0A=
>>>> +/*=0A=
>>>> + * This is called extremly early, before parse_dtb(), to allow initia=
lizing=0A=
>>>> + * SoC hardware before memory or any device driver initialization.=0A=
>>>> + */=0A=
>>>> +void __init soc_early_init(void)=0A=
>>>> +{=0A=
>>>> +       void (*early_fn)(const void *fdt);=0A=
>>>> +       const struct of_device_id *s;=0A=
>>>> +       const void *fdt =3D dtb_early_va;=0A=
>>>> +=0A=
>>>> +       for (s =3D (void *)&__soc_early_init_table_start;=0A=
>>>> +            (void *)s < (void *)&__soc_early_init_table_end; s++) {=
=0A=
>>>> +               if (!fdt_node_check_compatible(fdt, 0, s->compatible))=
 {=0A=
>>>> +                       early_fn =3D s->data;=0A=
>>>> +                       early_fn(fdt);=0A=
>>>> +                       return;=0A=
>>>> +               }=0A=
>>>> +       }=0A=
>>>> +}=0A=
>>>> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlin=
ux.lds.S=0A=
>>>> index 1e0193ded420..32b160942f40 100644=0A=
>>>> --- a/arch/riscv/kernel/vmlinux.lds.S=0A=
>>>> +++ b/arch/riscv/kernel/vmlinux.lds.S=0A=
>>>> @@ -24,6 +24,12 @@ SECTIONS=0A=
>>>>         HEAD_TEXT_SECTION=0A=
>>>>         INIT_TEXT_SECTION(PAGE_SIZE)=0A=
>>>>         INIT_DATA_SECTION(16)=0A=
>>>> +       . =3D ALIGN(8);=0A=
>>>> +       __soc_early_init_table : {=0A=
>>>> +               __soc_early_init_table_start =3D .;=0A=
>>>> +               KEEP(*(__soc_early_init_table))=0A=
>>>> +               __soc_early_init_table_end =3D .;=0A=
>>>> +       }=0A=
>>>>         /* we have to discard exit text and such at runtime, not link =
time */=0A=
>>>>         .exit.text :=0A=
>>>>         {=0A=
>>>> --=0A=
>>>> 2.24.1=0A=
>>>>=0A=
>>>>=0A=
>>>=0A=
>>>=0A=
>>=0A=
>> --=0A=
>> Damien Le Moal=0A=
>> Western Digital Research=0A=
> =0A=
> =0A=
> =0A=
> --=0A=
> Regards,=0A=
> Atish=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

