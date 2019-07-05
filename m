Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6609B5FFE4
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jul 2019 05:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZibSaIo6YQaF/ot/rk8+VJOFRzag7Wx9ob/ZF9WLsCo=; b=Zrs9l1p/rs8DIN
	yJZu7efN9G8tav5zNoaUKw4wX/56dHVAkMrpJa8AD9p4Iy/WPXxHmt+1xHEsILPOxj87yEBvLUKJt
	JpoZnNEq1LwcV85KBfgu2Wz9Oly2XTjPkxQD6gvd2/4Oi00jebvnEroVPMSfUw0ixB2DheB/DPds6
	DmXPHgu1Fzlovpe5KQoh3A+OErT9Sv/4zonV+zjk5K1uTr5wm8up6k5x/6GXE8qNOtHRQaylCR/Rx
	+xW4JNnR74c7PMjOpDQ04lA++hnvhFhqLvUx0e0jLx0zwsQCaq7VdJSW+ou4O+VNHUTE1bTyWQmzn
	JJMYqZV8X/zlui7rMk3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjFNJ-0004xW-JS; Fri, 05 Jul 2019 03:59:05 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFNF-0004wp-Uh
 for linux-riscv@lists.infradead.org; Fri, 05 Jul 2019 03:59:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562299142; x=1593835142;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9/Bh2K8NgKaYnHcV2KR6eDLsAHNJhRosnuS/CMkgBZo=;
 b=C2TcAc9oJXdda7kzqo5XpHYk+rvi+MiqLnPVsfV1HAp58tZ5FihGszKX
 YZV9J6d0N4xdsKgWs2j5qi1qZBLtnSeF833sIlscneaRaMe+KCYQz6YQg
 UF8g4ojSC/YMN3nTc05RmlsFKXFAe6VrEU17i35C6oybHHHVTwRKco/Yt
 kQj+wW5CnjlF8NE/hWJl5hBwuutRhGEDpexKtu/TlkD35zyNNlVxOx6WK
 O5n21d9QjnAs5iZDR6Gtd+/Yi2IIaJk3Xo7y51Mnqa8WEMNrmAlt7M6/Y
 rXLIep5Y9Nzje3dKI/XzhjA9Ae7GsD8uFpVw1Co3YwkPk3G+FIRj+4vvU w==;
IronPort-SDR: 9NOfiw1aZcYVG9WgU1ozoZzJB+BhtFmmvycOP1l3AjxVBV7hXlA+xJQ/owHUIjEFTriqx7BfY6
 e4IGs1IOcVfAljL6CL1oz5i4iz9Vq/t1kejykTxcW7nwSX2rwfifnxITpiwO9p1QBmFuMqVCt7
 TnoilodyRX0LOFFO1cAs88hEVwqaHHXTe5GUkJLG9mpdXWJd+1sq00VKP5EVKFqZ10F7ZRkbvY
 nJvrjt2lXQnnC/uMZCBzs4mN7wZT3VWW3U6Q9yd5p3QlUYye1G2LlrHyFJ+oGzO0HQKzX2r+6/
 XWk=
X-IronPort-AV: E=Sophos;i="5.63,453,1557158400"; d="scan'208";a="113455237"
Received: from mail-by2nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.55])
 by ob1.hgst.iphmx.com with ESMTP; 05 Jul 2019 11:58:59 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vPp5Tsn9B1psQNb8CVIJT6TmwWDowJqqzsPjgzcwYU=;
 b=JXT56FXs0y9Sjh5mzXs9Ef1v3qF7Tu783MW8ji0FuW2LknxDLulhTMC2ji2/q8jLs5V4wEKGslF9yghd36HFlygxzMlXZ2eVPAjDOvtn5/TOCt1pJT6y9pr9PkeZ0Bc9rRop3t8bbhkQVxTtk8RoT0jVRvXWzMEfKOoIAI4gmdU=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5936.namprd04.prod.outlook.com (20.179.21.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 03:58:58 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1d4a:f9e2:5761:dcb9]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1d4a:f9e2:5761:dcb9%3]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 03:58:58 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Bin Meng <bmeng.cn@gmail.com>, linux-riscv
 <linux-riscv@lists.infradead.org>, devicetree <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Albert
 Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer
 Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>
