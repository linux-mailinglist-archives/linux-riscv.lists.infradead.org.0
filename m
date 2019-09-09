Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AE5ADFA6
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Sep 2019 21:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LpkBPsUdSwrd7YYyYfsSs23y1ZMKspp8cjgrqYv0hx0=; b=Wr1xRHYXgiixG/Z0zr5Fd5VWB
	u6akcNpgb/vBM+PjwnAXtLqeiG2VIR3gjXm8lW3909McY36Z/it2PayRQJAPfUNtCwlMusdqeneWn
	vq5ptPk8XkCyYGbdVyeVuE/xlQt3hEQcHsASYGgD/GOUC4WfSmNyPCOM5vCPI1znQLuomQOYBLKaS
	n5jwTpLf+RgexCeC49E7F96kP3goEHctFaEgy0FoUtUsCP5+Wyut1hSLhkIckcFnaaJW9KNE41/8S
	lYlO0dgV8HDeg+8McLdmXBHCEtA2eodze5JUE0/+/lm4xzVxdhdXugCDJf7Lom/0LkolAjCEXItIc
	19+VXbJgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Pgn-00063t-Hy; Mon, 09 Sep 2019 19:51:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Pgc-0005wg-Ga; Mon, 09 Sep 2019 19:50:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A1671B6D8;
 Mon,  9 Sep 2019 19:50:51 +0000 (UTC)
Message-ID: <cac63db8b9a7ff78fc0cd816c7dce284a06480d5.camel@suse.de>
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, catalin.marinas@arm.com, hch@lst.de, 
 marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-mm@kvack.org,
 linux-riscv@lists.infradead.org
Date: Mon, 09 Sep 2019 21:50:47 +0200
In-Reply-To: <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_125054_847539_FF9C8584 
X-CRM114-Status: GOOD (  22.35  )
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
Cc: f.fainelli@gmail.com, robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 mbrugger@suse.com, linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 will@kernel.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============5934152850214644708=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============5934152850214644708==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-aEBb/xch/kbKDpnAu5z0"


--=-aEBb/xch/kbKDpnAu5z0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-09 at 21:33 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 09.09.19 um 11:58 schrieb Nicolas Saenz Julienne:
> > Hi all,
> > this series attempts to address some issues we found while bringing up
> > the new Raspberry Pi 4 in arm64 and it's intended to serve as a follow
> > up of these discussions:
> > v4: https://lkml.org/lkml/2019/9/6/352
> > v3: https://lkml.org/lkml/2019/9/2/589
> > v2: https://lkml.org/lkml/2019/8/20/767
> > v1: https://lkml.org/lkml/2019/7/31/922
> > RFC: https://lkml.org/lkml/2019/7/17/476
> >=20
> > The new Raspberry Pi 4 has up to 4GB of memory but most peripherals can
> > only address the first GB: their DMA address range is
> > 0xc0000000-0xfc000000 which is aliased to the first GB of physical
> > memory 0x00000000-0x3c000000. Note that only some peripherals have thes=
e
> > limitations: the PCIe, V3D, GENET, and 40-bit DMA channels have a wider
> > view of the address space by virtue of being hooked up trough a second
> > interconnect.
> >=20
> > Part of this is solved on arm32 by setting up the machine specific
> > '.dma_zone_size =3D SZ_1G', which takes care of reserving the coherent
> > memory area at the right spot. That said no buffer bouncing (needed for
> > dma streaming) is available at the moment, but that's a story for
> > another series.
> >=20
> > Unfortunately there is no such thing as 'dma_zone_size' in arm64. Only
> > ZONE_DMA32 is created which is interpreted by dma-direct and the arm64
> > arch code as if all peripherals where be able to address the first 4GB
> > of memory.
> >=20
> > In the light of this, the series implements the following changes:
> >=20
> > - Create both DMA zones in arm64, ZONE_DMA will contain the first 1G
> >   area and ZONE_DMA32 the rest of the 32 bit addressable memory. So far
> >   the RPi4 is the only arm64 device with such DMA addressing limitation=
s
> >   so this hardcoded solution was deemed preferable.
> >=20
> > - Properly set ARCH_ZONE_DMA_BITS.
> >=20
> > - Reserve the CMA area in a place suitable for all peripherals.
> >=20
> > This series has been tested on multiple devices both by checking the
> > zones setup matches the expectations and by double-checking physical
> > addresses on pages allocated on the three relevant areas GFP_DMA,
> > GFP_DMA32, GFP_KERNEL:
> >=20
> > - On an RPi4 with variations on the ram memory size. But also forcing
> >   the situation where all three memory zones are nonempty by setting a =
3G
> >   ZONE_DMA32 ceiling on a 4G setup. Both with and without NUMA support.
> >=20
> i like to test this series on Raspberry Pi 4 and i have some questions
> to get arm64 running:
>=20
> Do you use U-Boot? Which tree?

No, I boot directly.

> Are there any config.txt tweaks necessary?

I'm using the foundation's arm64 stub. Though I'm not 100% it's needed anym=
ore
with the latest firmware.

config.txt:
	arm_64bit=3D1
	armstub=3Darmstub8-gic.bin
	enable_gic=3D1
	enable_uart=3D1

Apart from that the series is based on today's linux-next plus your RPi4
bringup patches.


--=-aEBb/xch/kbKDpnAu5z0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl12rRcACgkQlfZmHno8
x/7toQf+L/Ta9MCsjv+DyfWvjt/fl9GT60+Z9cBctuHCujlRmElfGztMgn6Nu0hh
fosUsadksYqFzrdw9GLfqJj57Lmq8RXvt/glSBSN0lQZkXjn3pVklko/Wkj2UOaH
SvICcPMWlbk6nRjyVzX70aenvVmV5BqYa6qNxuCxPHEkYeVd9egxB//JPjtL6tqK
4QVSoJLjfoQAlYNWDm96f77nn5doyj1ibooZxaFQe5u0+3T0ytqCZfgDsJvrIpuW
2E4fth6VMA1AOFYH+EsvU49WyLcA1ry6xEA5NbkfmZZdh1eSyW7nCcCT60+S7Zm5
kfIX5VMaPvFiHYUMyyPzrdRP1un7VA==
=oHYd
-----END PGP SIGNATURE-----

--=-aEBb/xch/kbKDpnAu5z0--



--===============5934152850214644708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============5934152850214644708==--


