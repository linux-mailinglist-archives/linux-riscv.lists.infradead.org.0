Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EAA2CFA5
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 21:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VOg/CRwLE3XdryCMj41Z6k9hUjT3f+rQEZGjAM7qrQ=; b=FuJoJdd9PP06nl
	krFWpQYNubF38WiUsWpVfx/++1XhCYswFWKrrE8bjsLz2Ovdwkq1iaxptEUHLaWu7gf9zyIAoarZh
	jO7KSV2jkF31Ttks6L0hmjtJmCi2XAxw58+og7KBa5E7UyTXMq1il0tnf6xENz70J3BD86Hbp83xI
	Ltp6pTM8wXrQZynoeBeX0G4SCOBRX3wK57Lf7QVwv8VJPDHLzkAKnPiThRC1lEDKyeAzQtct7wz0d
	inUdbIZPOXq0GwjTU9zGbm+BzxMeE5BLYAdgblbn74qjxbvr+Roj7P1OOfXN4PgHneltLCp+50ZRY
	yG373VVXqwwTtPZRJV8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhx0-0008HW-26; Tue, 28 May 2019 19:39:58 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhww-0008Gp-1m
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 19:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559072395; x=1590608395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pDm+yZFIujJ7QTWmqI58E0O5KhL8o5L1P7FmsIb+nYo=;
 b=Y0c8iekg5Sh3Vk3sSzWOwOLYOmqGvgwt9RYbRgvTwy3ba2YQaReWrl1K
 Dt2Sc1VpKFwAICbQkmTMPObWSlnbVlFhFW1uuEweJA+6S1ZpBnsZauQSh
 ZYkdknr9rC34tIGtKIcgTbeEh9j7rysDjpdt0EUM3HTFIxOzXA2+ucmYu
 xmdfQMlD9I8Q4IFCyewbHfUVR+irYOzDWWW/XiYSXAEF4H1Lo7nQBJLcR
 K5Gh6Alimoj7SOW2OVXfLAvagSgYyjy0TqcHCRfpjvucAGE+ZWLJUKNwj
 FrOhCBDA0HxaOUmk5gsFi6mkJEiNMzSzjuA0EH1+M6d9nylw+J7l64XE7 g==;
X-IronPort-AV: E=Sophos;i="5.60,524,1549900800"; d="scan'208";a="110501281"
Received: from mail-bn3nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.51])
 by ob1.hgst.iphmx.com with ESMTP; 29 May 2019 03:39:51 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W67Qir3BIAsf/NdGF83FfMN8+DPqyn4zD+vfmNA2cOc=;
 b=nbJeuwocRZDs4Siq2bs5ysk1L52rHQmQpPaiOFhGHoh6fIvLASb5J73WK9gYqvTOEDV00ztf/F6gkPTEpi2KpJ/dLVjGMP2kijhfwUHw3OuXh0ASzd+GO2BQwBOaSMjYLRL9W6brxuKveY7Mi3KLeIbMuy4tbe/3g8ruvYHy0b8=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB6101.namprd04.prod.outlook.com (20.178.234.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.16; Tue, 28 May 2019 19:39:48 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ce8:bf96:aaf8:d2b0]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ce8:bf96:aaf8:d2b0%4]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 19:39:48 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, "anup@brainfault.org"
 <anup@brainfault.org>, Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
