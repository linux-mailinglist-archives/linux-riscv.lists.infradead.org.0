Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7FF96B20
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 23:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72AjTaNRwzZey/BkOl72PU2RriEH07roliGRzf7iyHw=; b=IGMsw8TqmTkypN
	ozrtdxyIBFF08ev7SLweKiBrLCv+XtUdZnPUyckCcqS1NnbFNMjRrOHcIwXN9UDm7Sgsjddgam13a
	/RcUxHqBFT3qJqVtRtCS+9EQoZ43XVFuKtCcOAQdfBk33s6eRpf1yq1/8nG7U7sqRXO+DJWrHkXgE
	RoUDBTRzB3mrz0ddsHirAZkDzsOR/kKbf5fq6CnGnaRMkIz51Ff5hIBHIyKHm21qOHlcNN6WCopCw
	sWMNnCXBwpS+Wa6QCE9fXL6gnnIGjOM5lj8M5X1WvpvwJtx2PAmrvPvs8j9WsPvxMujRRyUqQZks1
	CQBNEEeVjtM5PBMgPi+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BLw-0008Q6-I7; Tue, 20 Aug 2019 21:07:40 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BLt-0008Pj-En
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 21:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566335258; x=1597871258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lg2eiHbNdu35tpKjborwPu56J3ZKSwTjSK72KMsv+yM=;
 b=jpDJ0FrJXOWlb+Tk+GDbCdzGWg99nJGgIgv7CKVP7aR+pcYnpPb3Gloi
 xZB5Kt1H9IOmewdEwUsUv6jI9YVuQ+SxXwyKu43Dm0AL9RRMCl7Km0GDL
 A8tAtKtH1LYKoZQn5to6j4e6QrLWQAtZdXgUdwsbY3I9G5br0PBP08ksS
 KUV8YELRVENGVWfAhcdAXmM7KI61X/nwzqnHa0rZSljTyu4JOx2DoXjwQ
 yt7i16Hv4fYdha7HKsqUCFx27dKSqkvdqHAsN6EK7qfTSopIPiJWHJItn
 2pKTkpGloJ08CEHUPc7vRPYRWG6y4X1Uqnqkif1/KtRQGyixFssMO0uxi w==;
IronPort-SDR: bhq1LvUR0eko0vF2Gmb57cAo6BFJQZk/lV7k4v8QuFijh9rcvPIbudkNu8mUEGU0sLnIAJyRQH
 h2aD3y7e9DHHy7y3thHN7Iy/51Apxxb5ub7I+tW7xG97T25B5GVwtYwRkRISFjavMqgXlVYH02
 +Xdu2vUsAURncqmRgccdEhQBqSBen/Bvkw2HVOgbwszzzsjo+UTSeCW5YY8/1aZcVAJfeo/3Xu
 pLR0+wbTCOWBEE+eHARVKYGQTWh3ojgKAcQWf4/G8JlObnC1WWGKygfZ/FlMob1z3b0VpzRFFW
 TDk=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="117213749"
