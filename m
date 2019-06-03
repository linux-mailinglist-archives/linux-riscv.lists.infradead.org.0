Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0578D335EA
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 19:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FcLXyMQDvD+i+sIwjg7CLLgd5UG+skJu+4qQZug/8HE=; b=MyfGCjNr+PwVPt0qTehqBWe4r
	KuyV4NBXO3mvX+G14iw3w2hDXguhPaUR8c9vcTiCQ0RRxzkGNGlcoAiLgZQtabywkFhADFv+QpIky
	Sh09PeJ5X/j/ac8BzcJwg7oW6fZ41xpdQ38KaT/nm5OQuDPQWVJrBdmDDE3ujChy2Zsnd2yWmZ1AD
	vFtb/ZxY4Pc8hARvpzVFtdxBLB9xDo/GLFfUskF5suhmpGJcWTgv650NjWlP65maQ8zq5pU7iWPdy
	OMGq7oBBFruEcxQ8gkEVyu2GSXAAsZCLZG//THrtdStfZC/nokIhjciBM78+TXgdWRvBOQozb81Pn
	4wJnYZUrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqMX-0006l7-4M; Mon, 03 Jun 2019 17:03:09 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqMT-0006ka-RW
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 17:03:07 +0000
Received: by mail-qt1-x841.google.com with SMTP id d23so10288598qto.2
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 10:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0klOGH68LkvRh4ogNaMGggEWJNcnKgLoi8gytej3cGs=;
 b=AQ8FBh3nyDj+OEPsh7nKRVyzGf6jYuJSiXk+5n4apdqClNP1H9Ojidh3b/q5/KNIym
 j/JM0r6TTRoJt0N8hpRz0Ugo3z0843dOh1Wg38VO9b3ldIPmJijeGdcQtSQm0Ve4z1ol
 IPm7ULvHLyLkPyf/LEnxR+UQtqkuiDZcGu9dI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0klOGH68LkvRh4ogNaMGggEWJNcnKgLoi8gytej3cGs=;
 b=sZPM4lc+DTH1imWXx1DlftsEUGC1YhcLhe7i+ejFG9/0b5joSb+EtpYGtc/FHUnqyo
 gaETTGEX0Fq3i3FiRWJMzLBEgMHS3U3k44W9vKSUdjznv0C9KB196fle4UPLyJWB/0wv
 li+Q4PRSKQqZfW9Up1sGCG8Zj+qs8sFa0BQ8z9pYcAv1yciusmqpr6QUDdVc+zBfclDL
 52Wd51glk2B9LUVYkiGbrb3IOrASjbsShBM+OZ7edGszzt1he2XZTSzJEZeOa3kCDfBB
 +HZSw9nYYk7NVFu/C4JjCKmRYhCVht1LhQUm1oM8XdDX2XgwZAopzafKUWfsmwZDLYJx
 Sy9g==
X-Gm-Message-State: APjAAAWJ7LcDytbkvRN5vgsOJMvxDaSL+d/57E5Bnr97f1kSAWNYK2WO
 q+raeQTb521yiRupY+PNeYtykg==
X-Google-Smtp-Source: APXvYqwlbH5gpr951eimUxOQ0WjoPxxPzPG4e2HyodiuLC/f324WuwSmQX9+g9/uE0UWDZ1iO/uM+g==
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr3852475qtd.7.1559581382312;
 Mon, 03 Jun 2019 10:03:02 -0700 (PDT)
Received: from bill-the-cat
 (cpe-2606-A000-1401-82DE-C135-CAE7-BFCB-5277.dyn6.twc.com.
 [2606:a000:1401:82de:c135:cae7:bfcb:5277])
 by smtp.gmail.com with ESMTPSA id r3sm9470817qte.4.2019.06.03.10.02.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:03:00 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:02:57 -0400
From: Tom Rini <trini@konsulko.com>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: [U-Boot] Distro bootcmd: Re: 5.2-rc1 boot on Unleashed
Message-ID: <20190603170257.GF7705@bill-the-cat>
References: <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
 <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1s0hd5ln.fsf@suse.de>
 <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
 <20190529185951.5rsoozymr32xychb@excalibur.cnev.de>
 <mvmwoi37xlh.fsf@suse.de>
 <8D6E3ACE-7AA9-49F9-BF35-15777E7D47CF@sifive.com>
MIME-Version: 1.0
In-Reply-To: <8D6E3ACE-7AA9-49F9-BF35-15777E7D47CF@sifive.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_100305_951573_3B1BB192 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dany Nativel <dany.nativel@sifive.com>, Andreas Schwab <schwab@suse.de>,
 Palmer Dabbelt <palmer@sifive.com>, u-boot <U-Boot@lists.denx.de>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>,
 Karsten Merker <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7583841607929938166=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============7583841607929938166==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="idY8LE8SD6/8DnRI"
