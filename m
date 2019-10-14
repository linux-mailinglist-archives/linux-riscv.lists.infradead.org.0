Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D17D5E92
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 11:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVJvHJLnN039UdSFzykMQYLWbCjItPGiygAYmR+2PZA=; b=TQT0MQxCCao02d
	bKRTXi4Fkur/yz7KNyc+MObQS7ksBBhbpWi0LCwkXo7zJpALJJCctvpJbxPaKXM5zWGeTWB7GkNdL
	vefrEMl0yGO8nwJCNYBKBjHI/V6+p3o12XG5n9S2s9tt8Y1qcTwmDtytfirUs9FArcXOdf/wsw9Zs
	Euavsrdx8SmqCuDawbvdW8pFEwcgzJURDYB7X+V3ipf4cakARjiVVWWg4W1y6/a9bKtRVUiNycLcj
	vCMKpcPp5rCeT9MLdQ2wzJh1L/iuqmhGE7a6dcAXk3VYWc8xzs1BPgbYDYEQqMix/f2q338pzFS1p
	+WEmhDa2tlQ/zaF2J5hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwWh-0001jz-LE; Mon, 14 Oct 2019 09:20:27 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwWe-0001j6-Dp
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 09:20:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571044824; x=1602580824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yX9778eXq2N4OM51P4IdRaRkW15I40tzd3qRShew80A=;
 b=dH+Uex1hfKN6Uc4ggYg/4W0yuazJdjJ/g+7vtEqEwYvQiunP61objFsH
 UZXTF/HKZxCDCdq6fIBOdFfKF5WAyJGrzWaYkNOOcTiAwZct665tsmQgV
 MXyMCZMnG7k9K/DClp+b2ndfkxuwxEu1mFPsJ7MjJwqhKcR6gS/DgRaDq
 E5JntZbgPe1RNf7LqQMrfx4X6xC+yXiIn+MprIgJW58sCOjVwcpqZJuiL
 uU0tQU26KNeBn6k7SQIi08v5q2KkPXJjbFoNsOa+fztXbmYoABcdHRxk1
 yNMih3jo1v7FOuBTdLg/lgCMd3kBmG7h1+j4o+h3Cah8DAMEZkbHodSl/ Q==;
IronPort-SDR: VGLi7u7VoiHqnQ4hBAYlzkREHI8kHIbqUIH9F6FvkzK0HpXJuYYnZ+1PVKJRh4EWqFJu49O+Ll
 IUTb2avmpjqyDkgKZcRTSFaNjYArjYlkNbb6WosAVTOP6oTNnVdOz26kB4isHcjqOo7Y2U0VGp
 2DUajqS8Lota/A8NnSJXjdA0JHKKBK3qEWPXpzII/4gFCCzAk/EAi1jVchZIGZ0tngE+wtPICQ
 OoGHwH0LmWz74Bf0d88aQKgKlykiEYClKZrtTvnz7w08eY3cZrGAiE7ezdkBa6i3S6ZNlzQeE7
 iaw=
