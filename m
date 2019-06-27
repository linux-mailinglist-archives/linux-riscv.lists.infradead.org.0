Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FF258B52
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2IFy3KRdfOGZnQVbPm+CfmKrwbevxVQ634xaW7o0cU=; b=lBgkE3mMglbUWM
	ek8rILK4kwqx9rmLyhuDX46GpcUflHh1s7wfVATmGO+W8vL74XUhEQEvKP+OtaYR6aXCCioFvU9Z5
	9AGz2o+CgKFh0lemcyWlP1ha9l1AUuy4Hk1Vel3Kdd3YBMiOACLgTTAt+BAcA2fdcy1tnKoTxVcOo
	9MoUNVNmZTDUYFauwLE14OL1I60sPTiWT2m5uRihdssdEoXo/e1agD+ZWrN1PG5YRmSL2J7YxH+Ra
	4/j6tEQEcGP5QskP3FyjQiBwEqMfrr7t327Zj2iumJVZjV/pEl8b1LejejFnIhxQ72vQl6KQKax3r
	Dlx3rpXtH4hL0/boJwrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaYb-0007ZE-RZ; Thu, 27 Jun 2019 19:59:46 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaXo-0006w3-AM; Thu, 27 Jun 2019 19:58:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665536; x=1593201536;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=n6edhB3zslEinTxR6XjdzVfqoOAN7Hj7J8gj/v3kkmU=;
 b=Ba0L3HA4BxhlljCO++uBm20MqAdAcXIV2i/BodI26C4Ih79YSH6aBNbA
 Cqn17FRUfdAq6fcFDwYIUonKBnm9E+rTtENmQqOWI3MSd0UO+tI+iEj0G
 uug27pcgyS+gwQK+bbQmZEQoS5A3DR/BJRtFtPwb2TaiK3gVYG2QBYEsb
 BW8nC4+8lJA80PY+EP7/61/+dGYrT9hbKAqBWnRw8zogMeudmHtxwaaGf
 ub+kjJ1+eO9LSXYm9A26WkRS0iUEQr5S0OIAFUht6suRtprIvseZvHuo2
 l+tZHGgp1OZ8zPPZPLY3uKbUlbIQVyXlQQisydnieymFILpyVxAj0nM0h g==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="111722026"
