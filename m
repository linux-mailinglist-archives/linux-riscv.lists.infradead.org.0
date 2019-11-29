Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174B410D17B
	for <lists+linux-riscv@lfdr.de>; Fri, 29 Nov 2019 07:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXZMQOiVZjHZkHMdlmUTadN6w171t8Y66AR2HvXHdbU=; b=nuyN53rg/6VaJt
	hfbgKXmPA/VMXv04lvchDiivOuYMEugZ58RkZPBR5um4QUVxHYcvzfivgQp4uW8ZasQMeotXSd1NN
	Mj200feqJoN9QfDTmAtsYT0eGwvCNIfSXe6wYJr80//kU1Qx3r3dvX0ErVCqejVGCKhvZd7gqdd0A
	wa0czK67SRtcSyy0Q1ySnFperzn3cymw7TOLBi9VBhK/vIbyTOvTxYo53tz5yOwyBJ4k3sqr6Ig2p
	XfXCjER6zH2eszTFtYl7lnNyW96cSbiX5gWrJE6JmrizL5+rn4W8pUPjkHpjGArC1U9pmgWyoCnFq
	m85SHO0Af6MDZxNpJRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaZkn-00041F-1s; Fri, 29 Nov 2019 06:27:45 +0000
Received: from mail-eopbgr730085.outbound.protection.outlook.com
 ([40.107.73.85] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaZki-00040j-Dw
 for linux-riscv@lists.infradead.org; Fri, 29 Nov 2019 06:27:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9aU/d2SxQVsjcXo7W6tLYWTQqlTvdl2468kagu46SQzTioHdP04FovUqBZklB6VAWAFxIlICOrPqxzKmArWYpS5tA2GnNFBK7BfWhEEHtyBYSSYzMvan3lQFuo6fbLLP6NSPp8CSTP4FipUjoxcvzVHoO+pdLkmGpUgfR02o/rA5hkzHOyDc5rTaiFjqD3+/M54QOK3HfiRpsTjuU+v98Gk2CbGKK9k76V0PhiLYmhhfO+ZaeWIgyUkd2ZnbJHPbSdQBBQ3zzvLeh/eVoKUi5BTRpMpS9q1zYU3fOAfv52ylW6CoN1rina2zmjUkIUqJp2aSrdWFj3fT25nvHBpKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=viUSNnsqM4Y7NnCnv2+KdWjxbq8l3IwXdzio077fP24=;
 b=kg6VwxbJO3/cLHqtNzhEtajpn3gNUz0o+n40e90ybvCK5MJ1Z+4P/zA5g2QFRjlp89G2lWKgbBGCu5clcpJDYnemNPKy7NHFal5MKvKHnaWhBF/tUbAzUaGMHJCMcBiCa43tj8lqZD7SZTbH6TU7IFSTjpm3DmvY5otT6vY1jn8M4HgHO0K80PGZP+JrduBcwMAodjGagvDBNLOywHfvrwA175rednw+1KqdAj9pR0+o09ca4cfNmxYtyDoZqiV+mr341m4x65ha9Iz7xUcQxYvbGlX6AhekAFz1E0GSdJfjUQJmgxbGZNyDGZdZK5ItgmHNZ9h2HWXujH9VCqGlIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=viUSNnsqM4Y7NnCnv2+KdWjxbq8l3IwXdzio077fP24=;
 b=dDaWzIFF9cCuuynLT3hLCtwI/BwOBhoQyL1iu4oNhCF4Tm/kOnhPKC7Qu1Y9jB64V1HZCvRJ/rMp6Zp4lkw1T2nJ6slQilrL6JWt5QKdMbCAdL2zmP+/jNIE3lmNSbEcqinKNupZjkMPZYBhetIYF3HhAt593fLMpuGm2lx1FQA=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3621.namprd13.prod.outlook.com (20.180.14.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.7; Fri, 29 Nov 2019 06:27:35 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2495.014; Fri, 29 Nov 2019
 06:27:35 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Linus Walleij <linus.walleij@linaro.org>, "maz@kernel.org" <maz@kernel.org>
Subject: RE: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Topic: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Index: AQHVo1VQYzPWzURXhUW+zbyogELnYqeghcaAgAEtw2A=
Date: Fri, 29 Nov 2019 06:27:35 +0000
Message-ID: <CH2PR13MB33682C26386CB4EE8A7EA1C98C460@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
 <1574661437-28486-6-git-send-email-yash.shah@sifive.com>
 <CACRpkdY7fGvTPcwwC0XU+XN2w_QUCj0MmOYhp183P3Lj7Qw8WA@mail.gmail.com>
In-Reply-To: <CACRpkdY7fGvTPcwwC0XU+XN2w_QUCj0MmOYhp183P3Lj7Qw8WA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5722f923-09e2-40a9-117a-08d774953942
x-ms-traffictypediagnostic: CH2PR13MB3621:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB362165964670A04D8AE3A8308C460@CH2PR13MB3621.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39850400004)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(13464003)(5660300002)(8936002)(53546011)(26005)(102836004)(52536014)(186003)(33656002)(71190400001)(99286004)(4326008)(2501003)(66066001)(6506007)(256004)(7696005)(71200400001)(76176011)(81156014)(81166006)(8676002)(25786009)(3846002)(6116002)(2906002)(478600001)(14454004)(7736002)(305945005)(74316002)(7416002)(55016002)(446003)(11346002)(44832011)(9686003)(316002)(86362001)(54906003)(110136005)(229853002)(6436002)(6246003)(107886003)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3621;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zA3fOm6YafPUw3Nb2DnJbTlVo60S7E03zfjVeG86kJyKPCv/chA4Ei6zWpnS905j1BEUCjDGctyHKYaM3DmGKmIoql/KE+2INkejqBZXRd7ATyFhG4WkYCcfU77vYQT+rfHf75niK0iCUobgIavhkAo7HLJPtBQW77meAKz9egL78FHpWY/dbnCGxwU9fxaZc4HhewUze/Xl5n0WIXupiJXM5F9wlHtbkAayEYXPGFIjH8hoGllKhrigMXTWgOmfdqaP+rebn4aD/3mSaznmrd4Yra8hsU2E/12s1x27lThqmSqZMNL2PEjU6qtOl2dmb1beWJjUAUBmCPkTdNeBz2RcEjJMRJiJ3SQv5V2JdwxzjxVCdt3yVmMRAXyRS0BLddBXVDujrOA2QPI/wCL3mLgNJpfQdZFQF+L+L9DqU60cSnEmg9uynU2yEvrFH9iI
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5722f923-09e2-40a9-117a-08d774953942
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 06:27:35.2346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fa8uHPabDltyStMfloGNmeGlpwVd45tHjPDtOz0rq+Y23V/qeBTd9rnf0MY3SidznM80wifou8r6ZaqGR1SoVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_222740_538751_652BE336 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>, "Paul
 Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Linus Walleij <linus.walleij@linaro.org>
> Sent: 28 November 2019 17:50
> To: Yash Shah <yash.shah@sifive.com>
> Cc: bgolaszewski@baylibre.com; robh+dt@kernel.org;
> mark.rutland@arm.com; palmer@dabbelt.com; Paul Walmsley ( Sifive)
> <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu; tglx@linutronix.de;
> jason@lakedaemon.net; maz@kernel.org; bmeng.cn@gmail.com;
> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>; linux-
> gpio@vger.kernel.org; devicetree@vger.kernel.org; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Sachin Ghadi
> <sachin.ghadi@sifive.com>
> Subject: Re: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
> 
> On Mon, Nov 25, 2019 at 6:58 AM Yash Shah <yash.shah@sifive.com> wrote:
> 
> > Adds the GPIO driver for SiFive RISC-V SoCs.
> >
> > Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
> > [Atish: Various fixes and code cleanup]
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> I suppose Marc will merge all patches into the irqchip tree as they are logically
> dependent? If you want the GPIO bindings and this driver directly merged
> (no deps) then I can do that as well.

Yes, the GPIO driver have logical dependency on irqchip patches. It is best if Marc merges all the patches into the irqchip tree.

@Marc Zyngier, Are you going to merge all the patches into the irqchip tree?

- Yash
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
