Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B5A15FC5D
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 03:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=Cnz9WeO+O08+N76o41kc8pkTwyIRPmq5/2gjADbiu0M=; b=XmJ+pR1zlzhKokKNZk1loc62s
	cRohYEdChRrk2hnPOHli/gDM1VZxYf2eojqomLOiiaLEHc6jWwk0obK9grMYmp0Yvo46ku87Jjiig
	yeF8uYAF0Jk3xxxZXVobGBJgTC+cUvCNaNoQ9BFBjz/pTHkbsDoWFTgtvrV+nIhhxOZIiBIiOoIMi
	nGgHaeoOJXSQUbfXC/SJKQc/gzLPhcLS2/Gzr6g3vgl2o0XTrECbzr8ytFeQNpcBjdrBQL4Vc0vsA
	vKWzaxL6kZzhW/TCAPcp7DZHCmMwNFIsx/4rlQdAhUEjWVudx5zGhBD/zul2KQwtku407hxc1kCVx
	HBy3sZnpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2nHw-0001fF-5I; Sat, 15 Feb 2020 02:34:36 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2nHs-0001en-AS
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 02:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581734072; x=1613270072;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=mpBhsbM1DfObx/tR7EXRGmiggtZwguLSshHLfd/pTBY=;
 b=R3C08zEMTfS8g8rWWsSe21TDVR60FVvDbPfXkmiUPKkmkQQnpP1uy6cF
 HNAyOmj49OVxqzYjFJTrgRgjWT+2DU8ppg2BszOXNpH1I+qUnurdG3euJ
 cOEJqO1+OybDZwTvwE1CLVaKBccuGxEVlAOnuROSvlN0bv9KiWm8twTjv
 IkU5Gj7a9Jw8QloaD+RdBIizNV7jXMKFgT3ZdV/gEZwihanOYuIyxxoOd
 uTfb5UgH96SxrR+hXGOMrGUV2wfk+ocLBuRQL7Plvi25EjMS7EUsCXkmU
 f81PbuxbMpidiGd7CrFhiPOK7KNAIjFhA0zPewhevgS4f/BkucOjT2E2G w==;
IronPort-SDR: u1yCseouC7DuONt8F4Pg9tv80d4sdlYvzmjHHgV0qDkgpLSqMZ1npkBIWR7ITe9kL4TN5xlZoR
 pbrpU0EwTS0B8hruvBb4siNDBkCS2cIf39k0TQ805SIwlQ3TG08qB5om8hKHfzuesQ3RX1FLXP
 r+mjhP14oWe+7erGUGg+c5uIrRED0eOoOYz8nyqYslW4mEJfaYwYjIivOOIBJjMyrR9rTYapCU
 24sIDshviWvMhXtJMOkin2GLk08XsZr/3Y26FGIFmfjB5vk1CAvookbkswC+tgIq1pdNPRuGVX
 Ou0=
