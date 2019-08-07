Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB948521E
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 19:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeWg6/Okyx/bQ6+dqFu/un0XpuubcTWT+52LokhgdDw=; b=NNVXEeTpv7XfJw
	XX5ZCh8gO+otr9bA9ZSUxO7pOlRZUagYoFp2mr2YuR9zxIbeGH19AGub6LqAQRHJ5NfNah+TlbvNP
	/IIQQzBf74SQYUQz86LyqfzNuA9bGwJ86EbMcJo1vrtFXPXQXDxDFIoi3NwWoDYtDuZf/Xm6d2s75
	URWeRSn13Bt5dQKZy5a47emfa/jv77B+CryPfS4gyblhUmeyIph1YD7im189OU/8hI7kLwyYPOr9h
	LbzKBzgmIlQqjegwE6VLkGyVuT3QhkyTW7q0sbZvMUHlh3IoNBqxVMuZVSIBpTK5Ahy3B8FViJHuw
	3tF/R+2wAovINmAVhr3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPn5-0000bQ-T9; Wed, 07 Aug 2019 17:31:59 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPn2-0000ac-AN
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 17:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565199116; x=1596735116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cSRbF3vx7WsTqTkzDSX0FtgF2dR9I+cdi+BWPiPCbJo=;
 b=EW9EfuDofoN4ox92gGWkSS3uzEnk5aPxEhisCrhkhugOH22R0dah9riN
 FxGFJYwqHvQ4cvFdWxOVcmmRUBv+1yMx4tYMo5r3IcrX6fkliNOQCVs0y
 MLkELt1RwD1/XYQNRUgrbFGi5amwyZ0CLA+RDmkm0R+fvxyvnsJ4FCeyu
 trfqCQA9H8gl51Vngv69pUoIiOqB7gKpQH7Rp33k5PwJupHOOHuwVbAfb
 OQnXA0cmdDO7es2b/b4CpXMZLg0XgUT0x+B9zbyJJrpbUttpqsxiLX7fN
 p5tvXhvCoDg8ibf/NKFVUsI3s7CBCK/YhEg+NB5lUcURws81I/dEl9yyv A==;
IronPort-SDR: 3RFuEkIpreQxFRLyu2TcVlN3fNdZyFsFFs6CIaGQ4cTXbFpszeuKzvROZFc6bhyacY+YwpZBcA
 JPsP9OiMMSgvjYxRFoLS9y5L2iFCiKWLACVDmWH0pEdvEBy3rNkn+UfYamBCC4eg2uX5ffA6U2
 EEAD7nXvULLVGXZvcTlT5IBNCO1LQMfatbx6mi8ZhhD4PG2l3wWVuq53Dzrxl5+FAV/CI3ALEF
 djjSFJ3CIk2NGPtY27de/S1I1mKt00ou5IZN27qBmHQ3n02wf/McDs0guJSAqTspO1hjmqq+LK
 I0I=
