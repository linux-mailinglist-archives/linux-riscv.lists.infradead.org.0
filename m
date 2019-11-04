Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E2FEF108
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 00:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5gIvCu+p8lyV9btQ+Ij7Ksk9pTlBNoIZklHvYYiD/g=; b=kTOltf/lKvFGve
	wI246CnFzwLVGl0/AhtXcu4+zOjYG8iC5TfOyZUcu1M228N696dKVwFkZdI1uSgQ1wPABf7hbPbb5
	URmrSr8Qs1ySg4+ay81qIx/uC45hk3sl4E3+2OzT9q7nU0aySuLK3O93XwFw5n/8d67WTCGMx7ED6
	MREtpE5tbfxvyRsfplc5j3eyFl6oBktZ9KFH7Ov+B3gml+nL5Ux1jeloMuT3bS70Y/OUwSUvP/XRZ
	gg4hF06QigvI8Sk/xzEK9onLDrhmZ+ERueLyi58GhEI6qYgPIjCtZqGyC4ZbceYFQnFcD2NHM25xu
	Vr4eA8neGQ0uEdzNkk6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlRF-00034b-W0; Mon, 04 Nov 2019 23:07:09 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlRC-00033S-Jf
 for linux-riscv@lists.infradead.org; Mon, 04 Nov 2019 23:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1572908849; x=1604444849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ReIx7euwgGmysoA14OOiX7RZqMXlEd29DtQn1yy3KNs=;
 b=rLJOY9z5052xzaBRNrBOnbvr9kArLgehPZ2evyFJV+uuRju2IGNIroKK
 jwz2AMcl1j490Z4iWYReV3ayYPdS02HsRs2CY6DXFKY1ttmTEBGsgMyn0
 SeMDu3ClquxLgcUVra6UR+rQBPM4QkfnJ+HwG5O2gj7KJL2IhjKunVjLb
 lRX7kva5ru1NGHjQPlhwF6bJNIVQAcIj4oFmeNFLoX8gRly9xg+F1dXNr
 k5y4hjmfOJLcSfi2r2RC8/WNvxIJ+yR8XeLE9hYOt3NnuCIwo/dkbE9ip
 JjkLVyZbyC/txAuBRniAzLAOB0RwTS+ol7BNfYPULxZH/U4OQofe+faYN A==;
IronPort-SDR: jI3Ns0UyeXSQ9lFgtXIuHMHNvmBHSrEguiXOcQhfvjT9VbB1SorkdrW5Ax32k3/kaFrB1ZBieh
 nHbaYxIzZ/oqauB9s2RCcme27BKVH0fS/IHOwC5VCVGoSB0yKSUfcJwamaE682eApSaC6IsjLg
 ny64330pFYEZwawmDfv0RudPi8QQK0EFHH+GNU1QUUq9Nhjy+3sRZizvPglctAG5rhRvqT5HqR
 GzqxLjo8xMUjUBrTV6IExzIsdPMbn5vOiGiz4SoV+mjyIYd6VHz3dQRcVsk9Yx6wdqlM3pEwTX
 UfE=
X-IronPort-AV: E=Sophos;i="5.68,268,1569254400"; d="scan'208";a="223291062"
Received: from mail-co1nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.53])
 by ob1.hgst.iphmx.com with ESMTP; 05 Nov 2019 07:07:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEtuOjtB2+7BeKjPDiPHtFYjCw5qSytpPf+Im7vVjKMc0I5G3rRT434VFuxvAOcP1dlSFftcsrqQe05PbcLMwGcZd+dd9xIs3x0K9+GHSENNj0WirKgMTtNGPwwhcp5eez+eo8xRLunKEPTEySh0jHyU/E5BXJB7GpDgmipXWIi+8DTA7JRNDR8dxaPh98J22ujfj4IgrL2Kk7/n5NrBCreZTzA9rvtD8Bhfmu5iXd7ogjfhZP4s3OCbtYnMXKV/i5rQXpY09uVc3L0CJAUilFM2FuKxuImGb6aeQ9vwiYl4OilXmUZTZ7BnxEdGLbcNXENFG2cVSZVWUqbNxOkV/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReIx7euwgGmysoA14OOiX7RZqMXlEd29DtQn1yy3KNs=;
 b=FUZIuRrq4hsHLcY8F0gahTFMu2tRPLiCyWrTA+OXWnnunhhbqhTaynPDs4FDj/1F6ETJiuS37FXbdR561PoMmFlhdC+oVghmWnapbky3kPN5ucTv138baZnhbwv3KMXMXeLNoydV0GGHCZ9CVzKR8SK4NK5NzPlQhxdCxMQiyKPeeS/UXtx3KKETxBzOwaYxVBaoBVDEpjduYC9Yw06N/w9ijkhbJ/3TG/Grj/fMXceP3ICbhMqazVjsTX+CURZtAE+kYaLIqIe8epq4edaezoCy/IE4l3wCpeTtfr72yFrdhwYncH8y8Fp2AXbcW8naqmCC/1BaTgYffJi6g2FzkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReIx7euwgGmysoA14OOiX7RZqMXlEd29DtQn1yy3KNs=;
 b=Ygtt5iXP9O+jwK1M7b7639HrixXBo9QFpuOIJJ5H9kP3yiRiTbwPc9fuzhwYPvxoLc9JbMtWJW7AE/Iv0p413M+F2ZCqRo4C9sY73LGQpTLnhgTtcmLiV3gpwQ1k2tlBkPPclNClHx9ed+oHD8/JmPy60IQz6MsN4Tph6qmGW0w=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4902.namprd04.prod.outlook.com (52.135.232.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 23:06:53 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::9012:2102:b53f:d5f1]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::9012:2102:b53f:d5f1%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 23:06:53 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
