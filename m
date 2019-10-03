Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A31CB22C
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 01:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOvs4jDO+QNsEJxi+XaJ+bMgWLKZVsF2kRgUTLY8euM=; b=A4Y664jhzGi1zN
	zaCqO/C3vmkIGTHYXJGQzn3nsTINBnLCZYUd+rhMFoQLEoT29+/a7497kXXLsrTJF8NR9z9J3l9y1
	h3uxCUzb0Yquty+JR/q/mjYqAoHnwkgy5NK0O8rTjjhpl1HfHta+cxYuwULSUNnnrORHoUCFpnaHb
	rD3YVbEg61579dBP47b/zoXW6lRPCvlgl+y86Sgn1xy6sdZCfUc+7vVFBSEYSXGCQuE1ejCum1z+b
	cciYUS47VZqaoFvFNVVevYMNhrnWnDSg7jVnYGGeLdYAv3dKGpL5EArDJeGb8FRL6ZbI2rf5pjOLR
	1Y188ZW9vi4fAihEMEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGAHd-0008W2-3F; Thu, 03 Oct 2019 23:13:17 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGAHZ-0008Uq-3p
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 23:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570144418; x=1601680418;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=48KxT8IyJ1JduvzW1dl0ocdCiaX4wwcbuxbn+yER+GY=;
 b=a0WcD+1rllYqy73EAA7pP/qMUv/CMUl9jdhsL5CBkRzb+atgC2UK8MLj
 RV6xgtf87Y/fsR7zGP0czqouCQ5rqV4qXIKEEeiRl+w8jlIz7hfSw/LnD
 EdYO/AJl9gjy90CN3/Uc1GP4xWG5LikI/rm4TxlPPvnGVQfk/FV4TK/yE
 x1Bdjmp+Opc/4gEmbtm9egw1YZ30SCFDsKxN6N/kEl+tHDnaRAQstTgXY
 NCNm7mwxdHEHOTA9CBTn0OphCjNiAjz9JkeRpbq1NfpkIM0ekSy6iqlmi
 F/JG1bhaOzhQmMr++4R5LaaWYrqcHKxrSC/ovDXM4tleXdBK/qSE3lbvG A==;
IronPort-SDR: Pnm7a5e+S0Q1U4hjh4ls3yVOiWO1FSlIuwh1jwfWHdEnLHq8mOM6WbLttt21ndIX2cWRxQLwhx
 GixTbVrUFkPdXIv5jDVq1HwzJk2pYh4XypX/jJ0heB00yhebBHCsI9AqtK9c6B8o73ECSCKPMd
 Sq5OS2A2bnLoO0NAaDK0Ciqr+8TuHvnNuweGKA+l6jzvfxyvehgaRjgQHMizXFusGgO3pDvvpi
 UZlH7OkZHDhHsng2Qta99h2wY4+xctgA3RwepyajpBFMzycZjnXo1QgSyvSslGrbqBiF5qfYyK
 L9c=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.67,254,1566835200"; d="scan'208";a="220698773"
