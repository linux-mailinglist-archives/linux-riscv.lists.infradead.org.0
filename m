Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1161E36ED4
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 10:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KM0AsTeUoAnfJZQ8PkOA5GhGDcfQMI2P2FT8DjznPP8=; b=GEZGVbd6WqQmpjMY93mid5OKb
	8S77IP1uoJlLL3gfy+eEYMwK9/8M5mvZs3WNqmB/0lW6ep4mNY+TkMUBgA4fBFQFIpj0s3p4cQFsV
	WSoHb2x9GgxJFWBgQws2MjMbikIjdKkjks9d5g0k1bq5nHzSuHfbUkQuZSy/7R7kclcu1WVX0neea
	s4aAxfhmemCNexFQPaFMxyOr7IlAnGx1HqytSv6bqgJyQyno+6vxvUt0t90z3TgR+kBkcyNPol0+q
	JVpKLQfoHmKqFWvq5ZfiOMYIsqy24YPX48297OPTKUTTDERmSxsNth0BzgIBUTAkznla3Vilh7LPZ
	joiSZyCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnti-0000BL-KV; Thu, 06 Jun 2019 08:37:22 +0000
Received: from 96-92-233-220-static.hfc.comcastbusiness.net ([96.92.233.220]
 helo=dcr0.decred.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYntf-0000As-H1
 for linux-riscv@lists.infradead.org; Thu, 06 Jun 2019 08:37:20 +0000
Received: from marcos-macbook.home (a95-94-160-35.cpe.netcabo.pt
 [95.94.160.35])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dcr0.decred.org (Postfix) with ESMTPSA id 459FB18B407F;
 Thu,  6 Jun 2019 08:37:14 +0000 (UTC)
From: Marco Peereboom <marco@decred.org>
Message-Id: <8630ED8D-03D4-4BDB-A4A4-6C33325BFA88@decred.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] RISC-V: Break load reservations during switch_to
Date: Thu, 6 Jun 2019 09:37:13 +0100
In-Reply-To: <20190605231735.26581-1-palmer@sifive.com>
To: Palmer Dabbelt <palmer@sifive.com>
References: <20190605231735.26581-1-palmer@sifive.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_013719_638580_52106FFB 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 joel@sing.id.au, me@carlosedp.com, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: multipart/mixed; boundary="===============5330831136679598203=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============5330831136679598203==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_45A4FB4B-0652-4B92-B0EB-03726583BE22";
	protocol="application/pgp-signature";
	micalg=pgp-sha512


--Apple-Mail=_45A4FB4B-0652-4B92-B0EB-03726583BE22
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Ah that=E2=80=99s sneaky!!

> On Jun 6, 2019, at 12:17 AM, Palmer Dabbelt <palmer@sifive.com> wrote:
>=20
> The comment describes why in detail.  This was found because QEMU =
never
> gives up load reservations, the issue is unlikely to manifest on real
> hardware.
>=20
> Thanks to Carlos Eduardo for finding the bug!
>=20
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> ---
> arch/riscv/kernel/entry.S | 18 ++++++++++++++++++
> 1 file changed, 18 insertions(+)
>=20
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index 1c1ecc238cfa..e9fc3480e6b4 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -330,6 +330,24 @@ ENTRY(__switch_to)
> 	add   a3, a0, a4
> 	add   a4, a1, a4
> 	REG_S ra,  TASK_THREAD_RA_RA(a3)
> +	/*
> +	 * The Linux ABI allows programs to depend on load reservations =
being
> +	 * broken on context switches, but the ISA doesn't require that =
the
> +	 * hardware ever breaks a load reservation.  The only way to =
break a
> +	 * load reservation is with a store conditional, so we emit one =
here.
> +	 * Since nothing ever takes a load reservation on =
TASK_THREAD_RA_RA we
> +	 * know this will always fail, but just to be on the safe side =
this
> +	 * writes the same value that was unconditionally written by the
> +	 * previous instruction.
> +	 */
> +#if (TASK_THREAD_RA_RA !=3D 0)
> +# error "The offset between ra and ra is non-zero"
> +#endif
> +#if (__riscv_xlen =3D=3D 64)
> +	sc.d  x0, ra, 0(a3)
> +#else
> +	sc.w  x0, ra, 0(a3)
> +#endif
> 	REG_S sp,  TASK_THREAD_SP_RA(a3)
> 	REG_S s0,  TASK_THREAD_S0_RA(a3)
> 	REG_S s1,  TASK_THREAD_S1_RA(a3)
> --
> 2.21.0
>=20


--Apple-Mail=_45A4FB4B-0652-4B92-B0EB-03726583BE22
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8htVBWYODFIPzwuljM0W459K7ykFAlz40LkACgkQjM0W459K
7ykrsw//XiqwGdn/KPK7L2tSCRVBqNVpY4M2p2FYzHr6CK4Hy9C9WdWVazpkG/8D
YaBuFzw9J2UIMeaf7os4bHrMtOErjN7R/Zs6i/PpJVKjK/zuxtKs+mrF/nNhFose
JRSBpeGNFu2rR0+RgEj0h9whdg+Re0rASnS8bKnnYj/x+irZ+VZiN/7+W9aHnP7O
mv9sjl/EZWGcw5PuTze/QjfU/BDeZFXvQjehItOy/r+1MyrSgi+vkYuGw0D+XZ/4
yTXk9GOn18YNOUv4CBCYWKuS3SFsrq/PyR3ziIUnlvN9kcY6enjQMoO1q3lGDdN/
sWjxHnA+9htiSfLr/cBfCAa/hebVr3H3F1Vep4ubX5s9bbPf7gF6CA5dhZBpfH7v
qw0bs/TQlM39BZebbl0qDfvRI8P9zunrKDO/RgfJjy2XjbBpeAw9IQ74kb/U2ymR
yK6CLEbsXkEpCAOh+iMrWyDB/7RTGgDBqkWOnh3f3ZgqBh4FDjp7es1+qU0iNuwi
JwSGFzrWoUsgQFWwud1H9mqRLFzLtqn8id6oRGwHhoekmWnFhx8dr4Hr3s3/rfq7
5GTEbblV7Vb8dw9M4mOPepxPtg3iB4liuzIADywHhFlY3n5SxgzJCKU5l1DiDjuz
/VM18jQ2V8UdrThNr37d72n1Z75IoUHIWBXSChdUf3aPN6uwxOs=
=v92O
-----END PGP SIGNATURE-----

--Apple-Mail=_45A4FB4B-0652-4B92-B0EB-03726583BE22--


--===============5330831136679598203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============5330831136679598203==--

