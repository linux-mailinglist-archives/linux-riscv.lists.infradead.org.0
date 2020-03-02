Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A8D1752FF
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=2cAs+V+nRC+9o9OIlovuzjDK0IhZQQBLeuv5KE9LsEg=; b=LdgBTZ9Te8ho/zrDgcq4ygyEc
	JOgHjJ/6tiFKIM/IzqHKYjFjEJZRPK62m166rKZnID0GcNoTLUFuu/F0PYWmhVLo0SeHqsRWCZ+ab
	AJ+eI8aadLBCN2MZISLubLD1LRlNRqEy1KYjZmkqhLmsJFm27MMi3SMYSVrk4GLMJBDWquDgz//Bp
	VFT/LPRcgVAXqN3n28zH/hnC+XriOjbRf5Al0RPGLi7nT5sQ7nEaJu/zy06pl+tTfHqliH0HNu7o0
	sMObNwy8PioyedbyMdI8tzCIL/TWqZlCYlM4i6yZ4uZjMgrjaef3bcXme8EMI4L8s8p+DE3hTReco
	Xym6qBooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dN2-0004cR-To; Mon, 02 Mar 2020 05:12:00 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8dMz-0004bx-V5
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583125918; x=1614661918;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=jl722rHlfECjsJZU5YFRoeb0Od9M+gwA6T25Zp8+YW0=;
 b=bxhBbS+6h+rrTiwyxX1AohIsrPLraFhFvNQ4iMkv+BfBxvfp+X54qFuQ
 DsBpbtiEYcu4ozcKhkYp3SbWUI9sB4O7FGkFa4hjfsr/61qa/nZxTGILC
 yCwCWIeok/n4XfroBF5TWieRotaplPYZj+clOJHa4q0o1RXfLBoz5QeCz
 NQYzNiYBucVeWIjcpLccIiraRb1UfhLXUCPlAKFHmuV2nKC+rx7n7u/+F
 Cm+TGzHg2EysdgZGay6u5CEhdRHc+xLPFQiu9286yfXOSUIs70Ko1xUPl
 60wyNZ92IhN3EvTWjxR0FYUNELwy8u8Sz6+CMA1yDi96aMPOcLyW/+28K g==;
IronPort-SDR: hmuagJ3ZSb68GyuToeL6YK5wORPrgqhsn0r07mEGG7TsGNxZqfAh/EfwaDkz/njbIiEfzKMTXO
 MksgcqQemtPKdeKQVpPD8U4FlUfmIme2KzV0n6UQZg5RjUBnthaAW0qkNOqWWVSMGipdrNKzyQ
 AqCknHQXnPQYkhF/cCIdy8EA5Alv5MjdVZLZPU4lHtOits35kc7tGLudDluxSpjO2P1jOQg3po
 2jTXmnOXmCBsAGnPPrpZL4lZqbyBma2hQTnJ2N3cZB2CuxJa78xegLUC2xpnSoAaWRPVcfSR72
 HGE=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="132572115"
