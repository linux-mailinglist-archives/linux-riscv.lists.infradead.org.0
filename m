Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9739678F
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 19:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ew7rzgM5fwJdBxAzgoVKwuzD/TWIXcjJitc1szGX8b4=; b=aWimWm72QPQRNaB5MXFJ5Zm5R
	CpA0uPrZgA9knqgsvbhOFU0oL4Kn9QQIH0/9UYelEr9NSn+3Ntw2WokQ0WlH02rPYxpupQzIWXuC/
	hIJyBuhev2QCK4hJ91a4vRbIPj5ycgHdwFMrqLzVfDMX+WqyPW+ERa6If6i910twdG1JHDg1UIS0j
	FjpgS17EEZvUpkxBVbAx4N9w5n+iqxyJ6EfehvuL+ojYkvA4+ownVVVxo/CJUpakeudzZHxwXrsZv
	gH8ZjYiUhMlHxWXAKQJ9CWjfAfOcnbFoWNqoXOpQ6O9stt1Ky+M/SNOnhuHZqHmj8eL+gXyW4OcHr
	g3of0IaLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07vU-0005ag-JX; Tue, 20 Aug 2019 17:28:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07vJ-0005R5-2G; Tue, 20 Aug 2019 17:27:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1272AABBE;
 Tue, 20 Aug 2019 17:27:53 +0000 (UTC)
Message-ID: <ef3eaf8ea03ae8dc86a1a2f293087ff5c2f56b7a.camel@suse.de>
Subject: Re: [PATCH v2 03/11] of/fdt: add of_fdt_machine_is_compatible function
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 19:27:50 +0200
In-Reply-To: <CAL_JsqJT3UNVKpAt+3g-tosy=uCZTosUxD4RfVYjMJ-gpGmPiA@mail.gmail.com>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-4-nsaenzjulienne@suse.de>
 <CAL_JsqJT3UNVKpAt+3g-tosy=uCZTosUxD4RfVYjMJ-gpGmPiA@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_102757_258892_C61D9F51 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:GENERIC INCLUDE/ASM HEADER FILES" <linux-arch@vger.kernel.org>,
 devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 phill@raspberryi.org, Will Deacon <will@kernel.org>, linux-mm@kvack.org,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Eric Anholt <eric@anholt.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Matthias Brugger <mbrugger@suse.com>, "moderated
 list:BROADCOM BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-riscv@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============6600124977127513950=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============6600124977127513950==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Cm+dM0aB2YImXVa0ovlW"


--=-Cm+dM0aB2YImXVa0ovlW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,
thanks for the rewiew.

On Tue, 2019-08-20 at 12:16 -0500, Rob Herring wrote:
> On Tue, Aug 20, 2019 at 9:58 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Provides the same functionality as of_machine_is_compatible.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> > Changes in v2: None
> >=20
> >  drivers/of/fdt.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >=20
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 9cdf14b9aaab..06ffbd39d9af 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -802,6 +802,13 @@ const char * __init of_flat_dt_get_machine_name(vo=
id)
> >         return name;
> >  }
> >=20
> > +static const int __init of_fdt_machine_is_compatible(char *name)
>=20
> No point in const return (though name could possibly be const), and
> the return could be bool instead.

Sorry, I completely missed that const, shouldn't have been there to begin w=
ith.

I'll add a const to the name argument and return a bool on the next version=
.

Regards,
Nicolas



--=-Cm+dM0aB2YImXVa0ovlW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1cLZYACgkQlfZmHno8
x/4DowgAjoLUq0qUOWOtkTx0OcxyQrKy++gIvChR7IajK1yXJKyT8kA/QNZrERqj
nvLlebXPhJG0y4uUTzEVmzsgUFS4vopZAzL+H7TGfXsL8pQbGjnO+l62gc1oqTVd
U+IrQWs0BPZ/MeCxUXUtKlYdMMuf9Ld8z16siDZPj5pYY6IHq8HtS1WseTvTti6S
pHpXyK+XiPpxzupgUjNm6Lzsm8FO0P2tw5IKD3vRLS+4vLaYUPieCLdMvkf1lMU6
DkQ71pEENpt35eBer1lLK/meYuisvK4V+tnwrWSDGZCuywbhi1fpvAyh3CRicE3t
rvLGmR2JEXsldgQeodOoEyKoeWSAgQ==
=hgaN
-----END PGP SIGNATURE-----

--=-Cm+dM0aB2YImXVa0ovlW--



--===============6600124977127513950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============6600124977127513950==--