X-IronPort-AV: E=Sophos;i="5.64,358,1559491200"; d="scan'208";a="119892714"
Received: from mail-sn1nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.57])
 by ob1.hgst.iphmx.com with ESMTP; 08 Aug 2019 01:31:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LD557bCRt1Eaum0RtNKIRYOYLCd8po6czAAyHxxeG7jjJYgTWKEUXfotEktRtdZM7YbAxMKMWYmsUuCgRj+R44b0N/w9REFdeofsP4AryXANg5STUOVx0isBAYm1ei6PcEZ374OYtcS0d+2UIZytP77GZFIP75HNZX2bWlJRhXjaHZgMLZUsi+Wz//aCiiEVdd5is6GXz8T5QmDB1AaJctAJjev6cFgNvT9GzSW4bwvbvzhPDLlrCKohnJtD1ztev9BUeCtJ/ZDzduAbgwHGHbwryvzSvGNz/svJ8IEz4XjuoGT37ZWug0OHEOmw8m5RyODZFZNFfg8YLhk2Iids/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cSRbF3vx7WsTqTkzDSX0FtgF2dR9I+cdi+BWPiPCbJo=;
 b=BOSJw2WmZq/ftJBbT0fQEijgrckd7TRW1dbJpkimX6SRI2q/Hx1J4Vh0N+MVys31n73t5xcMeSJfc1o3FpdJFiYikvbnfJmGIHYod33Eqi5ULkbGAWrCwG+p2acGOW0zJ+YptfJA9w4i6dr6poe3g/vx9dGlGyTmhIarKIMK0VMX6jBuk2U0keIz2x6OQK5vCWeCcW1hgir+jBzvgUqbXyxjzTrjvGeASYmQhWTsJKgJQXVLCmxJ4ZtupfqJ7P8NpOY+Z0ZEGrPmfiXN3YbROx6udaAUGXNeQkxE7DoHG3ZfTgA9Fg4GH84LGxjV+vNbsJSZnqFcExQxkiRnb66/ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cSRbF3vx7WsTqTkzDSX0FtgF2dR9I+cdi+BWPiPCbJo=;
 b=nrADeVNer+lI68xvVjq6fow7gJEVJH7TOXNUCT4lsVXNbf+CoIlGVPQhaFZWDEIdwG1Muxt4gJCCjBvPreSC+bZd4BiMWU1aojiaa2zQYfDteCVDieJh2nlFwADRedHTZdN4Yn3xTTIpNwnMy87fJRpf4Fm3BAKaQQaMsnF9MUM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4055.namprd04.prod.outlook.com (52.135.215.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.20; Wed, 7 Aug 2019 17:31:51 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 7 Aug 2019
 17:31:51 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
Thread-Topic: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
Thread-Index: AQHVSARDLwisRSZSxEGpcN8B9TVet6buzP8AgAAdjQCAAAOYAIABDdEA
Date: Wed, 7 Aug 2019 17:31:51 +0000
Message-ID: <a2795337bd86ff22ae9618d7ccae22e7482be332.camel@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
 <20190801005843.10343-4-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908061625190.13971@viisi.sifive.com>
 <1e23ef1face9d323fda4b756811f922caa5f7689.camel@wdc.com>
 <alpine.DEB.2.21.9999.1908061818360.13971@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908061818360.13971@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 704ebc1d-6d9a-4316-0144-08d71b5d2234
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4055; 
x-ms-traffictypediagnostic: BYAPR04MB4055:
x-microsoft-antispam-prvs: <BYAPR04MB405580B209D3AD125E2FA110FAD40@BYAPR04MB4055.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(346002)(136003)(39860400002)(366004)(189003)(199004)(2906002)(76116006)(316002)(66946007)(66556008)(5660300002)(54906003)(86362001)(6246003)(6116002)(11346002)(26005)(186003)(71190400001)(71200400001)(66446008)(64756008)(446003)(478600001)(4326008)(2351001)(66476007)(25786009)(476003)(2616005)(486006)(256004)(3846002)(6486002)(68736007)(102836004)(6916009)(229853002)(6506007)(36756003)(99286004)(8676002)(76176011)(6436002)(6512007)(305945005)(8936002)(66066001)(7736002)(81156014)(118296001)(7416002)(14454004)(81166006)(53936002)(2501003)(5640700003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4055;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ddgQCjxYTgZxIMRU+JkoIVhnf6e/t/PDpe0PSkB8k8vVRkBsAjqIfiApO4cT2jqX9Tw1d66rwz61AL5WAh5UNgTFDJg3KkTVdCzK0ZhvXGuf+e0m0s0B7KdIRnuA17GOqTCumTDSmmsUNKG5T/gHbu0lly92lpBo7Af+8EwD0LTtT7KOLGSyoMR4CgCY6zYX6CdC/aR80bUhZpbSoX2aKOSra5JiP8gAFNfU++cM5bQi6RLMh1q7TCrsMUEokc2eWYHy0jIw27Mmb9lSv4kgsIiMIqQsdLuEIWefKTq6Qi2aj4Ppj8RUcE6jYJdTlRSu3T4MrHMZ3Ekmw/8jTZWl6y2eT3mqGWKA0bdA7YEBlg+5tI6wetAFIMidQc/hGG/RBBHMkkDXf6Hc3kD+igQzjz6ZHcxJrMhQVlRRdYUanqE=
Content-ID: <AB926A394B57D04583BF73AC1DC978FA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 704ebc1d-6d9a-4316-0144-08d71b5d2234
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 17:31:51.4497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_103156_567280_8724F6D1 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "info@metux.net" <info@metux.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 18:26 -0700, Paul Walmsley wrote:
> On Wed, 7 Aug 2019, Atish Patra wrote:
> 
> > On Tue, 2019-08-06 at 16:27 -0700, Paul Walmsley wrote:
> > 
> > > Seems like the "su" should be dropped from mandatory_ext.  What
> > > do you 
> > > think?
> > > 
> > 
> > Yup. As DT binding only mention imafdc, mandatory extensions should
> > contain only that and just consider "su" extensions are considered
> > as
> > implicit as we are running Linux. 
> 
> Discussing this with Andrew and Palmer, it looks like "su" is
> currently 
> non-compliant.  Section 22.6 of the user-level specification states
> that 
> the "s" character indicates that a longer standard supervisor
> extension 
> name will follow.  So far I don't think any of these have been
> defined.
> 
> > Do you think QEMU DT should be updated to reflect that ?
> 
> Yes.
> 
> > > There's no Kconfig option by this name, and we're requiring
> > > compressed 
> > 
> > Sorry. This was a typo. It should have been CONFIG_RISCV_ISA_C.
> > 
> > > instruction support as part of the RISC-V Linux baseline.  Could
> > > you 
> > > share the rationale behind this?
> > 
> > I think I added this check at the config file. Looking at the
> > Kconfig,
> > RISCV_ISA_C is always enabled. So we can drop this.
> 
> OK great.  Do you want to resend an updated patch, or would you like
> me to 
> fix it up here?
> 

I am sending the patch right now. We can remove the 'S' mode check as
palmer have already sent the QEMU patch as well, .

Regards,
Atish
> I'll also send a patch to drop CONFIG_RISCV_ISA_C.
> 
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
