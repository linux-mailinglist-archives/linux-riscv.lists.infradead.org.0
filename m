Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7951AB4B9
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Sep 2019 11:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mr5jfKwJoww2ypl7afomkq5VZ+Uz1zNNa1FdpwLoVDA=; b=TDU7SSdmClhOKR
	yiuIJpyZoIthIfNV7hDc540j8R8B9DDIHPPT7PkxgwYKjX8BFWXqhbTLMPbR2gE1AphbKe0YxmxCg
	/cO98WEd6UuSfIvCHQ2etbO92SBvRqxn+BhwRcEN6jnotypRcyC0X62qjvePUkmXnOTIvIowagJs7
	OncDsyThLRLk7t0TiObfjkpGpoBdL/rmEclpelYKSY/ulQO/G5ETmLx8hJtqHF+ohiuwcbhNEBoKt
	ZLWxPtTty6D3nwFewDaF/kQl2yCr6FTYepZea0lv67dWVso6szStOliKm7/GIFzkFSxBh6hcERBDI
	Xm1mnfI3aSIO/YEJpEOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ALf-00012I-MP; Fri, 06 Sep 2019 09:16:07 +0000
Received: from m9a0001g.houston.softwaregrp.com ([15.124.64.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ALb-00011P-1j
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 09:16:04 +0000
Received: FROM m9a0001g.houston.softwaregrp.com (15.121.0.190) BY
 m9a0001g.houston.softwaregrp.com WITH ESMTP; 
 Fri,  6 Sep 2019 09:15:13 +0000
Received: from M9W0067.microfocus.com (2002:f79:be::f79:be) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 6 Sep 2019 09:12:21 +0000
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (15.124.72.10) by
 M9W0067.microfocus.com (15.121.0.190) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Fri, 6 Sep 2019 09:12:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Entu40NWFn/2UHrszKxgSRDGyhpn5Jc4Rh70on6VvGPXx6YsKVEodvLKNuvRzdtMzHOYO3fZomKtY+2KUUq/Ad0g/9b37sWOOUd7NfIQzZbtXf1EePPlMqgoFNoZnNEQEg7y3tW7PMb4T61uQ2A3t7JWl9RiMRH+JlomKO4ssbhRQ27xEkTRuaB97zIk05xqTVIjHpg9irT6pGvB3A/6qKQiVma7S/RQJs6z6fWoR3NeL0yfYBypI1chWwXEgObswgJ0fL5jL1j75coJWOBd7jVr3w9ukR1U7rHkRaRYKuOtGmZk092LF/P27IY80boYwwlHfIa5pITTGA6W9nWqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UxBxstM8pyA3ftiVRgmFNvaUM8AZ3wor+xRizEmh258=;
 b=Dm6YTG318cUWBYzvyRkEF3jftHY/5Tk8vyPUSABA6wek8UEP9Uddc2ZDv7xPeYU69g+EX32ClonqlVhjSt76H7vPQxL+r4M/YsjCU/YCSGQNefnzcYBd34WUe6F8XmINQSxArwnFchnc9lYRPDWhnVaZn0mXd7kO3dIebnNmR+1he9ozTJVQrVPGj9ZLHp9ZMc8oT0ENjKvmbWhHQ6NcvG37lVgVgVLZiadN1yo/g0l3X/kwFXoMXraTbRKFEBCPwqgOiL1YpeT6qGHmIK+OJkINXLpf8vcG320E3KUNNuCR/s9T6OOIzOsJ+YFDb/TMW2IGaOx9GhpyA51/hTaWdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BY5PR18MB3283.namprd18.prod.outlook.com (10.255.139.203) by
 BY5PR18MB3172.namprd18.prod.outlook.com (10.255.137.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 6 Sep 2019 09:12:14 +0000
Received: from BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::a46b:1f66:8378:b25e]) by BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::a46b:1f66:8378:b25e%3]) with mapi id 15.20.2241.014; Fri, 6 Sep 2019
 09:12:14 +0000
