Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF31817E9
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Mar 2020 13:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ERRAudjHVGjnDjF+mvJRryzoiMROt5zPxRgvGuUPDl4=; b=SJIeqqeQtlAD+Z002NMkA8Dc5
	aXcJ6kE5TfWIqFmFxZbdJJmnUr6eLM+gJef2KTcnDmzU9z5HjWtfe74h+Z3GrQ3jvlgDRG+1X62Vu
	sdDNOfl8q+C0zknS1WYFhLAPRPLMaAwbb6CMgq/HGFCnvceIoYDcePD8IKmB47aZGOtxYyN4KecvG
	iE8g9Y9eyGOdBBdzIqkMIEFXLRW9TL8uPl80JTs7cFDvIGtaP5V4iic2yNi2Gxg9Sa4Hl1sFzjfJr
	+UbQL1MUjduLdQOXUqdcGKFkEwupC/OnRD59r5ALpvpbWV5eR8CtdAv1PbfsaowLWNJfY/aKn1a0/
	iGrOCBkvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0NH-0006EO-CP; Wed, 11 Mar 2020 12:22:11 +0000
Received: from mail-dm6nam11on20628.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::628]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0ND-0006D2-TM
 for linux-riscv@lists.infradead.org; Wed, 11 Mar 2020 12:22:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbqnRtdF6lsAVO8vMUDq+GKDWPid9LHY47HAIGrE2+0UB+SNzKG2To1xglgaJtU+mA44CjBe7N2r6slqHqgHM/reh0fqxo9s6yU3HI3toDEURs/y4axQ2Cuddh9/U76CijcLMDtaj8vZgOp4xfF1QiRl29NpS7Tij53mOJVhirwulgwOJfI1fubk8vuoVXTI3nlzj/q1RkL8oM9H9gU0SJ0QHrrkbmGjEmahjTxtQFIDNeLoEBoa5b/7CxmV4E/KvvVL0RPhG/ggE126YsCDGsWp/W/VbQOD+X1TtPXsFLhmGGjGeNi3BBCL6dpBbRn/L37XbylR/t12rrhoC7LItA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERRAudjHVGjnDjF+mvJRryzoiMROt5zPxRgvGuUPDl4=;
 b=ldWF6kjZYqQqw/jh4h14c4J+H5iSgqad5UXls/p3ViNmhucwShYmqZu5KF6FS7Mtwb5DUGuRH2nzYloZotnR957DkMjIeAmIzKVOJUdH46x3oVWixjJ/TALAciktQMp1H8SZDixb90cVqE86zZN6a+SsvCZgW7l9ZdB+BQHgPrPk2kkj9RFQg4KjEG7C95N3GoC+fI1etIhfL9ZyQnJUhyDxhEs0cJ98W8hhnSGaqq+usfC5E5Z4TvVikA8iIouyV4t39cm8d1RFDLsPgaxoLWuDYDHvOPbb1dVWbZqZSDsEJRJzWec3IdtjHRJ4ymm+Nb0cwntQXiZDwUfBFEUyrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERRAudjHVGjnDjF+mvJRryzoiMROt5zPxRgvGuUPDl4=;
 b=Bw/ZDauFq0U0kg50j3SshhVyllH6E7c7imDNVbZx/K6aKf0/HvC5KUJB+gol1NTARQAWCRSMF5VHvhwmVS7Y+T0v95Yn4+AXvyzv0yVatJdRYo4Ccd0lIHtd8zLVql1quDFu3/zKOBkjvwLqflxM/Q6vijMRrMVmMiEFA/vnXxI=
