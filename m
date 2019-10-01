Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFEDC2DE1
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 09:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiCHAn3gZMI+HCM7HpL+WucLHCOldSAiYKzb3cAE0rQ=; b=WrIDCD0ka2YK1q
	hUQUjWZ5B5X9QAhPRkFB1IvA2mre2wyuEELREDJYh0dKbft1uuHY5OSUQ53mNKobQzET8jINA7u5J
	QNiOFgqTejkjkO0fWEJjEyBUYGuGV1AFetNbKRZdMa1mQuE55MH5QZLwtasRfhbZDdFXd+u3lc0uc
	GjfVgsN6OonXnZ3jdCpV3yaVrcXaVlZOHU2D5CmIfx1INCPLuuZgXw5fk6zOfx0XkH5dda6Tu0pQu
	bMP9yKl1ozYNoD6Xx2KrctdtXQ0EtQ3PsL5oSX0yRTqiYoiakmXzuyFkoRc1fixYFP/DVHUuVJ/Hc
	19iN6dFqkmyE7uXF9l5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCcu-0006fa-Iq; Tue, 01 Oct 2019 07:31:16 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCcq-0006eq-OM
 for linux-riscv@lists.infradead.org; Tue, 01 Oct 2019 07:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569915072; x=1601451072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JsOIRtKVEobbstGQwgENrnkW3F6tkvwiKE1dlIe5aYk=;
 b=hb5tfwAPkG18R4xsmrcfUk4eiwfvy/ok3QvenNhd8XXZVHyeq5D75NYT
 ZbSlq25O1jzyACT3f6mtYMnW9zW21pb2i2mCv/G6EjmDszGs4mB3tft2l
 9kwjCOTyzwUL5ipGprv9csWaU15SkJN9P1IpskgE7ikcrmzmPleaL4ocj
 PuJKo/gsdvV+/xP7/x0EQJEEHDqYaJQT9UYyRMAR2W61HV5xO4feNa+oj
 BBK7EUNWY3zwEJVxrIM+CsmJBfx3xPgTAH+JFiCCeCL9WwheHFEhpjQnE
 29ZwhsYKMGapoXnyv01GchvVxwK3EY4Cc1zqRw7rZboitwfDqS0tV84UP w==;
IronPort-SDR: JFJ5tS+xZrfR8Az5XxwzZHI7+h67ddLy10OK+DUqHn0M7NDI3xBNiLA+FOx7pLVkbWb98eYik1
 0pjnF3MXFfyX4cekPg9IwqGU1CQxHumk5XEq5AFXxRceQ/I05ycnTyzoTnPRQmy1Q8PicxeCqi
 SVa6vaafUIsLk8klaj7tEHN3q9gt6uhyBrfRAS+xo3rax+JrVe99Anzh/Xe4fVl+WmDPj2vOcg
 FYCeBdE5hCGI6981r1+TP0zACKMLgEehFAQCDSmIu+7QywcE0MB/2OJMb+Q8VPzg+4Nm7/ycsQ
 85E=
