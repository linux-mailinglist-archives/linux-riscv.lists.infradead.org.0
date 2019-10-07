Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21E1CEEFA
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 00:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLiIZRSZkSXuiJEjdvhvByDVTsYd4zJYgKuithPTX9Y=; b=Bs2tWv0V5Dcl2b
	g8IGgoeJPTz9oZ60MlSCpIV8HdoiLyqcThyqbv24X4X1S+4JT4kNju+HEJoyz+lrhdX3ypboLy8Nt
	dRxE4cCIDHSG98pn2CE8/Rx/uqaeeCHIy6hI6SqUFqcTY1CO4M63ui/mxy7Rb5wwiLqBSVRFXznUZ
	zvjqKnbUyBjVMt8dW5D95BVNoMxKy3eYw8kBLWROMUxZahMwm5R8r14qkjccOfZ0/1fet0IBJQSQ9
	GbGN5eDbAr685t7cUcdL1IAt1rl708dXHFrs6+lX+DnBhAJUXN26DRazvZ2UKyRAoZijNsAsrOTKH
	ZXJvIRwSdeWfY+IyI+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHbM5-000302-RO; Mon, 07 Oct 2019 22:19:49 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHbM2-0002zc-8d
 for linux-riscv@lists.infradead.org; Mon, 07 Oct 2019 22:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570486786; x=1602022786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EzDktudWn5dZi/lW4EzFFeZL5s0xNDHYnmnovGWdu0s=;
 b=eO9ab2pFrFQ5rGLynTtehKYZGK/Skc2783q3j0wSu7EJeet61oI9pqnZ
 dGMP0vhtnFX05IkvByyF8hpZ7p+3SOnbrByFKxnAiipSF2EMuCO5KPCye
 pp+jHw3Cd2QKEPqqBbGJK+Lwa6swVxPTQZ0PFbatVrdMTQRuTT1U3aM3X
 DLcHz7n0D8RYDOnpSL8ZUiJg0oC2/nFbmV28kTf+A+hjH2xFSN6QoEIJo
 HI6SF4dnz8wpy0aFstN37Pci4Z3J5JtM86xXziS0wJRc71ipbTQ5rl6Hd
 RjEo0zfJGNeoZawqj4z6IHsLpHFks/9/pH0z1GDRg97bhEoDLybQAiOxy A==;
IronPort-SDR: SSvpTacWAi770jKDvyxqzvoQYwlKmbnWBoEPq+9UnBMjYzrycr0TGyEd6R27LsKfgqtEe90olt
 KZF7zeYfCae7VuCHRgKpLEfuI0vLj7MeyCAb8P/mUjY5lH2AL0XbqGh9TioK287IPoOCWaSPkf
 K6qHdQuWDe9yVcNR/MKWVq86Vgil27D2xQ4y1Wd6MvEbL0hTLkAK+kyyNxv4mN10zg1sI0KuIX
 8I4wICgdORvdV/kUg92o0o1lRS+4YX3MezE0FbTG/RqPL3GaH4PQ2pBARG6dGMwIwnMOrUEdwq
 siM=
