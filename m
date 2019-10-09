Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FC7D1B5C
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 00:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QoPwa4AkjcCvT3GsvXsW1N/C4uHUB0nAs55JzjTAFk=; b=cIzF301N8P+wUd
	IcKlDRoNqveF/j0CYGevPVDYCSkCF6ZLp+TU1lCC/iXg6I174LhCObJqclbsxiB6Asa6zJwrjVtKP
	fuVcAneoI6Ht6VBA1HCmEiSgchWGAd0dE7BS0Ur/56LvJ4MiI/yzFLhlEaaDxCFV0twiXbluBkHtE
	7dkCOCxu0cYIXU0vhXHUm+TCrph6+CIVu3zxVEs5cl8xziibfpcT/brg/BGBaxCzFqejqIJpP6VEg
	lRUBxdlltzMdEav3LF2KIaePHd0E+yv5ftx5c32EGroDecTyK7ESvD77VtaH8SaNF/UFIzr64wcdA
	pVNDjF6G6wHHrBu/2s1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIK2P-000281-KY; Wed, 09 Oct 2019 22:02:29 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIK2M-00027X-58
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 22:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570658547; x=1602194547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+zsaZc6kxpwaRjehPSTssL3stLwWwuaV9Og6AnYp1GU=;
 b=SkVn/jnbUyC9rk4eJz+MO1E0nMbe0/GKljdX5V9o0AKefBpJBxw/0Uz4
 +vFzTA2BOpH7VYOMTfs9e6fwqDdOUunGD4spDiqF/+Z5+I0GV3MZ9naDA
 VCNd3x0uHdHJKn7Tlqkk71JVXUpNhC2mwSVqCYJmCq2VQrv/Xt2eBJbng
 OGsb1C/0KVd1wMlr7CTl3x4BB1OhSI+RZpNhQrIUNpT6dyiz+7ZNo0K5z
 4SqMUdHhSk47FwD5z+2a7HZmFN0nY+GkGk/4ld+1nwl41a9wtK5uyJ1YP
 W+YC2Qg1fvkft9tXfLPw6920Ox0I3Iy6sfncEPGDGlfCf6emYyAgGw97L w==;
IronPort-SDR: g4DVKxNJNsTgbZCVowb9EVMk2kF0VBA3ygDRnI76AfWUfntHRZirEg9klW+mz+hO5VQ3LXkp21
 F7vb7ccanTN2v2TLVex5W3FjNhEEuoonbwkQblk3/FUqhHPt/tcFoFWsBA9oK6namLGbRr4eUR
 1UcVnBb2XoaAVn3zxJq2cxcE7VAAup31a3py+0P9CNmHnu7ScsjLQX0hm31Ac65aroCX1MEcnr
 UH8l0XS9ZXaitCm+N+8WRFqep0X/dxjTpQf4Unb4LVUTT2VXSwVdSb+SAj1Zv0WWTo516tJtK6
 OTA=
X-IronPort-AV: E=Sophos;i="5.67,277,1566835200"; d="scan'208";a="124618111"
Received: from mail-dm3nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.58])
 by ob1.hgst.iphmx.com with ESMTP; 10 Oct 2019 06:02:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChgIetBlMxCaxTGojATCoSCsVH18MkWDiDXQ6Mlr1eJCo9V+jRAKQsXrApCx8Rswh1dx3sZ2rhP0VNIiBKVb9Cqm2rq/Igtiv8n1s+Vbjbw2IZbQibIj+g1IHl1qZhN91RstluTX0wd59hBfLqDAmA/MwR20isaAdVQ+AlngPpH/s21WXBYNE+K4PrYHYXH604GkaJpT9tpfgPBnVkk3X4CYTHRnSMvYMTBTh/Ht11pH6ACX3tSWq8jWJoI08i+FiMaojrsbsmjsLL+d+0sbPVZikPK9KOMLEtJ+RevjZyEmU3dFmupOrq8WP3PrufVm4CqKSUk5rk7V4PzG9F+mfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+zsaZc6kxpwaRjehPSTssL3stLwWwuaV9Og6AnYp1GU=;
 b=XAgcOr66jxTmZFajZUfTC24QHRpMSIsNRmCE6iPfV0Wx3xz1V93v/mvqsVBtOuSEGXk7bQsi9F2r8tz2ID6KVHZFJzjiFlP9kDpsSd0bEslGQWjR798zSENhOswH1YrkfpekmKdrHtRMUgCTP8qmsftZbX/wI7DrYayh9TCyAzsZONG9IzULyOpbKjsZeW7NjMicFG4Uxr+mov1ue31MgTRHXsKPBJ9SNIXXapZcDweWTqxzZ1vHsKXE02pQQ0O5MLJm8RP66MGyuCXob141TkbNccMJ4+Kvdct793h9wrc2MAO8veUBJX96XuUXA5ng5j91qUPlmeB6xi63qAF2pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+zsaZc6kxpwaRjehPSTssL3stLwWwuaV9Og6AnYp1GU=;
 b=EmrSZwByQmz2bp7lHDefUxxgFeNFz2qM3Il7VkNObWdLFrxPFgk2bX5RxzJBP0AS9glJiOZqgOVDPu0OzPudRNMuvd6CgoWOdoEChu/9tAJTFi+Uc7XIyjjfOy4s3kIzgOWtp1ESyGaOTvX5hkLcYtAFvjbBrsPJSMtiokQo6T4=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5030.namprd04.prod.outlook.com (52.135.234.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 22:02:21 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 22:02:21 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v1 PATCH  2/2] RISC-V: Consolidate isa correctness check