Thread-Topic: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
Thread-Index: AQHVfu0fDoAFDM4020SNIx23VNFenqdgImCAgACZzQCAAAjDgIAbBkwA
Date: Mon, 4 Nov 2019 23:06:53 +0000
Message-ID: <f7585738ea71f0dbe46011e3e718e7c3ba065eea.camel@wdc.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
 <20191009220058.24964-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1910180142460.21875@viisi.sifive.com>
 <a45f0c0e3db2e852770485bc581d489b6ee7545e.camel@wdc.com>
 <alpine.DEB.2.21.9999.1910181121270.21875@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910181121270.21875@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ac4a04fe-38df-4a8b-fa68-08d7617bae84
x-ms-traffictypediagnostic: BYAPR04MB4902:
x-microsoft-antispam-prvs: <BYAPR04MB4902F455023C6EC73A3AD16BFA7F0@BYAPR04MB4902.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(189003)(199004)(305945005)(6246003)(2351001)(102836004)(5640700003)(6486002)(486006)(2616005)(66066001)(476003)(446003)(8936002)(7416002)(25786009)(8676002)(4001150100001)(2906002)(7736002)(11346002)(81166006)(81156014)(4326008)(86362001)(14454004)(5660300002)(6116002)(3846002)(2501003)(478600001)(71190400001)(71200400001)(118296001)(186003)(6506007)(256004)(6512007)(66556008)(66946007)(6916009)(76116006)(66476007)(64756008)(66446008)(99286004)(76176011)(316002)(26005)(54906003)(229853002)(36756003)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4902;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q7jZJgLOTRKBnkccvxJRCtKJ2f/rclTp4vRuQgmtYUpzbYnXtKRs0HHYk1iFBgqMcRJFShmdDav+SPwRCR9ysjDaHXQD9/hZtQrIPgWCCvZE0h8+P+4CAI/1Uv7Ly1N6xdVhiF7GzC/nNd5EzF+3WGYvI+sadZo0vsf38YOHf91PQ6HPHEQjAVlo4Sf4pifJGbdlgkUWPZ6vbKRA3WG+ZxzSofO7JsXR+f4oqzSRGczoyiS2irEIxLSoNe33vcJGGl/XU5bJvvKWyXJBprwO0n4Ex2nzfB291FOn9qUwLBMHt4aSNl8Fzoa3lx8LFK3dzU5LB3M2Yr+BQJILdzlfWOpM/cAAySNZcUv5nLl14h+G1fstZWC9+S+URfcn6RNtL/JetaXNi5bCeTqOKxd31OW7AzzfgM4nRtbuKMPUSkMrkCf6zBSkvvvgoZprf415
x-ms-exchange-transport-forked: True
Content-ID: <F38A34D2EF80A14E95A85469AC3F4725@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac4a04fe-38df-4a8b-fa68-08d7617bae84
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 23:06:53.1187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wAoRvUHCO8rlpy1wuzWWaJwM6m8yjCCj3v6hA7Yb5EpSBwX7/KqYeNDVKDvFe+I1+jporvRUoTudVn3t+ZwOUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_150706_684430_D18A784E 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "johan@kernel.org" <johan@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "info@metux.net" <info@metux.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-10-18 at 11:25 -0700, Paul Walmsley wrote:
> On Fri, 18 Oct 2019, Atish Patra wrote:
> 
> > On Fri, 2019-10-18 at 01:43 -0700, Paul Walmsley wrote:
> > > On Wed, 9 Oct 2019, Atish Patra wrote:
> > > 
> > > > Currently, isa string is read and checked for correctness at 
> > > > multiple places.
> > > > 
> > > > Consolidate them into one function and use it only during
> > > > early 
> > > > bootup. In case of a incorrect isa string, the cpu shouldn't
> > > > boot at 
> > > > all.
> > > > 
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > 
> > > Looks like riscv_read_check_isa() is called twice for each
> > > hart.  Is 
> > > there any way to call it only once per hart?
> > > 
> > 
> > I had to add the check in riscv_fill_hwcap() because that function
> > is
> > iterating over all cpu nodes to set the hwcap. Thus, some of the
> > harts
> > that are not available due to incorrect isa string can affect
> > hwcap.
> > 
> > We can check cpu_possible_mask to figure out the harts with invalid
> > isa
> > strings but that will perform poorly as RISC-V have more harts in
> > future.
> 
> How about just calling riscv_read_check_isa() once for all harts and 
> leaving riscv_fill_hwcap() the way it was? 
>  You'll probably need to hoist 
> the earlier call out of setup_smp(), so it still is called when 
> !CONFIG_SMP.

Currently, it doesn't let boot any cpu with incorrect isa string for
smp usecase. We still need to preserve that usecase. I think
setup_smp() use is unavoidable.

If the boot cpu has incorrect isa info for !CONFIG_SMP, I guess we
should halt the boot with BUG_ON. This is a separate
riscv_read_check_isa call with boot hart device node.

This is what we can do:

Maintain a global cpumask of harts with invalid isa strings which would
be set during early bootup (before setup_smp). This cpumask will be
used in setup_smp() and riscv_fill_hwcap() to avoid using harts with
invalid isa. This will make sure that there is only single invocaiton
of riscv_read_check_isa(). In most cases, this cpumask will be empty
and penalty of cpumask check won't matter.

Is that what you had in mind or any other approach to address all 3
usecases ? 

> 
> - Paul

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