Received: from mail-cys01nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.53])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 05:07:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0fvXDcr190O92OgE9jDCpxrZnpc/ZOWu2pndvzokJveU42sJaXEnHHbSbSOC7II/nWz/HQt5K9QNHxLjrFuhXsbX6xutc6iUGD7PL6XI2ZiTF5M42aG3o+vZt1sqUgLvhk7FW+LqprjrWd03iAZx1h7z4KoVvhYzlhvAftJETEuMW4K0VUUS4XgEFofd77L2vjZHPbwrsBbXkVQAmoF0Bcv84gPAMqDSc1/88EZ0pKE2v4qmNokMrK7VRnW4nKB45+2ha+CFddOFCtJsyPUJagv/ocso3wJbn+ASxd2LpZNRt4YEp4jZhneqQeP5MGPYQp8f6F8Cc07OFyhPKfK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lg2eiHbNdu35tpKjborwPu56J3ZKSwTjSK72KMsv+yM=;
 b=Eu6UUvBFMD+HzfCrocwcS6lZpkoQ/iJHLM+Cy204L35eehRUK0h55FFbj+bcPX5Q1TX0u0EOwUYZzTQTgZmVGy3DhagGbQHA6gPtginSzCVDVfMsiWPcpfd7EfiO6pIL4EN6wTLdxkAam685TlrdV/a2mFu4EmasTF55yIvPi4jrPUU7X0xXdt1pFrw+vv5E4EP2F/2ckAlbo7tV2IiQUqnQbxaJ2PMfb6kCU+NR1pYe6NK+1fVfSYGpDGmCGWtA1Iv7MBx4hQEJtBxOSRAHGWU3MeVlEUOi65LNAsQWGgrWGRjIgCEO4zhSBJDvB3C4jblpDxULUrjvszUQq5Op/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lg2eiHbNdu35tpKjborwPu56J3ZKSwTjSK72KMsv+yM=;
 b=QV4RKzbljOmpxMzzAuBJ7s4aEqFrZqVsn0Fa+9bW94DNpeAuZPVOvBWm4PMoAW4N1coTujdTGX9JkZG0ygi0whS90H55w+aPgCP+WsLyxRnUWUlyiTGqb4ntv/7dOvroILwB5CN0ODtetFWO5ceUyIgWHWhOhQV0KpbQz05DKbc=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5558.namprd04.prod.outlook.com (20.178.232.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 21:07:35 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 21:07:35 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Thread-Topic: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Thread-Index: AQHVUe6heiXEpXRItkaw7Sqy5taBjacEkrUA
Date: Tue, 20 Aug 2019 21:07:35 +0000
Message-ID: <2c27e4f4a551720e2ca029743109eb02fe7d88e4.camel@wdc.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
In-Reply-To: <20190813154747.24256-16-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d1818a6-0ab6-4f00-ab59-08d725b26ca6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5558; 
x-ms-traffictypediagnostic: BYAPR04MB5558:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB555818EFE9CDA2AD0A43C408FAAB0@BYAPR04MB5558.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(346002)(39860400002)(136003)(199004)(189003)(66066001)(14454004)(76176011)(2201001)(2501003)(6246003)(36756003)(86362001)(54906003)(66556008)(66946007)(110136005)(66476007)(81166006)(64756008)(66446008)(4744005)(99286004)(81156014)(316002)(53936002)(6116002)(76116006)(3846002)(71200400001)(8676002)(4326008)(71190400001)(229853002)(118296001)(256004)(186003)(6506007)(8936002)(486006)(476003)(478600001)(7736002)(5660300002)(6436002)(6486002)(6512007)(25786009)(11346002)(26005)(305945005)(102836004)(446003)(2906002)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5558;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Eu7abcfyO3uqGUko29N1+/V07+FEGsqCa50YriCtKrzVdGXHd4LnMLqDFUqMOmDz3zPwWIA7vyOPTSBzwlQZW9go+ntuYhKLq33mU49MUBs+1HLmyUFc/ouIgQW+2Sk9suycnaPeFKhbHqqIyFIS9Br4XD8011g0yCyZL/mKWXgGvo2TAp0gOFebW/U586wJfwZVy+RZPMtqqgSN3yJUyDwuVjZSihON58pT6D0gQcC8M94xdpdzuPauJHIIVau0iexVJFP1viZxf/AHdd5hUasAd9A/855IZLMJ7TCF2lucC2neceSCLA0J6bO12/2sxu7XDmQjaSRRtC37RFeBOxGfG70hKSUZj3CP72smRmPzvyFNWubDD4Bx5EJsSk0nx9Xit0YHsZRKtHm94baUdooZKTSQhbYAFs3g43jqNFA=
Content-ID: <01F1EF9B1A69A748996005328B675529@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d1818a6-0ab6-4f00-ab59-08d725b26ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 21:07:35.2503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ppivzroo3wAEijcPx/8IBtKHyx+oZDCN+TZePDKbojDiGDOiOBkEfVoAM5v6yzt7SX/Q8nCdf0chJ/ItT/aYRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_140737_700780_F6164DFA 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 17:47 +0200, Christoph Hellwig wrote:
> No point in bloating the kernel image with a bootloader header if
> we run bare metal.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/head.S | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 670e5cacb24e..09fcf3d000c0 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -16,6 +16,7 @@
>  
>  __INIT
>  ENTRY(_start)
> +#ifndef CONFIG_M_MODE
>  	/*
>  	 * Image header expected by Linux boot-loaders. The image
> header data
>  	 * structure is described in asm/image.h.
> @@ -47,6 +48,7 @@ ENTRY(_start)
>  
>  .global _start_kernel
>  _start_kernel:
> +#endif /* CONFIG_M_MODE */
>  	/* Mask all interrupts */
>  	csrw CSR_XIE, zero
>  	csrw CSR_XIP, zero

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
