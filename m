Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B751B3409
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 02:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=Q4pwLQHX0qoG6TkczPm7+bM5StFNtvFEoYYighgciE8=; b=XFT+U+QZYMtZPdx5op9hQDYUS
	JC16Jp4d2n0VbyqnWB3c48VLFsLl/bG2NVuXd8As39KQDWAAOnCqh5y3w7B0erzq02iwOXdcb43Y9
	5+PHilbX98EIWHRhh5LW3JpVx5MFw/IuDJsCgd0xwWF21aBj6bz52JPW1TQDvjrX9u5qTmWb3O75s
	4qFhXz6ufkd3sK7GvFc4Wb2oSXfEyrVLxE88Hz6/ae60gPCn9nN17TWLAvWKAK/U7putPDsD+/VI6
	cZYz7N/toCefoeFc9SynUhFdEltrQ1uKs692qJOUFbmTaVyNUNC41eVliFuxYy+Lag18V6egAefzc
	t6Si0eu4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR3Ol-0001OS-3J; Wed, 22 Apr 2020 00:37:55 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR3Og-0001Ml-Qu
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 00:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587515881; x=1619051881;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=HSoUffYo+xE87V3rfovuUYXXae4GO6f7o7RDMFM2w9A=;
 b=CDycNCTQA/wkX5ZDF5OsGRDNQ3uMiANj+79qYnAigKT9aTTWfOAgN83k
 Mndg1IHk2x0vGF5pBqbWWOnyC9IXnpGvs23GbjQyXUVSigCI2LJgpNo6z
 o4JHpeebNtvOAvQOf3M8d4QunXAAaQypshOd0tkDF4GbNfJGGR+YRT5Uo
 I9/+WJctZI+B/19Njn6A3kFJ2GMA9/TASJWYJuk24qY27CJMkfAylVdA5
 8JgX6m3qvKoXJ+8m9hLPWY7omFBUMq2aopWeoEi6UyoxklvhkJA5TSoya
 7fluWJ8bp92hIpsUSnFpW0zimiAN7S9DpWASdV/EXuTTb9lYKeLSWrQEU A==;
IronPort-SDR: 0DC3yEYjEya+GPfjKreersfTopNO2KBxyLomS2G1EcmYEOAqZXADdhWvtckemT4PIMQYNpv4ww
 qdCdzpi1uzhBv825lzorX3z555rpHntKa0Q/LXEPPnsXxTLo6xRMPBMB0M8o9b/Z7kXyBI9nBt
 oI1ZrvEVbYQmDOH5uGSIIpsYYwLsskQ0NwzyXcVd9BEEz9+jqnc5mq93o4dshJC2wQf0PX59HA
 CKyvMid4mJ3A/TvuFFkkejxoy7soVUCVpy+uWFuKg0vaDPIx9oACIeXRQ30BEbIi4yIXITyuV7
 W7g=
X-IronPort-AV: E=Sophos;i="5.72,412,1580745600"; d="scan'208";a="238304746"
Received: from mail-dm6nam12lp2177.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.177])
 by ob1.hgst.iphmx.com with ESMTP; 22 Apr 2020 08:37:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nRmQq2QnGtky0MKS34mbMpwvEtANKyrLt8UKZgFTWBsj5LlNmXEZPiF2wCMwGyur/mVia3oX5YiIa4KCeFcTLQqz++99A8GXXZGh0S3tdfbx0HQ2jBuy12lPTRtNVBUQblVQrnPu/IgTLXdFiSnoLkbIOo+zWs6bvYhLE3yLmDrQkfbXhuiaW+ao4ySir2UwKjO+dOoMtssy2ZJmzRF1JKDhON4LhSoZgyzFJkY12NrhRyokbKqg6JMmeBvF/PVGmwHp+toenKdGdHaG9CE9RXP/vOyBxrdMEEN/lPwmhxwoejLXMl4sBXA/A5H6CHc5DH4NV+iQ47rEycWSAibEPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q4pwLQHX0qoG6TkczPm7+bM5StFNtvFEoYYighgciE8=;
 b=lskVQg5mY9iovqgzizupRIV52fy/huRuWM+gzaeS4YxyCEm6ESrec58s5nWd5Ip6Xl6BDkBMmYhKbCSH6R6lROFpfZeKZDpEoa/Q9fCL5XpwmzZAb9VssJwfA7/4jM5YB+xObvBSHzbOrc7SJrLQP82kxBukS5PuCdTRXXYtgLgN7X3D6DLr3Sct/t4DkRdfUSgbLARKHk3MG2hn3MOsV/3ymFfdj9aATLO2y0jFUZtvIF8pAwJMb98aU5GhUhWbkaryx9u2UIoeqNgW8trmxWodgMzvLbGKrOSAWGMLnQ5kRLwDup7xbuvRN0InXNlEXAm5iYoUk/BKp8zPZos+jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q4pwLQHX0qoG6TkczPm7+bM5StFNtvFEoYYighgciE8=;
 b=BtNUaYGRNwJFD8Ae5btxJMiBD4UuXclLQ8DUsQagywxIuFwyfVqmVuQN+F5EkgtEOcG7xJkpzcGFMvIpzsI5fVdAGnq3BEwwqdIbZRPl4CvEKJOetIyBOjSPviw1qoBHHCtlCrk8WO4boNLJEspHcMjxUP7PxzTyGKKmuTsLxkk=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB6916.namprd04.prod.outlook.com (2603:10b6:a03:229::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Wed, 22 Apr
 2020 00:37:41 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%6]) with mapi id 15.20.2921.030; Wed, 22 Apr 2020
 00:37:41 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 0/3] K210 support fixes
