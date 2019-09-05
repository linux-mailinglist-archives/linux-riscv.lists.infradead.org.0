Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF894AAA00
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 19:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wWgRZVtJQaGzuxY6LLw5glTSbRWBRDRMjCjDMmBAi7Y=; b=ZqtFzpy2vvrHsGxxnwDRgBHIY
	e8yJjps8OjGqF9kuebv2MCUlut+ViyGf8h2ZNcA5zYtyTdqT1ZL8/7qDgood3trZikkCzsF9Zx3GD
	mUDg9rMoLsWvS7JQVi/lBTNRseurPrbwRtWvGYvnEhJoynlMVdchX6wOVH7LtISaUdoiVuNTf9zV/
	68v8veUjPEMLkVa3I9o591dL/IWALVjHSW+Yj6IdMkUmyLGStvL9kNVia8L0OqcoEu5gbZc+oYn0P
	GMInbTUGv0RXwQT+JqXzNevo4Xpq4XA1onz3CHqN9qlOPQEAvDuakg5CeUhujwUJHDDkGW9LLHJWQ
	F57ho7b0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vZC-0005LJ-Qe; Thu, 05 Sep 2019 17:29:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vYz-0005BU-Kf; Thu, 05 Sep 2019 17:28:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id ED229AC49;
 Thu,  5 Sep 2019 17:28:49 +0000 (UTC)
Message-ID: <93a26ccce01a6a2c37c60dc1fab50b337f9ebe95.camel@suse.de>
Subject: Re: [PATCH v3 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Thu, 05 Sep 2019 19:28:47 +0200
In-Reply-To: <20190905171939.GF31268@arrakis.emea.arm.com>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
 <20190902141043.27210-4-nsaenzjulienne@suse.de>
 <20190905171939.GF31268@arrakis.emea.arm.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_102853_973848_073400C1 
X-CRM114-Status: GOOD (  19.10  )
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
Cc: linux-rpi-kernel@lists.infradead.org, f.fainelli@gmail.com,
 marc.zyngier@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-mm@kvack.org,
 mbrugger@suse.com, wahrenst@gmx.net, linux-riscv@lists.infradead.org,
 phill@raspberrypi.org, robin.murphy@arm.com, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============7231802421013413023=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============7231802421013413023==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9g3qoHfuOq/LJ3RZf+b9"


--=-9g3qoHfuOq/LJ3RZf+b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-09-05 at 18:19 +0100, Catalin Marinas wrote:
> On Mon, Sep 02, 2019 at 04:10:41PM +0200, Nicolas Saenz Julienne wrote:
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index 8956c22634dd..f02a4945aeac 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -50,6 +50,13 @@
> >  s64 memstart_addr __ro_after_init =3D -1;
> >  EXPORT_SYMBOL(memstart_addr);
> > =20
> > +/*
> > + * We create both ZONE_DMA and ZONE_DMA32. ZONE_DMA covers the first 1=
G of
> > + * memory as some devices, namely the Raspberry Pi 4, have peripherals=
 with
> > + * this limited view of the memory. ZONE_DMA32 will cover the rest of =
the
> > 32
> > + * bit addressable memory area.
> > + */
> > +phys_addr_t arm64_dma_phys_limit __ro_after_init;
> >  phys_addr_t arm64_dma32_phys_limit __ro_after_init;
> > =20
> >  #ifdef CONFIG_KEXEC_CORE
> > @@ -164,9 +171,9 @@ static void __init reserve_elfcorehdr(void)
> >  }
> >  #endif /* CONFIG_CRASH_DUMP */
> >  /*
> > - * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32=
)).
> > It
> > - * currently assumes that for memory starting above 4G, 32-bit devices=
 will
> > - * use a DMA offset.
> > + * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32=
))
> > and
> > + * ZONE_DMA (DMA_BIT_MASK(30)) respectively. It currently assumes that=
 for
> > + * memory starting above 4G, 32-bit devices will use a DMA offset.
> >   */
> >  static phys_addr_t __init max_zone_dma32_phys(void)
> >  {
> > @@ -174,12 +181,23 @@ static phys_addr_t __init max_zone_dma32_phys(voi=
d)
> >  	return min(offset + (1ULL << 32), memblock_end_of_DRAM());
> >  }
> > =20
> > +static phys_addr_t __init max_zone_dma_phys(void)
> > +{
> > +	phys_addr_t offset =3D memblock_start_of_DRAM() & GENMASK_ULL(63, 32)=
;
> > +
> > +	return min(offset + (1ULL << ARCH_ZONE_DMA_BITS),
> > +		   memblock_end_of_DRAM());
> > +}
>=20
> I think we could squash these two functions into a single one with a
> "bits" argument that is either 32 or ARCH_ZONE_DMA_BITS.