Received: from mail-dm3nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.59])
 by ob1.hgst.iphmx.com with ESMTP; 04 Oct 2019 07:13:24 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GdM8ZyVGBxy3ffmdIuz2ataqkX4GoXICfgbvABp/vG61rjIY6ykiKcP7StoSaJyZDG8X74Kz+56eCPk5X5k01fCkE1F2Aklc9DLntACbjOZqVhLhLJEDuENmBa3Fzef71qPWap+cxHCBFjwJH7xb7mAM8pMMCLfuaBfUHgKX+yaTvV7xhDyAXlGAUQVuTETZA9+5l674Gc5Ghq9tMnV8tN5qlBalO7VhalLmeZInLZrWtlhGOwIkaPEl7eBqbp/gshAPvdOkgGhiB9GRLKjsjXXUbvOy3xmyUX7399DbehtJF25PUDE4jBkrDllkucZQIi6K1tFKxYHlS5KEepuf9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=48KxT8IyJ1JduvzW1dl0ocdCiaX4wwcbuxbn+yER+GY=;
 b=FatPmmKqw34WPqdjsB92QIluYnbquzurPjuAhM9FEqViWO4CluFWRnT49ADvnXmgeB+2U+VvJpCFR3BV4hnScAWIzZK+Eo6Qq9XUqdSXEBVDQkzvMKrZX0GuXtKXjmPxDeYhvrfTHS9Enf0pR0OMAB3nndZeYf70+UKp3dvstzieXwh/96QgJfvLvvu3Szdh+UB9GN1tNUX6b62GifmHb55Th7WlPcE5gQCxiw1tby/nhf1mdwVCiTTQdQOxOOfFZlpecXH++sbOlRO3oRwk9hm9E/luWdCjguUXmtQU9morUP4mBKVmYnze7l11DOHT9mRGbj4XGj6NSS3sflqH6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=48KxT8IyJ1JduvzW1dl0ocdCiaX4wwcbuxbn+yER+GY=;
 b=uRsqNxpuWO9n3DlBVcvA5RxTtKn/hUsiOCDEs2R9ju1s1bwNnrdZ1254R740uPPhWxO69kjvAKZ4CiKBPuhnEjB6sKpDqgHurABFzBh7VRupCYQAJ/0yHJ79L9IEyviqBiKgVjZQLuNYg3sZT0kcCzzDmzksmjQujIjwmg9UC54=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4311.namprd04.prod.outlook.com (52.135.211.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Thu, 3 Oct 2019 23:13:02 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 23:13:02 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "aurelien@aurel32.net" <aurelien@aurel32.net>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Thread-Topic: Fail to bring hart online on HiFive Unleashed
Thread-Index: AQHVeiY/IPem1KfqrUSNLdVXJdqXBadJi+eA
Date: Thu, 3 Oct 2019 23:13:02 +0000
Message-ID: <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
References: <20191003200735.GA26760@aurel32.net>
In-Reply-To: <20191003200735.GA26760@aurel32.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.170]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6a9167a-3bab-4953-8c6b-08d748573d66
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4311:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB43118500219DEA17317ADA4BFA9F0@BYAPR04MB4311.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(4636009)(39850400004)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(53754006)(71200400001)(102836004)(71190400001)(99286004)(6486002)(118296001)(8936002)(316002)(6436002)(66446008)(110136005)(229853002)(11346002)(81166006)(76176011)(446003)(8676002)(6506007)(14444005)(66066001)(66556008)(5660300002)(2906002)(81156014)(6246003)(966005)(25786009)(66946007)(478600001)(66476007)(64756008)(76116006)(36756003)(86362001)(2501003)(486006)(256004)(305945005)(7736002)(26005)(6512007)(6116002)(6306002)(476003)(2616005)(186003)(3846002)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4311;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LddWx36dPDyOvNzzWn1C8dksroQYYAy+QL91AHkH9IiIoUfWJ5JD4oQ+aop0WGSECHhl9LSWjTB3nq8nF2GgKRJL1xY2D89Kf12vc+iTE8zPcqB1mATiR9NQ/RjFus7tlOVq6Zx3t5gZUfp0iVaKXfqeQ5bpPw71VYEUbRCpsSkIWAlJNXSjbwT4Y/GGLS25TIYpM2Cje+4kFYiCxERPMZb62sA8Qy1/3gVCGx71Ch4eatUrRq9jKDbHCphtYF9RHFxoiKg/hKH+Puizsb7y4L0mVDxrKzpTj2TymaaCJvKfPd0CC5Q6/KHM0TynFfP5GKXFXsVs01g9jRbPy0jEuJVO4e5cJfHCYRbtHzzfrQ3chj/Our7qvZJ1BEQRkcpzqV0X89oaUsd3f7qEzBf1tBNwfhYY4Oa6sPRijlb1w98+Y+82KFj0Pcvqk/MCXKwQJXD+R8f+99dd6X0IYFIf/w==
x-ms-exchange-transport-forked: True
Content-ID: <FE3D4417CE093E40862A508A64258E1C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6a9167a-3bab-4953-8c6b-08d748573d66
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 23:13:02.4110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wpBJRlP8Okc8WO7iYtjZGmdkI+NqJX1vqhJ5v2UzZsyTZOwrgXsYQOvDOGVFWrxZA5qnwO8BKhazQ5cO70tOUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_161313_250845_3B45A22A 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-10-03 at 22:07 +0200, Aurelien Jarno wrote:
> Hi all,
> 
> I have just upgraded the bootloaders and kernel on an HiFive
> Unleashed
> board to:
> - OpenSBI v0.4-50-g30f09fb 
> - U-Boot 2019.10-rc4
> - Linux v5.3.2
> 
> Most of the time, the kernel only brings online 3 of the 4 RV64GC
> harts:
> > # getconf _NPROCESSORS_CONF
> > 4
> > # getconf _NPROCESSORS_ONLN
> > 3
> 
> This can also be seen in /proc/cpuinfo:
> 
> > processor       : 0
> > hart            : 1
> > isa             : rv64imafdc
> > mmu             : sv39
> >  uarch           : sifive,u54-mc
> > 
> > processor       : 1
> >  hart            : 2
> > isa             : rv64imafdc
> > mmu             : sv39
> > uarch           : sifive,u54-mc
> > 
> > processor       : 3
> > hart            : 4
> > isa             : rv64imafdc
> > mmu             : sv39
> > uarch           : sifive,u54-mc
> 
> When it happens, the kernel logs contain:
> 
> > [    0.049851] smp: Bringing up secondary CPUs ...
> > [    1.082530] CPU2: failed to come online
> >  [    1.086267] smp: Brought up 1 node, 3 CPUs
> 

The log is aligned with the outcome. CPU2 never came up within 1 second
for some reason. How often do you see this ?

I tried couple of times and did not see this issue. Here is the log

OpenSBI v0.4-50-g30f09fbfd1ec (Oct  3 2019 14:03:20)
U-Boot 2019.10-rc4-00023-g72efcc8f00fc (Oct 03 2019 - 14:03:12 -0700)
Linux version 5.4.0-rc1-00004-gecd4522e3e09

Here is the bootlog.
https://paste.fedoraproject.org/paste/-gr1Zeg4~UBs~bqIPraJwA

If this issue is reliably reproducible, here are some areas to dbeug.

1. __cpu_up() in smpboot.c has a 1sec timeout for each cpu to come up.

You can increase that time just to make sure that it's not a hardware
issue.

or

2. Put some debug prints in U-boot/OpenSBI to confirm that all 4 harts
did  come up at each layer. 

You can also just use kernel image directly FW_PAYLOAD_PATH in OpenSBI
to avoid U-boot. That may give a clue if it is a U-boot issue or not.

> I have also seen the issue with CPU1 but not with CPU3 and CPU4
> (might
> be a statistical effect).
> 
> Any idea what could be the issue?
> 


> Thanks,
> Aurelien
> 

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