Thread-Topic: [PATCH 0/3] K210 support fixes
Thread-Index: AQHWGCujIRwnV4bwO0empZd8no3pRA==
Date: Wed, 22 Apr 2020 00:37:41 +0000
Message-ID: <BY5PR04MB69004A846FF0D3FFE2ABE488E7D20@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <mhng-14ad9472-18bb-49a3-99f2-a87d176ad9c4@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8551922b-c4a6-4b51-beac-08d7e6555dba
x-ms-traffictypediagnostic: BY5PR04MB6916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR04MB69166A7E3836B4A03DC3A2AFE7D20@BY5PR04MB6916.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03818C953D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(8676002)(2906002)(91956017)(66946007)(33656002)(7696005)(52536014)(76116006)(66556008)(66476007)(4326008)(64756008)(66446008)(6916009)(5660300002)(71200400001)(186003)(81156014)(9686003)(86362001)(316002)(26005)(54906003)(55016002)(478600001)(8936002)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a+jp9sQpNJ3GpSdnSnwaTVIjukCDzNNohr9T7U8jNNg3QYESC02LcBs/6HPSeOuhDVysmELq0cW/lFxvqe4opmHppoEPHWiThiFJ+SaMyQPZowmUDadjJiPaCZS+WOcvrCzKOukkd3UF0bowBFyinzB46mc8mRpViNCWldzPJympgvbr112FBeb9MrlIWjjcwCGEM94VOOwlF7mgldEBOmX9JOY6czYaI3Vt7IR5UNhGmNCUrw2jHxDmoinDGJV716vD/RqQmsdAGHoOE2j4v0Td5uYKUEWiXXFywM/Dircv6cX5vxACDLg29IgxOQq88QODMWNqvUE3F0aAWWOHDy497Nu0oyegmiyh6BmQEfThw5C7pqP3AFMtEm6bQFf4pgYGvw8oNngnILh2Cz8ZVwyg+SU+zO1+Q+XNn+kGXaJmOLWTfaVWk6SxpLjjuueZ
x-ms-exchange-antispam-messagedata: vPMa2WSnAQxBdfs6qZcV6P46KjbrRfMbgkCt+3PgnMRdsmY/gcU7uxZFxRdjWKOCCHcheqDrQKuS9FnFSXijF8pEk+EmwTBWDi4ysomQAkUAPNt2hl28ApPHeuw0eNEKDyoEuBfKXJpFz2MMTv1VJQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8551922b-c4a6-4b51-beac-08d7e6555dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 00:37:41.3480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Hh9/ekDxdAfx10mlSWaOswkxrGvprQ174ZezYakFChdBIzum78fXAjB9VqGINzUfdHKjzcev4aXEmIIkVsawQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_173750_986859_07CBEF32 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/22 7:24, Palmer Dabbelt wrote:=0A=
> On Mon, 13 Apr 2020 21:43:23 PDT (-0700), Damien Le Moal wrote:=0A=
>> Palmer,=0A=
>>=0A=
>> The first 2 patches of this series are your patches for the builtin DTB=
=0A=
>> fixed up and tested. The third patch adds necessary updates to the=0A=
>> K210 defconfig. Please review.=0A=
>>=0A=
>> Damien Le Moal (1):=0A=
>>   riscv: K210: Update defconfig=0A=
>>=0A=
>> Palmer Dabbelt (2):=0A=
>>   riscv: Allow device trees to be built into the kernel=0A=
>>   riscv: K210: Add a built-in device tree=0A=
>>=0A=
>>  arch/riscv/Kbuild                       |  1 +=0A=
>>  arch/riscv/Kconfig                      |  5 ++++=0A=
>>  arch/riscv/Kconfig.socs                 | 17 ++++++++++-=0A=
>>  arch/riscv/boot/dts/Makefile            |  2 ++=0A=
>>  arch/riscv/boot/dts/kendryte/Makefile   |  4 ++-=0A=
>>  arch/riscv/configs/nommu_k210_defconfig |  7 ++---=0A=
>>  arch/riscv/include/asm/soc.h            | 39 +++++++++++++++++++++++++=
=0A=
>>  arch/riscv/kernel/setup.c               |  4 +++=0A=
>>  arch/riscv/kernel/soc.c                 | 27 +++++++++++++++++=0A=
>>  arch/riscv/kernel/vmlinux.lds.S         |  5 ++++=0A=
>>  arch/riscv/mm/init.c                    |  9 ++++++=0A=
>>  drivers/soc/kendryte/k210-sysctl.c      | 12 ++++++++=0A=
>>  12 files changed, 125 insertions(+), 7 deletions(-)=0A=
> =0A=
> Is that PMP thing necessary as well?=0A=
=0A=
Yes, it is still necessary. I replied to your patch using traps instead of =
the=0A=
ifdef. It is working fine.=0A=
=0A=
> =0A=
> I've put these (along with the PMP fix) on for-next.=0A=
=0A=
OK. Thanks. I looked and I think everything is in order. I will test again =
with=0A=
that tree.=0A=
=0A=
> =0A=
> Thanks!=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

