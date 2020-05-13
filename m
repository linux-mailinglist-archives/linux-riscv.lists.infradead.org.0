Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191541D0A9A
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 10:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WOzs+h1e7R6ni1UU0+56qupOGZmo5U07dQKKWa1XxJ8=; b=OQs7u/n4OuiTGFWlZuP3dDA0E
	LNGt7stp+a/USDP2QFt7tdIBZ/C3NX9tA6hDAaF1lU/M0EhPif9/5pUcGWOpqIng5TFLsHZWeo4Oj
	EsMsNM9yuK87aFvFUYj12MKCKFbhpaU4s9LQU9UdesfTdVAGmWSQ28d/z/W6lIvyKjz0qwgV0HvQ8
	zc5E2hMzai4Xz4GrGNmr9x0DyWVLswpdnZBb3YubLumuDBih+uDS3xa+60qnWkjMKfy+UdK/a0UY4
	663hrJB9RGlwaRy0GAgCX5wFozYXArzzeId/zQ+BnSYUglFS8iSW1kG2pMMfQjK1pW1B10UZ5fde4
	+rrWhuGcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmXW-0004oY-Fd; Wed, 13 May 2020 08:14:54 +0000
Received: from mail-dm6nam12on2053.outbound.protection.outlook.com
 ([40.107.243.53] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmXT-0004ix-1h
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 08:14:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KjllQCkzPNV2aQ2/odEvUh5qC41WgnfkRHAIOWZNes5UQrybFuOO84rrNWnKqi3koQnNlWOt9PhKvhuJ1bnyU0Y0H2oupPCLQSUW5yAS2HI+qnHAsDU9M64lwyPS0YfuJ0YoiuNdG/YYtSIikpTMZgZt8X00yR1IOT0xOgo5Y/Gs6hMzcNeos2QjjiUB5cAYuREHBgshiHtOX6cPCl9a8apbWcSly/Y+VAZIt0D+B8CdzZ/Y4oEcuR36loeO7LOf+F+6xQJOfGRqYAktrRtye3D/pPBK9iVHEDihlVV6CeRW0N2DT9tVYoxGPiGZufgiHuwojVEIvPPbyNIrhfam0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOzs+h1e7R6ni1UU0+56qupOGZmo5U07dQKKWa1XxJ8=;
 b=c86jelvbjFrJD/diY5XEIjc6d7mcqvRrgI23empdLEcJVaiwV+G2pujNwsukfpnrq44L7d4IjxI4klWbmJha6SmQxtiG5jfcZgNLroSgOErkM8dOclATENKK+DUTOnGkeBCBUQifPC/6jFHEutfDWUd3+iQG+x4iHa/+G6MuTkJ4cn8iswLF9oZiGPBg+woT4SBnnC6he0iFsogbw4SiEg/XIUoxti4GPnod+8JjxacICRAHuGVEOh6Kuv3JfJuUZxV0JGQHvFcB6m9d/J6w2KeZ3Xgm4jBUdDeVsFYedAXneHGanJ30GXrN05kNcS8il4VQf+8MxAvhSbZEpw1g2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOzs+h1e7R6ni1UU0+56qupOGZmo5U07dQKKWa1XxJ8=;
 b=czYOe0fHDwjLFQuZ1qxJqsfPtBCmt3wqOm7II9nrq5h2nTkERpLguIt/csYiooWPaicWLYDrY+g57ypMfZDqJCQIlh+JdVU24TOibDUSmDV94IMGPiGeZohp77LQBhUqQvTx0Dahy5Lbv7icg9hc2ClnM7QExGQuOD7QA9XaBdE=
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2582.namprd13.prod.outlook.com (2603:10b6:a03:b2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.13; Wed, 13 May
 2020 08:14:47 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Wed, 13 May 2020
 08:14:47 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: Greg KH <gregkh@linuxfoundation.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: RE: [PATCH v1 1/1] tty: serial: add missing spin_lock_init for SiFive
 serial console
Thread-Topic: [PATCH v1 1/1] tty: serial: add missing spin_lock_init for
 SiFive serial console
Thread-Index: AQHWJewOGC/Eei+2vk+umicyZNhzfailFmOAgACF5wCAABQpMA==
Date: Wed, 13 May 2020 08:14:47 +0000
Message-ID: <BYAPR13MB261414A78707F1020FC529B599BF0@BYAPR13MB2614.namprd13.prod.outlook.com>
References: <1589019852-21505-2-git-send-email-sagar.kadam@sifive.com>
 <mhng-b2e9c16c-ee06-4c78-800d-a7725d6c74a3@palmerdabbelt-glaptop1>
 <20200513065938.GA764901@kroah.com>
In-Reply-To: <20200513065938.GA764901@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=sifive.com;
x-originating-ip: [116.74.146.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68c5cccf-2acb-4d23-3057-08d7f715b39c
x-ms-traffictypediagnostic: BYAPR13MB2582:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR13MB25822069D0290E9221B9224E99BF0@BYAPR13MB2582.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /J9dm8lKwM64k4m9ZGTMbKYStLJv0UYn3V/u2RbnZA7MtrPqQkCTp5SJpH2vmabOxFibKfDw92GwQEdn77Ir2N39bqYbPGUXyKf2/9d5PR/JIwBUpOmH95IR7R9oV1vAAzAJAXkGTgTjRExA+DxCRXg+bzWnShwRIDEHad7HELJcDzfUFWZz/HTnpg8iBow4JUKBaRwsyEgVTxeZOP5twi0+VNQLlcpQ9qNw9Y+bIX6BZsTQRv+AfN4xhoJka3XoZt2P5MrTqE4Hm+cBBYr5t2xv5rVf53kRpuXqqNKdpACBhIM7Ot1d5AuTPUFIj5rGgzMXw3a3YP/KIG5xFqajVDYjDbyedjUTaaaXZVW12D1YFuJSrrWJu/Ss6MzDANMdhRoaJ2wnxh1/feOL2zC/0h7dYK8i0m+8fZPTWb45OM3DY2zk9msFfYvlDGGcF1SoAMHfGGgFUoIcxBDFbzPpmDeYq+GrPqgKS2Rn5QicOfdLS/eNQWz53vK/5TqV62vccmurGOzyRj37P0TBobqsZ+JMEmp6uParK6HFlo2tOsryhHHwz8PBDoASIDM2ZeE+tgBUPzrb3zc1z2uBov+dYucJflyBlgrU2kE6tjnHieI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(396003)(376002)(136003)(346002)(39850400004)(366004)(33430700001)(4326008)(66946007)(66446008)(76116006)(66476007)(26005)(8676002)(64756008)(9686003)(54906003)(186003)(110136005)(66556008)(316002)(8936002)(71200400001)(55016002)(33656002)(2906002)(5660300002)(86362001)(55236004)(6506007)(7696005)(478600001)(53546011)(44832011)(966005)(33440700001)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: FvYIdnZUvMhh+M7YFv3I8x0Fhe9agQYQP6yFGq/vvCI4BhL24rVJF3Cbkm+ev30Q3NYmzrk1H3D8Ilsc8b44WqH4QCJ+WxxrH7nCiGgvuezzrfeW/3pN/6osIyuzVI0HlXLa05MhIsFKQYyefb6sEaOJwgyRfnLuBh9TqI7hgGnt3Fuzd1plA9qdOJiEJ028LOQTu9ynXU1hdKh+dY0oV9rH2TWx4Cvc6XfOG6qx/F9yR+KbLasY47/BJHKY3UNntSvEZo9Inq1PV0o4AseX6+rfy4UrpG8stRwxTlRWUe1nCX/IwuRCowsMHyecwzTnLXqoP+0SIjAvFgtpyJzHLRpNEyrLWO0l4SjSqrYTuZaiszcwyG4ogJsUKC+0EDB5zaxYZtPZHfI++rcC5QEj9Y1/khJ515lwn6bU6njQg7AATfCsoHAkFkX4U+1TshkAyVPbL+7Fo0JYj8UkpZ2YGeiS/chhe8weNuD2paXnREk=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c5cccf-2acb-4d23-3057-08d7f715b39c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 08:14:47.4986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DPK4THBJdpYxHbCOHD5ho1OqWHevqymxkhRFV5HZllqQFxXfnsn7mVMOFOe0E9Tp2qHyh0PkC3e6M6jL6TQ09Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_011451_182816_9F045820 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.53 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Greg and Palmer,

> -----Original Message-----
> From: Greg KH <gregkh@linuxfoundation.org>
> Sent: Wednesday, May 13, 2020 12:30 PM
> To: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Sagar Kadam <sagar.kadam@sifive.com>; linux-serial@vger.kernel.org;
> linux-riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Paul Walms=
ley
> <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu; Atish Patra
> <Atish.Patra@wdc.com>; Anup Patel <Anup.Patel@wdc.com>
> Subject: Re: [PATCH v1 1/1] tty: serial: add missing spin_lock_init for S=
iFive
> serial console
>=20
> [External Email] Do not click links or attachments unless you recognize t=
he
> sender and know the content is safe
>=20
> On Tue, May 12, 2020 at 04:00:23PM -0700, Palmer Dabbelt wrote:
> > On Sat, 09 May 2020 03:24:12 PDT (-0700), sagar.kadam@sifive.com wrote:
> > > An uninitialised spin lock for sifive serial console raises a bad
> > > magic spin_lock error as reported and discussed here [1].
> > > Initialising the spin lock resolves the issue.
> > >
> > > The fix is tested on HiFive Unleashed A00 board with Linux 5.7-rc4
> > > and OpenSBI v0.7
> > >
> > > [1]
> > > https://lore.kernel.org/linux-riscv/b9fe49483a903f404e7acc15a6efbef7
> > > 56db28ae.camel@wdc.com
> > >
> > > Fixes: 45c054d0815b ("tty: serial: add driver for the SiFive UART")
> > > Reported-by: Atish Patra <Atish.Patra@wdc.com>
> > > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > > ---
> > >  drivers/tty/serial/sifive.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/tty/serial/sifive.c
> > > b/drivers/tty/serial/sifive.c index 13eadcb..0b5110d 100644
> > > --- a/drivers/tty/serial/sifive.c
> > > +++ b/drivers/tty/serial/sifive.c
> > > @@ -883,6 +883,7 @@ console_initcall(sifive_console_init);
> > >
> > >  static void __ssp_add_console_port(struct sifive_serial_port *ssp)
> > > {
> > > +   spin_lock_init(&ssp->port.lock);
> > >     sifive_serial_console_ports[ssp->port.line] =3D ssp;  }
> >
> > Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
> >

Thanks for the review.

> > I'm assuming it's going in through Greg's tree.
>=20
> Sure, I'll be glad to take it.
>=20

Thanks for accepting it within your tree.

BR,
Sagar Kadam

> greg k-h

