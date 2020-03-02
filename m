Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0B21752F4
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=n6/RQYifAnBfxatOVi2BzGaQURHiNJIRnb2vd/K1wLc=; b=IMTMej5HbqpSuhzvSGsLK0HL7
	kcPLaRx3SnZ0awRjTbWFZZ9Svmro7MgcDkmdidOBXMzyMztKn/I/x/pKXExPCu851gxOMs7N72wgT
	APNbK5eA4eOc+Yp/yIN/jswYTFnP14CPZt0rCHxdLUuE9bUKFlZVvr8s0skJWqsVo6y9Q8PBAgDQa
	6/rthKjzfGE1/QTaet3hwo21D59S9yyEJtRqzNvY3Uk+SdEGykWfhgJ8heC69pqukFMC/4Rxsgq56
	QD83B8xiHowyQ4YeV+bueuo4B6l/K3mYFHHy8tcWHpz84kaNVKrVnPxqnaGNL92Bihb3DisdLEcza
	D1ABFdMOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dEd-0001kf-EY; Mon, 02 Mar 2020 05:03:19 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8dEX-0001k2-TE
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583125394; x=1614661394;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=7+1eleOe1RI9IjpU60b6/SdRtvIKA3suxSoCwv0GvUU=;
 b=I5dvS0cyDKykQOocpuUK3GDjwsYkhqxL158kFzuhGk3oZFYYyp1y8SKd
 O8ahE+slaU4YBqppjqmfkJvlXK033GIcPvlXik1p50rrW96dvvIOJ1TRN
 WJuGhB/8Qcl5pnaE7up0UO1oGZWO2iOZJ8w6kiGcTC0KR6MM+i/2aS9gq
 Gw7l8MLiUJgA3MnUr14ntlUQ/ydUfP6ki8UQZfLdhv1y5xsJhCfedwlof
 i3JxWOVhfh9rNiPy87PRJ26DG+GcWgJ+7am87rN9gwUhSsB+1HjUVtD9U
 lqX+nuvfrHX0UJyQ2FlXSmKzL+BubC7CHcyZPdaM91PqWve+Cg/RCzxYI w==;
IronPort-SDR: aiVYU4LlRsxukzjreXz3DJj5NSR+gkod7hzY7zNHXmf9Wrgwsyl3kNReIYSor//9bpu/UMbr0z
 6qUruq5dyC6fM3poIR1sUGpfmXAQNIFwJci7FzYmy8jnIIPej+qhYeb6oLk1Dhi5uZ5ursi/of
 84SZEuMmr2odt+RVQAnbfm+jTakn9n20hvXwSLUwMgQIcRbMp2vNPUMXg+Lq2bZcqJniUAuzU4
 7Eyn4cCQzcHgP8XPi0PHs4QozhUIc6M8y/Tx76lYXFO0ZWuShjMNU6ICaRl8nMEhQVH1rfwGBb
 2XI=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="132571680"