X-IronPort-AV: E=Sophos;i="5.67,295,1566835200"; d="scan'208";a="122061963"
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
 by ob1.hgst.iphmx.com with ESMTP; 14 Oct 2019 17:20:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6NT1IoTSOgLyToGqIoBXi0sHvddmNnd4q7fN21GVfttJwfOI/cqdOYaaSfPp9P2IEPlH5hmcQd1gM0vR98BmShwoibm3WBmBasJkscUSArhJM7l+2ORdBJOwhmgfFpKpmnAXbeRr20XQxxeg9GMbIHHgoGVnN6JGezsGKRf8mJze5YwunQT0z47li6kgaXteg6SNJrgyZcSUG/y85MpXvMzI0xK6+wLykqGJQRas3jMn12q3xfvPkdA92aw6b4tughBRt5xiDK7Vm3n/E+SAtNudDaZChK6o2dfmWGv+uEoFVvLwFNx8nmFV8R8C/IDsS97FNHQcVmrXwGMl4YTzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yX9778eXq2N4OM51P4IdRaRkW15I40tzd3qRShew80A=;
 b=m2OYNzH84PKu/Z9jx1VUhPTH1eeUNkry6olw/WSjyoDYCzd3udt5/tJc2daLuKMKqyXj4YlWM8E3nm0eia0/qfERxQAOqVvpqcZzkaEvlSqq1SVLjKo/1vk0BNtPIR+oPInDJgr54ctAz0eHe1SVbOFKBVzSXA7JxvLTQ8Vg5+CW0HvWZl0iKUagZL5IjWDA69vM94saauCjMdzvFCnYxMmO6H3mGDw0EktMcyBLwPNayu4qkvMoCGrK+sI4vOKOEUt7cEbCeozBnybAjZ8SRbldCIEqWgupnuvwF21Db6A0/aOLf5YVW92IAyD0A3MwkQf/WMiY9vApLtRbjQiCew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yX9778eXq2N4OM51P4IdRaRkW15I40tzd3qRShew80A=;
 b=U7XpU2g1nFjJac7N1paEwlV4xriSA0hwi3UbN8MrAc1ff075zSILYIt+iIEII5b/w/sRY+yKFBL1ajiyuHB9Q7Hp6DryyygLO3G+S5mtDPmVrasrodY0Fh3bHbHOWlUfgSZWEYWAtCJRJwR5SuoXcEtGHyrSzQNMjcMXN2fiaLY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6462.namprd04.prod.outlook.com (52.132.170.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Mon, 14 Oct 2019 09:20:20 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 09:20:20 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: RE: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Topic: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Index: AQHVc2vL/aB/O/VoT0mkZEceqSj8FKdXYO6AgAKYfpA=
Date: Mon, 14 Oct 2019 09:20:19 +0000
Message-ID: <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
In-Reply-To: <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [49.207.50.234]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae7b64ac-e756-4cc1-f799-08d75087bc18
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6462:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB64629F56AA8760220C84CA578D900@MN2PR04MB6462.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(199004)(189003)(13464003)(6916009)(86362001)(4326008)(6436002)(55016002)(33656002)(7696005)(7736002)(8936002)(76176011)(81156014)(81166006)(305945005)(6116002)(99286004)(9686003)(6246003)(229853002)(8676002)(316002)(54906003)(74316002)(3846002)(186003)(66946007)(6506007)(66476007)(66556008)(66446008)(64756008)(14454004)(446003)(11346002)(14444005)(256004)(76116006)(53546011)(102836004)(26005)(55236004)(71200400001)(486006)(476003)(2906002)(5660300002)(25786009)(71190400001)(52536014)(66066001)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6462;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JnicT85MkTyPhPcUy2xo/1Kj/TNECaVOLmIYZi7Ecby2iRp9+2676YZDZntJVUWUh5Dh2lrwcVWw6H2s2wlSmAVPZcA/qyVzrqllwESE3n9C2htRab+QHxCq0sew0smNv+IkGrR6RfEgvOt0gO+WqP0GKCgJq24LrWosklXCyf7xF512OqlopNbbS9cz6mzentGOZtPIL5KF7Tm6fYuJxmS9PLVrNJfgPcGpETjcMwv3xqWdp5XJ9wwJ07606nGxj48jvB+38+Sx5UQyZ76OAhBRgUN+b79JgTYNjs6QfjdClykAx8vsg3FFZYoU4Qt7bcS5b4UHkP9DwH50safRMBj2pbTn638Hx0tuRkY23cVEEFGtEwYzuYFprrbG91uUPj5P6usVM3NQGPOVWxiw/c+Nj0S8s+uB9z5v4fHYB6o=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7b64ac-e756-4cc1-f799-08d75087bc18
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 09:20:20.0595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iBG/BxsyezrJCYqRnBCU766wpgdhPWe8iud44OGQ3g60XuoTbXKF2uyHp4GowXj8LfD+OGbwV4+jX5QsYu6R5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_022024_575597_CC50CDE4 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Greg KH <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Palmer Dabbelt <palmer@sifive.com>
> Sent: Saturday, October 12, 2019 11:09 PM
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu;
> Greg KH <gregkh@linuxfoundation.org>; rkir@google.com; Atish Patra
> <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> Christoph Hellwig <hch@infradead.org>; anup@brainfault.org; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Anup Patel
> <Anup.Patel@wdc.com>
> Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
> 
> On Tue, 24 Sep 2019 23:38:08 PDT (-0700), Anup Patel wrote:
> > We have Goldfish RTC device available on QEMU RISC-V virt machine
> > hence enable required driver in RV32 and RV64 defconfigs.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  arch/riscv/configs/defconfig      | 3 +++
> >  arch/riscv/configs/rv32_defconfig | 3 +++
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/arch/riscv/configs/defconfig
> > b/arch/riscv/configs/defconfig index 3efff552a261..57b4f67b0c0b 100644
> > --- a/arch/riscv/configs/defconfig
> > +++ b/arch/riscv/configs/defconfig
> > @@ -73,7 +73,10 @@ CONFIG_USB_STORAGE=y  CONFIG_USB_UAS=y
> > CONFIG_MMC=y  CONFIG_MMC_SPI=y
> > +CONFIG_RTC_CLASS=y
> > +CONFIG_RTC_DRV_GOLDFISH=y
> >  CONFIG_VIRTIO_MMIO=y
> > +CONFIG_GOLDFISH=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> >  CONFIG_AUTOFS4_FS=y
> > diff --git a/arch/riscv/configs/rv32_defconfig
> > b/arch/riscv/configs/rv32_defconfig
> > index 7da93e494445..50716c1395aa 100644
> > --- a/arch/riscv/configs/rv32_defconfig
> > +++ b/arch/riscv/configs/rv32_defconfig
> > @@ -69,7 +69,10 @@ CONFIG_USB_OHCI_HCD=y
> > CONFIG_USB_OHCI_HCD_PLATFORM=y  CONFIG_USB_STORAGE=y
> CONFIG_USB_UAS=y
> > +CONFIG_RTC_CLASS=y
> > +CONFIG_RTC_DRV_GOLDFISH=y
> >  CONFIG_VIRTIO_MMIO=y
> > +CONFIG_GOLDFISH=y
> >  CONFIG_SIFIVE_PLIC=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> > --
> > 2.17.1
> 
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> 
> IIRC there was supposed to be a follow-up to your QEMU patch set to rebase
> it on top of a refactoring of their RTC code, but I don't see it in my inbox.  LMK
> if I missed it, as QEMU's soft freeze is in a few weeks and I'd like to make
> sure I get everything in.

I was hoping for QEMU RTC refactoring to be merged soon but it has not
happened so far. I will wait couple of more days then send v3 of QEMU
patches.

> 
> Additionally: we should refactor our Kconfig to have some sort of
> CONFIG_SOC_VIRT that selects this stuff, like we have the
> CONFIG_SOC_SIFIVE.
> This will explicitly document why devices are in the defconfig, avoid
> duplicating a bunch of stuff between defconfigs, and provide an example of
> how we support multiple SOCs in a single image.

Yes, indeed we need CONFIG_SOC_VIRT but this will be a separate patch.

> 
> I don't see why either of these should block merging the patch, though.

Thanks,
Anup
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
