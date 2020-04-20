Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE6A1B1960
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 00:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=k11rg0o4xgz0jyGuivMHAVfLYC7e5SDAVogr9cDvp+E=; b=qUJZTUSh8IXKTqIYV31xUzHCx
	e/gmKE2lwKflWUKnxL+JitA+st3n/rF0/ZRpHe7KKHA8olxgO02S2G381fCJjeYERbjCCbQN96KvP
	Qout6lAJT6u1q04DWmdnCUVAoOpfd0Dvryy9MybLJVAlq3KzWsXIwAtcw3GoATC87EUilMzcJ/jhO
	76WGTHwxdogq61b9w/rrOfqThYjr7RstnQJijbWAbilvJu6+NLMQjDgpjPiGdSrl+Ju5iBeaYurUn
	BtYo+SANqct8FAuFG805bBZcZUSA6vMq+mxEA3HPAIfWXPe/lDMwfmvWtPhpwMBdC6+LN9RZFYxmU
	6AIiQuJiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQerE-0001DH-Fj; Mon, 20 Apr 2020 22:25:40 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQerB-0001CC-3n
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 22:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587421538; x=1618957538;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=THsS/za9OzOVX28P3FMolPAMlKkj1XacbNb9AFk7Dms=;
 b=OjMEvdjbGS+cKaANW74iVgSpjRI6/wxIByQ/EAqwYfO7Mb2Cle+5ZlZR
 dS342ysfryAbk0E+fc5t/QvyrsLv3CkPB3gQXkSoYQ02icPgfAHvik0P2
 9osCmyY/X10Du8Aj8/K9gY2bT9RKTvSEpY1NfKM8PTtP6LTPQaEUDh9c9
 IaF+3pkEbsjzXHRLiYlSBeJYQnmMVYRvfeZ05mUVdwPCSVJtUKIYTgLO2
 uxiCZksJ4Vhv42ufrrA4VwBrkwULIIwNjJJW+flCt2+I3nF/gQMLP0NKn
 f/7J6/AXiLUEn06tBUGrWFgR3PT/RlXxMRWZSRA4HQf+BOSwLI4xoRBy8 A==;
IronPort-SDR: VO06q/3gqm1HqESvtHX81ziwv8BTipkdsAENpTaAsvbFIJdMA/8zMtn+fGAYpnMU6i80D8/gJ/
 XRGZK870vv+q8D/dKPVQXuzKJliCoNGAmIPcqGee00Y1ew7PeAmojCuzpGJGjRSC8FcbeqwQAt
 zFMRZGcBR52TIauwYr8SeswbyOLeD0o860K/71/Bb+cBfnjrwFWz3x9QXCdd/G9d7wtLr0hm/T
 YxAGcD4FQjEj4IWBJ4kbtdkMGDFrQdkvA6FsN5C0M99WsGzDjgibK0MKuo30SqAidRQHw4gyaK
 T8E=
X-IronPort-AV: E=Sophos;i="5.72,407,1580745600"; d="scan'208";a="136051196"
Received: from mail-mw2nam10lp2104.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.104])
 by ob1.hgst.iphmx.com with ESMTP; 21 Apr 2020 06:25:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQ2sDiRf3ueuSSSX2S4OrlDRCRezGQmicm6fxhoNaGYnb+MLlIvSn+s3LEOTlhcGndwOC+XXvyRmBxwd5iXICOX/D0iqKABGVTmwQm+xgvpDnDrxTmqTb0okgsIpRYvR3Qi7VVXgcuPDsceKxPrLNc9HH89X4lOpGxn1wLGozWyIc0EG0guMu81w+rciNBFEbdZFYwlPwrzc9tE2kqKSEoG0JbrXL/kv/TqhYT7I2Kv16p7eBm72cWhLntDecEkpRo3f+vDptSmCg8P0+CVMDlshLPYPpzhe1RtiayvmWzsHY1Nz6/l7ZXJt0IVl9OUPm0UxaphlCrlKp5YhKywdxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k11rg0o4xgz0jyGuivMHAVfLYC7e5SDAVogr9cDvp+E=;
 b=RKmLbgspuTC5Byz0UHq0j92kqFtaSdlbNl+ts0Btxf0laWr1KL5VJxtC/QBHcNkWowD5gHQRQ4frVQrpMog9TxopQGoUzNKhQLE/7BeEaomgM/8vy3+DwdFeMzKaa5rETGrRzNx48XfLBt9Sdz13n0bGLiYbVHnFh7OupvY8bDBtRaRzuB2UlH+2NYWfxe/6gMF9Vdsuww1BCPHaP+07vK50lhLRJFurJtjhNOhYwTVC7jgTpK+BRyDmRPmMAgU10bJZ0X+nf4iFv9vtteNKcLJoxkw6CgB8gtv7kMAJQHC/IfEQJjgTpjFH/IeebbHfvkWqrwRyeTjXZ6+u4itMXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k11rg0o4xgz0jyGuivMHAVfLYC7e5SDAVogr9cDvp+E=;
 b=Yq/sRV+rGm9dIL4sf4Hrxto9kKxxQZQzNI8aJlq5sIRK0obLQDO0U32k876++v9B2jlCQATkDYCO4zmqY27cIDTSCB+uhY01NCC+LVRjk+Mww/nh8AtHPUgyJuanjV+C9/xUciPk0VlUshBH+I/Kh42zxXBu/7Xj8yKXgH9kNnQ=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB6341.namprd04.prod.outlook.com (2603:10b6:a03:1e3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26; Mon, 20 Apr
 2020 22:25:33 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%6]) with mapi id 15.20.2921.030; Mon, 20 Apr 2020
 22:25:33 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: More K210 Support