From: Chester Lin <clin@suse.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH] riscv: save space on the magic number field of image
 header
Thread-Topic: [PATCH] riscv: save space on the magic number field of image
 header
Thread-Index: AQHVZIMcNduMKr0kk0WFNI6AGCbw56ceTwPLgAAOM4A=
Date: Fri, 6 Sep 2019 09:12:14 +0000
Message-ID: <20190906091151.GA311@linux-8mug>
References: <20190906071631.23695-1-clin@suse.com>
 <CAAhSdy3dyw_VsmP_x9NoWKhpmen6zC5EhTjxPRPHS-OizYgL-Q@mail.gmail.com>
In-Reply-To: <CAAhSdy3dyw_VsmP_x9NoWKhpmen6zC5EhTjxPRPHS-OizYgL-Q@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0053.apcprd04.prod.outlook.com
 (2603:1096:202:14::21) To BY5PR18MB3283.namprd18.prod.outlook.com
 (2603:10b6:a03:196::11)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=clin@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [60.251.47.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5008b175-4fca-4779-f6d8-08d732aa4eca
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR18MB3172; 
x-ms-traffictypediagnostic: BY5PR18MB3172:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR18MB31722DCDBED1A072385A9C8BADBA0@BY5PR18MB3172.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(4636009)(136003)(376002)(366004)(396003)(346002)(39860400002)(189003)(199004)(14454004)(52116002)(229853002)(86362001)(476003)(11346002)(446003)(386003)(33716001)(6486002)(53546011)(486006)(102836004)(8936002)(8676002)(81156014)(81166006)(55236004)(478600001)(76176011)(7736002)(6506007)(305945005)(7416002)(66446008)(316002)(71190400001)(25786009)(26005)(71200400001)(186003)(4326008)(54906003)(66946007)(6916009)(64756008)(33656002)(99286004)(66476007)(66066001)(6116002)(256004)(14444005)(6436002)(2906002)(3846002)(6246003)(66556008)(9686003)(1076003)(6512007)(53936002)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3172;
 H:BY5PR18MB3283.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cC0g4g0hBbfKM+O/bHgZbIQ5nDsnHa418cDhBtoVD/Il7eBHeQaY90PlB+05G7pAi/DAfYSBDXCf22t/ORfBbqw/Ghd2kruMfvqO9L/RFYv+h9CObj+D4v5ZpxkGoLhfEonfURX2Lwv9NFj8aJah72MZyB731SerlUDw+I3giHM62H4AZ/ovcDxb6IconA1IMhWa/3BcTfd+/+r3Hbbn8rls1WxHogzNEKSHK8+FLbzljyvLtj435CkhjrJ7VdYnDUwhS+6WdLQwOTRCBr7ZC2T+1SogsJOAKb2jccttS2ivwm4egBgo1uy3BdYXNfsnUOy78fDjoR0XYEBQQ+6qFJEHivWdTNCqR3jAKGXUv5EzzmU0KXS1y43NUj27+x6+wPNTPED6rMR/hlO5SYg4kXzL1xZF5/tTnM2W4LszjWM=
Content-ID: <DF1572D81E5D5F4AB0CB4C84DD16387A@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5008b175-4fca-4779-f6d8-08d732aa4eca
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 09:12:14.6966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lUwzKfJfJvOZAHdNEmyd5zV8S64t4tWn8gPg4N7rINsReDuNmh/t3tVUExi/Xuzm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3172
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_021603_188413_DCB78659 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.64.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rick@andestech.com" <rick@andestech.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chester Lin <clin@suse.com>, "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Anup,

On Fri, Sep 06, 2019 at 01:50:37PM +0530, Anup Patel wrote:
> On Fri, Sep 6, 2019 at 12:50 PM Chester Lin <clin@suse.com> wrote:
> >
> > Change the symbol from "RISCV" to "RSCV" so the magic number can be 32-bit
> > long, which is consistent with other architectures.
> >
> > Signed-off-by: Chester Lin <clin@suse.com>
> > ---
> >  arch/riscv/include/asm/image.h | 9 +++++----
> >  arch/riscv/kernel/head.S       | 5 ++---
> >  2 files changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> > index ef28e106f247..ec8bbfe86dde 100644
> > --- a/arch/riscv/include/asm/image.h
> > +++ b/arch/riscv/include/asm/image.h
> > @@ -3,7 +3,8 @@
> >  #ifndef __ASM_IMAGE_H
> >  #define __ASM_IMAGE_H
> >
> > -#define RISCV_IMAGE_MAGIC      "RISCV"
> > +#define RISCV_IMAGE_MAGIC      "RSCV"
> > +
> >
> >  #define RISCV_IMAGE_FLAG_BE_SHIFT      0
> >  #define RISCV_IMAGE_FLAG_BE_MASK       0x1
> > @@ -39,9 +40,9 @@
> >   * @version:           version
> >   * @res1:              reserved
> >   * @res2:              reserved
> > - * @magic:             Magic number
> >   * @res3:              reserved (will be used for additional RISC-V specific
> >   *                     header)
> > + * @magic:             Magic number
> >   * @res4:              reserved (will be used for PE COFF offset)
> >   *
> >   * The intention is for this header format to be shared between multiple
> > @@ -57,8 +58,8 @@ struct riscv_image_header {
> >         u32 version;
> >         u32 res1;
> >         u64 res2;
> > -       u64 magic;
> > -       u32 res3;
> > +       u64 res3;
> > +       u32 magic;
> >         u32 res4;
> >  };
> >  #endif /* __ASSEMBLY__ */
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index 0f1ba17e476f..1f8fffbecf68 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -39,9 +39,8 @@ ENTRY(_start)
> >         .word RISCV_HEADER_VERSION
> >         .word 0
> >         .dword 0
> > -       .asciz RISCV_IMAGE_MAGIC
> > -       .word 0
> > -       .balign 4
> > +       .dword 0
> > +       .ascii RISCV_IMAGE_MAGIC
> >         .word 0
> >
> >  .global _start_kernel
> > --
> > 2.22.0
> >
> 
> This change is not at all backward compatible with
> existing booti implementation in U-Boot.
> 
> It changes:
> 1. Magic offset
> 2. Magic value itself
> 

Thank you for the reminder. I have submitted a patch to U-Boot as well. Since
my email post to the uboot mailing list is still under review by the list
moderator, here I just list my code change of uboot:

diff --git a/arch/riscv/lib/image.c b/arch/riscv/lib/image.c
index d063beb7df..e8a8cb7190 100644
--- a/arch/riscv/lib/image.c
+++ b/arch/riscv/lib/image.c
@@ -14,8 +14,8 @@
 
 DECLARE_GLOBAL_DATA_PTR;
 
-/* ASCII version of "RISCV" defined in Linux kernel */
-#define LINUX_RISCV_IMAGE_MAGIC 0x5643534952
+/* ASCII version of "RSCV" defined in Linux kernel */
+#define LINUX_RISCV_IMAGE_MAGIC 0x56435352
 
 struct linux_image_h {
 	uint32_t	code0;		/* Executable code */
@@ -25,8 +25,8 @@ struct linux_image_h {
 	uint64_t	res1;		/* reserved */
 	uint64_t	res2;		/* reserved */
 	uint64_t	res3;		/* reserved */
-	uint64_t	magic;		/* Magic number */
-	uint32_t	res4;		/* reserved */
+	uint64_t	res4;		/* reserved */
+	uint32_t	magic;		/* Magic number */
 	uint32_t	res5;		/* reserved */
 };


> We don't see this header changing much apart from
> res1/res2 becoming flags in-future. The PE COFF header
> will be append to this header in-future and it will have lot
> more information.
> 

I think a smaller magic field will let res4 have more room [32bit->64bit], which
could offer more options for RISC-V's boot-flow development in the future. This
change also synchronizes with arm64's image header.

> Regards,
> Anup
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
