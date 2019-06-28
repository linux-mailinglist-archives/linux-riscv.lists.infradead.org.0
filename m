Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B635A550
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 21:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xUyTtdDM27LPPQr0RIsrLWLSCA95t/7rVUwtkYI7KM=; b=Nkn1ICLnyhyBR6
	kCnQLxflYWAkb8L9hUvEph1kXmrZwbPSttdgL/tK1B+jXnawkk2B2Oazkjl35bAmJerBn7H92KIKR
	w4uEbiSrAundVrE590IbvND6D6hxnX5g89DPGVNujUNY/Q59E9edDERlrFmM1VpDvdCJFbPftNFyJ
	/KH/K/CyV4NqBxVE1PYX4CwP5JnaeLTpLlZ1vX3MT4uQycD69tQKZo6+DMCEje2RJLoMh/lYle5GR
	DuadgqmgIdhvOjsAX0f4kVlY1c6zdHyWeBeiMPzVcpIhfUR4v71FBcHF4dGJoIq234OMT9HIY43W2
	VuGuqiUKGKgOYf1RJ/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwoB-0005wp-Ue; Fri, 28 Jun 2019 19:45:19 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwnk-0004Z3-Sv; Fri, 28 Jun 2019 19:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561751120; x=1593287120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/RVJa912dr6WLsbEoVEPNY0bFG8sgSsTPvrW9GfhPaM=;
 b=fzK4KbV7oQqo81L9Jtrquch4WsoT1Y+0Mc5Nea2B1WQzjA/WPgK4DHxA
 JswR+XPmdfNZTjUw/Z/AUfjHjTS4sl8niIIY/oIA3LfxI2RI4sS5cpjAR
 lUQClJK8fDByU8ux95ygDnTEzc8ZUxdTCyiZe/e/mgu6M+fyzYJn9w86/
 rDwp4wu4uMwpeOSZvS9aHjI3lhh3IIpcHtameH8amU2QiBxJSJpSKlGWr
 UCDhd/oPhtC7QwJ5n9yZp/1/iDzec/mOSAaVv2A/mwV3uPUtyjn6Lsw44
 qwZW7WmEMu6BPyoYEYnaS+dXVVvHukuTPnUN+/+yxBfqkahDwRsw8M53w g==;
X-IronPort-AV: E=Sophos;i="5.63,428,1557158400"; d="scan'208";a="211636843"
Received: from mail-dm3nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.55])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jun 2019 03:45:07 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/RVJa912dr6WLsbEoVEPNY0bFG8sgSsTPvrW9GfhPaM=;
 b=vcGS/kP1J9R8IAmBsquDLAh9+AVjf31jZ+nt/DrmLfcFPWsEJ/VMp4AUQk1f3mlc2R5GylFkraa4yhbpQRVzmhYW0fbWeGItwieXSBSaBYzzD5KHBQ+ToUz0g5BVO13mxClp9n9Ob60+iTk8sWy45CgiPL4ayStYcTLFJezu+3A=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5989.namprd04.prod.outlook.com (20.178.233.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Fri, 28 Jun 2019 19:44:43 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2032.018; Fri, 28 Jun 2019
 19:44:43 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v4] RISC-V: Add an Image header that boot loader can parse.
Thread-Topic: [PATCH v4] RISC-V: Add an Image header that boot loader can
 parse.
Thread-Index: AQHVHLzHT4YK2HktEU6wLZ3FpbqNK6axkG0AgAAJ9IA=
Date: Fri, 28 Jun 2019 19:44:43 +0000
Message-ID: <c0bdc25bc3aee9eee8bf9ebe561900b88df0540b.camel@wdc.com>
References: <20190606230800.19932-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906281207290.3867@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906281207290.3867@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f850754-ae51-494f-143e-08d6fc01116a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5989; 
x-ms-traffictypediagnostic: BYAPR04MB5989:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB59899C20B999F2D0203EED12FAFC0@BYAPR04MB5989.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(189003)(199004)(54906003)(316002)(25786009)(6246003)(6916009)(71200400001)(53936002)(5660300002)(71190400001)(4326008)(81166006)(81156014)(2501003)(102836004)(229853002)(8676002)(6306002)(6512007)(6506007)(8936002)(26005)(76176011)(7736002)(68736007)(305945005)(86362001)(118296001)(186003)(99286004)(36756003)(6116002)(72206003)(66066001)(478600001)(76116006)(66946007)(2616005)(66476007)(73956011)(11346002)(476003)(3846002)(446003)(2906002)(256004)(66446008)(66556008)(7416002)(64756008)(486006)(966005)(6486002)(5640700003)(6436002)(14454004)(2351001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5989;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: llIc0JbXUX5OASelvZPVxK7PyaVv9VZ9vnP1aai++RT2Z7waDdDo29XIOHo4ziMzx1gPxGn/GtB7UihaHl8xZCKzWg/IXMDF6jYyVlWuymnBIXiKSN7JalTlcQtO4EpaCburAiYy244+re8HR0kosMOzpZZQNqgix+tmlA/JgLfHpchNh7TH4Tf4FDev4Bv0P6CRAV9uwgLP90ZyitnNIDIoF2c9ZaBXCzF79t+Dy6nGTWkJ9mZZU65+tWJP3KDDYKlcbOUBWV3V4zjeYO57m3mzGtxRcAR0/JgcxZbvBA2l/WANkU/redCjqhOB1Fsz3fv9glrtavdHVkz/ezFQAgfEVjiqNBAk7zD8cFQedhe9M8BA1Z9wDrikSKGK6ppRHof/RH3eqF3h/w33a9an98MqHBc3xZTRZFNATCNesFk=
Content-ID: <F1572903D129304EB588DB11188C72EB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f850754-ae51-494f-143e-08d6fc01116a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 19:44:43.5925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_124452_973645_36942917 
X-CRM114-Status: GOOD (  16.25  )
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
 "trini@konsulko.com" <trini@konsulko.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 "mick@ics.forth.gr" <mick@ics.forth.gr>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "merker@debian.org" <merker@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-06-28 at 12:09 -0700, Paul Walmsley wrote:
> On Thu, 6 Jun 2019, Atish Patra wrote:
> 
> > Currently, the last stage boot loaders such as U-Boot can accept
> > only
> > uImage which is an unnecessary additional step in automating boot
> > process.
> > 
> > Add an image header that boot loader understands and boot Linux
> > from
> > flat Image directly.
> 
> ...
> 
> 
> > +#if __riscv_xlen == 64
> > +	/* Image load offset(2MB) from start of RAM */
> > +	.dword 0x200000
> > +#else
> > +	/* Image load offset(4MB) from start of RAM */
> > +	.dword 0x400000
> > +#endif
> 
> Is there a rationale behind these load offset values?
> 

2MB/4MB alignment requirement is mandatory for current RISC-V kernel.
Anup had a patch that tried to remove that but not accepted yet.

https://patchwork.kernel.org/patch/10868465/


> 
> - Paul
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