X-IronPort-AV: E=Sophos;i="5.70,442,1574092800"; d="scan'208";a="237942332"
Received: from mail-co1nam11lp2169.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.169])
 by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2020 10:34:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oN5PVcH2Psuy/2A+BCAMERprU0FPIHLHPGUuHFrx5CvfSe31O2USWMlZMCrhU8FNy7wMdejM0pPJyxlZ4HHpyq14w7vZAVt/PkjzHx+FC1kH48uG+qIZe4TMjo1KjuZr6zIHOAtw3KIBHCBuxD4Km9BwJ0CMx/B908dkZhhDdM+PKp8mUkSYpbHspr23yakQLwxNqAYHNXgMDyHOvmRtMGmDPsoNnTSKOIboINp87/GXZwe+bt2qSucaKhLrf1zu4ZxkelyonXgZWW1sHgM7OByASi5zN8qfaC7C08YUMAhAix4ymTksMnahZ9MgH8hmyzdQtkVdxJMT4wI3A2MC1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cnz9WeO+O08+N76o41kc8pkTwyIRPmq5/2gjADbiu0M=;
 b=HqX61ORxYj7cpf5LK+yVDgq3n8XJGHQYk+v/7DRnxVYdOg5QYOeqNFY1n85yetoxtyRlH3VR6PXx/j0B9mruNJ7tuU5UspvssFWdsrERkK/xjGKmEy8aI9jIukIlXE95HZrbkiR1fGRcI9uEz9mzp+g1Ghu6AqIoaBwCNsSgligDEbY0MRU+aOqJpP+rCzucUqKpF4ktRx7osmpcetYTezw78m83GTwpirodR7AMuBpfZqFlnJv8afro9zG+4fRmhlk51Om0/+vF3uIxt9gtL4E/YEBOloIfjZ/l2eYQh0fja0tfxcgDldR0VVumtrLWGMvXZwe9K4ULGMCV0qYKxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cnz9WeO+O08+N76o41kc8pkTwyIRPmq5/2gjADbiu0M=;
 b=ZL4JUMo0sZYfkj4iA+HUCv9D5KK4Xn8FBO8ybA/l7noGeE0nwHAwgtfMeRFop2X6flp/oqdpKHYq8/gkqJioVwUtOcNM+Q/GDAlnj/bmOAU3wMpg57/3i32fNTIubslv+HP6wURgW2BZCdYWSeVV9zBgRwc/YrZS+X0iLuT5aMk=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB5125.namprd04.prod.outlook.com (52.135.233.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Sat, 15 Feb 2020 02:34:25 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61%5]) with mapi id 15.20.2707.031; Sat, 15 Feb 2020
 02:34:25 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV43iOGrtZHkBAPE20VvlfIfsDtA==