Received: from MN2PR13MB3552.namprd13.prod.outlook.com (2603:10b6:208:16f::22)
 by MN2PR13MB2734.namprd13.prod.outlook.com (2603:10b6:208:f3::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.7; Wed, 11 Mar
 2020 12:22:04 +0000
Received: from MN2PR13MB3552.namprd13.prod.outlook.com
 ([fe80::c8a2:5e5e:9769:6a8a]) by MN2PR13MB3552.namprd13.prod.outlook.com
 ([fe80::c8a2:5e5e:9769:6a8a%7]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 12:22:04 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>
Subject: RE: [PATCH] tty: sifive: Finish transmission before changing the clock
Thread-Topic: [PATCH] tty: sifive: Finish transmission before changing the
 clock
Thread-Index: AQHV9DjmyxKWiUuFkUuyXFb+1DKKS6hDUOug
Date: Wed, 11 Mar 2020 12:22:04 +0000
Message-ID: <MN2PR13MB3552C9E76C003A8A302540808CFC0@MN2PR13MB3552.namprd13.prod.outlook.com>
References: <20200307042637.83728-1-palmer@dabbelt.com>
In-Reply-To: <20200307042637.83728-1-palmer@dabbelt.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [120.138.124.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 364698b5-4faa-47d1-6285-08d7c5b6cf0c
x-ms-traffictypediagnostic: MN2PR13MB2734:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB2734ACBC6B7E6D00D3176E818CFC0@MN2PR13MB2734.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39850400004)(136003)(366004)(396003)(346002)(199004)(86362001)(81166006)(4326008)(53546011)(6506007)(478600001)(8676002)(33656002)(9686003)(55016002)(52536014)(5660300002)(64756008)(66946007)(107886003)(81156014)(66556008)(6636002)(66476007)(76116006)(66446008)(186003)(26005)(54906003)(316002)(7696005)(8936002)(110136005)(71200400001)(44832011)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR13MB2734;
 H:MN2PR13MB3552.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RZbUl1TiVKXNuR8olEEh38+m8w1uDJhzr3EeG2XUBJo4qbg9Gqgcdo73WKgcfmXz45WurETQCPLd4TYHLKl+UOqsSqbLS5UDhb9mXxOVr9jeWossfN7RRAv34nqdcw4KuW7gZu3eSSrRvLf/qn/A6sxdBEu9UZWyCBDawBblYPDiyWUpT3ieVnioMuzr66EHpjc06+RcDHn7AOMqcvLxJDBNdzKgBaxF8YtQ/HD3kwoqTY4e4pWWOgSYsGJWpynh41e+AP+j7pBDOChSvfafzPyAftBa08yPEF9o8Z7bNiQsABkQu3xEHA2u4kJnN/wyQXV3ZiYW+kNZK5jCgH7F/KOPTtUY9yCQ3V9D+caMfN3J4OKvsnAvsDvuk6DvYYktp13ALJfslprcOI91gPxICnF5Yn072kyR4njVDW8CIpo3p4F8gIAR1sRNI6D31y3q
x-ms-exchange-antispam-messagedata: J+AvgJTPFJu9znJZTpHDJFQ1OffbVbXMxB42zlBeadWHnEwVcWjbytuq9jcP86ItYmVE4N8t0yALkxDvaR0+SozCSx3RnWgFSnUGb6nrgxlghnxMGvChJbvd7K0Dzc4ZwwKfz/YhkGjpwexu0psp9g==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 364698b5-4faa-47d1-6285-08d7c5b6cf0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 12:22:04.1671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cagPcr2urqiWRqKNuuwhp/sm6z5rtW7KJtRhgCaAjKloLJbJXYYSXcfotfgWHD7RguwRHok/kHL4rz208bP4Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB2734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_052208_026531_FC30ADC9 
X-CRM114-Status: GOOD (  30.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, "jslaby@suse.com" <jslaby@suse.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "kernel-team@android.com" <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of
> Palmer Dabbelt
> Sent: 07 March 2020 09:57
> To: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmerdabbelt@google.com>; Greg KH
> <gregkh@linuxfoundation.org>; jslaby@suse.com; linux-
> kernel@vger.kernel.org; Palmer Dabbelt <palmer@dabbelt.com>; linux-
> serial@vger.kernel.org; Paul Walmsley <paul.walmsley@sifive.com>; linux-
> riscv@lists.infradead.org; kernel-team@android.com
> Subject: [PATCH] tty: sifive: Finish transmission before changing the clo=
ck
>=20
> From: Palmer Dabbelt <palmerdabbelt@google.com>
>=20
> SiFive's UART has a software controller clock divider that produces the f=
inal
> baud rate clock.  Whenever the clock that drives the UART is changed this
> divider must be updated accordingly, and given that these two events are
> controlled by software they cannot be done atomically.
> During the period between updating the UART's driving clock and internal
> divider the UART will transmit a different baud rate than what the user h=
as
> configured, which will probably result in a corrupted transmission stream=
.
>=20
> The SiFive UART has a FIFO, but due to an issue with the programming
> interface there is no way to directly determine when the UART has finishe=
d
> transmitting.  We're essentially restricted to dead reckoning in order to=
 figure
> that out: we can use the FIFO's TX busy register to figure out when the l=
ast
> frame has begun transmission and just delay for a long enough that the la=
st
> frame is guaranteed to get out.
>=20
> As far as the actual implementation goes: I've modified the existing exis=
ting
> clock notifier function to drain both the FIFO and the shift register in =
on
> PRE_RATE_CHANGE.  As far as I know there is no hardware flow control in
> this UART, so there's no good way to ask the other end to stop transmissi=
on
> while we can't receive (inserting software flow control messages seems li=
ke a
> bad idea here).
>=20
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
> I have not tested this, as I don't have any hardware.  I'm also not even
> remotely familiar with the serial subsystem, so I don't know if there's a
> better way of going about this.  I'm specifically worried about a udelay(=
) that
> could be quite long.  Maybe some sort of "delay for short times, sleep fo=
r
> long times" approach would be better?
>=20
> I don't know if this manifests in practice on existing hardware when runn=
ing
> real workloads, but I'd be willing to bet that it would be possible to tr=
igger
> the bug on purpose as by my calculations there's about a 10k cycle window=
 in
> which the clock can't change.  IIRC there's a lot of instability when cha=
nging
> the clock frequency on the HiFive Unleashed so I doubt people are going t=
o
> stumble across the issue regularly in practice.
>=20
>  drivers/tty/serial/sifive.c | 28 ++++++++++++++++++++++++----
>  1 file changed, 24 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c in=
dex
> d5f81b98e4d7..d34031e842d0 100644
> --- a/drivers/tty/serial/sifive.c
> +++ b/drivers/tty/serial/sifive.c
> @@ -618,10 +618,10 @@ static void sifive_serial_shutdown(struct uart_port
> *port)
>   *
>   * On the V0 SoC, the UART IP block is derived from the CPU clock source
>   * after a synchronous divide-by-two divider, so any CPU clock rate chan=
ge
> - * requires the UART baud rate to be updated.  This presumably could
> corrupt any
> - * serial word currently being transmitted or received.  It would probab=
ly
> - * be better to stop receives and transmits, then complete the baud rate
> - * change, then re-enable them.
> + * requires the UART baud rate to be updated.  This presumably corrupts
> + any
> + * serial word currently being transmitted or received.  In order to
> + avoid
> + * corrupting the output data stream, we drain the transmit queue
> + before
> + * allowing the clock's rate to be changed.
>   */
>  static int sifive_serial_clk_notifier(struct notifier_block *nb,
>  				      unsigned long event, void *data) @@ -
> 629,6 +629,26 @@ static int sifive_serial_clk_notifier(struct notifier_bl=
ock
> *nb,
>  	struct clk_notifier_data *cnd =3D data;
>  	struct sifive_serial_port *ssp =3D notifier_to_sifive_serial_port(nb);
>=20
> +	if (event =3D=3D PRE_RATE_CHANGE) {
> +		/*
> +		 * The TX watermark is always set to 1 by this driver, which
> +		 * means that the TX busy bit will lower when there are 0
> bytes
> +		 * left in the TX queue -- in other words, when the TX FIFO is
> +		 * empty.
> +		 */
> +		__ssp_wait_for_xmitr(ssp);
> +		/*
> +		 * On the cycle the TX FIFO goes empty there is still a full
> +		 * UART frame left to be transmitted in the shift register.
> +		 * The UART provides no way for software to directly
> determine
> +		 * when that last frame has been transmitted, so we just
> sleep
> +		 * here instead.  As we're not tracking the number of stop
> bits
> +		 * they're just worst cased here.  The rest of the serial
> +		 * framing parameters aren't configurable by software.
> +		 */
> +		udelay(DIV_ROUND_UP(12 * 1000 * 1000, ssp->baud_rate));
> +	}
> +
>  	if (event =3D=3D POST_RATE_CHANGE && ssp->clkin_rate !=3D cnd-
> >new_rate) {
>  		ssp->clkin_rate =3D cnd->new_rate;
>  		__ssp_update_div(ssp);
> --
> 2.25.1.481.gfbce0eb801-goog
>=20

A quick test on HiFive Unleashed board showed some improvements.
Prior to this patch, I have been observing some random corrupted characters=
 on serial console when continuously changing the CPU clock rate.
After applying this patch I don't see those corrupted characters anymore wh=
ile changing the clock rate.

Tested-by: Yash Shah <yash.shah@sifive.com>

This observation is based on a quick initial test on HiFive Unleashed. I am=
 planning to further test it by inducing the error on purpose. Will try to =
update the result soon.

- Yash


