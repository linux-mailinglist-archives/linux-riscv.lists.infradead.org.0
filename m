Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96557B7DE
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5au1DWdvj/N0VvnzZrDqeG0qUM/bjOAAPXP4T6BSEok=; b=mtY3PSWWK+UN6P
	iwvJI3//078wxXd/YFSLAG/LUYrL+/MhvhMFOUUov/1AWp8fTX4WWi2RHb9GzS9daoEVMdbAMo0wX
	Z8BjbdxAP1207LYmgh6A11M0XMKqmQkGDUXo6zelwSl5feJZfk59mtMMWv76qbteKnIsYhPiOP5cy
	ut9aECxhclUs+6yfB8LA1iC4TIlvDyAJQcqpAuosBczB6x+/hMPUw75Sc5PpiQuso+F94+s7Y20RV
	KxVxu3nMvlOAnP0QDi23B4Sjqw+x33gFpkqiNjyWTntonidV/IJGVTKtEjUL8B17bEWSS7wXrI4bP
	ei7x0eCle/AxjQJYQOsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdqW-0004Oq-VB; Wed, 31 Jul 2019 01:56:04 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdqU-0004OR-1N
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:56:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564538163; x=1596074163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EzIkLL33VfiaDDUjvmHCkM+3WyciIBxzfLE+FrI2JX4=;
 b=fOC4WjNAb16N3r+aEmVsskHPGDyunb6lUIj462NcdqWsaIbzk7UPhV7i
 AhCSstxI6so+7/dZ6ZAmI/dYX81BB4h/E+x8IKZNIwI9B6TQmdcjb8ls9
 zv/YxrFatAbYnjAf3BPzHLRsXMsAbzoFHuXyjIFsz+r88bQpDmAnuvP4X
 VLYTsQ/I5l2rXTU6eF2zG6cKXI7uWd7JJl++89sut7o6Dvx2YFwJueEi3
 2PVMjDSK0M0YAHtfUJ2NosZSt5xgv2OghyMVn1Jj5fM9XIYn5kqxNOviC
 eIymaNzeqQODyKAN8LEQS/ojcshyizmKsnKt2mS2sIJ9FuLn4UB5n5fPe Q==;
IronPort-SDR: 5N9bK50D871o+QHmPZCmTRj5VRV4GjVXnn+LZdnbqtND7tliUEEfhSBdeXaXbUFYKnU+iUyOTd
 fG9fBwOInGATVbFFVrXK6ot+ZNlN+Pu1ErQ8t6wo4wW/wqra/1hsr2HEmFo8b0fnvH/nUlSdtd
 CbyM6bZPMvuInPLcB5iJK+GB/NmXeiUzvrmJs3VqFC2pq/lf5JXM459IzO9otEqQCDpkVHti+H
 tAfZf28HDD/NE8DmOz2JQAVQz+EMuPEDwWr3y7zP/hR+RZhV7P2qFVhaG5ABhx294UO+lCFRED
 Oow=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119220292"