Date: Sat, 15 Feb 2020 02:34:25 +0000
Message-ID: <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 04c161bc-3b78-43c2-5e7f-08d7b1bf92ea
x-ms-traffictypediagnostic: BYAPR04MB5125:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5125100DB3D1F379E256560BE7140@BYAPR04MB5125.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(189003)(199004)(55016002)(71200400001)(86362001)(9686003)(4326008)(8936002)(81156014)(81166006)(316002)(8676002)(186003)(54906003)(66556008)(66476007)(110136005)(26005)(76116006)(66446008)(7696005)(64756008)(66946007)(52536014)(478600001)(966005)(5660300002)(2906002)(33656002)(6506007)(53546011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5125;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kbDlS8La8k8mVJBcMtGtyNfGLo+VKqKCUGaOuTXY19qak2W1CLGfHq9T6WVIEU0T/kK/6KJBny/Vro9shiViAXcLGeoikV4nQJepQdOaQ71tItfpjiLcrBj0Fh7HSsZHH0bx3MfqWsk1r5EbK93nnQWK/elkxPzeYJntmQ4KcHahVi/v7J//w0/Ab5/CNCynrr0GipedPmqgDoFDYcC/xktYPIseYVFRdDzl2MLTK1mMock9O9H/4OkdExd1cGg6WUdZvqSHgu66VTS+0ynpTeCkJa6fEJWK2QAj9F92Ch/QsI8OWiMYfMbKpGtDYiFSGTJB7/pcGvQ8hv3KEXR44+0rWysiecQWCUisEKfkza9CeW/0c4TxPAmJKEa95e+jC5yOhxyDpD4zOuzO9Iot8wPPFgIhzR98c6s4xV8EEbjUKDiSAyqETuBlfsfroOcc2xB54DVnVF1414nZ+N5mGvTPTOeoigGZxv0/517rekA3aRHxnqRQfeWpgdTTBG07rlLXPCrZ9g2x8O7OcmX7Lg==
x-ms-exchange-antispam-messagedata: n/Z3UMX4nlyAsey4SYDSk6B9HzRkH2+BaByOHUnfqUYQ/WvXk94K4kSyDKnmxbYfhHOzCNTCiVp1dbrzdJoOzqhTO4qpFl3+3LnwVDcBex7JZsvgl7t7H0Nb2UbeBEuWOpbZKhS1Dy8EwXI7gtnJBQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c161bc-3b78-43c2-5e7f-08d7b1bf92ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 02:34:25.5978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HvbFi0LgPqWAbQHYHVYJe5e1DRlevFrQGspLnbs8fC5A18Y+FwghGHwhc1xoMETDmnCXWJk2Bh5WXBwDn2RCqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_183432_403398_52456C2E 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/02/15 5:51, Sean Anderson wrote:=0A=
> On 2/12/20 5:34 AM, Damien Le Moal wrote:=0A=
>> Add a generic device tree for Kendryte K210 SoC based boards. This (for=
=0A=
>> now) very simple device tree works for the Kendryte KD233 development=0A=
>> board, the Sipeed MAIX M1 Dock based boards and the Sipeed MAIXDUINO=0A=
>> board.=0A=
>>=0A=
>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>> ---=0A=
>>  arch/riscv/boot/dts/Makefile           |   1 +=0A=
>>  arch/riscv/boot/dts/kendryte/Makefile  |   2 +=0A=
>>  arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++=0A=
>>  arch/riscv/boot/dts/kendryte/k210.dtsi | 123 +++++++++++++++++++++++++=
=0A=
>>  4 files changed, 149 insertions(+)=0A=
>>  create mode 100644 arch/riscv/boot/dts/kendryte/Makefile=0A=
>>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts=0A=
>>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi=0A=
>>=0A=
>> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile=
=0A=
>> index 0bf2669aa12d..87815557f2db 100644=0A=
>> --- a/arch/riscv/boot/dts/Makefile=0A=
>> +++ b/arch/riscv/boot/dts/Makefile=0A=
>> @@ -3,4 +3,5 @@ ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")=0A=
>>  obj-$(CONFIG_USE_BUILTIN_DTB) +=3D $(patsubst "%",%,$(CONFIG_BUILTIN_DT=
B_SOURCE)).dtb.o=0A=
>>  else=0A=
>>  subdir-y +=3D sifive=0A=
>> +subdir-y +=3D kendryte=0A=
>>  endif=0A=
>> diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts=
/kendryte/Makefile=0A=
>> new file mode 100644=0A=
>> index 000000000000..815444e69e89=0A=
>> --- /dev/null=0A=
>> +++ b/arch/riscv/boot/dts/kendryte/Makefile=0A=
>> @@ -0,0 +1,2 @@=0A=
>> +# SPDX-License-Identifier: GPL-2.0=0A=
>> +dtb-$(CONFIG_SOC_KENDRYTE) +=3D k210.dtb=0A=
>> diff --git a/arch/riscv/boot/dts/kendryte/k210.dts b/arch/riscv/boot/dts=
/kendryte/k210.dts=0A=
>> new file mode 100644=0A=
>> index 000000000000..0d1f28fce6b2=0A=
>> --- /dev/null=0A=
>> +++ b/arch/riscv/boot/dts/kendryte/k210.dts=0A=
>> @@ -0,0 +1,23 @@=0A=
>> +// SPDX-License-Identifier: GPL-2.0+=0A=
>> +/*=0A=
>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.=0A=
>> + */=0A=
>> +=0A=
>> +/dts-v1/;=0A=
>> +=0A=
>> +#include "k210.dtsi"=0A=
>> +=0A=
>> +/ {=0A=
>> +	model =3D "Kendryte K210 generic";=0A=
>> +	compatible =3D "kendryte,k210";=0A=
>> +=0A=
>> +	chosen {=0A=
>> +		bootargs =3D "earlycon console=3DttySIF0";=0A=
>> +		stdout-path =3D "serial0";=0A=
>> +	};=0A=
>> +};=0A=
>> +=0A=
>> +&uarths0 {=0A=
>> +	status =3D "okay";=0A=
>> +};=0A=
>> +=0A=
>> diff --git a/arch/riscv/boot/dts/kendryte/k210.dtsi b/arch/riscv/boot/dt=
s/kendryte/k210.dtsi=0A=
>> new file mode 100644=0A=
>> index 000000000000..4b9eeabb07f7=0A=
>> --- /dev/null=0A=
>> +++ b/arch/riscv/boot/dts/kendryte/k210.dtsi=0A=
>> @@ -0,0 +1,123 @@=0A=
>> +// SPDX-License-Identifier: GPL-2.0+=0A=
>> +/*=0A=
>> + * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>=0A=
> =0A=
> Glad to see this is getting some use :)=0A=
=0A=
Seeing what you did for uboot, I used a lot of it and naturally gave credit=
=0A=
where it is due :)=0A=
=0A=
> This appears to be an old-ish version, and I've made some updates in the=
=0A=
> past month or so. My current work is availible from [1].=0A=
> =0A=
> [1] https://github.com/Forty-Bot/u-boot/blob/maix_v6/arch/riscv/dts/k210.=
dtsi=0A=
=0A=
OK. Will check again.=0A=
=0A=
>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.=0A=
>> + */=0A=
>> +=0A=
>> +/ {=0A=
>> +	/*=0A=
>> +	 * Although the K210 is a 64-bit CPU, the address bus is only 32-bits=
=0A=
>> +	 * wide, and the upper half of all addresses is ignored.=0A=
>> +	 */=0A=
>> +	#address-cells =3D <1>;=0A=
>> +	#size-cells =3D <1>;=0A=
>> +	compatible =3D "kendryte,k210";=0A=
>> +=0A=
>> +	aliases {=0A=
>> +		serial0 =3D &uarths0;=0A=
>> +	};=0A=
>> +=0A=
>> +	clocks {=0A=
>> +		in0: oscillator {=0A=
>> +			compatible =3D "fixed-clock";=0A=
>> +			#clock-cells =3D <0>;=0A=
>> +			clock-frequency =3D <26000000>;=0A=
>> +		};=0A=
>> +	};=0A=
>> +=0A=
>> +	cpus {=0A=
>> +		#address-cells =3D <1>;=0A=
>> +		#size-cells =3D <0>;=0A=
>> +		timebase-frequency =3D <7800000>;=0A=
> =0A=
> This is true only for the default frequency. I wonder if there is a=0A=
> better way to encode this.=0A=
=0A=
Yes, I suspected that. Seeing that the CPU frequency can be changed, I=0A=
wondered how this should all go together. But since the current code does=
=0A=
not change the cpu frequency, I simply stayed with the default here. I=0A=
suspect that we may want the default hard-coded in the code, and use the=0A=
value specified here as the one that should be setup by sysctl.=0A=
=0A=
>> +		cpu0: cpu@0 {=0A=
>> +			device_type =3D "cpu";=0A=
>> +			reg =3D <0>;=0A=
>> +			compatible =3D "riscv";=0A=
>> +			riscv,isa =3D "rv64imafdc";=0A=
>> +			mmu-type =3D "none";=0A=
> =0A=
> This should be "sv36".=0A=
=0A=
If we want to run the MMU, yes. For a nommu kernel, I would rather stick=0A=
with "none". Not that it really matters since the nommu kernel will not=0A=
look at this entry anyway. No strong opinion either way in the end.=0A=
I have not checked the specs yet, but does sv36 necessarily implies older=
=0A=
specs 1.9 too ? If not, then we may want something else in there for this=
=0A=
soc special case.=0A=
=0A=
>> +			i-cache-size =3D <0x8000>;=0A=
>> +			i-cache-block-size =3D <64>; /* bogus */=0A=
> =0A=
> I emailed some people at Kendryte and they confirmed the 64-byte=0A=
> cacheline. The cpus are rocket cores.=0A=
=0A=
Good to know. I will remove the comment then.=0A=
=0A=
> =0A=
>> +			d-cache-size =3D <0x8000>;=0A=
>> +			d-cache-block-size =3D <64>; /* bogus */=0A=
>> +			clocks =3D <&sysctl 0>;=0A=
> =0A=
> This is correct only by coincidence. The clock structure is=0A=
> =0A=
> in0 -> pll0 -> aclk -> cpu=0A=
> =0A=
> aclk divides by two by default, so it runs at 390 MHz, which is also=0A=
> what you set pll1 to. However, if someone else (such as the bootloader)=
=0A=
> changes the pll0 frequency then this will be completely off.=0A=
=0A=
Yes... The clock management needs more work as mentioned in the cover=0A=
letter. All of this works for now with direct m-mode boot (no boot loader)=
=0A=
and relies on the hardware defaults which are coded here. The sysctl driver=
=0A=
also relies on those defaults. A more solid implementation will need the=0A=
soc_early_init() code to discover and set things up correctly.=0A=
=0A=
As mentioned in the cover letter, this is all a base. It works, but=0A=
definitely is not complete.=0A=
=0A=
>> +			clock-frequency =3D <390000000>;=0A=
>> +			cpu0_intc: interrupt-controller {=0A=
>> +				#interrupt-cells =3D <1>;=0A=
>> +				interrupt-controller;=0A=
>> +				compatible =3D "riscv,cpu-intc";=0A=
>> +			};=0A=
>> +		};=0A=
>> +		cpu1: cpu@1 {=0A=
>> +			device_type =3D "cpu";=0A=
>> +			reg =3D <1>;=0A=
>> +			compatible =3D "riscv";=0A=
>> +			riscv,isa =3D "rv64imafdc";=0A=
>> +			mmu-type =3D "none";=0A=
>> +			i-cache-size =3D <0x8000>;=0A=
>> +			i-cache-block-size =3D <64>; /* bogus */=0A=
>> +			d-cache-size =3D <0x8000>;=0A=
>> +			d-cache-block-size =3D <64>; /* bogus */=0A=
>> +			clocks =3D <&sysctl 0>;=0A=
>> +			clock-frequency =3D <390000000>;=0A=
>> +			cpu1_intc: interrupt-controller {=0A=
>> +				#interrupt-cells =3D <1>;=0A=
>> +				interrupt-controller;=0A=
>> +				compatible =3D "riscv,cpu-intc";=0A=
>> +			};=0A=
>> +		};=0A=
>> +	};=0A=
>> +=0A=
>> +	sram0: memory@80000000 {=0A=
>> +		device_type =3D "memory";=0A=
>> +		reg =3D <0x80000000 0x400000>;=0A=
>> +	};=0A=
>> +=0A=
>> +	sram1: memory@80400000 {=0A=
>> +		device_type =3D "memory";=0A=
>> +		reg =3D <0x80400000 0x200000>;=0A=
>> +	};=0A=
>> +=0A=
>> +	kpu_sram: memory@80600000 {=0A=
>> +		device_type =3D "memory";=0A=
>> +		reg =3D <0x80600000 0x200000>;=0A=
>> +	};=0A=
>> +=0A=
>> +	soc {=0A=
>> +		#address-cells =3D <1>;=0A=
>> +		#size-cells =3D <1>;=0A=
>> +		compatible =3D "kendryte,k210-soc", "simple-bus";=0A=
> =0A=
> Should the -soc suffix be here? I saw it was absent from the fu540=0A=
> device tree.=0A=
=0A=
Yes, I guess it can be removed.=0A=
=0A=
>> +		ranges;=0A=
>> +		interrupt-parent =3D <&plic0>;=0A=
>> +=0A=
>> +		sysctl: sysctl@50440000 {=0A=
>> +			compatible =3D "kendryte,k210-sysctl", "syscon";=0A=
>> +			reg =3D <0x50440000 0x1000>;=0A=
>> +			#clock-cells =3D <1>;=0A=
>> +		};=0A=
> =0A=
> Would it be possible to model this as an MFD? There are a lot of=0A=
> different registers in here, many of which are unrelated to clocks. For=
=0A=
> example, there are also reset registers, a reboot register, and DMA=0A=
> handshake controls. I think modeling this as a clock controller only=0A=
> does not correctly reflect the hardware, and will be awkward in the=0A=
> future.=0A=
=0A=
Absolutely. It is far from complete. And seeing your complete device tree,=
=0A=
there are likely a lot of peripherals for which Linux already has drivers=
=0A=
and that could be used if the clocks/sysctl are improved. As mentioned in=
=0A=
the cover letter, this is left as an exercise for interested people :)=0A=
Note that I am indeed interested in working on this a little more. I simply=
=0A=
lack the time to do it :)=0A=
=0A=
>> +=0A=
>> +		clint0: interrupt-controller@2000000 {=0A=
>> +			compatible =3D "riscv,clint0";=0A=
>> +			reg =3D <0x2000000 0xC000>;=0A=
>> +			interrupts-extended =3D <&cpu0_intc 3>,  <&cpu1_intc 3>;=0A=
>> +			clocks =3D <&sysctl 0>;=0A=
> =0A=
> Again, this is wrong; it should be running off ACLK.=0A=
=0A=
Yep. As you said, it works because we use the defaults for everything.=0A=
=0A=
>> +		};=0A=
>> +=0A=
>> +		plic0: interrupt-controller@c000000 {=0A=
>> +			#interrupt-cells =3D <1>;=0A=
>> +			interrupt-controller;=0A=
>> +			compatible =3D "kendryte,k210-plic0", "riscv,plic0";=0A=
>> +			reg =3D <0xC000000 0x3FFF008>;=0A=
> =0A=
> With regard to the size of registers, I had the following exchange on=0A=
> the U-Boot mailing list.=0A=
> =0A=
> On Tue, Feb 4, 2020 at 10:23 PM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>=0A=
>> On 2/4/20 6:32 AM, Bin Meng wrote:=0A=
>>> Hi Sean,=0A=
>>>=0A=
>>> On Mon, Feb 3, 2020 at 4:10 AM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>>> Should the size of a reg be the size of the documented registers, or t=
he size=0A=
>>>> of the address space which will be routed to that device?=0A=
>>>=0A=
>>> Perhaps we need use the size of the address space routed to that=0A=
>>> device, in case there is some undocumented registers we need handle.=0A=
>>=0A=
>> Ok, I'll go with the whole address space then.=0A=
> =0A=
> You may want to make similar changes for Linux; I didn't see any=0A=
> documentation about what the preferred size was.=0A=
=0A=
I wondered about it too. Not really sure what to do about it.=0A=
=0A=
>> +			interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,=0A=
>> +					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;=0A=
>> +			riscv,ndev =3D <65>;=0A=
>> +			riscv,max-priority =3D <0x07>;=0A=
>> +		};=0A=
>> +=0A=
>> +		uarths0: serial@38000000 {=0A=
>> +			compatible =3D "kendryte,k210-uart0", "sifive,uart0";=0A=
> =0A=
> I would change the first compatible string to "kendryte,k210-uarths",=0A=
> since that is how this uart is described in their documentation.=0A=
=0A=
OK. It makes sense.=0A=
=0A=
> =0A=
>> +			reg =3D <0x38000000 0x20>;=0A=
> =0A=
> Same thing as the size comments above.=0A=
> =0A=
>> +			interrupts =3D <33>;=0A=
>> +			clocks =3D <&sysctl 0>;=0A=
> =0A=
> Same clock comments.=0A=
> =0A=
>> +		};=0A=
>> +	};=0A=
>> +};=0A=
>>=0A=
> =0A=
> --Sean=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