Content-Disposition: inline


--idY8LE8SD6/8DnRI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 03, 2019 at 09:44:28AM -0500, Troy Benjegerdes wrote:
>=20
>=20
> > On Jun 3, 2019, at 5:49 AM, Andreas Schwab <schwab@suse.de> wrote:
> >=20
> > On Mai 29 2019, Karsten Merker <merker@debian.org> wrote:
> >=20
> >> Mainline U-Boot already uses the distro bootcmd environment for
> >> the qemu "virt" machine and it works well.
> >=20
> > The distro_bootcmd doesn't work for the sifive platform yet because it
> > doesn't set the correct MAC address for booting.
> >=20
> > Andreas.
> >=20
>=20
> Before we go an use distro_bootcmd and drag in a bunch of legacy stuff=20
> we really should not be using, can we make some kind of effort to decide
> what the design goals and boot flow should look like instead using the=20
> default legacy behavior of a bunch of hard to read and maintain CPP
> macros?

I feel like you're calling "what everyone agreed on and uses today"
legacy just because it already exists.  It is a bit complex because
devices are so complex, rather than it having to support one-off
situations or similar things people usually call "legacy".

> The first thing I notice is that the default dhcp target is =E2=80=98boot=
=2Escr.uimg=E2=80=99.
>=20
> What good does it do linux distros on RiscV to keep using the old boot
> script format, rather than just load a text file and use =E2=80=98env imp=
ort=E2=80=99? Is there
> some benefit to this? Do we gain something from the .scr format, like
> maybe cryptographic signature support?

Writing things out in script format ends up being more natural (and
easier to understand) than writing things out in environment format.
This is why while I wish the "uEnv.txt" hook had become more popular and
widely used, at this point I also understand why it wasn't.  Doing
a=3Dfoo
b=3Dbar
c=3Dbaz
magic_name=3Ddo this;do that

Was not easier nor more understandable than:
setenv a foo
setenv b bar
setenv c baz
do this; do that

> How do we want to support secure boot into Debian, Fedora, and Suse,
> and does distro_bootcmd have a way to do this, or can we come up with
> some improvement that doesn=E2=80=99t depend on trying to do all the work=
 in
> CPP macros and U-boot runtime scripts?

I think the general answer about "secure boot" is that distros want
"UEFI secure boot".  And I want to make sure that's done in such a way
that things like user-owned secure boot aren't any more difficult than
vendor secured boot.  It seems like making use of existing secure boot
mechanisms has set aside as, well, I don't want to throw snark around
myself, so I'll refrain from speculating.

--=20
Tom

--idY8LE8SD6/8DnRI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJc9VLBAAoJEIf59jXTHXZSER4QAKQ0Zk+rvoM/aovkwsx8aHhD
uik3/R0f1MZ6qYithKQcOFNuTTwnDomByC0og6B616IGq0GDGwJf2m91jGm/ZMtS
mqVu6wK8H2+8f5fhpJdYPoWRdW4qpZCc/uPjPAS11rILQZAzNRCt2NfnEfOVcK+I
vxhpTF5ctOzcXm5VZ6Fsk9CfQDwOD1/Ra4lmFAU2pcannKq7sauv7PMbwvqH4Nqv
gjuCmcWCUIeAbsBKWTdNyLRMe8tcJJiWHW/CV0xbx68S1uDwiCXPc52T3W4pPHNE
VeEuu1j6p4hnkOFubIGL3nB96AbkkjE5sla/Pza9dxLjdoy+wuueSfqBxe7OhG8O
oRY3mdmMYgnIHBqfkQIZ0+zXvZOmBgmxNylwLsD5X8uFRL8wSNiatWboyOKGXSRT
XYl1FLp++TLWuLM+WjUD85YAkZl5AMCcNaTgXavE0vL/YCnmXncb5LFKS5r7Uavb
9DjmIV1zHU0RFKLFZTHqyK8iqPLHtkw8NSf8aMNeDkTJaYQ0Vzf/Iy7lY6Mvgv7Q
tjCRKl8xR4SVuYiouQ2jfVPdhM9gJ3hQWmBaL1sjcHS8F1XNZMVFHDTJ8eANnUN6
PBhSbWToDIas0Q17on2Nz+g4oNPbD0MihTrYDtvmVU8SVA6FJO+lNCPMZgkXppx0
4h7mSorkct0ToeMIInqw
=5arD
-----END PGP SIGNATURE-----

--idY8LE8SD6/8DnRI--


--===============7583841607929938166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============7583841607929938166==--

