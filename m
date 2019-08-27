Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C779DE61
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 09:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JZ8XcYb1xB62iBpQq49AYB2+L8HDCE4g7rAOQCBKRN0=; b=fZ7kIs64Drcs5YvBLn89wyJkI
	ZSyQc9QFoBFJQOdMT3IZoNTz3MBB7K9lPnKfEEeHWGdtBC6whXvWnKYs6r7azZzqRr+Zhmgz8vust
	yxFQeBoneVpPE7beFC84veddNurw6JO59hISDhazRNoMeFWRDzXZhMOfr+Jeg13yL0BBZ9Cb45139
	vWx5dctrF30B1pgxNmHY5JjyHiq3ZelNeiUMFTEQRAMXWX/6lcT/hlvRUryoXpkur7fDyYGgoVjDx
	euUZ7HNJvhQyBkSupTndJ7zNyBugVzpcYFSvYrPdlN1PvbLg8bkydQD1XVbTjVXmCwNHtT9jD+RSU
	tUOBvOfcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VYe-000863-KK; Tue, 27 Aug 2019 07:06:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VWC-0006aX-Ka; Tue, 27 Aug 2019 07:03:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F3D93B0DA;
 Tue, 27 Aug 2019 07:03:45 +0000 (UTC)
Date: Tue, 27 Aug 2019 09:03:41 +0200
From: Petr Tesarik <ptesarik@suse.cz>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 10/11] arm64: edit zone_dma_bits to fine tune
 dma-direct min mask
Message-ID: <20190827090341.2bf6b336@ezekiel.suse.cz>
In-Reply-To: <4d8d18af22d6dcd122bc9b4d9c2bd49e8443c746.camel@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-11-nsaenzjulienne@suse.de>
 <20190826070633.GB11331@lst.de>
 <4d8d18af22d6dcd122bc9b4d9c2bd49e8443c746.camel@suse.de>
Organization: SUSE Linux, s.r.o.
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_000353_007628_CDFC5312 
X-CRM114-Status: GOOD (  12.13  )
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
 linux-riscv@lists.infradead.org, frowand.list@gmail.com,
 Christoph Hellwig <hch@lst.de>, m.szyprowski@samsung.com,
 linux-arch@vger.kernel.org, f.fainelli@gmail.com, will@kernel.org,
 devicetree@vger.kernel.org, marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 phill@raspberryi.org, mbrugger@suse.com, eric@anholt.net,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 wahrenst@gmx.net, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============2265114233962889803=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--===============2265114233962889803==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/vmjhQR+jY/bQH=VqrrKvOyt"; protocol="application/pgp-signature"

--Sig_/vmjhQR+jY/bQH=VqrrKvOyt
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 26 Aug 2019 13:08:50 +0200
Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:

> On Mon, 2019-08-26 at 09:06 +0200, Christoph Hellwig wrote:
> > On Tue, Aug 20, 2019 at 04:58:18PM +0200, Nicolas Saenz Julienne wrote:=
 =20
> > > -	if (IS_ENABLED(CONFIG_ZONE_DMA))
> > > +	if (IS_ENABLED(CONFIG_ZONE_DMA)) {
> > >  		arm64_dma_phys_limit =3D max_zone_dma_phys();
> > > +		zone_dma_bits =3D ilog2((arm64_dma_phys_limit - 1) &
> > > GENMASK_ULL(31, 0)) + 1; =20
> > =20
> Hi Christoph,
> thanks for the rewiews.
>=20
> > This adds a way too long line. =20
>=20
> I know, I couldn't find a way to split the operation without making it ev=
en
> harder to read. I'll find a solution.

If all else fails, move the code to an inline function and call it e.g.
phys_limit_to_dma_bits().

Just my two cents,
Petr T

--Sig_/vmjhQR+jY/bQH=VqrrKvOyt
Content-Type: application/pgp-signature
Content-Description: Digitální podpis OpenPGP

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHl2YIZkIo5VO2MxYqlA7ya4PR6cFAl1k1c0ACgkQqlA7ya4P
R6ffZggAphWovRbYbJElIMDB+201+43NCpSH8dbZwe3UrJ+1DHzEn4OEldBRpcAv
CuA2/u6GyA8wgnGpCAKj9HNHWSx9VeFoCmf6kPVHFtoC0hnJyJtCCWS1O9B1nqXR
3h1Dw+6F/4wh14vqUucVvfseO/T1VV1QtfsczxBy2xEvcTZGhBjo7LEKeABa2yRm
CoPLGyNtTtNkAhXeSeVJUcuquOjdqrcU+RlCH5EIZZagAvXuNLryEsjjUfD4Lx35
RBeRcO+KmGJvAYuelWr/lqtO5ZUnD4OXoFE6fV7AvvJCD6RIHngLS4EXDIkGAaqd
kWlLtSieXZDEl0mMBdQBfSVcByyzKA==
=RDo8
-----END PGP SIGNATURE-----

--Sig_/vmjhQR+jY/bQH=VqrrKvOyt--


--===============2265114233962889803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============2265114233962889803==--

