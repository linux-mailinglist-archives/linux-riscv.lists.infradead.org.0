Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E279C17536A
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=vdoRlRCMi0fle0r6qKFMyHWliG0Di9deIVeCNAs+Z8M=; b=ZupkL33b+Y5s4YA3EeqZGOWEj
	rauwVtoHZTyOd/1wRF6uXHzncfk6QQnoPcHBES6h1DS2xy4yNN4Jq11BK1qSknglfPUUbhaSuCC5a
	f13NuDZcxAvrHQTFrI/K/IQCzh+ZSK2ukaYGhIl5J1lqgtCeeLhwvD2fEUA3bV9nd3vKN9gaB2bhM
	qR6FCBc2fbJ0fdoLCo4XZaPDGyNaXr2eZHlA+fpYT9yFriSxfhN+gt2iVI8t68slxbsOhjIXZsDTu
	5XlSeWI4MVSL9a+L8brj6EDHMwKGc2j+J4Vq9K6CNGpYZwgWWQQbFZ7yNENsm+2PyM3ikfzF7ITGu
	tNzKA/GDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dra-0005OG-J1; Mon, 02 Mar 2020 05:43:34 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8drW-0005Nn-5H
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583127810; x=1614663810;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=EpWrQkzX2RLsZ2vAunFWWtvUZNZEPHI79PjphuqDoaE=;
 b=Te5LO1KlMNOjSncQQ3505qPHGsvCWAJ24mW8/63Rrc8Rfgc57Wy0TUy1
 hMAreUibQcwJMxDLkcAhkIZog+J7UKuI9lnmc08YXmBdHVuhUdjFZkVlU
 ZqBXuvy5GccRRW1IbS4xpGlvYgaO+ttzMM+6KrD9L1LTqF0cUIZIIEmQg
 lu4MNX/V+fUyiICqVD+kuInitAUZe5P07fftfXNcLKIXKVNZ0lql1LYHB
 2Y4XzKgEHAqUnW/3D4zAdwPkqK3lGq/Iq/3VASjBn0qlfJ/2ZewYFherG
 Gg55cb2TbRBolbIS4ThOmmJOGMMElMZgf9vwBJ0HmwIXcFWpOKdxHUODe w==;
IronPort-SDR: R2F0EHnJ+gnWM6I2Df5eL0ucrCWb801Kq0BK+0HJrKP3sZq1VcAIQoAXyyhq3F01glwB/lynvH
 KjCSTjxc25TZXkivJxQj9FF3FiUH8oVSbz+sJ4xbUVDUhpJV37F0jQCJX7reN1WefYNXKdO0Nh
 Ybs9mJGKOxiRBv55aNC+8223Rg5jmcLiMJ/Vs3EfcqheptHBBd44yPQjbifHmY83Q8Fq+v4bmI
 bdsbjWKGbV7eoR7pEpKKGrPl6XFSSJ1KeNPe+HXA+mT2ILTTcQsTE4yZK4NzqitBnIAql6vJ+3
 pVA=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131122269"
