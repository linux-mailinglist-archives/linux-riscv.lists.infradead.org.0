Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40341752E3
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=YXGEYRLGb8wm0GLid4pw8gA58iK36j4S2BuzQTz2MpE=; b=j4+cCrV9/1p//7Ygcj/GN0QSv
	JHxWJ+Bqx/nxBw9uJ+lPaeHWqPajP4KZLZm7l8VSQMj7jExeCzhdyemde03iaxEK7386XqurIMe7Z
	LGv73pN5MU2ATZoJy7bppRsYv1CmG2/oe9PpbTg8IlyggxTXSfsl/pdMsbRiK8EaZ8pfAsCntBgQz
	bJClqt5ei6c+v0xl7OJDlLLFtvFbhhe/28W/orKB3kNL21ihDcWStmpmux4i0tjfCf6kXv4BFmKDO
	Vh6wyfprgdme08ADErnFnnM6DWGLZ2g0p+2AEh8NgnHd9yN2Zhk9Twt2c8Wj9pFU3kQWATRqmiQ0+
	mQ66C3udg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8d3i-0005vI-Pm; Mon, 02 Mar 2020 04:52:02 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8d3e-0005ul-P0
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583124718; x=1614660718;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=YXGEYRLGb8wm0GLid4pw8gA58iK36j4S2BuzQTz2MpE=;
 b=axj8T7EMEJHC/YIZ5oHVoRnD/ms/zYCVnAvTW4kOrAZLZddN3e0imj1i
 OMo1GMLlToO+HKJcnP57Yqe/QEo1cvNQwTXfA1rVyvNIzgAN8fgsO7cVB
 Lfi8nZzljQnvhIrgqxYQ4b8WQHvIyMN4F5blstWQc/opg8PTVlhd/hz8Q
 DQ2hzqd5NLZDSxT6c4KvE28eSVi+MMqQ+3E8gYv1qwHpwIyhsfux1EYRl
 WWUkJ1YthMmE0HbmV8cSUq0Ji2NOxz67DP8UBJCeo3xOPBMHW6Igi8yDv
 k4LBafObfAu3lj8q06V9JuaqT4/3rury1RQwJKwf2aUWgAaLeK6KTrAS+ Q==;
IronPort-SDR: 0sJa+itMAp1lIo2zW3mhJjToN2T08AbfxzGEPy/Rk7/kXBTAhEZ9jzjdhdXE6eIIH7jwftm2Eo
 fCDoeZMha2T7bHspUcX0Dp1IUuQs80QWBSNq4f2rlnv0F33mmPTzzlrcYu2qNMxV8ePUrSJQoc
 mAn+oO57ElRwa3LDPiRGQSV6r5rTzbYDUXbW9hQ2KKm8ySNGkNUay7D+RbuQiSKcz96yahw61Z
 7IAiz3i27yBHoTNfgvy4wsdLw0kJ4xjaAReo/X08KSiwO6g/zltSISXPPS0vx1gt/hg/dsIYvP
 w1k=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131120251"