Thread-Topic: More K210 Support
Thread-Index: AQHWDcb76GCscyiYn0akBatA+Yggcg==
Date: Mon, 20 Apr 2020 22:25:33 +0000
Message-ID: <BY5PR04MB6900F96F2F8DD4B91EC8AFDDE7D40@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <mhng-95d9ee53-d6a2-4cc9-923c-f21f92eb16a6@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 666347df-0924-49f8-05f8-08d7e579bdce
x-ms-traffictypediagnostic: BY5PR04MB6341:
x-microsoft-antispam-prvs: <BY5PR04MB6341EB9E96B7C83A73981037E7D40@BY5PR04MB6341.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(26005)(86362001)(2906002)(71200400001)(76116006)(52536014)(5660300002)(66946007)(66476007)(64756008)(66556008)(478600001)(6916009)(66446008)(186003)(55016002)(7696005)(8936002)(8676002)(33656002)(81156014)(316002)(9686003)(54906003)(6506007)(53546011)(4326008)(7116003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ct7sn7+phs2pI4nNyybyt8iceEoZfSDdL563vmf9vgnzUrIqwH5BTkfZmNqXeFUJoU0J3tT9OXqUyf0/Rm7dZfqSOh4AQR0iRgBpVbphnNgTMDFG6s2qOdUrnp62taht9WK1yqeQGG52qiXS67OjTvezX69rNvTau9YR7PGLqIE+4lt1L5ezgy/WZqTm+MR2Rv6TCBxF1osLgcA6J2YtkL53rvW3xI+vn57wPij9WUbMx+hpkVfrBXJmQtDMI7+6ji+uycwLHFvbS/dJKQKfLb+UzIBLs5FTs4pNKFgxyrxDkaJ32266IAghuEfGcavIWKKpEEV7rzIMgpHdwXdlZ9JWugzx06pjaYEfnFDG5MAEj1GryKirG3kqBYHo7q32rgQZIVqpJU4BljeQv9VCf7NREQP+2CfWU0IgEoGggOrF5IC4Sd914xwuA43qjBnv
x-ms-exchange-antispam-messagedata: WuniFBluKsIRC90qPJrw8zQUQtkItki0acFGEagHAb9ZKdwXE4LNDjUde5iLYfWrUU/ISK8teG2mbSjgexN4lx5RtqepTnFE0uKsRr3gwQDe9FPBeFFvFL/uaS6wMPa0fKzsA9ULtjDVoJ1xgNRJ4g==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 666347df-0924-49f8-05f8-08d7e579bdce
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 22:25:33.3069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J4pj5x7y+cB4IKlfoqGTANpeyLsgwIme1e3HRBgpdULFZphvlcE3HuoSMAbddtKweMjXDoK9zPZuWrFoIYAH4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152537_256937_2BBF4904 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "kernel-team@android.com" <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/21 5:29, Palmer Dabbelt wrote:=0A=
> On Sun, 12 Apr 2020 18:45:33 PDT (-0700), Damien Le Moal wrote:=0A=
>>> On 2020/04/09 1:58, Palmer Dabbelt wrote:=0A=
>>> * Builds a table of device trees, keyed by mvendorid/marchid/mimpid.  T=
his=0A=
>>>   allows multiple device trees to be built into the kernel.  I don't re=
ally=0A=
>>>   like maintaining the two lists (one in C and one in assembly) or havi=
ng that=0A=
>>>   function in the table, but it's the best I could come up with.=0A=
>>> * "handles" PMP traps by just skipping the PMP setup phase.=0A=
>>>=0A=
>>> I don't actually have a K210 so I can't test any of this.  I also could=
n't find=0A=
>>> the K210 identifiers listed anywhere online, so someone will have to di=
g them=0A=
>>> out of the board.=0A=
>>>=0A=
>>> I also didn't spend any time thinking through how we free these device =
trees,=0A=
>>> but given that .dtb.init.rodata already exists as a section I'm just gu=
essing=0A=
>>> that's were we're supposed to put them.=0A=
>>=0A=
>> I cannot test anything yet. Something funky is going on with boot objcop=
y/Image=0A=
>> size: I end up with an Image file (and loader/loader.bin) that are 8.5MB=
 instead=0A=
>> of the 1.4MB I had before pulling in Linus tree. rc1 as of this morning =
still=0A=
>> shows the same problem. vmlinux is 1.8MB vs 1.9 MB before.=0A=
>>=0A=
>> To check if my toolchain is broken, I recompiled the 5.6 tree I used for=
=0A=
>> developing the series and I end up with a loader.bin file of 1.4 MB. All=
 looking=0A=
>> good. But there are changes to the vmlinux elf section headers which lik=
ely=0A=
>> cause the huge final size I am seeing. Will try to dig into this.=0A=
> =0A=
> Thanks!=0A=
=0A=
I sent you fixed patches already. Please review them.=0A=
The large image size was due to the strict RWX alignment of elf sections, w=
hich=0A=
can be disabled for no mmu case since there is no RW protection anyway.=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

