Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279F66FAE2
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 10:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5NjFn+7pas4i7bnqsw8doUO5P5v6V+DFa8CaQC+s3A=; b=h4bWSO8xe21xSj
	rj1Eg9eLjgHfvm54cYxMHvWEMoE7K/0liz0HCOlhTx47QTX3qbgqwRPaQ9/lbgSdQWKRQz8hl4QPe
	+mKQMGaud7ACGQDEABmtdswGvvdIjTgnSS7vXxowTbK+U5RYt4743gyhajRnrLfzkJ71adDNIBJmk
	Rpb++P83l8LK6F8z0NHquamWsQBp1nTM/sQEUXX6vR52I/lGvuRt1HOarOTv7begIFjhRL805FAEj
	zi+sZcjAHUQAiv14dmR3FdRIHSwD0k7XRulb6bbRQBrUeGnyRQx9mlf8opwRnthEHkyA2vBdjqR3n
	306T3M8buWD/NqWeRLOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTJh-0000F8-T6; Mon, 22 Jul 2019 08:05:05 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTJc-0008HF-F2
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 08:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563782700; x=1595318700;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ez7Lq00FF9xAXQodtJQcI02yAz6DUM8lVhq1NV7TGVA=;
 b=bqiI6UsLkqUpLoU84cdgeJ4szFqb1ZNG/kXXHfer8zdsoNmGhaHU+Vbl
 JF7TP6XViLoyxgiwjb7laE1R8fzTPPuxWbBy9vyhUQ74MmnHg6oMdBO4m
 KqVbsxQDUd6ZU/oPgP3hFXLb3eQ5zpooUkyTtKzH+dGJJTnuvVEytxoGP
 idMarPoovZGiFvUgm187Dm1wf0aB/6TZAkHDTcuMbPaWoug9IpBkmhlQN
 /c6rrWsRWdLMovK1WpGNA9oJeyw0Z1uboDzIgNZo1hP0zXXva88K3Hzx4
 7cBId9RzdUs4g7SvbCzwEH6lpAMnqPlRCQFEKL6ujHdeMa7xD9IJgSn+R g==;
IronPort-SDR: X3fsDRRDvBHvXMIrcA4pkWzs8Qw0CiB7/7K/qoGZmbBlifYMOhKm0sdPXYCSteBkXc6MF/WKS4
 Zn1goHglo3HwaU4TUzVuHPfqn0hXp8Cyv7MJFM5hPL+8GoltVv4G9V14CPq2zcyPuhA707kZsw
 D6iqy9uHmRtusS8IBuaW5UzQKCYqobpRcHuaadWGfNrWlcE02odbBP/9qc4G4yD8TapQ39j9w3
 2VrHTsVecBboZSgoMEHxU6ZanfL19R1Q3WrtfgNHrLuc209yQk1XmtzuHvpvQrMsw+6mtjVTVw
 5oU=