Received: from mail-bn3nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.57])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 13:43:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+oLyb4A5jTi8sWwyHxFEHAgCZBtMyRB43GCIYvglX/kzjW+Adq3K1LVqgITxeJl5HpaHshCcQw9kLsfLseOdQGckZ9Qmd3ca9sG4X+1x8xucJm+zqW6qXjQDePYx68JQG/6lwGGbGYdQMY+dKAUmbFlN7xPg12TX/D5CoJPYwsm7149QVdqoirYc9J62RZXy3arltvEpvn11wkgnEx3t6arst/UAe8X7LwWtQNWvSB8mlGfXRzuUfYRZeZTQXaseVwjTvYJgzb1n56tuUQaepjgA2CFYeLUW37xYiSru8oEkpOqsKbK+L+vmMxjr9SmWuidAspl1P5GIWE9aEXScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdoRlRCMi0fle0r6qKFMyHWliG0Di9deIVeCNAs+Z8M=;
 b=W0tZHeqnCD0H4geFE3elEdMUR+rUz/OLVPwvXiwtX/pT24MJ5IJTJbWrDO+6amkhhlB6Jm7890BEiNagFIi5/x6NG6RFydeu/M4lnau5e9X7ALv7ZV1wN69xfBSz2Fs6pfp5FTfzVnbNeis6OrCgLQG/NdQ4iuP4wq16BL9Om+RGSxoFhp5dGfyjtxmiyOMukCxsaFzNPJbYlAqaVtV4q3J1DtDfOSuuYUeA7X6MztPtxEbB415wp0suk1zAcMy8/JjfM1vnhF9ACtNKMOGkFVdQFdEHT80JLyPd1bsgm/g+SqhMwpCVdb7elXvZqLtdZRRXgRP0j9ZjhjFi7nU6+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdoRlRCMi0fle0r6qKFMyHWliG0Di9deIVeCNAs+Z8M=;
 b=ez2MM7UJjzMxFhdD8H/Ecsbmddv3BMHcmG5jNS6t+2gdFImg4uhmqq+bKVNtZq1l4ATUuN544laDLgOwgDhMy7FOrZVYaNiNI9RS4njFik6tkjOgsJ6KCwy24dCZH93IwLBQEXxShUroxwJEKfL/F7W/BQWpzTjqUPwqVYKyABo=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB6101.namprd04.prod.outlook.com (2603:10b6:a03:f1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 05:43:22 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 05:43:22 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 05:43:21 +0000
Message-ID: <BYAPR04MB58163B8F6A485DD131241F18E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
 <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <b8aa9598-a34d-fa8c-01e7-3b7fc06d635a@gmail.com>
 <BYAPR04MB58168C0C89145F91AE8E964FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <ec249e00-26a2-b882-92bf-33462b15975f@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b30c487d-161e-4d02-c661-08d7be6c9e77
x-ms-traffictypediagnostic: BYAPR04MB6101:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB610184CE759BDDCA0E7889DCE7E70@BYAPR04MB6101.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(199004)(189003)(7696005)(33656002)(5660300002)(86362001)(186003)(6506007)(26005)(53546011)(54906003)(110136005)(9686003)(316002)(55016002)(76116006)(64756008)(66556008)(66946007)(66476007)(81166006)(8676002)(8936002)(81156014)(2906002)(66446008)(71200400001)(52536014)(4326008)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6101;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nrOWgdPN2QngqG09Kq9tNFAZaRDnhsqGDYpeWnlTWYfABpdZXa3o5zkKXa7OJW29eOJMpR0jEZxPJhutis4YkpMkNFSRfTcxsIiXy1N3x+QaUydJZid0UxxEArFGea1Rk+aUsWCzGq6xLKm/pbxvwNykZmbgCQee1l6rqJ7AabSwrJpKPVPbxv+Oi+m18R9Of4KE4cwKJNbw1n9jD1NsUuQBvCvfW/jRpoDRRJr6T2Z9h00IeDsoIRsk/bf1XiY6pkEGGvn9DLSgC6Ehrrfv0DmHEQl0FQZE2sEaSCQ3d9xozcml9wtfbjEqWwdsucLUUiQSPuRcfTIwRPs7OiBAgmvjG2tW3B8NWBi1lbNOelIl7doUBKeb6TqH+6wCkaX1304P6sFwS2MTW/LFsDYBY5i2F1UfBWBGeLS6TJvycTTynKrg51WrAWAUEfStyouC
x-ms-exchange-antispam-messagedata: 0CdK/Vfo/vURKHpcgn3H6Hc39KVJISc7n525JqIpxlxM/HFht4TQk6C1NHM4EiXwbE6Pw9Y+OWeICFYtmRHcHdHNvDnHqz8Kr6PUnvw7rF+uQM43gVyIFuZ9JWPYFFhPeFTPplKUAwnHI/cFrgnvBg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b30c487d-161e-4d02-c661-08d7be6c9e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 05:43:21.8081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yc30v3IrYzze/9tfu2ulW4bFEWRYWiMFU0NrKzxfk27c7Cd+f6uOSkqTfuTfmQt3z7yxTuzojhRCNjCgQDQV/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_214330_363178_5AE093E7 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

On 2020/03/02 14:25, Sean Anderson wrote:=0A=
> On 3/2/20 12:11 AM, Damien Le Moal wrote:=0A=
>> On 2020/03/02 14:02, Sean Anderson wrote:=0A=
>>> On 3/1/20 11:48 PM, Damien Le Moal wrote:=0A=
>>>> On 2020/03/02 13:17, Anup Patel wrote:=0A=
>>>>> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrot=
e:=0A=
>>>>>>=0A=
>>>>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>>>>>>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>>>>>>> Hi,=0A=
>>>>>>>>=0A=
>>>>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to =
the=0A=
>>>>>>>> second cpu not coming up?=0A=
>>>>>>>=0A=
>>>>>>> Unlikely. It looks like your user space needs 2MB per shell (order =
9=0A=
>>>>>>> allocation). Since you have only 5.5MB free, that may explain the a=
llocation=0A=
>>>>>>> failure (if init is forking another shell especially).=0A=
>>>>>>=0A=
>>>>>> This should be before init comes up; when comparing this to your sys=
log=0A=
>>>>>> output there are several more messages before init gets started.=0A=
>>>>>>=0A=
>>>>>>> For the second core not coming up, an IPI needs to be sent to the n=
on-boot core=0A=
>>>>>>> to wake it up. A Kendryte thing. U-boot should probably do it befor=
e jumping to=0A=
>>>>>>> the kernel. I thought I had that in the kernel though. Will check a=
gain.=0A=
>>>>>>=0A=
>>>>>> I think it's a RISC-V thing. I should have U-Boot set up to start li=
nux=0A=
>>>>>> on both cores, but something may be misconfigured on that end.=0A=
>>>>>=0A=
>>>>> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to=
=0A=
>>>>> Linux NOMMU.=0A=
>>>>>=0A=
>>>>> Based on you log, it seems the second CPU is still spinning in U-Boot=
=0A=
>>>>> M-mode and when Linux NOMMU tries to touch memory where second=0A=
>>>>> CPU is spinning everything gets corrupted.=0A=
>>>>=0A=
>>>> Yes, I understand. But in the case of the K210, that last 2MB segment =
is really=0A=
>>>> special as by default it is not usable as regular SRAM. I think it may=
 be better=0A=
>>>> to reflect that in the device tree. The K210 soc_early_init() call bac=
k can=0A=
>>>> probe for that special entry too to see if it has to be turned on for =
use as=0A=
>>>> regular memory or not (i.e. if a kpu driver will use it).=0A=
>>>>=0A=
>>>> Since booting Linux with 6MB of memory will be even more challenging t=
han with=0A=
>>>> 8, I agree that we may never see the case of a kpu driver being used. =
But I=0A=
>>>> personally like making that special case clear in the device tree. No =
strong=0A=
>>>> objection to your simplification though. So if you really object, I wi=
ll go with it.=0A=
>>>=0A=
>>> The way I have it set up is like this=0A=
>>>=0A=
>>>=0A=
>>> 	sram0: memory@80000000 {=0A=
>>> 		device_type =3D "memory";=0A=
>>> 		compatible =3D "kendryte,k210-sram";=0A=
>>> 		reg =3D <0x80000000 0x400000>;=0A=
>>> 		clocks =3D <&sysclk K210_CLK_SRAM0>;=0A=
>>> 	};=0A=
>>>=0A=
>>> 	sram1: memory@80400000 {=0A=
>>> 		device_type =3D "memory";=0A=
>>> 		reg =3D <0x80400000 0x200000>;=0A=
>>> 		compatible =3D "kendryte,k210-sram";=0A=
>>> 		clocks =3D <&sysclk K210_CLK_SRAM1>;=0A=
>>> 	};=0A=
>>>=0A=
>>> 	airam: memory@80600000 {=0A=
>>> 		device_type =3D "memory";=0A=
>>> 		reg =3D <0x80600000 0x200000>;=0A=
>>> 		compatible =3D "kendryte,k210-airam";=0A=
>>> 		clocks =3D <&sysclk K210_CLK_AI>;=0A=
>>> 	};=0A=
>>>=0A=
>>> 	reserved-memory {=0A=
>>> 		#address-cells =3D <1>;=0A=
>>> 		#size-cells =3D <1>;=0A=
>>> 		ranges;=0A=
>>>=0A=
>>> 		ai_reserved: ai@80600000 {=0A=
>>> 			reg =3D <0x80600000 0x200000>;=0A=
>>> 			reusable;=0A=
>>> 		};=0A=
>>> 	};>=0A=
>>> And then the kpu has 'memory-region =3D <&ai_reserved>;'. This way the=
=0A=
>>> memory is documented as being used by the kpu, but also free when the=
=0A=
>>> KPU is not in use.=0A=
>>=0A=
>> I tried to use your syntax above initially but (if I remember correctly)=
, the=0A=
>> "reserved-memory" entry prevents the initial ram setup to add the kpu se=
gment,=0A=
>> so you can never see it as regular memory. So I dropped that and that me=
mory is=0A=
>> usable with the v1 of the series I sent. The soc_early_init() enables it=
 by=0A=
>> turning on pll1.=0A=
> =0A=
> This seems like it could be fixed by writing a dummy driver for the KPU=
=0A=
> which does nothing but release the memory region.=0A=
> =0A=
>>=0A=
>>>=0A=
>>> However, I have been unable to get the AI ram to work; any time I=0A=
>>> access it the CPU hangs. I have tried all combinations of=0A=
>>>=0A=
>>> * Enabling/disabling the AI clock=0A=
>>> * Enabling/disabling PLL1 (the AI clock's parent) but not the AI clock=
=0A=
>>> * Asserting/deasserting the KPU reset=0A=
>>>=0A=
>>> but I have not been able to get it working. Have you had any luck?=0A=
>>=0A=
>> See k210_soc_early_init() in drivers/soc/kendryte/k210-sysctl.c. That wo=
rks.=0A=
>> You did already point out the clock initialization that is not enough an=
d=0A=
>> working only because most of the values are the default. Maybe U-boot is=
=0A=
>> changing some of them resulting in the worng clock frequencies being set=
 in the=0A=
>> kernel ?=0A=
> =0A=
> My current clock setup when booted looks like=0A=
> =0A=
> =3D> clk dump =0A=
>  Rate               Id        Usecnt      Name=0A=
> ----------------------------------------------------=0A=
>  26000000             0         2        |-- osc=0A=
>  780000000            1         1        |   |-- pll0=0A=
>  390000000            0         2        |   |   `-- pll0_half=0A=
>  390000000           42         6        |   |       |-- aclk=0A=
>  390000000            5         1        |   |       |   |-- sram0=0A=
>  390000000            6         1        |   |       |   |-- sram1=0A=
>  195000000           10         0        |   |       |   |-- rom=0A=
>  390000000           13         0        |   |       |   |-- dvp=0A=
>  195000000            7         2        |   |       |   |-- apb0=0A=
>  195000000           15         0        |   |       |   |   |-- gpio=0A=
>  195000000           29         0        |   |       |   |   |-- uart1=0A=
>  195000000           30         0        |   |       |   |   |-- uart2=0A=
>  195000000           31         0        |   |       |   |   |-- uart3=0A=
>  195000000           33         1        |   |       |   |   |-- fpioa=0A=
>  195000000           39         0        |   |       |   |   `-- sha=0A=
>  195000000            8         1        |   |       |   |-- apb1=0A=
>  195000000           32         0        |   |       |   |   |-- aes=0A=
>  195000000           40         0        |   |       |   |   `-- otp=0A=
>  195000000            9         1        |   |       |   |-- apb2=0A=
>  390000000            4         2        |   |       |   |-- cpu=0A=
>  390000000           11         0        |   |       |   |-- dma=0A=
>  390000000           14         0        |   |       |   `-- fft=0A=
>  97500000            19         0        |   |       |-- spi3=0A=
>  390000000           34         0        |   |       |-- timer0=0A=
>  390000000           35         0        |   |       |-- timer1=0A=
>  390000000           36         0        |   |       |-- timer2=0A=
>  390000000           16         0        |   |       |-- spi0=0A=
>  390000000           17         1        |   |       |-- spi1=0A=
>  390000000           18         0        |   |       |-- spi2=0A=
>  390000000           26         0        |   |       |-- i2c0=0A=
>  390000000           27         0        |   |       |-- i2c1=0A=
>  390000000           28         0        |   |       `-- i2c2=0A=
>  299000000            2         1        |   |-- pll1=0A=
>  299000000           12         1        |   |   `-- ai=0A=
>  0                    3         0        |   |-- pll2=0A=
>  0                    0         0        |   |   `-- pll2_half=0A=
>  0                   20         0        |   |       |-- i2s0=0A=
>  0                   21         0        |   |       |-- i2s1=0A=
>  0                   22         0        |   |       |-- i2s2=0A=
>  0                   23         0        |   |       |-- i2s0_m=0A=
>  0                   24         0        |   |       |-- i2s1_m=0A=
>  0                   25         0        |   |       `-- i2s2_m=0A=
>  13000000             0         0        |   |-- in0_half=0A=
>  13000000            37         0        |   |   |-- wdt0=0A=
>  13000000            38         0        |   |   `-- wdt1=0A=
>  26000000            41         0        |   `-- rtc=0A=
> =0A=
> Perhaps I need PLL1 enabled but *not* AI. Alternatively, I have PLL1 set=
=0A=
> to the default rate of 299 MHz. It could be a clock domain problem.=0A=
=0A=
I kind of remember reading that if you enable the AI clock, then the SRAM i=
s not=0A=
usable as regular SRAM anymore and becomes reserved for the KPU. You need t=
o=0A=
enable pll1 only for using it as regular mem. However, you mentioned that y=
ou=0A=
tried that already... Not sure what is going on.=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