Received: from mail-dm6nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.170])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 13:03:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTlmfB5T7YT1uiORBHaZi2vkp9R7oXgUdyHVRH6nttDYL6CrI59g7cSFn5p5SaIOdEuUHjO+RcEutJp0r/K8W9w49Yj6FqfiWa0zUPEKVlVxf0b+SOR6jJjg4Ksl+i8JcSRbzMLCVtRwSsx16FsEanJ5dLwTigAEeraF8Vum8DoCJmvxDo0NL5LZIga/QR6cNgBAvRJN2pOh21Jv5cyi3cNGHqIpr4nLV0DEMrqX9/2QvUSR/KBCL6Vu0f28lyzC9TzLC57KinzceQVTO+So1mYejs3EnxvsQ45neuJvGJR+F3pKPa7FgGR6fwsiuI4wGYHMWykhM50/pB4lelBQNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6/RQYifAnBfxatOVi2BzGaQURHiNJIRnb2vd/K1wLc=;
 b=moXZl4VPPA4RyoW25WgJF8V/Wo7JWMZBjG2I5bOoWaZ7mT2pRJ4c3nPb+5SVEesoCQZDjwb6Bd6kq/L2jjVtkbx0zKYs0WlEgfEG3A6TRg9zsNzZYbmMLmA2qI6tlVTEOze19YyyM1VJaKSIYsU8aWeapUBM3AYTM5r6ZW1cHyF/GY5bJmFZBSthvvt3pZnSy4anULZtYs0rra873CogoszrkULtq/VInxeccC4l17wxxvHGvxY8XCcsKGobouyYi6e/esn4eTwIkeAlhs+SkQoodHfQXlxT2uAsOs3S8zKqzDlJbQJvmnfK76Uysg/+kgP0LlLNXRvnw6mdaaGTJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6/RQYifAnBfxatOVi2BzGaQURHiNJIRnb2vd/K1wLc=;
 b=kPeOLkjQ/EcUW7yKAUO6+3Eb5ZmDZ4Ix7nS0cIRh3P8Kh0iXKjFsz2J7ekpkyYHQ7cs11fTU78h8Okn7XPWnbYGKe7XdLy5aVEXa7ugzQfRKvV+UNUtfLhEaLcY49/MTAWRJLAdpUJbLZ078finC5CCxtbEQJ6QHXNrr2/VdyKg=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB4598.namprd04.prod.outlook.com (2603:10b6:a03:55::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Mon, 2 Mar
 2020 05:03:05 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 05:03:05 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 05:03:05 +0000
Message-ID: <BYAPR04MB5816DC528B5D4F3D0BBB64B6E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <BYAPR04MB5816207C9B451E1C663B1986E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <d5851a09-6ffa-884d-ffcb-b30a2377f2f5@gmail.com>
 <BYAPR04MB58166098B0A1ED8888BD446FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c21b29d3-3484-ee5d-369d-a59c1e9447a9@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fddd061a-5679-49b1-25e7-08d7be66fe3d
x-ms-traffictypediagnostic: BYAPR04MB4598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4598603FF21D7894C32D1BA1E7E70@BYAPR04MB4598.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(39860400002)(376002)(366004)(136003)(189003)(199004)(66946007)(66476007)(64756008)(66556008)(76116006)(66446008)(33656002)(54906003)(316002)(110136005)(52536014)(2906002)(5660300002)(9686003)(55016002)(81166006)(53546011)(8676002)(4326008)(478600001)(26005)(8936002)(71200400001)(6506007)(186003)(86362001)(81156014)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4598;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: piY8MrC8tzmhS0skpKyfYesvH/BGnKBciM91UWf21nAuzVOdPBDOuCNPFtk4RGF7y9dJuvGqebfkjcJVDl4zGm1T7n+HB9/kCRFzN5VKefaPVltbPc6aCCeLbYjUoiMR+pfM+M9JaX98oxrTeOxELNDHvfMr+2UABkOpDazQfdxLq78FGCqrsURaA5TI9p92HZPNyTWl5GuwBB64Nu0Wv3CrV6mHc31/aM7VgN/FoKPY2jnM5XR4iutnI0ol6sjuaigl4ZrA3XBlfBiMHqB25nQ5unAzN6++M2l1dl2hY50v0uy/d+sDr5AAU4iurKHNfAC0l4X3JsyhK0Nk+32iQYYh14uRI5GfgtBDnfDDiVWFJVdOmZol5Bwvwe3pCaZQofnpvHa92DONFF3fE7d0sX/kLsQuKGf+i7F01Q9beYmJGvCgL86JeNwfE23LXWxf
x-ms-exchange-antispam-messagedata: mJEcRZjiuuZXv/1C+hpW5/gcwwbzOxifh7gxGNPgyFsGcHnQ2SwcV23oC1CwmqVqJm3wYw7TX8MsQB3V9bjBXTMvvElyIDw9OfBDj5u+Gn0y1ACVYHL/BTkJNn8uO7pjmjaYBFOvhUex3LH9wnJw+w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fddd061a-5679-49b1-25e7-08d7be66fe3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 05:03:05.5727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zC+lwz6xkA5upNNqcz3e80qyUqI33Q4laGau3OjcfZhwUYFtZ2kK33t4IcikDFqvoFh599Xim7fcsHFeJIUT1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_210314_032569_75317035 
X-CRM114-Status: GOOD (  13.51  )
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/02 13:57, Sean Anderson wrote:=0A=
> On 3/1/20 11:54 PM, Damien Le Moal wrote:=0A=
>> On 2020/03/02 13:18, Sean Anderson wrote:=0A=
>>> On 3/1/20 11:11 PM, Damien Le Moal wrote:=0A=
>>>> On 2020/03/02 12:53, Sean Anderson wrote:=0A=
>>>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>>>>>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>>>>>> Hi,=0A=
>>>>>>>=0A=
>>>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to t=
he=0A=
>>>>>>> second cpu not coming up?=0A=
>>>>>>=0A=
>>>>>> Unlikely. It looks like your user space needs 2MB per shell (order 9=
=0A=
>>>>>> allocation). Since you have only 5.5MB free, that may explain the al=
location=0A=
>>>>>> failure (if init is forking another shell especially).=0A=
>>>>>=0A=
>>>>> This should be before init comes up; when comparing this to your sysl=
og=0A=
>>>>> output there are several more messages before init gets started.=0A=
>>>>=0A=
>>>> Ah, yes. Your log shows:=0A=
>>>> [    1.899086] Mem-Info:=0A=
>>>> [    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0=0A=
>>>> [    1.901072]  active_file:0 inactive_file:0 isolated_file:0=0A=
>>>> [    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0=0A=
>>>> [    1.901072]  slab_reclaimable:0 slab_unreclaimable:215=0A=
>>>> [    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0=0A=
>>>> [    1.901072]  free:417 free_pcp:0 free_cma:0=0A=
>>>>=0A=
>>>> so only 417 free pages, but awapper is asking for 512 pages allocation=
... Weird.=0A=
>>>> Did you use the k210 default config ? Something using too much memory =
for the=0A=
>>>> board has been added to the config I think.=0A=
>>>=0A=
>>> I am using the default config. I thought it might be the initramfs=0A=
>>> taking too much space on decompression, but I got the same problem when=
=0A=
>>> using an uncompressed initramfs.=0A=
>>=0A=
>> Yes, that must be it. How big is your initramfs ? I generally do not see=
 any=0A=
>> problem with 500-600KB initramfs. For bigger ones, I do see the OOM prob=
lem=0A=
>> often too. But most of the time, the OOM triggers more if the busybox ex=
ecutable=0A=
>> is too big and there are too many shell levels.=0A=
> =0A=
> My initramfs is 1.6M atm, so perhaps I should try with a smaller one.=0A=
=0A=
Most likely. I never had success initially with such big initramfs. Buildro=
ot=0A=
initramfs builds tend to be really much bigger than necessary. So I tend to=
=0A=
manually make my own. With a 1.6MB initramfs, you will need the order 9=0A=
allocation seen (2MB) before the 1.6MB embedded initramfs is freed. With so=
me=0A=
memory fragmentation, that may fail easily. I do wonder though why the memo=
ry=0A=
would be so fragmented so early in the boot process. It may be interesting =
to=0A=
explore that to see if some optimizations cannot be added.=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