Received: from mail-dm6nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.171])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 13:11:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5kJ04rXZLj7s61pgcek4OyJR9/1lzoA51bm898eclbyxYyKaBjwGLE/IbRq0TT+sR4Er2INsiguvuHsOKHtsDQYy09ChDCQRQUJcx/3FyrJU5YO0FziU4DqvPByO0rX3oXrbnztWf1aIppXTW5a2M7tYAWk+NLz65Ak85uObQfBZQPM5ZcO4+DmaA8gZW+t/hnx34ZOhXAHHpNNXzsnIm0QDAS5qo4vo7wkWeQuWxyVkejb1+HJxBKL1x/uKl4e8ExyvReEVSr4BVOyb25yOmCu+rLS/fDmyGMSY3CUtoVmudaTUEF3zBT2KfGg0j4hE/pbTPBuoh5VJraXn5L8WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cAs+V+nRC+9o9OIlovuzjDK0IhZQQBLeuv5KE9LsEg=;
 b=mIryy+N2OEZ3CHqfyhBPdCM7++xovoHsGjITQTBYFlwMeIYV+Zfz7LLZ/VSwFXPxqd/Wqle4OuIdMCgm7UqXuHJmSTot8Ak2w6Kq0cuMqT5GFVO2KTYqL6FUdPxt3o7FbxyWQ0+FFJaMKB9MRWAs6EQJ8zX+53pr9AJU/wGyO5mfN6h9ZATRSpnGs6yzrpvTnfcojRfvjAiOEAQx7YnkYQGJnr9jtUO5eXFWOYfypy66m7KS/rZK2mzgk8PBF7WfzDsujHpMiUHgNnEEVL54MFqR1FwhcCp91OmfZ4FFnFihkJb6cbeU5vqjPBJ/2cg0JrzaHeHI7cfrNPifaLZQhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cAs+V+nRC+9o9OIlovuzjDK0IhZQQBLeuv5KE9LsEg=;
 b=JP1M90nqKTMchjUQYCvX8SQYI79kzF4CsarBXAqX/G41+b4csHUg9Ly+wbgyJNuCfPlxsxxLAPnQyZmylXAcyY4PgjTwCbt2jjZ+rUjJvD08XWE68ACGHmAlynOMYSinipkGo2Y9DJn1c8jCWxfpaibyFtD5vC3YpgoRlR0aeQY=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5047.namprd04.prod.outlook.com (2603:10b6:a03:43::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 05:11:55 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 05:11:55 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 05:11:55 +0000
Message-ID: <BYAPR04MB58168C0C89145F91AE8E964FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
 <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <b8aa9598-a34d-fa8c-01e7-3b7fc06d635a@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3a1948c0-c234-4160-9e63-08d7be6839e5
x-ms-traffictypediagnostic: BYAPR04MB5047:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB50475CE5A5DA2540BB4209FFE7E70@BYAPR04MB5047.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(396003)(39860400002)(376002)(346002)(199004)(189003)(53546011)(186003)(26005)(5660300002)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(52536014)(71200400001)(8936002)(81166006)(8676002)(9686003)(33656002)(55016002)(81156014)(2906002)(478600001)(4326008)(316002)(6506007)(110136005)(54906003)(86362001)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5047;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ycbIMW/z0IZgUPxCVKiSK8M+FSIbTIMZtmwxXQLqLHpaAM2IOim8go7cxBOebfsd1DleIlTnSM3SFH3FhqLyQ+RkdeL7YDUg7keVnw8+BHA4f7p8lCG+HpJI+wv02moVENz1k5P8RLIyAV3Xl4IHlYtt7kHMxASMNw498HMsoGIbI3oTMZuy+4bGE2zIOqBChCzLsNNmuUzKJ0X7UXX15KwAXWeftDA14j/dt4zakaAP/8IEk31DTcV3QUndn05zhZuHAR1yAjE8hA9gAoBD1RhBFyZVN/GBvoxzaWL2O2BFH7kPwiTdKSlTG1VXJHrJSkYSrPzfSZbb7rcdv/A69yZQFy03Lvu8qbi9tpnwDx2CTFLeICWo41xNvysdk4VOO/0f8LyKqzZIc7MpwTh5CBK3yJaJJma9NoeDm8Hr4jcU7jW7vs90vkjFUocP05ol
x-ms-exchange-antispam-messagedata: cs4f5Z59WWDFVIMU2J42Io8nKzfUPb2X09Jao7SZP29MMkmpxapD+4+wbX/F7hv7hd2AlYVq/EJhPW07GBRSRs7LMWxmWjaEOEaRniaPjr/8s2deXTn0Ds8XqrNFsswo+zw0kdpPhU1OsTap17aIMQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a1948c0-c234-4160-9e63-08d7be6839e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 05:11:55.1561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rSg33wftkxQ3/NmvgVuQHoCM4T8uL5XP/qyqJQANqjgfyYvXKCro0I0vLaPik9ZGg9T2lzsFAMHsteIJ3j+SGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_211158_177526_F3F3A9FC 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/02 14:02, Sean Anderson wrote:=0A=
> On 3/1/20 11:48 PM, Damien Le Moal wrote:=0A=
>> On 2020/03/02 13:17, Anup Patel wrote:=0A=
>>> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>>>=0A=
>>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>>>>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>>>>> Hi,=0A=
>>>>>>=0A=
>>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to th=
e=0A=
>>>>>> second cpu not coming up?=0A=
>>>>>=0A=
>>>>> Unlikely. It looks like your user space needs 2MB per shell (order 9=
=0A=
>>>>> allocation). Since you have only 5.5MB free, that may explain the all=
ocation=0A=
>>>>> failure (if init is forking another shell especially).=0A=
>>>>=0A=
>>>> This should be before init comes up; when comparing this to your syslo=
g=0A=
>>>> output there are several more messages before init gets started.=0A=
>>>>=0A=
>>>>> For the second core not coming up, an IPI needs to be sent to the non=
-boot core=0A=
>>>>> to wake it up. A Kendryte thing. U-boot should probably do it before =
jumping to=0A=
>>>>> the kernel. I thought I had that in the kernel though. Will check aga=
in.=0A=
>>>>=0A=
>>>> I think it's a RISC-V thing. I should have U-Boot set up to start linu=
x=0A=
>>>> on both cores, but something may be misconfigured on that end.=0A=
>>>=0A=
>>> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to=0A=
>>> Linux NOMMU.=0A=
>>>=0A=
>>> Based on you log, it seems the second CPU is still spinning in U-Boot=
=0A=
>>> M-mode and when Linux NOMMU tries to touch memory where second=0A=
>>> CPU is spinning everything gets corrupted.=0A=
>>=0A=
>> Yes, I understand. But in the case of the K210, that last 2MB segment is=
 really=0A=
>> special as by default it is not usable as regular SRAM. I think it may b=
e better=0A=
>> to reflect that in the device tree. The K210 soc_early_init() call back =
can=0A=
>> probe for that special entry too to see if it has to be turned on for us=
e as=0A=
>> regular memory or not (i.e. if a kpu driver will use it).=0A=
>>=0A=
>> Since booting Linux with 6MB of memory will be even more challenging tha=
n with=0A=
>> 8, I agree that we may never see the case of a kpu driver being used. Bu=
t I=0A=
>> personally like making that special case clear in the device tree. No st=
rong=0A=
>> objection to your simplification though. So if you really object, I will=
 go with it.=0A=
> =0A=
> The way I have it set up is like this=0A=
> =0A=
> =0A=
> 	sram0: memory@80000000 {=0A=
> 		device_type =3D "memory";=0A=
> 		compatible =3D "kendryte,k210-sram";=0A=
> 		reg =3D <0x80000000 0x400000>;=0A=
> 		clocks =3D <&sysclk K210_CLK_SRAM0>;=0A=
> 	};=0A=
> =0A=
> 	sram1: memory@80400000 {=0A=
> 		device_type =3D "memory";=0A=
> 		reg =3D <0x80400000 0x200000>;=0A=
> 		compatible =3D "kendryte,k210-sram";=0A=
> 		clocks =3D <&sysclk K210_CLK_SRAM1>;=0A=
> 	};=0A=
> =0A=
> 	airam: memory@80600000 {=0A=
> 		device_type =3D "memory";=0A=
> 		reg =3D <0x80600000 0x200000>;=0A=
> 		compatible =3D "kendryte,k210-airam";=0A=
> 		clocks =3D <&sysclk K210_CLK_AI>;=0A=
> 	};=0A=
> =0A=
> 	reserved-memory {=0A=
> 		#address-cells =3D <1>;=0A=
> 		#size-cells =3D <1>;=0A=
> 		ranges;=0A=
> =0A=
> 		ai_reserved: ai@80600000 {=0A=
> 			reg =3D <0x80600000 0x200000>;=0A=
> 			reusable;=0A=
> 		};=0A=
> 	};>=0A=
> And then the kpu has 'memory-region =3D <&ai_reserved>;'. This way the=0A=
> memory is documented as being used by the kpu, but also free when the=0A=
> KPU is not in use.=0A=
=0A=
I tried to use your syntax above initially but (if I remember correctly), t=
he=0A=
"reserved-memory" entry prevents the initial ram setup to add the kpu segme=
nt,=0A=
so you can never see it as regular memory. So I dropped that and that memor=
y is=0A=
usable with the v1 of the series I sent. The soc_early_init() enables it by=
=0A=
turning on pll1.=0A=
=0A=
> =0A=
> However, I have been unable to get the AI ram to work; any time I=0A=
> access it the CPU hangs. I have tried all combinations of=0A=
> =0A=
> * Enabling/disabling the AI clock=0A=
> * Enabling/disabling PLL1 (the AI clock's parent) but not the AI clock=0A=
> * Asserting/deasserting the KPU reset=0A=
> =0A=
> but I have not been able to get it working. Have you had any luck?=0A=
=0A=
See k210_soc_early_init() in drivers/soc/kendryte/k210-sysctl.c. That works=
.=0A=
You did already point out the clock initialization that is not enough and=
=0A=
working only because most of the values are the default. Maybe U-boot is=0A=
changing some of them resulting in the worng clock frequencies being set in=
 the=0A=
kernel ?=0A=
=0A=
> =0A=
> There's also the issue that all DMAs should happen from the uncached=0A=
> memory area, but I think there is some existing infrastructure to=0A=
> "translate" IO addresses, so this doesn't need to be added to the device=
=0A=
> tree.=0A=
> =0A=
> --Sean=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