X-IronPort-AV: E=Sophos;i="5.64,570,1559491200"; d="scan'208";a="119507794"
Received: from mail-cys01nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.54])
 by ob1.hgst.iphmx.com with ESMTP; 01 Oct 2019 15:31:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aa2d59LszCBGEr/1voxAg/TGhCyUY6ru/vtxjlZ/i547dvQPJtncayEMKpdwKByKKASIWYA7xFjU0C5nO5dehXxRrubg+xO0hC6puBWmmWqHUozt8XL6KpTBfoc6AOrdWBbayzF2KgLF9QErwkTFBLheX04ApqYyzlxVfFVzBgkWR+DRmW5MoymD3ZiHta+oz5Q9sD1gsttWEhyzQyT+ksntnD0oS84YlZSef/k/0d/g0QzLC61CqEFoZa63fR4lz8nRVtbxQxMhBgNO3oBS0l8Boj2tOXSugANpvR6gbs6fggdBO+EWBubtZEROWsUvVnCdGZfxCyMrcR6e5M7Yeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsOIRtKVEobbstGQwgENrnkW3F6tkvwiKE1dlIe5aYk=;
 b=JcoGVNn7LHr2VRC1K/RWZ0Fl/KaHj48mJ19NhciaIAZc7aqK73lEjgUSh2NAltS927CP3l2ZQhKbs905LtFFxVZohbMoYrkTGwIC2QGhNHQPSKIN2cZVRpslCyRZdWvTwHJzvcHYgGhbbcwNWbhZKyJXNQoiz25JSjEdSmg0GH0YVMTGPIfFVIuQG24tbyXpBkqjgXq3YYkPwyKcWDq2MNqobmDQ7DABUyKxGQPMkfhPm5T5YcAkgAtTR/sDLlFFp818ckITgLFG+fYzIAGHQn20TMlaLzBTYsuvujQedOpKf4W62W6VvA5vZRQFOCBa4TbAy4gOmmSetifPLM4KDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsOIRtKVEobbstGQwgENrnkW3F6tkvwiKE1dlIe5aYk=;
 b=H+OqlqOhA5LKDFnfBTsSZKBOWnJDAWl9boWkv64lod0PcJu39YqtKWc9njxiR1WJUm5dMz5vSiEYmerkHYkLP/ZxBDiqTE8mVKyzxw4Yj0Gs58wSomevyeemBYg9os1bAzigh4mDcaxgQnIRcMO/wlNUcgdDov6H3yCKM56p6l0=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4085.namprd04.prod.outlook.com (52.135.214.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Tue, 1 Oct 2019 07:31:09 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2305.022; Tue, 1 Oct 2019
 07:31:08 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "alankao@andestech.com" <alankao@andestech.com>
Subject: Re: [PATCH v2 0/3] Add support for SBI v0.2
Thread-Topic: [PATCH v2 0/3] Add support for SBI v0.2
Thread-Index: AQHVdMfWU3eO8hvHu0yu+KSplvbFjqdAGZ+AgAAKwwCABRu6AIAAKrMA
Date: Tue, 1 Oct 2019 07:31:08 +0000
Message-ID: <ea8b0ec60fad631716beea27118fb2c4e18644a6.camel@wdc.com>
References: <20190927000915.31781-1-atish.patra@wdc.com>
 <20190927221913.GA4700@infradead.org>
 <8683f51f26708a468bcdf16a48db1cffac6c28d8.camel@wdc.com>
 <20191001045815.GA6572@andestech.com>
In-Reply-To: <20191001045815.GA6572@andestech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [73.162.108.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9c6fbc0-b726-452e-0d34-08d74641538d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4085:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB40851F8227E937E6F20DD54FFA9D0@BYAPR04MB4085.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(396003)(366004)(136003)(376002)(199004)(189003)(54906003)(6486002)(7416002)(6116002)(3846002)(316002)(4326008)(6512007)(2906002)(305945005)(6436002)(7736002)(118296001)(229853002)(25786009)(6306002)(6916009)(36756003)(86362001)(2501003)(6246003)(5640700003)(5660300002)(14454004)(66066001)(478600001)(64756008)(66446008)(476003)(2351001)(966005)(71190400001)(71200400001)(11346002)(26005)(446003)(8936002)(2616005)(256004)(1730700003)(486006)(81156014)(66556008)(102836004)(81166006)(76176011)(6506007)(99286004)(76116006)(66476007)(8676002)(14444005)(186003)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4085;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WjjNWJuR3HzI1qtfHh7lYg4YlsouMsSn5p2BX6PCU20ZMcDoxvpPX2dJH4N3Ch8i73C0rMDwbUgPCScFxJmn6XHLz8SpvOmxcvpW3f5xFPvuzlUDvsqZbedgBqpWEow3n+rnePQxY/FuF3O3GzmNUkuVaFCXFrEuw4T/GOEEOupeoiVfjc6fxOoedLUJY0ahteZYJ0yLO4DD4oVqYNa1h++75dUDFpX6gWCNB2S08yIS1jV4K6rdMTqXc1Fbxh+BkGfPlNZCdh0+CZYqJGVX0y8g4yGcR9jGk1BbEiqSnUfgLUm8zyla7NvetsgJD00kcDH0lqWY60GWBM6SBw8Vmr9vpSSEYqwi5RWFEuNNaUKNbyuWPM+pbkhBBOle1YFMTAg3db5BeU99ABWa39tV9+NqkhVnhYR61tJJ+fktmrl3cTYQX0RewHcCewzwldxIyHxjGL2oFtBjV02lByOguw==
x-ms-exchange-transport-forked: True
Content-ID: <7F6740829601FE409E071CFA2AD3C18D@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c6fbc0-b726-452e-0d34-08d74641538d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 07:31:08.0528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S0b4aPXe/C7yTSjPp5D5sQHimMlWS2hjf4MdvzcuLtobpPEcFAR0wa63Ev7EgF/xKRLlffbCezXJJ7QBXfkCmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_003113_005724_48C760FC 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 12:58 +0800, Alan Kao wrote:
> On Fri, Sep 27, 2019 at 10:57:45PM +0000, Atish Patra wrote:
> > On Fri, 2019-09-27 at 15:19 -0700, Christoph Hellwig wrote:
> > > On Thu, Sep 26, 2019 at 05:09:12PM -0700, Atish Patra wrote:
> > > > The Supervisor Binary Interface(SBI) specification[1] now
> > > > defines a
> > > > base extension that provides extendability to add future
> > > > extensions
> > > > while maintaining backward compatibility with previous
> > > > versions.
> > > > The new version is defined as 0.2 and older version is marked
> > > > as
> > > > 0.1.
> > > > 
> > > > This series adds support v0.2 and a unified calling convention
> > > > implementation between 0.1 and 0.2. It also adds minimal SBI
> > > > functions
> > > > from 0.2 as well to keep the series lean. 
> > > 
> > > So before we do this game can be please make sure we have a clean
> > > 0.2
> > > environment that never uses the legacy extensions as discussed
> > > before?
> > > Without that all this work is rather futile.
> > > 
> > 
> > As per our discussion offline, here are things need to be done to
> > achieve that.
> > 
> > 1. Replace timer, sfence and ipi with better alternative APIs
> > 	- sbi_set_timer will be same but with new calling convention
> > 	- send_ipi and sfence_* apis can be modified in such a way that
> > 		- we don't have to use unprivileged load anymore
> > 		- Make it scalable
> > 
> > 2. Drop clear_ipi, console, and shutdown in 0.2.
> > 
> > We will have a new kernel config (LEGACY_SBI) that can be manually
> > enabled if older firmware need to be used. By default, LEGACY_SBI
> > will
> > be disabled and kernel with new SBI will be built. We will have to
> > set
> > a flag day in a year or so when we can remove the LEGACY_SBI
> > completely.
> > 
> > Let us know if it is not an acceptable approach to anybody.
> > I will post a RFC patch with new alternate v0.2 APIs sometime next
> > week.
> > 
> 
> Will this legacy option be compatible will bbl?  says, version 1.0.0
> or
> any earlier ones?
> 

Yes. The config option will just need to be enabled in kernel to make
it compatible with bbl or older opensbi versions.

Eventually, we will get rid of the legacy ones sometime in future when
everybody has migrated to updated compatible version (at least a year
or so).

> > > _______________________________________________
> > > linux-riscv mailing list
> > > linux-riscv@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > 
> > -- 
> > Regards,
> > Atish

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
