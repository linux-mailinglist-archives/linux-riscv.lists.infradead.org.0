Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3DAAFAE4
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 12:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jV5mSf9Oq9KLfsN9Ea2NLflMQPcuMQkcKzDRY5VLxXk=; b=MvxPSwSE8o5cyGfASL/W+G722
	C2w/XiU1+ngmMs57qXixHYZk6pcYouq0E1ZJQ9uj3IOkHO/b3oUQPcI9uaL5VSoFG3ehnZF/2mvea
	4guDbHG4WL7h3G9voOQ//YWWv/ROiuJJ6/gkqWqOoCY+riAc3BIL/Y+Gz3pJargpyPzaVOsxJX1vI
	fkn+SQYJK8qv8P1URCXyitDJwKPg49HGHrursXRRzsvQ63LrAtjk65w8afISnlnkDy+JqrsxwZ2hv
	WxZPJCkczs4DlMxSr7DlsEL2gAPGWA/US/AauakpBvhfktZymIeXacmJVUGWd5gYS/K63Pj3KtXJV
	bXxsmS/Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80HX-00081Y-Ie; Wed, 11 Sep 2019 10:55:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80Gr-0006Kw-Vj; Wed, 11 Sep 2019 10:54:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 625F7AFBA;
 Wed, 11 Sep 2019 10:54:41 +0000 (UTC)
Message-ID: <b0b824bebb9ef13ce746f9914de83126b0386e23.camel@suse.de>
Subject: Re: [PATCH v5 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com,  robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>
Date: Wed, 11 Sep 2019 12:54:38 +0200
In-Reply-To: <20190909095807.18709-4-nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <20190909095807.18709-4-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_035446_851831_83C789D9 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 robin.murphy@arm.com, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============2772709427645576583=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============2772709427645576583==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+mwqdWbEE6wWAYsMfkXS"


--=-+mwqdWbEE6wWAYsMfkXS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-09 at 11:58 +0200, Nicolas Saenz Julienne wrote:
> +
>  /*
> - * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32))=
. It
> - * currently assumes that for memory starting above 4G, 32-bit devices w=
ill
> - * use a DMA offset.
> + * Return the maximum physical address for a zone with a given address s=
ize
> + * limit. It currently assumes that for memory starting above 4G, 32-bit
> + * devices will use a DMA offset.
>   */
> -static phys_addr_t __init max_zone_dma32_phys(void)
> +static phys_addr_t __init max_zone_phys(unsigned int zone_bits)
>  {
>         phys_addr_t offset =3D memblock_start_of_DRAM() & GENMASK_ULL(63,=
 32);
> -       return min(offset + (1ULL << 32), memblock_end_of_DRAM());
> +       return min(offset + (1ULL << zone_bits), memblock_end_of_DRAM());
>  }

Hi all,
while testing other code on top of this series on odd arm64 machines I foun=
d an
issue: when memblock_start_of_DRAM() !=3D 0, max_zone_phys() isn't taking i=
nto
account the offset to the beginning of memory. This doesn't matter with
zone_bits =3D=3D 32 but it does when zone_bits =3D=3D 30.

I'll send a follow-up series.

Regards,
Nicolas


--=-+mwqdWbEE6wWAYsMfkXS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl140m4ACgkQlfZmHno8
x/7BUAf8DFgSHDr3lRvqtp8RR9IRwdyy2AUPrJxMxccznKYgaiaJpx9nyG2J8h2M
2RuPADsFlI9fX0698LVNDxwUhICkAYh5gxOw/S+KHQvpw6KDqOn5HNvAESc64TTQ
T+KDM+LR+j6W0fRNPUDWJvLJCYf0dXc2PmysKhJF+Gck5LmHPl+aNUmJjpVqa/HJ
cMUJAObpwDpLRySRBi5DtN+ZAv/SVwD1WhJkn/0FjWmBRBpwt9T0YVdPGbyJd877
kLjB51r2JQSn/+Za+2TjIx4E1Qf9APCKCYzp1Jd0ofb53DO5jFtMPZ7GQljKwVf1
d05+0WOR5OrHixfZhqXV1huP39T8Uw==
=iRPY
-----END PGP SIGNATURE-----

--=-+mwqdWbEE6wWAYsMfkXS--



--===============2772709427645576583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============2772709427645576583==--