Hi Catalin, thanks for the review.

Agree, it'll look nicer.

> > +
> >  #ifdef CONFIG_NUMA
> > =20
> >  static void __init zone_sizes_init(unsigned long min, unsigned long ma=
x)
> >  {
> >  	unsigned long max_zone_pfns[MAX_NR_ZONES]  =3D {0};
> > =20
> > +#ifdef CONFIG_ZONE_DMA
> > +	max_zone_pfns[ZONE_DMA] =3D PFN_DOWN(arm64_dma_phys_limit);
> > +#endif
> >  #ifdef CONFIG_ZONE_DMA32
> >  	max_zone_pfns[ZONE_DMA32] =3D PFN_DOWN(arm64_dma32_phys_limit);
> >  #endif
> > @@ -195,13 +213,17 @@ static void __init zone_sizes_init(unsigned long =
min,
> > unsigned long max)
> >  	struct memblock_region *reg;
> >  	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
> >  	unsigned long max_dma32 =3D min;
> > +	unsigned long max_dma =3D min;
> > =20
> >  	memset(zone_size, 0, sizeof(zone_size));
> > =20
> > -	/* 4GB maximum for 32-bit only capable devices */
> > +#ifdef CONFIG_ZONE_DMA
> > +	max_dma =3D PFN_DOWN(arm64_dma_phys_limit);
> > +	zone_size[ZONE_DMA] =3D max_dma - min;
> > +#endifmax_dma32
> >  #ifdef CONFIG_ZONE_DMA32
> >  	max_dma32 =3D PFN_DOWN(arm64_dma32_phys_limit);
> > -	zone_size[ZONE_DMA32] =3D max_dma32 - min;
> > +	zone_size[ZONE_DMA32] =3D max_dma32 - max_dma;
> >  #endif
> >  	zone_size[ZONE_NORMAL] =3D max - max_dma32;
>=20
> Does this still work if we have ZONE_DMA32 disabled but ZONE_DMA
> enabled? You could use a max(max_dma32, max_dma) or just update
> max_dma32 to max_dma in the CONFIG_ZONE_DMA block.

You're right, I missed that scenario. I'll fix it and give it a test for th=
e
next series.

Regards,
Nicolas


--=-9g3qoHfuOq/LJ3RZf+b9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1xRc8ACgkQlfZmHno8
x/4zsQf+Odspv12Kqk0K8vb4jtkpGtHtQl6pUtnIphzCybhSuOzl4bxUXIArYiL+
Lu5cVIQaXyjSOXBuIr6GsScAhWKRjOzFrM0A6SbvJRE1ux/JqeK51vDO40fktv9J
lenJrzXYB0lG9EnMgAoT0epCa6v/5xWSn7KQMrE74tY+P1qhcDM6pi7g3K3ikCzg
ev0bpsZQEDldBcYhBC53DgQv5Bn3E1J88PwlPP7ZWeklE3o137uXUDgd72xoXqmO
ehRHRNZpLdvi7ir/k0HHEs0LnBv1noT3izXaCACKM7w6K8nYiPNGST3C/KHBIpAY
RVPpKUcG8+9fmhEPDw5gmlyZ0x+hMA==
=UF63
-----END PGP SIGNATURE-----

--=-9g3qoHfuOq/LJ3RZf+b9--



--===============7231802421013413023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============7231802421013413023==--


