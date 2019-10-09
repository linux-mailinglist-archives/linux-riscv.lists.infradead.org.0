Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E18D0567
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 04:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+UoaLoNX7alszTD6SVQ5bqeUUYKTEO0eY4u2Zt6CAk=; b=ZtJ8W7gWDp19t1
	nPZcXHlpP6u3HWcEWbr9a6n0NGHl2ueJ6di8YRD9+KP+zduHxauIUWT1XghkS7fG8M6EukGrBljl5
	pdL6HgvlKnSV4giPbNPW++uibDchWraF9yicQlZamz4VCNfe1xbHhP0wR+UKKYRYXRdi0WyRgKNST
	nRAs7vXjZ9t2KDQkzYU6Ef/rRdujbKqgPy0S/AUDoI9cwK9guHLz6d6d81e8hlUO0DKIWF9TbVyK6
	XBlZ66/zvelUZr+VIRVzFmFgHzPaoADO3xZpdYlYol8wIobIwmy340LCqWLuat2AfXN+QQ9Kc8ehr
	f9XWBGTe7/Ljp3bEoU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI1OM-0005os-H4; Wed, 09 Oct 2019 02:07:54 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI1O8-0005gH-H5; Wed, 09 Oct 2019 02:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570586861; x=1602122861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=J13AgpN1xVBDLgm7Hl/VUoPQhKCzV6Aue5QPxRqh5sw=;
 b=NchqyyJ9yjXFGDmrClfpsXZhjTP7/bJ1p283sL6cl37Cx8Eo+MSxxqRr
 fmgbkNi1cJVTVZgOOZN0us7aG6elNQ8Gv3DzeohW6cs7bO1seg9ytTj6U
 p9tUJs13UXoTboLXbCqwHnN0VX49h4a6S2t68rzcR1w/3Hc8b9GekRAed
 itJgEea1TJxrWog01InX1d8gKjWmyy6LmHQFzs02xxnCmqk4Hu7+k34tB
 ASTRL/sBG6ADwYD8NkqBMYb6WK27pU9efvoTjlildnEw3VxEd5ShQRfAj
 awuwnynUeEPRa+/uvTKe21xoskmgjcx0Nyks8Q9UHVvJ24kRA1PFCUICF Q==;
IronPort-SDR: l2OcCE+XwKM2Vh/HbzQqsAo+4ru/gL7bof61tf/upCToO52EKaXDoh1qiemKQMGIKbxaHgphvB
 aeq7C6rpiSE5Uqiw01JilgvcnNYLF7SgC465sA/EM5ylf9KilzvW0fCVU8BQMPAtCkoS8d7IQB
 BPLUhna3Zt+TcgeY8nM3U72uUt9qhbZMbHKKM2ItjYZ18E8FeJ+dSKLqnG8Otc5aaDZcy7nc4r
 RhW9krc7IQG6cLZEUo8pDoZjwkFbwGbZ0c3DDJLvLExm5P8+i2YVeyJp573qKbBCuqxFmw+pbp
 jD8=
