Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0989CAC301
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Sep 2019 01:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CB8BFK+wIRvjtC1BQ7s1tA1tPPurmbXRHmUD2bbyaJs=; b=osAEX0uu15nHX+
	ODGsPGR4coTZxV/ymF/biTlUMNF/wbcj61x5fWVIb7Iq7BDIoeOxf02ABZtIOVCaPJUj+zrcJ3Om6
	TG2ndrSFlkUqwaTa5cnHOGHjCwf4UP937rk+lZzG5UjOEMIZR3119FvAqGyT1fDPdvRGQ4oxYsl48
	QV4ptP4Q9oUFMipJakstmbYAWm4r1oJOxuyLHjN3J6S76bE+2qIfuuO4w0PV524dOAs/D6gNvfXcQ
	epyL0AsHTHBSQHHzeRWeh84oct7EOtSyBgnvrwbfoh3gYj7GhioYDPpKYl47y5KEYiyI0Hpscfh5U
	byrewI+IlQSBLw9jvNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ne9-0001lA-C7; Fri, 06 Sep 2019 23:28:05 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ne5-0001ki-Ic
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 23:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567812481; x=1599348481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=eRTeb5EIshydrRtcSle0mMUayCoMqd+2T3AQmoDL0w0=;
 b=XUndyUMwDZKG3eeL0AfXaeXoJ/RIFlBGzayThlWOOUSzikCgGYzNAYz1
 tXRghmAmT8lQIqyV8Wm9TvVA+a04FG+oADK8F9807hf8jwod0dHuzLbV1
 Jt7t/SywQqxSWiYZtWZFiyBc4DtaLs2W97IdrL/2gM6XE0xfrc66yNDQd
 3CmBsnXQVT8ijK3P0pdy52T5tRdQdYmP8dTAMKOlmsV1tyxdkNRVDELq5
 bbnBJV/DhrRVH+1IHQ0X05fd5ffVfvaVUCK97YydYbbwUuFRH5RF6cmws
 GUASYlg0CPz7IWsczTaFojDI/y4p5RBn1pZZ84JK7PRhtIBJRm9pnQmV6 Q==;
IronPort-SDR: 0IEWEDKaUOZh5xvQzd2lumKCIRc0L+5UqiEDl9H5Y/I3wB4cZk6uHbmSSkzAsH3EiDRg8GocyK
 CsFkop845P3BtiwLP8mi5aEwGGv0/75vE8vykV5yE4Gv+qeAW5XWFESdxGVvRSUAnp7zYDZDOy
 fD9WL1/Ctk3E11sZR4+GtOa1i6QG/0BPG5JkpS9marMskTne0/7aK9Pnf81Hu2ZLAAr1ejPtco
 iWKaZyHpnKTZxgbX2bIVABwOuusFoSo4JtcApOFDA4bLL4fGQ1JBzFduGrZaltBLSu0TrqjE3s
 9w4=