Thread-Topic: [v1 PATCH  2/2] RISC-V: Consolidate isa correctness check
Thread-Index: AQHVelHdFNDYeeaoR0C47HAPlzL9UadQ6c0AgAH8AAA=
Date: Wed, 9 Oct 2019 22:02:21 +0000
Message-ID: <bf56b97914951617cbcc49941737d6714eb762e7.camel@wdc.com>
References: <20191004012000.2661-1-atish.patra@wdc.com>
 <20191004012000.2661-3-atish.patra@wdc.com>
 <20191008154408.GC20318@infradead.org>
In-Reply-To: <20191008154408.GC20318@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8e42985-e488-4b6a-1755-08d74d045c21
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB5030:
x-microsoft-antispam-prvs: <BYAPR04MB5030D4E0BD08A486EA1F5D63FA950@BYAPR04MB5030.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(346002)(396003)(366004)(376002)(189003)(199004)(256004)(6116002)(71190400001)(4326008)(2351001)(99286004)(476003)(478600001)(2616005)(5660300002)(7736002)(2906002)(3846002)(7416002)(54906003)(36756003)(305945005)(316002)(76116006)(229853002)(71200400001)(66446008)(446003)(6436002)(14454004)(6486002)(6506007)(8936002)(11346002)(2501003)(102836004)(6512007)(6916009)(64756008)(66556008)(76176011)(5640700003)(66476007)(6246003)(25786009)(486006)(86362001)(66066001)(81166006)(118296001)(186003)(1730700003)(26005)(81156014)(66946007)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5030;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xQ/mBFQsv7knGYm4Dp7Bc6C9h/GqlvFn1lQJ/7y5p8ftxcoLpAg5C+TurWgWdizAQHNHGNmXVqx9Nm6EIszIgjFjXXJ3UcrZwDeqmZ/R6C3g/ZXa0pP4oL0zD8y5WHNFhcjtaM2uwRiygzY9MOatZL8st+w4wPGlrSRlD5K99JvKsGBWXckNsBEa1msiA7lV82a5NF8dCDjoSISqvjU2XpfmLGdnqSK9+pbIgvzbdxJ4Dh1PCEn+UucuY0VH6AdSMCDkP1q9Wz2cqSt3wVU+4Ds8xKurTp/L0rmnU9qKq7INyuSufv9Dez43q6mL+BPzr9qoRlPFVIGmlPTm+PJHxSid1PKVGM4rkccT2dlPF9dyu6JE3/frnJy0w3ocNKQ2XmtlXalI2FV2E/pNMun0SW+FJdRL9hyVrv7EQjwtPNc=
x-ms-exchange-transport-forked: True
Content-ID: <599FA5FC1033F84281BA3C35FA81F1E3@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8e42985-e488-4b6a-1755-08d74d045c21
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 22:02:21.5166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BpNmY1RNeJgqwLLe2iOj3yEw4+JRUSnvOh/6H4L/2BwBDhzftJ5YUcdjmNsVq2hOYTVZx85G3DLOMDeCEXrEHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_150226_270845_7664FDC0 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "johan@kernel.org" <johan@kernel.org>,
 "aghiti@upmem.com" <aghiti@upmem.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 08:44 -0700, Christoph Hellwig wrote:
> > +int riscv_read_check_isa(struct device_node *node, const char
> > **isa)
> > +{
> > +	u32 hart;
> > +
> > +	if (of_property_read_u32(node, "reg", &hart)) {
> > +		pr_warn("Found CPU without hart ID\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	if (of_property_read_string(node, "riscv,isa", isa)) {
> > +		pr_warn("CPU with hartid=%d has no \"riscv,isa\"
> > property\n",
> > +			hart);
> > +		return -ENODEV;
> > +	}
> > +
> > +	/*
> > +	 * Linux doesn't support rv32e or rv128i, and we only support
> > booting
> > +	 * kernels on harts with the same ISA that the kernel is
> > compiled for.
> > +	 */
> > +#if defined(CONFIG_32BIT)
> > +	if (strncmp(*isa, "rv32i", 5) != 0)
> > +		return -ENODEV;
> > +#elif defined(CONFIG_64BIT)
> > +	if (strncmp(*isa, "rv64i", 5) != 0)
> > +		return -ENODEV;
> > +#endif
> 
> Using IS_ENABLED here would clean the checks up a bit.
> 
> > diff --git a/arch/riscv/kernel/cpufeature.c
> > b/arch/riscv/kernel/cpufeature.c
> > index b1ade9a49347..eaad5aa07403 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -38,10 +38,8 @@ void riscv_fill_hwcap(void)
> >  		if (riscv_of_processor_hartid(node) < 0)
> >  			continue;
> >  
> > -		if (of_property_read_string(node, "riscv,isa", &isa)) {
> > -			pr_warn("Unable to find \"riscv,isa\"
> > devicetree entry\n");
> > +		if (riscv_read_check_isa(node, &isa) < 0)
> >  			continue;
> 
> Do we really get rid of warnings if we didn't find anything proper?

Ok. Added back the warnings and IS_ENABLED in v2.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