X-IronPort-AV: E=Sophos;i="5.67,273,1566835200"; d="scan'208";a="121687209"
Received: from mail-by2nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.51])
 by ob1.hgst.iphmx.com with ESMTP; 09 Oct 2019 10:07:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MpqU8U2iU6MtMbpbFxUAUsal/Jzet9RhpFtEQwa3IZjUuumAFsUMOWbyMLTvgLBdx30ZQi7D+sGRO/qEiid21VLkbNLshLGY7SEmwNyTeChyIu8bh64/e2jdiIXgWRmB+x38U8YnpcbCDiW5Ayk5/cexOD8fPl+Z8rzQJSYv90HiVDlB2Q2FOC2R1M3JthqDjMkSpwwGLmtHQtjcv/W2SwljcHW6MfvOLhMCRWvdIi1UHrPC3KqrXOnH7Kf10X6gE4A/E0ciEPIUDVSox2m0t2Ba5vliZwxsE7haQzXx1xtXdz0X8eUge6p0rBXSmYmhK8XwBORbqhzA1a8CDyKbQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J13AgpN1xVBDLgm7Hl/VUoPQhKCzV6Aue5QPxRqh5sw=;
 b=DFuJTjsR+rhLOPVwrCKJnhFsBzEfhPFD1GPu3apY9tYjsUTyit7k+V1FcO2VKpLQRgybToAGaiSnT1gZBOtCIcFEwukNvjgxBuMotTDkp3Qx+gkcIpJ2LFOvy/LGZvHTRdA7AzhRJ1+xNWAJmM+phMsT+HET7cLCerQ1Ze3AyQUXpReC4ACIhb1TgwVul5tqL2EZ4IOjuCaH+TqvjkjTFoBFBzWc8Uwe/o1yDZzjfYEVGOG/UQqvl1K2Em0wwdcEYopM1Li4mWnGnos7WKm9rmyxsnIi4QAAa7lNsySJHZ80u+XEqlOj6dmwRsyz2b1Kj2UNm5f1mRN2swHt7itlxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J13AgpN1xVBDLgm7Hl/VUoPQhKCzV6Aue5QPxRqh5sw=;
 b=F7j+4s+2rGltSmrZRDwAfdiNmnAU3rmj85WZI2XXIibDROW74Oq12Q3JeiG9JmccCInFuHJ+MQ05dQZd2A+gpOpZrSMo/yp3fxBBonWpZGJO05IHu72Cb3jsdxDVskb5laH68b/7JEmha0hhZmjoFzd9EYC5ueYVvKBSnGyna+Q=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4439.namprd04.prod.outlook.com (20.176.249.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 02:07:36 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2327.023; Wed, 9 Oct 2019
 02:07:36 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "alex@ghiti.fr" <alex@ghiti.fr>
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Topic: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Index: AQHVTbNRR2y1x3jR5Uinm4nvlyFP7KdLqT4AgAOZyQCAAQUZAIAAu9IAgADtSYA=
Date: Wed, 9 Oct 2019 02:07:36 +0000
Message-ID: <d9bc696aa9d1e306e4cff04a2926b0faa2dc5587.camel@wdc.com>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
 <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
 <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
 <daeb33415751ef16a717f6ff6a29486110c503d7.camel@wdc.com>
 <9e9a3fea-d8a3-ae62-317a-740773f0725c@ghiti.fr>
In-Reply-To: <9e9a3fea-d8a3-ae62-317a-740773f0725c@ghiti.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de50d0c6-a896-46a7-c1cc-08d74c5d7447
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4439:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB44394A028A5EEC7A432BFE69FA950@BYAPR04MB4439.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(366004)(39860400002)(396003)(52314003)(199004)(189003)(6436002)(71190400001)(71200400001)(6246003)(4326008)(2351001)(86362001)(81166006)(81156014)(1730700003)(8676002)(54906003)(6512007)(8936002)(5640700003)(6486002)(229853002)(66066001)(316002)(3846002)(36756003)(6116002)(486006)(476003)(2616005)(66946007)(66476007)(66556008)(64756008)(25786009)(2501003)(11346002)(966005)(446003)(76116006)(5660300002)(6506007)(66446008)(14454004)(5024004)(99286004)(6306002)(256004)(76176011)(14444005)(478600001)(19627235002)(53546011)(6916009)(118296001)(186003)(2906002)(102836004)(26005)(7736002)(305945005)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4439;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q0IcDNHQdKqvW9nUVZb2i7xTP98LU5yhrqmakKILqdzqmj4uWeiqA1c4gJsLofcdMK24efmlvaYLMwj4rtKHkFdGLt0HfIM+JFiRftIZml618vIN3bp1ORZBm7fethS/zhmUneMMEv7jsmArwmsWNnCuciQHWAFlBveGMXw88SNZSjIUsk/7kR9sQvXxI9ABkKwaemQm2gisCXQH4I6PnXY1ymPzrGDuNxzS6CbzCUeyAOiYPm66RItGTC4myPG55/gw0U6iJyhBCG/tkf7FLJvTGXn+z8K8h41mW1vL1ghFtksIq68JFhJ7Y9Ooxu8rKde/8zerc2muao5T5csBn52lEM1ElU4X10OplS4HqcjcdmSNQ+wLhAnvrAZEmPionPrKpvwfCa0CSGMxTc3fVDElf3ehBQpexa4HTnGMcencT+3Yi82n1eiV54quZONPS7rhuascybKBJd/wAChKfA==
x-ms-exchange-transport-forked: True
Content-ID: <76C760FDEAAE154FBEDE2E971E6354A2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de50d0c6-a896-46a7-c1cc-08d74c5d7447
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 02:07:36.1294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ai5CPpLYWqhy7+bUXhWbsRMWNkbn+1wXT2geeFnWnDgqQ2JezhBkdQA3bs0BWFIPS6DnnhBmo3HXbZnPa9FL4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4439
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_190740_684910_5590D978 
X-CRM114-Status: GOOD (  29.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcgrof@kernel.org" <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 07:58 -0400, Alex Ghiti wrote:
> On 10/7/19 8:46 PM, Atish Patra wrote:
> > On Mon, 2019-10-07 at 05:11 -0400, Alex Ghiti wrote:
> > > On 10/4/19 10:12 PM, Atish Patra wrote:
> > > > On Thu, 2019-08-08 at 02:17 -0400, Alexandre Ghiti wrote:
> > > > > In order to avoid wasting user address space by using bottom-
> > > > > up
> > > > > mmap
> > > > > allocation scheme, prefer top-down scheme when possible.
> > > > > 
> > > > > Before:
> > > > > root@qemuriscv64:~# cat /proc/self/maps
> > > > > 00010000-00016000 r-xp 00000000 fe:00
> > > > > 6389       /bin/cat.coreutils
> > > > > 00016000-00017000 r--p 00005000 fe:00
> > > > > 6389       /bin/cat.coreutils
> > > > > 00017000-00018000 rw-p 00006000 fe:00
> > > > > 6389       /bin/cat.coreutils
> > > > > 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> > > > > 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-
> > > > > 2.28.so
> > > > > 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-
> > > > > 2.28.so
> > > > > 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-
> > > > > 2.28.so
> > > > > 155556f000-1555570000 rw-p 00000000 00:00 0
> > > > > 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> > > > > 1555574000-1555576000 rw-p 00000000 00:00 0
> > > > > 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-
> > > > > 2.28.so
> > > > > 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-
> > > > > 2.28.so
> > > > > 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-
> > > > > 2.28.so
> > > > > 155567a000-15556a0000 rw-p 00000000 00:00 0
> > > > > 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> > > > > 
> > > > > After:
> > > > > root@qemuriscv64:~# cat /proc/self/maps
> > > > > 00010000-00016000 r-xp 00000000 fe:00
> > > > > 6389       /bin/cat.coreutils
> > > > > 00016000-00017000 r--p 00005000 fe:00
> > > > > 6389       /bin/cat.coreutils
> > > > > 00017000-00018000 rw-p 00006000 fe:00
> > > > > 6389       /bin/cat.coreutils
> > > > > 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> > > > > 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> > > > > 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-
> > > > > 2.28.so
> > > > > 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-
> > > > > 2.28.so
> > > > > 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-
> > > > > 2.28.so
> > > > > 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> > > > > 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> > > > > 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-
> > > > > 2.28.so
> > > > > 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-
> > > > > 2.28.so
> > > > > 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-
> > > > > 2.28.so
> > > > > 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> > > > > 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> > > > > 
> > > > > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> > > > > Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > > Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> > > > > ---
> > > > >    arch/riscv/Kconfig | 12 ++++++++++++
> > > > >    1 file changed, 12 insertions(+)
> > > > > 
> > > > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > > > index 59a4727ecd6c..87dc5370becb 100644
> > > > > --- a/arch/riscv/Kconfig
> > > > > +++ b/arch/riscv/Kconfig
> > > > > @@ -54,6 +54,18 @@ config RISCV
> > > > >    	select EDAC_SUPPORT
> > > > >    	select ARCH_HAS_GIGANTIC_PAGE
> > > > >    	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> > > > > +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> > > > > +	select HAVE_ARCH_MMAP_RND_BITS
> > > > > +
> > > > > +config ARCH_MMAP_RND_BITS_MIN
> > > > > +	default 18 if 6legacy_va_layout4BIT
> > > > > +	default 8
> > > > > +
> > > > > +# max bits determined by the following formula:
> > > > > +#  VA_BITS - PAGE_SHIFT - 3
> > > > > +config ARCH_MMAP_RND_BITS_MAX
> > > > > +	default 24 if 64BIT # SV39 based
> > > > > +	default 17
> > > > >    
> > > > >    config MMU
> > > > >    	def_bool y
> > > > With this patch, I am not able to boot a Fedora Linux(a Gnome
> > > > desktop
> > > > image) on RISC-V hardware (Unleashed + Microsemi Expansion
> > > > board).
> > > > The
> > > > booting gets stuck right after systemd starts.
> > > > 
> > > > https://paste.fedoraproject.org/paste/TOrUMqqKH-pGFX7CnfajDg
> > > > 
> > > > Reverting just this patch allow to boot Fedora successfully on
> > > > specific
> > > > RISC-V hardware. I have not root caused the issue but it looks
> > > > like
> > > > it
> > > > might have messed userpsace mapping.
> > > It might have messed userspace mapping but not enough to make
> > > userspace
> > > completely broken
> > > as systemd does some things. I would try to boot in legacy
> > > layout:
> > > if
> > > you can try to set sysctl legacy_va_layout
> > > at boottime, it will map userspace as it was before (bottom-up).
> > > If
> > > that
> > > does not work, the problem could
> > > be the randomization that is activated by default now.
> > Randomization may not be the issue. I just removed
> > ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT from the config and that
> > seems to
> > work. Here is the bottom-up layout with randomization on.
> 
> Oups, sorry for my previous answer, I missed yours that landed in 
> another folder.
> 
> Removing ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT also removes
> randomization
> as this config selects ARCH_HAS_ELF_RANDOMIZE.
> You could remove ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT and selects by
> hand
> ARCH_HAS_ELF_RANDOMIZE but you would have to implement arch_mmap_rnd
> and
> arch_randomize_brk (elf-randomize.h).
> 

Ahh okay.

> The simplest would be to boot in legacy layout: I did not find a way
> to 
> set this in kernel
> command line, but you can by modifying it directly in the code:
> 
> https://elixir.bootlin.com/linux/v5.4-rc2/source/kernel/sysctl.c#L269
> 

Setting this to 1 works. 

> > [root@fedora-riscv ~]# cat /proc/self/maps
> > 1555556000-1555570000 r-xp 00000000 103:01
> > 280098                        /usr/lib64/ld-2.28.so
> > 1555570000-1555571000 r--p 00019000 103:01
> > 280098                        /usr/lib64/ld-2.28.so
> > 1555571000-1555572000 rw-p 0001a000 103:01
> > 280098                        /usr/lib64/ld-2.28.so
> > 1555572000-1555573000 rw-p 00000000 00:00 0
> > 1555573000-1555575000 r-xp 00000000 00:00
> > 0                              [vdso]
> > 1555575000-1555576000 r--p 00000000 103:01
> > 50936                         /usr/lib/locale/en_US.utf8/LC_IDENTIF
> > ICAT
> > ION
> > 1555576000-155557d000 r--s 00000000 103:01
> > 280826                        /usr/lib64/gconv/gconv-modules.cache
> > 155557d000-155557e000 r--p 00000000 103:01
> > 50937                         /usr/lib/locale/en_US.utf8/LC_MEASURE
> > MENT
> > 155557e000-155557f000 r--p 00000000 103:01
> > 50939                         /usr/lib/locale/en_US.utf8/LC_TELEPHO
> > NE
> > 155557f000-1555580000 r--p 00000000 103:01
> > 3706                          /usr/lib/locale/en_US.utf8/LC_ADDRESS
> > 1555580000-1555581000 r--p 00000000 103:01
> > 50944                         /usr/lib/locale/en_US.utf8/LC_NAME
> > 1555581000-1555582000 r--p 00000000 103:01
> > 3775                          /usr/lib/locale/en_US.utf8/LC_PAPER
> > 1555582000-1555583000 r--p 00000000 103:01
> > 3758                          /usr/lib/locale/en_US.utf8/LC_MESSAGE
> > S/SY
> > S_LC_MESSAGES
> > 1555583000-1555584000 r--p 00000000 103:01
> > 50938                         /usr/lib/locale/en_US.utf8/LC_MONETAR
> > Y
> > 1555584000-1555585000 r--p 00000000 103:01
> > 50940                         /usr/lib/locale/en_US.utf8/LC_TIME
> > 1555585000-1555586000 r--p 00000000 103:01
> > 50945                         /usr/lib/locale/en_US.utf8/LC_NUMERIC
> > 1555590000-1555592000 rw-p 00000000 00:00 0
> > 1555592000-15556b1000 r-xp 00000000 103:01
> > 280105                        /usr/lib64/libc-2.28.so
> > 15556b1000-15556b5000 r--p 0011e000 103:01
> > 280105                        /usr/lib64/libc-2.28.so
> > 15556b5000-15556b7000 rw-p 00122000 103:01
> > 280105                        /usr/lib64/libc-2.28.so
> > 15556b7000-15556bb000 rw-p 00000000 00:00 0
> > 15556bb000-1555933000 r--p 00000000 103:01
> > 3755                          /usr/lib/locale/en_US.utf8/LC_COLLATE
> > 1555933000-1555986000 r--p 00000000 103:01
> > 50942                         /usr/lib/locale/en_US.utf8/LC_CTYPE
> > 1555986000-15559a8000 rw-p 00000000 00:00 0
> > 2aaaaaa000-2aaaab1000 r-xp 00000000 103:01
> > 283975                        /usr/bin/cat
> > 2aaaab1000-2aaaab2000 r--p 00006000 103:01
> > 283975                        /usr/bin/cat
> > 2aaaab2000-2aaaab3000 rw-p 00007000 103:01
> > 283975                        /usr/bin/cat
> > 2aaaab3000-2aaaad4000 rw-p 00000000 00:00
> > 0                              [heap]
> > 3fffc97000-3fffcb8000 rw-p 00000000 00:00
> > 0                              [stack]
> > 
> > 
> > > Anyway, it's weird since userspace should not depend on how the
> > > mapping is.
> > > 
> > > If you can identify the program that stalls, that would be
> > > fantastic
> > > :)
> > > 
> > It stucks while booting. So I am not sure how to figure out which
> > program stalls. It is difficult to figure out from boot log as it
> > stucks at different places but soon after systemd starts.
> 
> If you can attach the running kernel, I would use vmlinux-gdb.py
> commands
> to figure out which processes are running (lx-ps command in
> particular could
> give us a hint). You can also add traces directly in the kernel and 
> either use
> lx-dmesg command to print them from gdb or use your standard serial
> output:
> I would then print task_struct->comm at context switch to see which
> process
> is stuck.
> To use the python script, you need to recompile with DEBUG_INFO and
> GDB_SCRIPTS enabled.
> 
> FYI, I have just booted a custom buildroot image based on kernel 5.4-
> rc2.
> 

vmlinux-gdb.py works only if you are running in Qemu or have a JTAG.
Right ? 

I am seeing this issue only on HiFive Unleashed + Microsemi Expansion
board with Fedora Gnome desktop image. I can even boot a Fedora
developer image on same hardware and a busybox image in Unleashed
without any issues. But the issue is not specific to fedora as we see
the same issue in OpenEmbedded disk image as well (HiFive Unleashed +
Microsemi Expansion board). 

May be it gets triggerd only if bigger userspace ?


> Let me know if I can do anything.
> 
> Alex
> 
> > > As the code is common to mips and arm now and I did not hear from
> > > them,
> > > I imagine the problem comes
> > > from us.
> > > 
> > > Alex

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