Subject: RE: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Thread-Topic: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Thread-Index: AQHVMuUnOhkKA9QDCUKQJeKc/2dATqa7Za2g
Date: Fri, 5 Jul 2019 03:58:58 +0000
Message-ID: <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
In-Reply-To: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.22.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d21c6c84-5578-418d-4c8e-08d700fd1b94
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5936; 
x-ms-traffictypediagnostic: MN2PR04MB5936:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR04MB593692A9E8A4822019CFC82D8DF50@MN2PR04MB5936.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(376002)(396003)(346002)(366004)(13464003)(199004)(189003)(229853002)(66556008)(66446008)(478600001)(64756008)(3846002)(6116002)(66476007)(66066001)(66946007)(81156014)(2171002)(78486014)(2906002)(81166006)(72206003)(8936002)(8676002)(55016002)(6246003)(6306002)(6436002)(53936002)(9686003)(68736007)(9456002)(86362001)(76116006)(71200400001)(256004)(110136005)(55236004)(316002)(53546011)(102836004)(14454004)(33656002)(11346002)(6506007)(476003)(7696005)(74316002)(7736002)(99286004)(76176011)(305945005)(446003)(52536014)(73956011)(5660300002)(25786009)(966005)(486006)(26005)(186003)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5936;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pvD+PZtUHKix3asRfBOngfU+WPp3ME5/0LyARmGsqEqOYuBaj1yxdcyJuW4rTgNZEhYxlUTJsRjI1a8VYM4DCZWBIQeIxoEOjXEUYH9FhKjeZhP6YZZWWr+NIok3+/+JtKLBhJ9YsB3umo+05vRkw/Av48R4wpgMvGu6mpQjKUI5YqjBcFKn66meo0hImG+5cSJa7WNwop/WNdgt7n3It33dqa4RlPRT6XNzT7a2y6tderpZvPx9yUQgHeFbZ1DD0pl1pkpoCsrXJPsESfykMsR7CfR2kUYZLPtGT/3ctmp/bPm3l1XIk4Xrm5IHCGnoy+sLaXRLnGKccMjU5fXZXWBdgM0ouZZJGgk0EESlz+TDD6fmyukyZ1RsZcUUOUbXcNopWQ09Ind/cHWZKlTztI3nKu346sQFgFrQoDM9Bb8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d21c6c84-5578-418d-4c8e-08d700fd1b94
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 03:58:58.5144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_205902_134443_60AD0B14 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> Meng
> Sent: Friday, July 5, 2019 9:23 AM
> To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> 
> Per device tree spec, the "status" property property shall be present for
> nodes representing CPUs in a SMP configuration. This property is currently
> missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.

We don't need explicit "status = okay" for SOC internal devices
(such as PLIC, INTC, etc) which are always enabled by default.

Absence of "status" DT prop is treated as enabled by default.

Regards,
Anup

> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
> ---
> 
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 4098349..0fff2a4 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -53,6 +53,7 @@
>  			mmu-type = "riscv,sv39";
>  			reg = <1>;
>  			riscv,isa = "rv64imafdc";
> +			status = "okay";
>  			tlb-split;
>  			cpu1_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
> @@ -77,6 +78,7 @@
>  			mmu-type = "riscv,sv39";
>  			reg = <2>;
>  			riscv,isa = "rv64imafdc";
> +			status = "okay";
>  			tlb-split;
>  			cpu2_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
> @@ -101,6 +103,7 @@
>  			mmu-type = "riscv,sv39";
>  			reg = <3>;
>  			riscv,isa = "rv64imafdc";
> +			status = "okay";
>  			tlb-split;
>  			cpu3_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
> @@ -125,6 +128,7 @@
>  			mmu-type = "riscv,sv39";
>  			reg = <4>;
>  			riscv,isa = "rv64imafdc";
> +			status = "okay";
>  			tlb-split;
>  			cpu4_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
> --
> 2.7.4
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
