Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4312C15FC4E
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 03:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=zG3naML4nxGfd++GddKwkkAKwLe5O8UM12AhXHIHzWI=; b=QBIWZeyAVMWrIzdU3ZOV+SPf5
	BHS/jQeURFZsAv4xIK5FA9YfBxPpRd5n+zW1H5J1+HogZOHP1Lc1wIhpleLq68emYDrowZPTinRdX
	0rD7OciFzRHnf23vWn8ohEikkY2duYx04UWv3G4do1K2EvIV7Z3WLgejlgfgIOlY8Di04/EEWFagw
	b3mNT3wFX0KIpRKqrfcp+wT65dty1d+1UY5deDZ8QuTdgCuBkAlyPXxbm2ZuvDWm0WWCRml0QEw2/
	WpuHg2SK2bTPtLo/rioWONiaMYtbAh92Byuyjzu1sWcbz2pQrbNDapEaa3LQbNS1ChpeSf6I2oZhF
	3M/6aBYqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2mzm-0004ck-Dk; Sat, 15 Feb 2020 02:15:50 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2mzi-0004Kl-VC
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 02:15:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581732947; x=1613268947;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=3nxNVqqnvVPXKclTa7sdotFseT8dAynddXtNWegn9mo=;
 b=UgcT1aNhORCmbps3XtxU4cm5WZ6lW4O+erTdCYPmNJ92CYesGKQG4jp2
 Zercs5hTxvXlFhRonbneAnkVKVzXel/nHjuqESdwkDyOAq5j2oZmBaMIx
 1nnrdPGgAYyxXfTyU2kVuWLkr2QWjS4H6uEuj2jp9tRbhXVgSnsNs3djT
 P0X9xDP6pBmq5lfzESqJgYy970aPNbeNBFh+YIUAiYehliDKMRhDhiwqo
 ay2qpIZN+tiFUenseWn5c4hCjiC1hCV8PP3ecAX6Wpb2ZO/qnbkl6dB8F
 rYihsiVCFiekHzJWTjFoZSsqWFAEBV8g12UXxxxDa5lyVBouRVdFu9bw9 w==;
IronPort-SDR: 7ZSCc7yhebhg/G2x31ZaGinjeTdHXvCLpmjIRCOpbtB3+tFyoXp6/kmH24cU17pb6qTDngoara
 QJ1iZRuOp6mHiFxC8SDpIERwK/2YrsbIL48EU3B9XycBN+ZHwxaJqk7jN4LoavsPFDqWJFeFwK
 GggBzYBe3RMAbG8nxJGNGRvCM4kS5/tzKhtHv68s+nGa4kKe1Wg+LzBQV1+HdXL6WmelRIoQ3j
 0EJ99cwCDe7Yr3VNX70mjH6eCZGvMHb2HXvWHHAvlwWdUHaUGz9fcwI7MDZKHrhoXReAvyJngK
 EW8=
X-IronPort-AV: E=Sophos;i="5.70,442,1574092800"; d="scan'208";a="130432864"
Received: from mail-mw2nam12lp2049.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.49])
 by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2020 10:15:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=He/OMZeuYxd7MEJojk9oo/Cf1E8XUMdlD00IRe9Y4XmY8TWtEaiTiSE3694SFK9qO2VMVp7UAyEVj5PgUQf3XfwW7PZ1At8WXVSKSgGRFjNaCdH0gKBr1VNu0ixafCAHbPadw8YINRN5F0ccpRyLrcjZIQfxsL5leq6LlaPKeLYf8MbNE/fw6vAzz5rW/YK4EAoaoWeVPcz/hEECTDBBm7x9gotRE+BwjPq68mazCIg1HzvvlgdWQugLO+cXEw9v+tu4GD6w0d6LxIWkotBx/Acb3ivUQLr6xScIkxpALV1o9/zH6A9InoGRhSXel9NBi4u4uAIwfCa9JUyaroMt7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zG3naML4nxGfd++GddKwkkAKwLe5O8UM12AhXHIHzWI=;
 b=kQpv3bz/DXO17Zfyg1Y3gJCTCvGsZwrkis5UhIE5gJP1VPj7LnNmmIZ5yTJChvD2o/faGXDQ8V1IBNVhGsIujtV+hzScxFyjeJBnXkseHij8OWTMiUuGYKJPMMkWhI+rmgOLAdAwVaV6/FGurANDtePSubmcY1ZFP2/vNZhPvTvb0BzMBCsBZbbfEfxnucna3fXscYeGBauCjx4cVL8zofOibegxNbGcjq6XSE33C7lHaXK/ylb2PTeqTPg5TMxic33klR6G1p2sCDxhRrZwJqWjzH9iHIBYg1xdTCqIomt+PYejR83pj1EYFqpcBF0GCGacFy/5OVbO/bkcJtH7jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zG3naML4nxGfd++GddKwkkAKwLe5O8UM12AhXHIHzWI=;
 b=zHelKrGnWfVDR+vc+AkqqUpFX8IJYJingdK52pFHh5HL9zh4odfqgMQhY4T815CWrxwnMsWPBj3GnVXrdP64SvsA7y3IAN6Sqb7p7O+aQP3z2mqMW/RbJ7tsSHOrpWawmT5kphp8i0xfvMqpL2yLew4O70GU8s04RTii7DCL4q8=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB5878.namprd04.prod.outlook.com (20.179.57.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Sat, 15 Feb 2020 02:15:35 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61%5]) with mapi id 15.20.2707.031; Sat, 15 Feb 2020
 02:15:34 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 02/10] riscv: Force flat memory model with no-mmu
