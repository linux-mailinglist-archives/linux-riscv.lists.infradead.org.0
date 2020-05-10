Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261491CCBFD
	for <lists+linux-riscv@lfdr.de>; Sun, 10 May 2020 17:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YE56DstZ339OfsCDeTV1GGD2Mytnt7gt0rGqE7NvJ1o=; b=d1OJSm9NL5vHasqeeniLATn5n
	3L/DQUMfmHhnb+Zzn9XtEAmlurNKU7LSwhjNsLb25jqoWn8/duVWh80oNOZ4SLRc5yQV+Y7MkvpD2
	f16e3K4Hb8nphhRImtRKSKvE5DWtkjEXk1g+0cHRbt4jrAfFaPjpu8z1eLPO3w/ITb0JMcUZjZIMX
	d8i93HqMJH+s/bftlneNd3N7cpuYpemxm+dtvbYOiSOUVIZVzowCiDn3gRl9pbudMYme2I5ZwccHo
	xFnZzETWsIiks+mtjR3kK7PWpFzmrVNcrrW5uPDlP8MkTzLBNHQ5HO2QLVPF8QlVFIzD2bmc343rZ
	/ia+GQIag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnwg-0004gG-7W; Sun, 10 May 2020 15:32:50 +0000
Received: from mail-bn8nam11on2083.outbound.protection.outlook.com
 ([40.107.236.83] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnwU-0004XJ-Mq; Sun, 10 May 2020 15:32:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewqiKJSNYqt6P6HyyUaLWTdkJwtMrYUXWIqgSW3me59d07KuzSEi0uFZD8BDkCBQTN9rj96zZPyj71beZsb2QlooY+XpMyMNSqWQECiyjdbEENisTc2zoXL2YVeEzv/9Dhh5ahhhxjFbHaYC2+UssXXwCmMr0i2kbvWQdrwF1RN/ug9Qq0wYWLbBgikd6w1oO1jqpf2e3TfdbRiaRE2qdzjL662nj1kAMstVe+rEumpm9fzHHhTPOjubrpVhgv+50+cJNcfpFJDBc9oFxbnVGN6zzT1TklGEsb/aagGoUb+wY6o+CeJw7P73rBb/63Qulyb2wG+0Qx5vLQDn4s1KEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YE56DstZ339OfsCDeTV1GGD2Mytnt7gt0rGqE7NvJ1o=;
 b=A/9N1jI+MYjWCpabd98oJ0u28apqo3QaicZpJvcgSCC3Qt0dOfwqt7JfGxNZVvIFMqgfwiaou8D0Dh8lakyo/m306wHVKPpub9Rpn2wLL0YBa+dd54cXhkMj63DgeH/ddrSICsdJHv4nxdf8PW8v183LnRQcBPbHfhyoJ1MWkIdLN90UKMSe5j59SmaeDl1c8Wu348E++6hyMpWztTEBbMdLvxc/wYYtGVl5EfsTZsAzMDlHQDTi6PuLWHYSfQ+/cJNoWvA60wxSDZD/4SmN2wL/slo1nF1Ykn87IHjNx7yxk+wn3kXD17rMQUbpTwNZrNe3iogORbLjUV9yWkQl7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YE56DstZ339OfsCDeTV1GGD2Mytnt7gt0rGqE7NvJ1o=;
 b=CDzKWISePlq/UgBn+KoG2Q1Wx/7kRdAYhuzK/hWB/oEqJtRXAskN7nP4Yi24cSF78eAabvVo/fEG4Ewce2zSCVd3OB7o+C1O90gqHI4WR/LUtlGUG/MPWQ36YTCRpXo5c1yupdT7gAVf6SiQbjYb/cV4DaKRZFRMkQ2VhrctBwU=
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2437.namprd13.prod.outlook.com (2603:10b6:a02:cb::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.14; Sun, 10 May
 2020 15:32:33 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Sun, 10 May 2020
 15:32:33 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: Andreas Schwab <schwab@linux-m68k.org>, Anup Patel <anup@brainfault.org>
Subject: RE: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Thread-Topic: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Thread-Index: AQHWHtYDB/cpTmsjKkuAl+bHjseykqiYg+KAgABe/XCAAUf3gIAASp8QgAAV9YCAACZUc4AE69UQ
Date: Sun, 10 May 2020 15:32:33 +0000
Message-ID: <BYAPR13MB2614D39F1EEF60841112177399A00@BYAPR13MB2614.namprd13.prod.outlook.com>
References: <BN8PR13MB2611968A7252308925FF18B399A70@BN8PR13MB2611.namprd13.prod.outlook.com>
 <mhng-29e22ca7-538a-4094-923f-8fbc0fd327b9@palmerdabbelt-glaptop1>
 <BYAPR13MB2614FE811C8DD83BBDD3A26599A40@BYAPR13MB2614.namprd13.prod.outlook.com>
 <CAAhSdy2-ECrOP=kZOTXxj1t+f8NrcYjbXKDRwPB3KU36mDmWWg@mail.gmail.com>
 <87d07h8qx7.fsf@igel.home>
In-Reply-To: <87d07h8qx7.fsf@igel.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux-m68k.org; dkim=none (message not signed)
 header.d=none;linux-m68k.org; dmarc=none action=none header.from=sifive.com;
x-originating-ip: [116.74.156.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c51b0e68-c67f-4aae-b8bf-08d7f4f75c24
x-ms-traffictypediagnostic: BYAPR13MB2437:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR13MB2437B7FF030419F6491647D499A00@BYAPR13MB2437.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 039975700A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hSU2vVxmtGlStnUsKtchojndBgtC3Psv2ZPmmSeUXYnd723spBkyoFoMt/qAxMlgia1oR7+WdTnDi8i7KEumE5si9Hz48/7hWQoaWLBMrv+nL/hUIslnaFH2N58jr4kgXqffYBi2yf9mzBnVNHpLuBo+6p4r9XoEtWeuemPJ05MgzO7V5gkltmdBVzTgxNnbPYP+axeNl8I6TjJyUOP0+0s0LvfJwUpDzlSuaBxoT2tw5sZMPNsM3wbqE4AnLdD/aZ9LbLJFwik6NzR0C/ffs8vXAPwPwxHIyQGw0yL9BKlLVvkpFA1t9m5kApSDNXgLjVjDGUku5GgTApNtfulDHZbrLJiiu418S6VH7sP7wlXDrbnddw3MQqjHNY8aZ8zWIl+2uCXWCaWDmI+dbRpJ18C/nX0EqE/xw3O4X1IT8xaWVN0b8nytYfQ60a+fbz069NhX4/8dQNtso2nQl/gSs9oy5HoGPxVGxLBaRSBw6qvyoKzy9j+aogDIwfEP9H6dXivHsDUwFFZObuicH8/nxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(366004)(346002)(376002)(136003)(396003)(33430700001)(71200400001)(478600001)(186003)(33440700001)(44832011)(6506007)(64756008)(55236004)(7696005)(86362001)(9686003)(33656002)(26005)(53546011)(66946007)(66556008)(110136005)(2906002)(7416002)(76116006)(66446008)(54906003)(8936002)(52536014)(5660300002)(66476007)(55016002)(4326008)(8676002)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: VtE6dZNxFllYVkO5JdZbIqAzMY4Vmfj+vxESoEbwFWSshmGJB5VN2Bo8zWSLjplZmdcGqSp3DWqXslromda2Cx7Kq4TFIxMNNmMtMNsLtI/Ocy0H8A7ouyoAbFXlQLjrPHjjd/93fvoYly1ajwHDm5bTA/MCM0rG+fH0EIY2o5P2gTjQkr3VHlXGnOAk8CF85Pnx/hDEdQOYeu4z09LXWJC7nD15QmJGmRvu7Bz8imV00Tnuj/mBasneDzIIvSlQ/duK4Nw6F7lbrhkykauLkw7vENX615VB2fjYZP/0TfTGCVrDdBw7ncap4c/Nh3vbz/ty3H2MJyZnGY2KQhvVqwT6mk/qlG7AKDme28EuTOYv7Ozfo2ZwT9LVG7TCmqKbw4k95rUzeUw5t5/l1gespRLkKe1R3brsYHs/fubULNJcpbv0D+TwgTzXr0ZZbjI3kiOkucffgDj34z+zabe3XV+xxY2NZp/eUI7aUtpNIh665p1/y7LGLdezDirkPFTd
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c51b0e68-c67f-4aae-b8bf-08d7f4f75c24
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2020 15:32:33.4385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZXM9IRYx1JSYeb+cnFphflaAMbPlb97FonilITmjYiQQMtcwr3N9RzNQnW4WgxAuqV+arALSmj7iXvwBKrl2GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2437
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_083238_823570_EDC6029F 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "tudor.ambarus@microchip.com" <tudor.ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> From: Andreas Schwab <schwab@linux-m68k.org>
> Sent: Wednesday, May 6, 2020 12:57 PM
> To: Anup Patel <anup@brainfault.org>
> Cc: Sagar Kadam <sagar.kadam@sifive.com>; Palmer Dabbelt
> <palmer@dabbelt.com>; vigneshr@ti.com; tudor.ambarus@microchip.com;
> richard@nod.at; Paul Walmsley <paul.walmsley@sifive.com>; linux-
> kernel@vger.kernel.org; linux-mtd@lists.infradead.org;
> miquel.raynal@bootlin.com; linux-riscv@lists.infradead.org
> Subject: Re: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unlea=
shed
> A00 board.
>
> [External Email] Do not click links or attachments unless you recognize t=
he
> sender and know the content is safe
>
> On Mai 06 2020, Anup Patel wrote:
>

Thanks for suggestions Anup and Andreas.
I missed to reply, sorry for that.

> > We had build issues in past by selecting major driver subsystems
> > in Kconfig.socs
> >

Please let me know if I am wrong, are you stating about the build issues, f=
ixed in
commit bd6f20333c67 ("RISC-V: Only select essential drivers for SOC_VIRT co=
nfig")
which was due to all platform dependent and independent driver's enabled in=
 Kconfig.soc
for virtual platform.
Kconfig.socs as meant for platform drivers we can guard SPI_SIFIVE with a g=
uard "if SPI"
so that come across " WARNING: unmet direct dependencies detected for SPI_S=
IFIVE"
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -7,6 +7,7 @@ config SOC_SIFIVE
        select CLK_SIFIVE
        select CLK_SIFIVE_FU540_PRCI
        select SIFIVE_PLIC
+       imply SPI_SIFIVE if SPI
        help
          This enables support for SiFive SoC platform hardware.

> > I suggest to select SPI_SIFIVE from Kconfig.socs
>
> SPI_SIFIVE can be m, don't override that.
>
> Andreas.
>
Currently SPI and SPI_SIFIVE are default enabled via defconfig.
In Kconfig.socs if we force the config  option using "select" SPI_SIFIVE wi=
ll lose its configurable option.
So I was thinking of using the weak dependency using "imply" as above, so t=
hat SPI_SIFIVE can
still be modular if required i.e 'm'.
We can then have other platform independent driver's ( SPI, MTD and MTD_SPI=
_NOR) required for
enabling SPI_NOR flash into the defconfig.
This way we can have SPI_SIFIVE in Kconfig.soc's and SPI_SIFIVE will also b=
e modular
Please let me know your views on this, or if I am missing something.

Thanks & BR,
Sagar Kadam

> --
> Andreas Schwab, schwab@linux-m68k.org
> GPG Key fingerprint =3D 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA
> AEC1
> "And now for something completely different."