Received: from mail-dm6nam10lp2108.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.108])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 12:51:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=niu5+JXVONwC5fMG0zOFn8Zz56QEq3NhKZM553O8/mSwbRAc+AUEUbZP4Tn9HXc4vqIqa5BQkbq0ZkVjvLOHiMj6N+W2xTX0WJoBU4Oy0xdWCVGY1lrgSBqBBFE01zj51i+uB0TnMEOltgvOWjAKKukgh75/JajKbvMZrbUQQW7StfcdSdqikTzzbM+GqCJf2vX2zWheH10U5MrZjgotW4wH18WBaI8FFgfl6onLyIfHLq0LIoRRw3BP4IPanmJLJDqD38QnwyUwHxH9ZAfRnDhyi/JCwtUKWLI5en3S1jYEGh/lGtooZ/7Al0yNTQaRyaHtqBccaBfHU5AwzRKY6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXGEYRLGb8wm0GLid4pw8gA58iK36j4S2BuzQTz2MpE=;
 b=aLkIAJMYX6JGLQ109e/AgSKdf3QWhEym9FQmM8IO+8Y1w1Pxni6EjcjMKUFwaYH4JMVE529c2cDBH6rUeFcqDmK0YYSx2LkTynSBVZBMxsD0AY3d6oJJhs6DlOoAM0jAGyFV8+MHt00XoWyi/SJyWYXmyrBoG5vGPDHmZsi6/AL0PoyKI2gNVgJWA+hj8Tt1UWkCSe6T7oQo/3E84vvEQWx4bP/gc1qQsrZotmzUa9TnNqMPAEk2Z67Qn5sMe4L1Hq4+wVkv+6MKq106iJH1KrzRNEA/Fe1pocLn7aSaZwKufpctcqruWh88EQOmbnRGcKl9c3ccGxLjCB4koyg0pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXGEYRLGb8wm0GLid4pw8gA58iK36j4S2BuzQTz2MpE=;
 b=oORp5+SoXhGHBR0HlRRzVhNEleCRGqtqqHstUdjtintjq72x7241Ux3htwiLTztjHJkgxj73MoamuPNTzcuLUpi2tB1h4Ruuob8Sx+cbQ+SABecX8aAzwrb2zV+IRvxWfPmI/l0GJDbTuyz8OGEPb7ScyHXhbj1LBQW21EV+Ddg=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5445.namprd04.prod.outlook.com (2603:10b6:a03:c7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 04:51:42 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 04:51:42 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <anup@brainfault.org>, Sean Anderson <seanga2@gmail.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 04:51:42 +0000
Message-ID: <BYAPR04MB58166C11C2344C4096CEFA45E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
 <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ffb3a71d-ab59-4ce3-5d05-08d7be6566e5
x-ms-traffictypediagnostic: BYAPR04MB5445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5445F44CE64876417AC6EA26E7E70@BYAPR04MB5445.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(9686003)(66946007)(5660300002)(316002)(4326008)(186003)(86362001)(76116006)(7696005)(52536014)(55016002)(478600001)(81166006)(64756008)(66446008)(81156014)(66476007)(53546011)(66556008)(8676002)(26005)(6506007)(71200400001)(110136005)(8936002)(2906002)(33656002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5445;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y+LbPgF9l9huntKyT4qOZhmJRQg/KKZ/XnM3pFtEzLlZoS9z7pwedgPZ+3AkRLRzdZRJ11PsG8JjAY1kDUrZ+YBar79rFgKKEyVCg9AToUcTcPZKue87wH6avnSiyG8GnEDJFr45sSp4KIlodVmFPwXCn5g1KAVMZFF3DjdO+woZ83wcRnuQTCHKtY2SvC1KnjpBKNP2yB/qjC3KZMTlvmppfNxs6zBs9vdao4tv7VhCoFu4W5obBTL1om6OI0jrhjWK/xmtHoewmvjNNBh/Cec+JChIcBfM5bYbCgOvyKii2xUqdaZwybvqmkg8woB8QW+ydaGp/sCqE0cDZBaYZhUhI6n+97g8ji1VQc7orJ4jmLOyoUHB2FbcuYatk+PqLPPvyRq9gM0CoGdBNpbY/scLsPjztIrSVkIl1jfaQdh/whQpBfNTU7GDJJ/m7z/I
x-ms-exchange-antispam-messagedata: jO+Xkzr6GESVL0lZp4Nga0Br4sjZA5aUSPmh6wSyBrGGg0derQZbGFLvxOBUFEd+cU6qwWgTYNUYAbrdTKemJgyOZ8yNAZecm0kpLF6ZEwcF+SuzD76oAvON4nS5p8NhFSli9mdtmC+d/4NkKfRE3g==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb3a71d-ab59-4ce3-5d05-08d7be6566e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 04:51:42.1307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BOfNSkTMk1p6I6dp9atVFJK2epd2M+Y3Z8tUYDmbdTWj2RirfA3+oqW9OlvVmX11zDWT898jP5HoSXv7uP7fLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_205158_940066_4F84B5F8 
X-CRM114-Status: GOOD (  16.09  )
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

On 2020/03/02 13:48, Damien Le Moal wrote:=0A=
> On 2020/03/02 13:17, Anup Patel wrote:=0A=
>> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>>=0A=
>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>>>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>>>> Hi,=0A=
>>>>>=0A=
>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to the=
=0A=
>>>>> second cpu not coming up?=0A=
>>>>=0A=
>>>> Unlikely. It looks like your user space needs 2MB per shell (order 9=
=0A=
>>>> allocation). Since you have only 5.5MB free, that may explain the allo=
cation=0A=
>>>> failure (if init is forking another shell especially).=0A=
>>>=0A=
>>> This should be before init comes up; when comparing this to your syslog=
=0A=
>>> output there are several more messages before init gets started.=0A=
>>>=0A=
>>>> For the second core not coming up, an IPI needs to be sent to the non-=
boot core=0A=
>>>> to wake it up. A Kendryte thing. U-boot should probably do it before j=
umping to=0A=
>>>> the kernel. I thought I had that in the kernel though. Will check agai=
n.=0A=
>>>=0A=
>>> I think it's a RISC-V thing. I should have U-Boot set up to start linux=
=0A=
>>> on both cores, but something may be misconfigured on that end.=0A=
>>=0A=
>> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to=0A=
>> Linux NOMMU.=0A=
>>=0A=
>> Based on you log, it seems the second CPU is still spinning in U-Boot=0A=
>> M-mode and when Linux NOMMU tries to touch memory where second=0A=
>> CPU is spinning everything gets corrupted.=0A=
> =0A=
> Yes, I understand. But in the case of the K210, that last 2MB segment is =
really=0A=
> special as by default it is not usable as regular SRAM. I think it may be=
 better=0A=
> to reflect that in the device tree. The K210 soc_early_init() call back c=
an=0A=
> probe for that special entry too to see if it has to be turned on for use=
 as=0A=
> regular memory or not (i.e. if a kpu driver will use it).=0A=
> =0A=
> Since booting Linux with 6MB of memory will be even more challenging than=
 with=0A=
> 8, I agree that we may never see the case of a kpu driver being used. But=
 I=0A=
> personally like making that special case clear in the device tree. No str=
ong=0A=
> objection to your simplification though. So if you really object, I will =
go with it.=0A=
=0A=
Answer to the wrong email... Please ignore :)=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