Received: from mail-co1nam03lp2051.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.51])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:58:52 +0800
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=FrsGql4ytWzwIFg476I5wA27ntxbHl5OIz2w9mmv8NyF8AqvuoWTmehTbHNIL6o3D2FGi48OWs2ySIfJnAE9tk+nakqn97gniEf5psdZn3TD50rXOcm1AEIzD3vUxFjEALo86TP+HFf2PKNa32ehBE07OThLGgq4YhaGaMC5Azw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6edhB3zslEinTxR6XjdzVfqoOAN7Hj7J8gj/v3kkmU=;
 b=bQJQCestRN+6r+83hLJ0OIvHs4CEaCdmK2j4mJliK7DuzODgPfx6v5KVW8BLRnROfDAln2oOn5zT3hfE0idBfD2ZuAhRj1TjBMxX6hKGvx567/+hKZPzg0dkgRA6hOvHiPkGmLWxQqri93oCZOB6Vu1il+EorWwcMsKdILIQBKc=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6edhB3zslEinTxR6XjdzVfqoOAN7Hj7J8gj/v3kkmU=;
 b=ID3fgXMz+hO55eNAgSZ1WhHXsPr5NqpouwKoLcHDBYDLQhjLG5bEMsDCanGvvcPZvttn3BBh9QaVYLDKDqELndpunftiL+mmfPMCXTMVbk22dsH6ByHhBbtUpjiB0Hw1f16JpBuI5AqAJon02kka+8y2wfKipV3vFgUxsd0PIWA=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4392.namprd04.prod.outlook.com (20.176.252.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Thu, 27 Jun 2019 19:58:50 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 19:58:50 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>
Subject: Re: [PATCH v7 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Thread-Topic: [PATCH v7 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Thread-Index: AQHVJT7fBHlkRRyCkEKayvZI2kbcaqautN6AgAAd5ACAASg6AA==
Date: Thu, 27 Jun 2019 19:58:50 +0000
Message-ID: <513883349e80792884b3754c259357d8066ad348.camel@wdc.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-2-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906261724000.23534@viisi.sifive.com>
 <873a80f0-e704-dd7e-4db9-b159b23847fc@wdc.com>
In-Reply-To: <873a80f0-e704-dd7e-4db9-b159b23847fc@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 155fd803-5438-43c2-e3b0-08d6fb39dfe7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4392; 
x-ms-traffictypediagnostic: BYAPR04MB4392:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB4392F743BD6A9E509C34C142FAFD0@BYAPR04MB4392.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(396003)(366004)(346002)(376002)(189003)(199004)(6436002)(186003)(8676002)(26005)(76176011)(4326008)(305945005)(478600001)(99286004)(66066001)(8936002)(102836004)(6246003)(71190400001)(25786009)(81156014)(81166006)(68736007)(7736002)(71200400001)(54906003)(6306002)(53546011)(53936002)(6506007)(6512007)(36756003)(316002)(86362001)(110136005)(66446008)(66476007)(2906002)(2501003)(5660300002)(64756008)(14454004)(446003)(66556008)(73956011)(11346002)(66946007)(76116006)(3846002)(6116002)(7416002)(118296001)(476003)(486006)(72206003)(6486002)(229853002)(256004)(966005)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4392;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MK5/kmFVBNzglmcSiekWRmgYFkbaJPDTdPr7P2JtIT4FkhV3V+n/zuXRQ4cU9WZ41SCq4bfiC9E34SzEDd8dM3bJarkqwwzC5QCVF2YbC0Y1ttJpBnB/A0Hljum4k1wGWBU1S4+R69dUP5t5sgP1GXkALMozCa8MPFnVuwLlsk7HPNVkijnPQhhP7VDTCqfAzj7Bya7orH0vW8WyqsLaVtUgafAyBF1NYfDbn/hsRgXPbz186X4ab2vB0w79wcRhorNhBqYHUGPcUo6VXiI7pUE/gXiPzLdGznPT2VKSXL4ibJhJbeY/5owcC7vk0mgriOOV1jG9BBjOak7CvKGikJMKL/mHXyeA0Q11VlQflUC0P7MX+kwvScQnkV0Z9O955N/xTmnWVxSexEf7RaecJKI0pl/wBCyBcKsCqSYVMpI=
Content-ID: <DE6C3B113F433D42A951EC64A666E802@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 155fd803-5438-43c2-e3b0-08d6fb39dfe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 19:58:50.4899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125856_652526_A9EEA7B1 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ottosabart@seberm.com" <ottosabart@seberm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 19:18 -0700, Atish Patra wrote:
> On 6/26/19 5:31 PM, Paul Walmsley wrote:
> > Hi Sudeep, Atish,
> > 
> > On Mon, 17 Jun 2019, Atish Patra wrote:
> > 
> > > From: Sudeep Holla <sudeep.holla@arm.com>
> > > 
> > > The current ARM DT topology description provides the operating
> > > system
> > > with a topological view of the system that is based on leaf nodes
> > > representing either cores or threads (in an SMT system) and a
> > > hierarchical set of cluster nodes that creates a hierarchical
> > > topology
> > > view of how those cores and threads are grouped.
> > > 
> > > However this hierarchical representation of clusters does not
> > > allow to
> > > describe what topology level actually represents the physical
> > > package or
> > > the socket boundary, which is a key piece of information to be
> > > used by
> > > an operating system to optimize resource allocation and
> > > scheduling.
> > > 
> > > Lets add a new "socket" node type in the cpu-map node to describe
> > > the
> > > same.
> > > 
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > 
> > This one doesn't apply cleanly here on top of v5.2-rc2, Linus's
> > master
> > branch, and next-20190626.  The reject file is below.  Am I missing
> > a patch?
> > 
> 
> That's weird. I could apply the patch from any git tree (github or 
> git.kernel.org) but not from mail or patchworks.
> 
> git log doesn't show any recent modifications of that file. I am
> trying 
> to figure out what's wrong.

The space changes in this patch caused the conflict. The patch was
generated with -b which was suggested during the initial review. 

I should removed it before sending v7. My bad.
I have fixed that and sent a v8 that should be cleanly applied on
latest master. The patch series is also available at 

https://github.com/atishp04/linux/tree/5.2-rc6_topology

Regards,
Atish
> > - Paul
> > 
> > --- Documentation/devicetree/bindings/arm/topology.txt
> > +++ Documentation/devicetree/bindings/arm/topology.txt
> > @@ -185,13 +206,15 @@ Bindings for cluster/cpu/thread nodes are
> > defined as follows:
> >   4 - Example dts
> >   ===========================================
> >   
> > -Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters):
> > +Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters in
> > a single
> > +physical socket):
> >   
> >   cpus {
> >   	#size-cells = <0>;
> >   	#address-cells = <2>;
> >   
> >   	cpu-map {
> > +		socket0 {
> >   			cluster0 {
> >   				cluster0 {
> >   					core0 {
> > 
> 
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