Thread-Topic: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
Thread-Index: AQHVCue2HEus4pRvEEGYJRX3qv0JO6Zzr7wAgA01ZYCAAB9GgA==
Date: Tue, 28 May 2019 19:39:48 +0000
Message-ID: <D5957468-5A82-46FA-9D12-A35CF59C7DED@wdc.com>
References: <mhng-2b0ca072-2d6d-4422-96a2-2a4254255cc6@palmer-si-x1e>
In-Reply-To: <mhng-2b0ca072-2d6d-4422-96a2-2a4254255cc6@palmer-si-x1e>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2607:fb90:9e4d:a2f5:7c7d:af93:6799:77fe]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3d3fb38-b60b-42d0-67da-08d6e3a43ed2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6101; 
x-ms-traffictypediagnostic: BYAPR04MB6101:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB610173B68036EC99F4E032A0FA1E0@BYAPR04MB6101.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(366004)(39860400002)(376002)(189003)(199004)(53754006)(68736007)(36756003)(7736002)(305945005)(76116006)(91956017)(82746002)(256004)(4326008)(6246003)(46003)(54906003)(2501003)(66946007)(66476007)(66556008)(33656002)(6486002)(25786009)(53936002)(73956011)(110136005)(64756008)(66446008)(186003)(476003)(229853002)(446003)(2616005)(486006)(11346002)(81166006)(316002)(53546011)(102836004)(72206003)(83716004)(478600001)(81156014)(86362001)(76176011)(71190400001)(14454004)(5660300002)(8676002)(6116002)(2906002)(71200400001)(6436002)(6512007)(99286004)(6506007)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6101;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /LUGS4mxWdKS+kChM5P8Xl/etz/qCq3fWYReMI2IJsx1K/tEqLec/bUnB754tzRQySAHt/WzaKB8mzZ/rE1hgnPPbi9izd5yhIkAUHfCcZwP4oB5RUoeptlc437Orfx1pqXgpzrcyFmIAs85WUWcXHhvgCBVdudZoUlCiNN+L/K8/9kKX9pN1EKJ1VQ5bc3cYjFjs7HpIWeLgSXdQUxv696WByKZ5ELRNLiAMzXPo+tnFWUJ4KHXFEizSVERZECm7sBA7OEx09TAXVQNYqK8q8mcaK5vpCqEF6Jn5SRLs0xM6JW/eJoks4v8q16zHlLKfp73jAQpmdgAbS+oOrRj0L0Y5BdMB/rHpoWf88kYRLkI2+5tK7BaM1sO1yKxSuYtbZDJcMTUd4t3a3gxfhqD5xSOocUFa3nR4lY2RkXrm9U=
Content-ID: <E4BBE119699369469910373B8DD1AFC8@sharedspace.onmicrosoft.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d3fb38-b60b-42d0-67da-08d6e3a43ed2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 19:39:48.6112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_123954_210556_1A0482A3 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Christoph Hellwig <hch@infradead.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> On 5/28/19 10:47 AM, Palmer Dabbelt wrote:
>> On Mon, 20 May 2019 01:05:22 PDT (-0700), anup@brainfault.org wrote:
>>> On Wed, May 15, 2019 at 12:00 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>>> 
>>> This patch enables NO_HZ_IDLE (idle dynamic ticks) and HIGH_RES_TIMERS
>>> (hrtimers) in RV32 and RV64 defconfigs.
>>> 
>>> Both of the above options are enabled by default for architectures
>>> such as x86, ARM, and ARM64.
>>> 
>>> The idle dynamic ticks helps use save power by stopping timer ticks
>>> when the system is idle whereas hrtimers is a much improved timer
>>> subsystem compared to the old "timer wheel" based system.
>>> 
>>> This patch is tested on SiFive Unleashed board and QEMU Virt machine.
>>> 
>>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>>> ---
>>>  arch/riscv/configs/defconfig      | 2 ++
>>>  arch/riscv/configs/rv32_defconfig | 2 ++
>>>  2 files changed, 4 insertions(+)
>>> 
>>> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
>>> index 2fd3461e50ab..f254c352ec57 100644
>>> --- a/arch/riscv/configs/defconfig
>>> +++ b/arch/riscv/configs/defconfig
>>> @@ -1,5 +1,7 @@
>>>  CONFIG_SYSVIPC=y
>>>  CONFIG_POSIX_MQUEUE=y
>>> +CONFIG_NO_HZ_IDLE=y
>>> +CONFIG_HIGH_RES_TIMERS=y
>>>  CONFIG_IKCONFIG=y
>>>  CONFIG_IKCONFIG_PROC=y
>>>  CONFIG_CGROUPS=y
>>> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
>>> index 1a911ed8e772..d5449ef805a3 100644
>>> --- a/arch/riscv/configs/rv32_defconfig
>>> +++ b/arch/riscv/configs/rv32_defconfig
>>> @@ -1,5 +1,7 @@
>>>  CONFIG_SYSVIPC=y
>>>  CONFIG_POSIX_MQUEUE=y
>>> +CONFIG_NO_HZ_IDLE=y
>>> +CONFIG_HIGH_RES_TIMERS=y
>>>  CONFIG_IKCONFIG=y
>>>  CONFIG_IKCONFIG_PROC=y
>>>  CONFIG_CGROUPS=y
>>> --
>>> 2.17.1
>> 
>> Hi All,
>> 
>> Any comments on this one?
>> 
>> @Palmer, It would be nice to have this in Linux-5.2
> My only issue here is testing: IIRC last time we tried this it ended up causing
> trouble.  

Are you talking about the trouble with CONFIG_NO_HZ_IDLE we were seeing last year or something else ?

CONFIG_NO_HZ_IDLE was well tested and fixed last year.

I'm in the process of switching to Yocto right now for my tests, so
> it'll be a bit slow.


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
