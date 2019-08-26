Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1069D102
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 15:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VbOYgJGSEqMydiqPupqhyAbwCtbOm1RiO5Qe9t0n37Y=; b=pqXQMVs85e2c2njbg7O0tu9Bm
	KEgNuRQieR10cYlLd4XpyLtz0kBjTKhbtkrRnTh1tNxgonIQ5MEgKdaAWp5nObHfQdg2J70sEMsYM
	V76JOsh72WiziZFICKmXEhl3z+RoUxAuuxCumNiq8eKNRD/VMk5c3F4+v8OAZv2E316GMNQjnG+Pc
	HFB3AfAjdBz+iAfaekcPwBnH+7eFOxY3GAeDWNwD7YMNyCoOMjWntPn52MOLoKkA6vuhjBocVAisz
	NxK1nfi5GXIv1IX24CV+AIsoDv6ZgIjuJhvnkt7dbkHoWuehduzapdI10uj9M7Gls0jZomRcGKw9A
	CFjnRFc5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2FLs-0002St-Op; Mon, 26 Aug 2019 13:48:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2FKl-0001pA-GF; Mon, 26 Aug 2019 13:47:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4C2D6B038;
 Mon, 26 Aug 2019 13:46:57 +0000 (UTC)
Message-ID: <027272c27398b950f207101a2c5dbc07a30a36bc.camel@suse.de>
Subject: Re: [PATCH v2 01/11] asm-generic: add dma_zone_size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>
Date: Mon, 26 Aug 2019 15:46:52 +0200
In-Reply-To: <20190826070939.GD11331@lst.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-2-nsaenzjulienne@suse.de>
 <20190826070939.GD11331@lst.de>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_064659_837847_3352C425 
X-CRM114-Status: GOOD (  15.20  )
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
Cc: catalin.marinas@arm.com, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, will@kernel.org, m.szyprowski@samsung.com,
 linux-arch@vger.kernel.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 marc.zyngier@arm.com, robh+dt@kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, phill@raspberryi.org, mbrugger@suse.com,
 eric@anholt.net, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, wahrenst@gmx.net, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============3428903287585707877=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============3428903287585707877==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-rvg1En4pB30QD7Cei8XS"


--=-rvg1En4pB30QD7Cei8XS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-08-26 at 09:09 +0200, Christoph Hellwig wrote:
> On Tue, Aug 20, 2019 at 04:58:09PM +0200, Nicolas Saenz Julienne wrote:
> > Some architectures have platform specific DMA addressing limitations.
> > This will allow for hardware description code to provide the constraint=
s
> > in a generic manner, so as for arch code to properly setup it's memory
> > zones and DMA mask.
>=20
> I know this just spreads the arm code, but I still kinda hate it.

Rob's main concern was finding a way to pass the constraint from HW definit=
ion
to arch without widening fdt's architecture specific function surface. I'd =
say
it's fair to argue that having a generic mechanism makes sense as it'll now
traverse multiple archs and subsystems.

I get adding globals like this is not very appealing, yet I went with it as=
 it
was the easier to integrate with arm's code. Any alternative suggestions?

> MAX_DMA_ADDRESS is such an oddly defined concepts.  We have the mm
> code that uses it to start allocating after the dma zones, but
> I think that would better be done using a function returning
> 1 << max(zone_dma_bits, 32) or so.  Then we have about a handful
> of drivers using it that all seem rather bogus, and one of which
> I think are usable on arm64.

Is it safe to assume DMA limitations will always be a power of 2? I ask as =
RPi4
kinda isn't: ZONE_DMA is 0x3c000000 bytes big, I'm approximating the zone m=
ask
to 30 as [0x3c000000 0x3fffffff] isn't defined as memory so it's unlikely t=
hat
we=C2=B4ll encounter buffers there. But I don't know how it could affect mm
initialization code.

This also rules out 'zone_dma_bits' as a mechanism to pass ZONE_DMA's size =
from
HW definition code to arch's.


--=-rvg1En4pB30QD7Cei8XS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1j4swACgkQlfZmHno8
x/7+5Qf/RG+HHfwkIbvgTeNBR6PGQMv7ZNDSxgeVo0caYiQnN2w01vHWnEXBnsNK
sj6p2ip+d5CQbSOMO2oVO7qS4+BoOjcdnFTNSLH0uN5coZj6sr8u5N/FFdeb2cI+
6B9opO7apUCnnuwaBeV5Ocepk1gr4rNoRnrOWmFwnqoc9dBRBuKV4ejcEB43ySw6
wxwOswOu17wPR3o6969vTlP29cTItzXnrjmlTn+lKyQpR6pOzC0IpU1tmO0KkfHM
+U0Kypzbtb5Z9uCWvbS42mvT9oV3/El8iqrw1mPxbwRDgwDsBf2awc+fNmnQTsRK
4pDSxPGJ5wST3O0WUjysQ9u+RJC+Cg==
=y9Dx
-----END PGP SIGNATURE-----

--=-rvg1En4pB30QD7Cei8XS--



--===============3428903287585707877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============3428903287585707877==--