Received: from mail-by2nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.55])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:56:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uio0qAt1waLd5VdTbxaaawoBZF06vXoRu3l5aXqQiLzKkNBaZGcW8+gS8Ci0FT87P12yi3GnR85cPeHW+HZtVgrTyTIqxQiRXr1by/tzv6MRcH8SQ9bG6/1Be/D0mLlENa7lEiDPtkvvvsQLAlU0ta3NnIEJIUpdGr1sFTUma86oVAJPZ1shisWSKJI5bIecGG7LrOJAlLc9+zdrOhVHbOoE9tKsERXUBOxeY0bjvMTELEfZ2iYeApZQBRucW2wT3pfn7/7p5GTy+PE5nw4RaFchxLP8IIhu6jSQZTQWPupeGMw1QYU4SkjLSnmijx/pPbe/ipzp3yMUgWDNWQOFbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EzIkLL33VfiaDDUjvmHCkM+3WyciIBxzfLE+FrI2JX4=;
 b=iVxOWkAYWb62vRgnj03mYg3l0/fO2BPKY46A8jELo5sOk/DrXCT9i3D92DpR2JNezC5Ows+riyiGeIhVYt/5+37U70jcvM2coX6vDPp5cWv4TsWmuhNNIBb3T1TYCMmGj+SWzc5pYi/Fy7IBzAWSZR8OkzqyAhbBcqV7MlZsWnSEJhLguGrn5RZZ75nDjMhxv2qlw9qv+fuIRt+Hz2/fbwiqvOEvRfLy0EZ/Z7tMUVJEY0vLQugB733ZZwNrhZgsjRp5SEyQ9L9eXw1Z7gEd3VZEJUywSoHHaDomDbGQXJ/d59/3yEqqFf8mWKfMQ+d8+B2XubLx181liGWmwbdcYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EzIkLL33VfiaDDUjvmHCkM+3WyciIBxzfLE+FrI2JX4=;
 b=k/LjvsRiKrWv4YVOvVckmsmyiRjzQiOd+yGWgNWxVtgX1UEruFEWiF9TL6t9Qz3TMnQXFk/t2cjybsHiAhZuMoKBvC5QEeXYbWG7zljKSJhB8dEYkVeYoIvzMrh4S8oqblNLbM50uT5FVlM7TdhGDk566GUPiWMgsNhG2OOQYiM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4598.namprd04.prod.outlook.com (52.135.238.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Wed, 31 Jul 2019 01:55:59 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 01:55:59 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>, "pbonzini@redhat.com"
 <pbonzini@redhat.com>, "palmer@sifive.com" <palmer@sifive.com>, Anup Patel
 <Anup.Patel@wdc.com>
Subject: Re: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
Thread-Topic: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
Thread-Index: AQHVRgTUPAB7n90qAEyqoYXnGhI7+KbjB0QAgADy5IA=
Date: Wed, 31 Jul 2019 01:55:59 +0000
Message-ID: <7fe9e845c33e49e4c215e12b1ee1b5ed86a95bc1.camel@wdc.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-14-anup.patel@wdc.com>
 <abedb067-b91f-8821-9bce-d27f6c4efdee@redhat.com>
In-Reply-To: <abedb067-b91f-8821-9bce-d27f6c4efdee@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f3e1aa5-aacd-4351-0986-08d7155a3c37
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4598; 
x-ms-traffictypediagnostic: BYAPR04MB4598:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB45982766F9391E322B792EE7FADF0@BYAPR04MB4598.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(189003)(199004)(446003)(229853002)(110136005)(76176011)(476003)(11346002)(54906003)(2201001)(2616005)(71200400001)(316002)(8676002)(81156014)(7416002)(256004)(8936002)(7736002)(966005)(486006)(81166006)(6506007)(14454004)(66066001)(305945005)(53546011)(68736007)(5660300002)(6246003)(26005)(478600001)(71190400001)(3846002)(6116002)(6636002)(25786009)(6306002)(66946007)(53936002)(6512007)(118296001)(102836004)(186003)(86362001)(66476007)(4326008)(2501003)(36756003)(6486002)(2906002)(66446008)(64756008)(99286004)(76116006)(6436002)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4598;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KBPg7aI1bItGwl35cvKVqoMbhvKSUDM9bqd8SXYB8fKJ+RHQD78/XUBqDY6ZyOAO5CJOfemG888MXplGdWxJ2+uy8RuXRz9jDPeK2csKuAWSFmceE828Du/GdlQ4RwD9XPwBtR0LFFrRPJF1KVdowvXkyQB4SX3peouFXT6ftg/1rDhiSL3tCKwPn1BRCZAYoQXGjiuu/sWrXO22oEpsmPPckQUBF805s74vwAHhM3ulPAuIIRJ0tDpAwLmLTSRtABou3BxMN3jscrzXzUdpABz+zo2hVSxj57n+lijF5X19vhdbbieP0LJyGkg99udfFiRcpomRPNx1bp0jL6QGqiH3m60DB+pJwAG4OqRFnqFaVTP/DuZFJJgJIxCLE2mRt8oE/vD1D82qU6ChfxopGkI6JgoaizV3G2iLcB2smOQ=
Content-ID: <13B323065899E54CB3E7D3A54271A60D@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3e1aa5-aacd-4351-0986-08d7155a3c37
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 01:55:59.6574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_185602_274532_36B1F82F 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-07-30 at 13:26 +0200, Paolo Bonzini wrote:
> On 29/07/19 13:57, Anup Patel wrote:
> > +	if (delta_ns > VCPU_TIMER_PROGRAM_THRESHOLD_NS) {
> > +		hrtimer_start(&t->hrt, ktime_add_ns(ktime_get(),
> > delta_ns),
> 
> I think the guest would prefer if you saved the time before enabling
> interrupts on the host, and use that here instead of ktime_get().
> Otherwise the timer could be delayed arbitrarily by host interrupts.
> 
> (Because the RISC-V SBI timer is relative only---which is
> unfortunate---

Just to clarify: RISC-V SBI timer call passes absolute time.

https://elixir.bootlin.com/linux/v5.3-rc2/source/drivers/clocksource/timer-riscv.c#L32

That's why we compute a delta between absolute time passed via SBI and
current time. hrtimer is programmed to trigger only after the delta
time from now.


> guests will already pay a latency price due to the extra
> cost of the SBI call compared to a bare metal implementation. 

Yes. There are ongoing discussions to remove this SBI call completely. 
Hopefully, that will happen before any real hardware with
virtualization support shows up :).

>  Sooner or
> later you may want to implement something like x86's heuristic to
> advance the timer deadline by a few hundred nanoseconds; perhaps add
> a
> TODO now).
> 

I am not aware of this approach. I will take a look. Thanks.

Regards,
Atish
> Paolo
> 
> > +				HRTIMER_MODE_ABS);
> > +		t->is_set = true;
> > +	} else
> > +		kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_TIMER);
> > +
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