X-IronPort-AV: E=Sophos;i="5.64,294,1559491200"; d="scan'208";a="220101376"
Received: from mail-co1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.56])
 by ob1.hgst.iphmx.com with ESMTP; 22 Jul 2019 16:04:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DG+UVhCkfFmhpmpi3XxMAoxWZJmwE9xZ9njUuRolTmwPflTdlbJ5XFFwOuDGETCCxSyBENz1WzVwhW2qpHO5nhg1xNeVLIIbAXcoAjbZKx2LuHw9D9/4eV3O0/I/z1kOM9mycnmcQZgdqLfmAy9HssLzRsA4tOjC3YlzOgK83nuFl43lZVC7X1pU/0DIF+XWzWCgjW1VPbAV5n3qfC+LcLXVPZP0g+viajBOXoFODHNrD2gydlZFT68PugaCYCfJUk5CWW/aAcyl6iEO0vW6z6M0dGCO1tYYJHdXf5ds35yLTnnTiOzQddgOCJlcOF7gNEDJiRblA4KBIA/CKZ0ZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez7Lq00FF9xAXQodtJQcI02yAz6DUM8lVhq1NV7TGVA=;
 b=KDHR5CYZEH/zhpKQKdzhb050rZHZ/dxzkkIELAk9NNy6PfFdIrUylI3Wh0GDAHJFPXF2uu2YbRftzRIDNcXud0CX0LUMZmkthltrbGq/6732xXr6vQEoIhDwZLNo+v0YwEjxNiOw2C7xmlbEVQRfGmiT4ySfDC8sRYVK38tBt4kgF60bKNVVfDvzmBvZ+cO1mFZZU+SpRdzB/j3vE2ci9RiIda/3t0i72hd0rhOKHkqo4UEk519oDvnWpBKlu+oC/8JHEbQ46+hy4wG5Gwn1VA0WimD4bKjnbnbLR5JeCgg/Hix1hGwkxqniXQBVuyVEewGFdeWXanIrPUf+S3qAIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez7Lq00FF9xAXQodtJQcI02yAz6DUM8lVhq1NV7TGVA=;
 b=RgKpdDs/UVqv45AHrK9ib/1wpd7dY/ktMZm7Qb83URGvYRqwJX7ei7ZqGnkv8vCB5kqb/lXpERC5A/XnXwMU0LMN3UExaORnfTbYWMnBV+1Cj6ZCblDH+/Iexa099MfSuK2OCTysPR/bsvKcliNgyCNJo+WTzIE1H4vF0VfwBUY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5710.namprd04.prod.outlook.com (20.179.22.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 08:04:54 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 08:04:54 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: RE: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Thread-Topic: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Thread-Index: AQHVMuUnOhkKA9QDCUKQJeKc/2dATqa7Za2ggAAUm4CAGudrgIAAAFeQ
Date: Mon, 22 Jul 2019 08:04:54 +0000
Message-ID: <MN2PR04MB60617BA6F3C08EA2E4482D458DC40@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
 <CAEUhbmU99JqdVXK4KKaRg+QSO=5tMPyet-dCmayD_fRx4nbCEg@mail.gmail.com>
In-Reply-To: <CAEUhbmU99JqdVXK4KKaRg+QSO=5tMPyet-dCmayD_fRx4nbCEg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20bafd21-f0e3-4060-9048-08d70e7b4802
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5710; 
x-ms-traffictypediagnostic: MN2PR04MB5710:
x-microsoft-antispam-prvs: <MN2PR04MB5710D4E30329C97B78B8AEF18DC40@MN2PR04MB5710.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(199004)(189003)(13464003)(186003)(6246003)(86362001)(26005)(53936002)(11346002)(476003)(446003)(256004)(76176011)(7696005)(6116002)(2906002)(3846002)(25786009)(478600001)(81166006)(81156014)(486006)(53546011)(6506007)(102836004)(14454004)(6916009)(229853002)(9686003)(316002)(54906003)(33656002)(8936002)(68736007)(66066001)(71190400001)(71200400001)(99286004)(52536014)(305945005)(7736002)(74316002)(66946007)(66476007)(66556008)(76116006)(8676002)(66446008)(64756008)(6436002)(55016002)(5660300002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5710;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mhYKXCoEbtn8SB0Wy6ugkw1+9jBKOK7KVXwWHDemPBsg0M0PQhYezjta5ZnUQEV88rzjmJjvWdWd0J7jVjbcgkn6rgDToyvM7RlpvPdDW4g77ZAwU6KrKI10Y6q8t/VH4jmEX2RKXF2/2wc9Klc50hzj6GbazEOUoS9ln1Rnd4gX/R6nrDZPUeDpUQ1OEKmBRs8LqGYqGiJ2sgzNs5mm9emImkGCGl08SfcEyNKQxKxywR0alDo3WFZzyKqRpWMzdoLQ9k0zQH5tQH8ba5bvcK2nN+7UgArV6x0A9Dq5fJS42R8R8rp1sIeh4z/UIies94SpXczhxEl6mVuVmwtmD5B1d+1ueU2PQWallOC01Ofo9OIpifNTa8U5V3mxszkxJW5O4T4SrrPMYF5WAapDZLLgeOdoULOuHC/0w1mNEFw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20bafd21-f0e3-4060-9048-08d70e7b4802
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 08:04:54.7598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_010500_634782_42A1B501 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Bin Meng <bmeng.cn@gmail.com>
> Sent: Monday, July 22, 2019 1:32 PM
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu
> node
> 
> On Fri, Jul 5, 2019 at 1:11 PM Bin Meng <bmeng.cn@gmail.com> wrote:
> >
> > On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On
> > > > Behalf Of Bin Meng
> > > > Sent: Friday, July 5, 2019 9:23 AM
> > > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>;
> > > > Mark Rutland <mark.rutland@arm.com>; Albert Ou
> > > > <aou@eecs.berkeley.edu>; Paul Walmsley
> <paul.walmsley@sifive.com>;
> > > > Palmer Dabbelt <palmer@sifive.com>; Yash Shah
> > > > <yash.shah@sifive.com>
> > > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to
> > > > cpu node
> > > >
> > > > Per device tree spec, the "status" property property shall be
> > > > present for nodes representing CPUs in a SMP configuration. This
> > > > property is currently missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> > >
> > > We don't need explicit "status = okay" for SOC internal devices
> > > (such as PLIC, INTC, etc) which are always enabled by default.
> > >
> >
> > Yes, that's fine because those device bindings do not require them.
> >
> > > Absence of "status" DT prop is treated as enabled by default.
> > >
> >
> > But per current device tree spec, "status" in cpu node is mandatory.
> > (spec uses "shall"). Missing it is a spec violation.
> 
> Ping?

I am fine with explicit status = "okay".

I am hoping DT maintainers will share there views on this.

Regards,
Anup
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
