Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEBB1B6C7F
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 06:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yIuSR1XjgxvA5CdmscSqqEYrKOmvYYcPMxWI2lD1KJU=; b=DGc1krDlIE2Ue4hRHSkGXHrOp
	9nLipF0iDrSFDlqtckdTW1Jb84Kzva4R7a+APt9drmuYSx9axiFqGHNRlgM4/cncYCJl6E1HyAdvo
	wLtGErpvk9teYpxdw72jEhbjpV+s2cM0IlJ+0kpFAchAFN5uzGrx4MoxiQNghHCXc3rNocn0ghwGE
	jmU452UBhqmtgEVuHqq9qTouZctwBlAox5x9vtam56gRySzho+qK6TnJ4TmA+a+DHF80FNp2Hkhdc
	6rUOIS2T2qMcYto7u174W/+iOooprgsL6u/cAY8TWBiQDEozFQCcllSCuWbRclRnXO0NyHaXhlCa1
	v3iGI26dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRpsZ-0006XT-Ny; Fri, 24 Apr 2020 04:23:55 +0000
Received: from mail-dm6nam10on2059.outbound.protection.outlook.com
 ([40.107.93.59] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRpsV-0006WR-Rr
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 04:23:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gr6SYuYGCJRpnVoC/O9CKXSuIf1m9BMsXbWeNWL9VxBD37Eadk2LQw/5/sRTh4/Smze9ynP1ZQ1oVRcO7lSYNqbR+Riq/rA1QxJwLqdN8w7qcMBaHZt2fusKnATUGuXHgzSP+Tx8oOC4HXRdfBMtlIVkZAg0bRw1lk6qrNloL2vID3d6e4qLlt58kXY51ACZjRc+mRIgn0S9qE1NJLKtOTNET+IdNFyvhVticwTXJ37NIaB5ama1Fuu5LA01HhBjiE6nWdFHPeUq4TQqLxI1JUiDtDOmNpG0NsN4eIoXYdOksyF0HJyndO7Zc5YuOaXwdSlV7BAoIeinukqmc7jP7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yIuSR1XjgxvA5CdmscSqqEYrKOmvYYcPMxWI2lD1KJU=;
 b=bBZ1Zp48t/Du8DrcallQawI2oxbK9bzHFW+WOS9A+9XB9Cr2O4KYDNY7lqKXFwTP4I7ZiySuZdxlTaumzeZAPFoiuXg2UUUpRmJqVZFQ3UYNK89BUDZYAwavtDrWallFr2HLBONd7XYVcVwmaCQFNAS1iis0Ta1qkd9HOJo6tFvmUY6IEqK0AE0BuOn5qAsXvZH0p5ORtxG7EHqKFSg4N+NN/KQuFenxL+9hwUBh70J0GfbMPBU3eSOENGgbk/6eGy8/vg2CRBW7hq1Ggm3CglDs92HF8k4DRbfr7cy2IegnMQvMXnm4wRoPiBRzYC/JSPuBnE/oNda0/yW+JU+Bdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yIuSR1XjgxvA5CdmscSqqEYrKOmvYYcPMxWI2lD1KJU=;
 b=IXWCalgpDWao5jb+xaULYFuBWptv8xB/H62+qWVUc9gaSO2cwlcw95ZRkr2bi7Kf5bF0Db69rerMLR7Bc51nCcl2sC2H3sq6gKdoB6yWQ1Ywl0pncgcDzfl+FLnhj3oyn5cTDDWeLO9rn75dKxqd1AK2YWurhEh327Cr5rqpqgI=
Received: from MN2PR13MB3552.namprd13.prod.outlook.com (2603:10b6:208:16f::22)
 by MN2PR13MB3437.namprd13.prod.outlook.com (2603:10b6:208:16c::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.10; Fri, 24 Apr
 2020 04:23:47 +0000
Received: from MN2PR13MB3552.namprd13.prod.outlook.com
 ([fe80::9926:3966:5cbe:41e7]) by MN2PR13MB3552.namprd13.prod.outlook.com
 ([fe80::9926:3966:5cbe:41e7%7]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 04:23:47 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Vincent Chen <vincent.chen@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>
Subject: RE: [PATCH] riscv: set max_pfn to the PFN of the last page
Thread-Topic: [PATCH] riscv: set max_pfn to the PFN of the last page
Thread-Index: AQHWGUlYF1Dvlg0SrEuVnL06tp1ilqiHrUbg
Date: Fri, 24 Apr 2020 04:23:47 +0000
Message-ID: <MN2PR13MB3552594ECA10E6B2B85A8A578CD00@MN2PR13MB3552.namprd13.prod.outlook.com>
References: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [120.138.124.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3078c1a-0b92-4f2e-5dcc-08d7e8074874
x-ms-traffictypediagnostic: MN2PR13MB3437:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB34374E4C14075043D6E66F848CD00@MN2PR13MB3437.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR13MB3552.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(376002)(39850400004)(346002)(136003)(7696005)(2906002)(44832011)(8676002)(110136005)(316002)(64756008)(66946007)(478600001)(66556008)(8936002)(71200400001)(66446008)(76116006)(54906003)(81156014)(186003)(33656002)(86362001)(26005)(9686003)(55016002)(5660300002)(4326008)(52536014)(6506007)(66476007)(53546011);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zQe9Apcf4aptH414/vI/2H4GAz47zU4ab1lFTHBB8seOpSf3eXqiSu9L7FgMmDAOykoLhsTTIGvY+VIRNkPa8+Zl+kY06jnvShYHW+KHIaLAMVla2cMn62bGnDZ8W6ZP1nDuijUCOvMgpXvb1xvI7l/i1ygAuMCEts9RLCdfmximNORNgTiPU0ScY+yaQ59rDilnJg+Ytq2wHLI/X5x3YfIzIxzSiQf971Akufun3YL87IMM9hCXoNFwmTm5gfYAfLQzvqEYZCih0MJfJbG5l3r13WoSZqlnmc1R0YSrFAgUas/VDMSveeNByQf3Jqq7AlqtuJOWq37hw/ZQAokyC72xpNzdu8b6hMHFRLgOvTzHEjE2JEnn0Tr0AM/G98Jhlh1Zn518cc7Ad76G2I++r/4o2XozzFTPP7zRwLz8HCSzFpmIOmu0mmcWX/gpXgKE
x-ms-exchange-antispam-messagedata: CGsghHHOxbLyCRV3/Y1K8pfvNt/hZkbFyFgZ2WXEdC/dh9LACajI74JbzDaIosH9DlNjuT1ZIGX81jLHwCshTQj98/ig4bZNlq2y55LJ8tbJrJEInwWuMtJjig2VC0Mttf9VFayuUuq7wdOc6vit3g==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3078c1a-0b92-4f2e-5dcc-08d7e8074874
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 04:23:47.3145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xE+7VojXuozXOh7qRw1mfpq/ggs3zrevQc1G9Cv0Kz3LQ55ARh22rJTPCAfOKLlWc3EO/AaiOmha/48oJrUmYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB3437
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_212352_132053_0631B1F9 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.59 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vincent Chen <vincent.chen@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of
> Vincent Chen
> Sent: 23 April 2020 13:59
> To: Paul Walmsley <paul.walmsley@sifive.com>; palmer@dabbelt.com
> Cc: Vincent Chen <vincent.chen@sifive.com>; linux-riscv@lists.infradead.o=
rg
> Subject: [PATCH] riscv: set max_pfn to the PFN of the last page
>=20
> The current max_pfn equals to zero. In this case, I found it caused users
> cannot get some page information through /proc such as kpagecount in v5.6
> kernel because of new sanity checks. The following message is displayed b=
y
> stress-ng test suite with the command "stress-ng --verbose --physpage 1 -=
t 1"
> on HiFive unleashed board.
>=20
>  # stress-ng --verbose --physpage 1 -t 1
>  stress-ng: debug: [109] 4 processors online, 4 processors configured
>  stress-ng: info: [109] dispatching hogs: 1 physpage
>  stress-ng: debug: [109] cache allocate: reducing cache level from L3 (to=
o
> high) to L0
>  stress-ng: debug: [109] get_cpu_cache: invalid cache_level: 0
>  stress-ng: info: [109] cache allocate: using built-in defaults as no sui=
table
> cache found
>  stress-ng: debug: [109] cache allocate: default cache size: 2048K
>  stress-ng: debug: [109] starting stressors
>  stress-ng: debug: [109] 1 stressor spawned
>  stress-ng: debug: [110] stress-ng-physpage: started [110] (instance 0)
>  stress-ng: error: [110] stress-ng-physpage: cannot read page count for
> address 0x3fd34de000 in /proc/kpagecount, errno=3D0 (Success)
>  stress-ng: error: [110] stress-ng-physpage: cannot read page count for
> address 0x3fd32db078 in /proc/kpagecount, errno=3D0 (Success)  ...
>  stress-ng: error: [110] stress-ng-physpage: cannot read page count for
> address 0x3fd32db078 in /proc/kpagecount, errno=3D0 (Success)
>  stress-ng: debug: [110] stress-ng-physpage: exited [110] (instance 0)
>  stress-ng: debug: [109] process [110] terminated
>  stress-ng: info: [109] successful run completed in 1.00s  #
>=20
> After applying this patch, the kernel can pass the test.
>=20
>  # stress-ng --verbose --physpage 1 -t 1
>  stress-ng: debug: [104] 4 processors online, 4 processors configured str=
ess-
> ng: info: [104] dispatching hogs: 1 physpage
>  stress-ng: info: [104] cache allocate: using defaults, can't determine c=
ache
> details from sysfs
>  stress-ng: debug: [104] cache allocate: default cache size: 2048K
>  stress-ng: debug: [104] starting stressors
>  stress-ng: debug: [104] 1 stressor spawned
>  stress-ng: debug: [105] stress-ng-physpage: started [105] (instance 0) s=
tress-
> ng: debug: [105] stress-ng-physpage: exited [105] (instance 0) stress-ng:
> debug: [104] process [105] terminated
>  stress-ng: info: [104] successful run completed in 1.01s  #
>=20
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---

The patch looks good to me. I have also verified it on HiFive Unleashed wit=
h Linux v5.7-rc2, it's working fine.

Tested-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Yash Shah <yash.shah@sifive.com>

- Yash