Thread-Topic: [PATCH 02/10] riscv: Force flat memory model with no-mmu
Thread-Index: AQHV43PjnjkcjlPPqU6LQC7Weju/tQ==
Date: Sat, 15 Feb 2020 02:15:34 +0000
Message-ID: <BYAPR04MB58169D9654E97130A3CFD9BAE7140@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-3-damien.lemoal@wdc.com>
 <05106cc4-3d79-7288-cd1f-0c996e5b1657@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46f3e77a-c09e-4b0a-57e5-08d7b1bcf0c7
x-ms-traffictypediagnostic: BYAPR04MB5878:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB58784B4B473B6622690FFED8E7140@BYAPR04MB5878.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(199004)(189003)(110136005)(33656002)(66476007)(54906003)(316002)(64756008)(66446008)(478600001)(66556008)(55016002)(86362001)(26005)(76116006)(66946007)(7696005)(9686003)(8676002)(81156014)(5660300002)(186003)(8936002)(52536014)(81166006)(53546011)(6506007)(4326008)(71200400001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5878;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FKX1uZ4REfLnzO1O0lg2yaMtrz6T3/pFP5qzdEwj/CMbLn8Ocs7TvRGbInk/RD64qjbUzPx46aLh4cgnhlKP4UUCgoySgUXiGD5WaBtiQP4n/asHUyRgwW5Gj8XKaR5twRW+5Vpx2WjjF86XrwNFw9l3idVRg3q5fEW/uZmrZsu4JIylP/ZQ/0XRVJW48jFejNOCfjKexGG6x+UKMUzwWFjKwF/gRVwNerpxBlTpv86YfcRM4AhyCc/dRxRvqEZEXj+pJzSzweRYmt8HWaK+c+Fgo21Wq7Beu1eS+nZaIPwsys2ozli4tkyg7lUIpbznocbLszjJucdMLw7hY9FYChdZWp6upwApKpJ8j+7EkSWljtoW00pcyNTMFK3Sq6Gvk0N/k/4KDwFhHTAb2tqTaC4liSeyvERY6OipHuAlds5o94urGhfD83JKxYW4TWXP
x-ms-exchange-antispam-messagedata: 2+/an5JeqFnH3ntKHCKiZJF8FeEzs7o06C3SuT/wu6bZuwbo+sUKmGSNuT63pyytfjSLOk8ktzqXr+6b3aw7odj6cIui2DwQyVbFEwDwDyPSNxPXQ6BA5HR3LesmTD/p9WM6y7wLGujW8Usqfll5CQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46f3e77a-c09e-4b0a-57e5-08d7b1bcf0c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 02:15:34.5569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6G8Ehia+LGCmJoN9665AJYqOkV/lHT7vHurOjZYdOAuClz6Ng46iRh96y51j8r3D/3ULGYLZii8dTSP/XAxtNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_181547_021828_7EF09D75 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

On 2020/02/15 5:18, Sean Anderson wrote:=0A=
> Hi,=0A=
> =0A=
> On 2/12/20 5:34 AM, Damien Le Moal wrote:=0A=
>> Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for=0A=
>> a nommu kernel. Since the sparsemem model does not make sense anyway=0A=
>> for the nommu case, do not allow selecting this option to always use=0A=
>> the flatmem model.=0A=
>>=0A=
>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>> ---=0A=
>>  arch/riscv/Kconfig | 1 +=0A=
>>  1 file changed, 1 insertion(+)=0A=
>>=0A=
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig=0A=
>> index 73f029eae0cc..1a3b5a5276be 100644=0A=
>> --- a/arch/riscv/Kconfig=0A=
>> +++ b/arch/riscv/Kconfig=0A=
>> @@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE=0A=
>>  =0A=
>>  config ARCH_SPARSEMEM_ENABLE=0A=
>>  	def_bool y=0A=
>> +	depends on MMU=0A=
>>  	select SPARSEMEM_VMEMMAP_ENABLE=0A=
>>  =0A=
>>  config ARCH_SELECT_MEMORY_MODEL=0A=
>>=0A=
> =0A=
> Just for some background, why did you choose NOMMU? Afaik the K210 has=0A=
> an MMU following the RISC-V privileged specification 1.9=0A=
=0A=
Our early experiments with the k210 with opensbi revealed that the mmu is=
=0A=
definitely not a normal one or that it is not functional (e.g. S-mode fault=
=0A=
delegation bit setup leads to a hang). So at the time, we started assuming=
=0A=
that this is a nommu platform.=0A=
=0A=
Since then, others also mentioned that there is in fact an MMU but not=0A=
following the latest specs (I think Olof mentioned that). But I have not=0A=
look into this (yet) to try to make it work. Not sure how much effort would=
=0A=
be needed on the kernel to support this older specs mmu.=0A=
=0A=
In any case, considering the tiny 6+2MB of memory available, direct M-mode=
=0A=
Linux boot avoids the bootloader chain and openSBI use, which saves a lot=
=0A=
of memory. We could reduce this chain to opensbi with direct payload only,=
=0A=
but even then, page alignment will lead to memory loss. And at run-time,=0A=
nommu saves a lot too with the absence of page tables. Nommu makes sense=0A=
for this platform.=0A=
=0A=
This is the first step to get this platform running Linux. Due to the low=
=0A=
memory, it probably isn't a practical use case to use Linux in the first=0A=
place, but it definitely is a great inexpensive platform for getting=0A=
started with RISCV. NOMMU allows running Linux without much effort. Going=
=0A=
forward, we can also try to get that SoC MMU running.=0A=
=0A=
=0A=
> =0A=
> --Sean=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