X-IronPort-AV: E=Sophos;i="5.67,269,1566835200"; d="scan'208";a="226941747"
Received: from mail-by2nam03lp2056.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.56])
 by ob1.hgst.iphmx.com with ESMTP; 08 Oct 2019 06:19:42 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jf9UJzBaJOAGvc3PZ1Yl8C/URsJ4NJr7eqC1cvMpZrF2b0aUM4J3aH8QgiutyjWRvTne1iOCEo2OtbJfqFciRpOm0IjwEmxWRL7IBHCHBiwGwc5XPwMiGkWoGMXBTWoyhMS+FwotmL59LBIX7GznWs8PA/nW+3Gx27bePGAgHYzyqwqFk/xgj6y4eYjvt/Xo5kEMWvn8LIY+aLGqjzXXZjQWT6wXRnLc9Acr50SbPziKZZVIbDD+miDQZSlAqhY6qWCgyS6wEnHBrPCKuFjx5msjNzcgBJBNa5BjIcsZVndpp6BZSPMBRriQ7zvoiX5CweUDF2FoUCN2akE3Y+U/OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EzDktudWn5dZi/lW4EzFFeZL5s0xNDHYnmnovGWdu0s=;
 b=EK3SC+TywDOCsO3Jc7j5S7X7n0uqT6PjZw7nYCmA0OowW90r30gYVYnDLn85a8bYBAq5cz/JX06/g1lXUo0eb71IMagrKcAqs410SzjX2lpEiYe84iAYeX4SLX0V1ySLmKt11AVSI2pHqTSGgc+tnzVCiF6qkCU4g4K4HEtOCRZye6ndlbYN7O1pbx80mzDTSNzvd6pwi+a/gon2jYk+mg/W2Lzv1U0X6lJlnOKFpAAOgoCaIMEtQs5nqg5gNQvSmVWtlnB7+aMFCaIzx4VY727rD0uLcqnktPx7D9XAzFf2BArQyUlBaYeuhf2O3kgNPfnzMa9pYNg7RVhiW+UEeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EzDktudWn5dZi/lW4EzFFeZL5s0xNDHYnmnovGWdu0s=;
 b=Gew1n78sW1HVMTo8f9BLmLdm1vp/VAkiLnCx4dduA6tzo5ITntw2hJMZmWqWK49WNf72oVsS0MV/zVh6prNnlI5NFp8fS6UPZTz8iykxpxWsqVAIHH417tkgiq0Yb0MarmtTBIKMVvlvkxpmJPKZSLrFYSGavrshAW44GyzvKBY=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4486.namprd04.prod.outlook.com (52.135.237.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 22:19:41 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2327.023; Mon, 7 Oct 2019
 22:19:41 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "aurelien@aurel32.net" <aurelien@aurel32.net>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Thread-Topic: Fail to bring hart online on HiFive Unleashed
Thread-Index: AQHVeiY/IPem1KfqrUSNLdVXJdqXBadJi+eAgAJORoCAAbS9AIACN2gA
Date: Mon, 7 Oct 2019 22:19:41 +0000
Message-ID: <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
In-Reply-To: <20191006122850.GA31831@aurel32.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a1ec084-847d-4b40-9142-08d74b74733d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4486:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB448645C541178B00B7B88D57FA9B0@BYAPR04MB4486.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(189003)(199004)(53754006)(51914003)(446003)(11346002)(66066001)(2616005)(486006)(5660300002)(14444005)(7736002)(476003)(305945005)(6116002)(2906002)(3846002)(36756003)(186003)(2501003)(54906003)(316002)(256004)(53546011)(25786009)(2351001)(26005)(6916009)(86362001)(966005)(76176011)(102836004)(6486002)(99286004)(1730700003)(6506007)(229853002)(8676002)(71200400001)(478600001)(71190400001)(118296001)(14454004)(76116006)(6306002)(6512007)(81166006)(81156014)(4326008)(66446008)(64756008)(66556008)(66476007)(66946007)(8936002)(6246003)(6436002)(5640700003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4486;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N6hxxYL1XeE3NHZIAF4x4otC0Gi0v7e9UclmzhmFcvE0juTV5rDHzh5uMWv1MC9t8FA1v/18DYTQg+HSrvP8pDo+i3FJomXfjtA1vSx2s3g15jm6oQ88ndSiSzB2usxl68NwL2cReGNqiw9Hy+dO7bfM+yeHMlULcPd+HFtrnd7YMpZbjvusL1ir1p+ApJEMwgc/1TZe8wji4LmuC+t3hLejia3/FUyfrx1Azrz7JjAB8aVdOEVF8mgn/DVzLy+vaPnve+gMPONxPsnCldBZ8vmzeLle3ASVvWhVgtrb6iheIj/MeDg5q3oJAg5oyACOexO+4pHqQHpHdGba40huY6p1tTWQJE5Lwz0uz/YydBqoQ+PaIzNnDOeisXytFtz6hRxLzwkHr8C7fuoGrJjVNUZ81TYJz+BjXzIMCiMNjp33aGdKIFeHkWgdUE1puc4bhBMn5XBOW61ZoskzWg6Z2A==
x-ms-exchange-transport-forked: True
Content-ID: <C2DB3C12012AD242B496221BD1359D84@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a1ec084-847d-4b40-9142-08d74b74733d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 22:19:41.5740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yc3HmssRPhCAfi+KSHchiGor7IfhF5VwddELlVxG2gs0EwPPFimv4JZfGSNMfVmG/PKgIxwIXLf4stTEjFgsGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_151946_377294_163F1D24 
X-CRM114-Status: GOOD (  28.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 2019-10-06 at 14:28 +0200, Aurelien Jarno wrote:
> On 2019-10-05 12:25, Aurelien Jarno wrote:
> > Hi,
> > 
> > On 2019-10-03 23:13, Atish Patra wrote:
> > > On Thu, 2019-10-03 at 22:07 +0200, Aurelien Jarno wrote:
> > > > Hi all,
> > > > 
> > > > When it happens, the kernel logs contain:
> > > > 
> > > > > [    0.049851] smp: Bringing up secondary CPUs ...
> > > > > [    1.082530] CPU2: failed to come online
> > > > >  [    1.086267] smp: Brought up 1 node, 3 CPUs
> > > 
> > > The log is aligned with the outcome. CPU2 never came up within 1
> > > second
> > > for some reason. How often do you see this ?
> > 
> > It happens about 80% of the time.
> > 
> > > I tried couple of times and did not see this issue. Here is the
> > > log
> > > 
> > > OpenSBI v0.4-50-g30f09fbfd1ec (Oct  3 2019 14:03:20)
> > > U-Boot 2019.10-rc4-00023-g72efcc8f00fc (Oct 03 2019 - 14:03:12
> > > -0700)
> > > Linux version 5.4.0-rc1-00004-gecd4522e3e09
> > > 
> > > Here is the bootlog.
> > > https://paste.fedoraproject.org/paste/-gr1Zeg4~UBs~bqIPraJwA
> > > 
> > > If this issue is reliably reproducible, here are some areas to
> > > dbeug.
> > > 
> > > 1. __cpu_up() in smpboot.c has a 1sec timeout for each cpu to
> > > come up.
> > > 
> > > You can increase that time just to make sure that it's not a
> > > hardware
> > > issue.
> 
> I tried to increase it to 5 seconds. This does not change anything.
> 
> > > or
> > > 
> > > 2. Put some debug prints in U-boot/OpenSBI to confirm that all 4
> > > harts
> > > did  come up at each layer. 
> > > 
> > > You can also just use kernel image directly FW_PAYLOAD_PATH in
> > > OpenSBI
> > > to avoid U-boot. That may give a clue if it is a U-boot issue or
> > > not.
> > 
> > I have tried that first as it's the easiest to do. I have not been
> > able
> > to reproduce the issue when skipping u-boot. I'll therefore now try
> > to
> > debug that using your suggestions.
> 
> I have finally tracked down the issue to the usage of extlinux for
> the
> boot process. When using ext4load to load the kernel and dtb, and
> booti
> to boot the kernel, the issue does not happen.
> 
> It is therefore purely an u-boot issue. I'll continue to debug that
> and
> report the issue to u-boot.
> 

Thanks for the detailed analysis. Can you please keep me and david in
cc when you report the issue to U-boot ?

FYI: David is working on uboot + extlinux support for fedora RISC-V.

> Aurelien
> 

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