X-IronPort-AV: E=Sophos;i="5.64,474,1559491200"; d="scan'208";a="224456537"
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
 by ob1.hgst.iphmx.com with ESMTP; 07 Sep 2019 07:27:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fE+7JAbabY+VXiUZGtaU0Sb/snpNYHh4/+NjUIXURBWmiCbfiePe+t5ZTIg8u/1s867BgXHirDTBc1tGW0LcbU8II0ol7Lu+FgQj+Mnhc20M6lighviALr5tavANtNnfE2o3cLk/FJ9uuGDAui22WvFB45aHDNBb8mcAH/i2jnl30zygNMpcOvpsT4RbseZSWQ+hNoN20dD1ySN3luqziCyd0LclLmrE3O3FkZmpZtsTfOMVbb+KH6a8igdJC8NF0n5wR1W/TVV+7jy8V6JYPIWVugtBljqRAsj6ppBpFZ2eIz5+8IUtWz0tQv3C9h8LA82w1DlTlHOuoMB0WYSKFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eRTeb5EIshydrRtcSle0mMUayCoMqd+2T3AQmoDL0w0=;
 b=A8mEK5kPd2SIDmJo9l2+KoATsjS+YC/XpV1y6kPiObPy+0DN65EjvQSO3af61xpRLTTFwRu8tKF8+09gUdjVRPxUmZbVkW93VC0121hLsEep5R8AjVCafTE0U7wwfHSsSFsEYXDUp2VafxIFCkA55C62tOEd731QoLIPWwPtWXRbURiBiIThk9HpyQcSlyh1Pksdtf646EigPN0b91b+BLAI0LCBsmGVMGEPD0x4euVzs7zCXly0eY0/uIW51cr6x7V9HJFlhPqV3FTi/wXu1QKpYnKxrE4tv5pj/zpKoCyifF7FiIecreH/MvU319eiZHbfo3CzWVB46i7gxpeezA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eRTeb5EIshydrRtcSle0mMUayCoMqd+2T3AQmoDL0w0=;
 b=kslwnAaE6RotTmo6q9kp+LqSXw+55UIZ4jBL1bbnDlZTPmA2D2jL2jN/u8PCMZnj3gxtrPai3OV8oH86KCxW1ryst06EMPwX9Rhn6/nEQbCmDyR+kfjurrejhrq2rZHAF/M3AoSJX6k8JwCHpqSMHzIj0kXdLeh0+A9l9IKG1qs=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4790.namprd04.prod.outlook.com (52.135.240.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Fri, 6 Sep 2019 23:27:57 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2241.014; Fri, 6 Sep 2019
 23:27:57 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Topic: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Index: AQHVTU090lWiUiEQM02Uoz9V3NTipqb3o0CAgAaR3ACAAxJmAIACeCUAgBu7KwA=
Date: Fri, 6 Sep 2019 23:27:57 +0000
Message-ID: <4615b682352a2e67094d327fa058ec7dd287423f.camel@wdc.com>
References: <20190807182316.28013-1-atish.patra@wdc.com>
 <20190812150215.GF26897@infradead.org>
 <3fb8d4f0383b005ecd932a69c4dd295a79b6fb1a.camel@wdc.com>
 <20190818181630.GA20217@infradead.org>
 <67e670a4600d7dc7ec3c7a7374e330b9a1dbe654.camel@wdc.com>
In-Reply-To: <67e670a4600d7dc7ec3c7a7374e330b9a1dbe654.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e72815e2-f58c-48b3-01d2-08d73321d996
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4790; 
x-ms-traffictypediagnostic: BYAPR04MB4790:
x-microsoft-antispam-prvs: <BYAPR04MB47903A49E1B12B9B50B67B2BFABA0@BYAPR04MB4790.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(189003)(199004)(7736002)(256004)(14444005)(229853002)(6436002)(102836004)(4326008)(186003)(2616005)(6486002)(476003)(25786009)(26005)(6116002)(99286004)(3846002)(11346002)(2501003)(305945005)(486006)(2906002)(14454004)(66066001)(118296001)(2351001)(81156014)(478600001)(8676002)(81166006)(1730700003)(6246003)(36756003)(54906003)(53936002)(8936002)(86362001)(76176011)(66946007)(66446008)(64756008)(66476007)(316002)(71200400001)(71190400001)(76116006)(6916009)(66556008)(6506007)(5640700003)(446003)(5660300002)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4790;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y9l+oMXzbdWjvmCnVTXYfjDX4FuzuJN5eB/ATFVDup76xQ7KMMug/E343RTLnwC8hiwNpUUDkWoMvUOztSqYwTFErAF+lBO3wbG80MRHVw1bGfw6d0t2bER/vMh4Ao+jtVBMDTp0cRSQ0dvnEmqor198o5hN7Cz7aLnWF6UIhtBEeWEC8CZQIN89t45zSC9AKlYlEbIpuPihvbLbq1RbYjFjpoUdrk0E+o0xKiDAQCQZMtD4aRPs+fg4kbBkxfqD9wUfc5lDw0uOo2DbrWK++quOrZazs8L6tDmQ7HJO/zI3gWK17VO96Yz7tBbRjQJiP0OyGQaDtU0dtBgFyvugKSVNHfL8m5ZuGiIPxCS2WH4hDeHPS6FwmDR4aGjcGPrR58CeVFkB1eKb87ARY2I5/alSiMaByQQSnWZykHsGEg0=
x-ms-exchange-transport-forked: True
Content-ID: <1AF896A2C5A15E4FA9FCA442E9C323D6@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e72815e2-f58c-48b3-01d2-08d73321d996
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 23:27:57.1939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+hf7C3hLZnIqwwEiDnCztzn/r5QnutmHxHQLhEmih4Wb9tUW9ewT6YzPGHIgnpGvQPKHSRdTtEzyD/qNNtOAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_162801_713895_8D320DA5 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 00:59 -0700, Atish Patra wrote:
> On Sun, 2019-08-18 at 11:16 -0700, hch@infradead.org wrote:
> > On Fri, Aug 16, 2019 at 07:21:52PM +0000, Atish Patra wrote:
> > > > > +	if (isa[0] != '\0') {
> > > > > +		/* Add remainging isa strings */
> > > > > +		for (e = isa; *e != '\0'; ++e) {
> > > > > +#if !defined(CONFIG_VIRTUALIZATION)
> > > > > +			if (e[0] != 'h')
> > > > > +#endif
> > > > > +				seq_write(f, e, 1);
> > > > > +		}
> > > > > +	}
> > > > 
> > > > This one I don't get.  Why do we want to check
> > > > CONFIG_VIRTUALIZATION?
> > > > 
> > > 
> > > If CONFIG_VIRTUALIZATION is not enabled, it shouldn't print that
> > > hypervisor extension "h" in isa extensions.
> > 
> > CONFIG_VIRTUALIZATION doesn't change anything in the kernels
> > capabilities, it just enables other config options. 
> 
> Yes. But it must be enabled if virtualization is supported in kernel.
> The idea was to let userspace know that if virtualization can be used
> or not. 
> 
> 
> >  But more
> > importantly the 'h' extension is only relevant for S-mode software
> > anyway.
> > 
> 
> Do you think we should just print all the extensions available in isa
> string as it is ?
> 
> > > This is just an information to the userspace that some of the
> > > mandatory
> > > ISA extensions ("mafdcsu") are not supported in kernel which may
> > > lead
> > > to undesirable results.
> > 
> > I think we need to sit down decide what the purpose of
> > /proc/cpuinfo
> > is.  IIRC on other architectures is just prints what the hardware
> > supports, not what you can actually make use of.  How else would
> > you
> > find out that you'd need to enable more kernel options to fully
> > utilize the hardware?
> > 
> > Also printing this warning to the kernel log when someone reads the
> > procfs file is very strange.
> 
> Agreed. May be something like this ?
> 
> Let's say f/d is enabled in kernel but cpu doesn't support it.
> "unsupported isa" will only appear if there are any unsupported isa.
> 
> processor       : 3
> hart            : 4
> isa             : rv64imac
> unsupported isa	: fd
> mmu             : sv39
> uarch           : sifive,u54-mc
> 
> May be I am just trying over optimize one corner case :) :).
> /proc/cpuinfo should just print all the isa string. That's it.
> 

Ping ?

> Regards,
> Atish

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
