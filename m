Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3C5B31E0
	for <lists+linux-riscv@lfdr.de>; Sun, 15 Sep 2019 21:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M6y2v0m8VJ2v3ztVObrgJ5f+qYlIecx54BrWgwtVEXU=; b=jvx
	/cOflgn1a6X8UkjQ+Y7QM8iivyz9/jltOuItVRDZk0Fh7sUwaZq47V9RYmvhkGyZl61fKPPkulkLs
	9YuPayjfpPm8iH0/+JOrJq1GFsGbsaaA1CLgy+rASkU7ebFHQK9423JVUwFq5nGOFg7IPDgIhT7px
	G5D81RQrsjWoZcv/nYaql0yq/0OROHujLcv1nyjlxvaGB1E8PdFGId3B57mR1hCgKUdzKcRPDdNPu
	++j2E9RcuA098+Qs9W1bnDoej6MHkkDmcQNRjSxXT8AYC1CFfTI05sopiwnKfmV44/GIEpD1MQlIS
	P4ifhlboe8OHOlDY8O+VYhDx6x7eB4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9aVa-0000JY-Bb; Sun, 15 Sep 2019 19:48:30 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9aVX-0000Iz-07
 for linux-riscv@lists.infradead.org; Sun, 15 Sep 2019 19:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=la4zofXTsrcIrlIcvyDyOz1E7uqr6BBUHVC7GRhSSYM=; b=fwn8xSH6MbRNYLg2ebh4tpqSA
 G1i/j6npEGoQm5Qs4516LbMAw5ZCgtVXZ2qR7+srXdrvSBbLSTzmA7aHKDteDs6pkp7CG0uUAEgo2
 uoWKeeyvOb7GkYq3CPd2wWM5KOwb8lpSkOnJSRibnTPeBBFKSTUu82tHtdOu42c6EloeQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9aVP-00015X-Hj; Sun, 15 Sep 2019 19:48:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id ACF37274154D; Sun, 15 Sep 2019 20:48:18 +0100 (BST)
Date: Sun, 15 Sep 2019 20:48:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: linux-next: manual merge of the jc_docs tree with the riscv-fixes tree
Message-ID: <20190915194818.GC4352@sirena.co.uk>
MIME-Version: 1.0
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_124827_056877_BBF22035 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1918779373619311909=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============1918779373619311909==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0lnxQi9hkpPO77W3"
Content-Disposition: inline


--0lnxQi9hkpPO77W3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the jc_docs tree got a conflict in:

  Documentation/riscv/boot-image-header.rst

between commit:

  474efecb65dceb15f ("riscv: modify the Image header to improve compatibili=
ty with the ARM64 header")

=66rom the riscv tree and commit:

  638b642f82bb8ee81 ("docs: riscv: convert boot-image-header.txt to ReST")

=66rom the jc_docs tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --cc Documentation/riscv/boot-image-header.rst
index 14b1492f689bb,43e9bd0731d5f..0000000000000
--- a/Documentation/riscv/boot-image-header.rst
+++ b/Documentation/riscv/boot-image-header.rst
@@@ -15,10 -18,10 +18,10 @@@ The following 64-byte header is presen
  	u64 image_size;		  /* Effective Image size, little endian */
  	u64 flags;		  /* kernel flags, little endian */
  	u32 version;		  /* Version of this header */
- 	u32 res1  =3D 0;		  /* Reserved */
- 	u64 res2  =3D 0;    	  /* Reserved */
+ 	u32 res1 =3D 0;		  /* Reserved */
+ 	u64 res2 =3D 0;		  /* Reserved */
  	u64 magic =3D 0x5643534952; /* Magic number, little endian, "RISCV" */
 -	u32 res3;		  /* Reserved for additional RISC-V specific header */
 +	u32 magic2 =3D 0x56534905;  /* Magic number 2, little endian, "RSC\x05" =
*/
  	u32 res4;		  /* Reserved for PE COFF offset */
 =20
  This header format is compliant with PE/COFF header and largely inspired =
=66rom
@@@ -32,20 -37,25 +37,26 @@@ Note
    code0 should be replaced with "MZ" magic string and res5(at offset 0x3c=
) should
    point to the rest of the PE/COFF header.
 =20
- - version field indicate header version number.
- 	Bits 0:15  - Minor version
- 	Bits 16:31 - Major version
+ - version field indicate header version number
+=20
+ 	=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+ 	Bits 0:15   Minor version
+ 	Bits 16:31  Major version
+ 	=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =20
    This preserves compatibility across newer and older version of the head=
er.
 -  The current version is defined as 0.1.
 +  The current version is defined as 0.2.
 =20
 -- res3 is reserved for offset to any other additional fields. This makes =
the
 -  header extendible in future. One example would be to accommodate ISA
 -  extension for RISC-V in future. For current version, it is set to be ze=
ro.
 +- The "magic" field is deprecated as of version 0.2.  In a future
 +  release, it may be removed.  This originally should have matched up
 +  with the ARM64 header "magic" field, but unfortunately does not.
 +  The "magic2" field replaces it, matching up with the ARM64 header.
 =20
 -- In current header, the flag field has only one field.
 +- In current header, the flags field has only one field.
- 	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
+=20
+ 	=3D=3D=3D=3D=3D  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+ 	Bit 0  Kernel endianness. 1 if BE, 0 if LE.
+ 	=3D=3D=3D=3D=3D  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =20
  - Image size is mandatory for boot loader to load kernel image. Booting w=
ill
    fail otherwise.

--0lnxQi9hkpPO77W3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1+lYEACgkQJNaLcl1U
h9AIJwf+IpEoaIl2e7XRmvVC/euyAd61fu4DP4yRHffIWEPpf1jrZEWztXj7X4dR
ByierS/+oj2HeDKZJYcx+oRo1i4H6bchO3/1D1MrUpRHRi/nHCrhthBy/JBhEsQq
NdQu7l5VOV3StJ1Vt2+QCW3+VXXhKhMhOhYW59ZeHyrFYFFZfjdm/d24I3CkZxPR
JSuqlPNrHeXCfalOAdk4CnBHd4cYo0oSdaOX5Sy/uPWs44cpNbuEd1qOPVKKrLeI
WKYwy76SahaMWE+028dvfsSC/KikQbhlFOcUedmvjpP1DLwte1QkDxQzZIIN20yI
wEXRToDioWxtLMsdaVFB8CkD6okQOw==
=wuYs
-----END PGP SIGNATURE-----

--0lnxQi9hkpPO77W3--


--===============1918779373619311909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============1918779373619311909==--

