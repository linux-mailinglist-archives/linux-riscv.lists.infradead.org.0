Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77343391E
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 21:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GOd2rlpijZujiBhv2HQsprH5JF5T3hJVPfVDJ+0wyoQ=; b=tCGi71N4XazXxYEQoQRpl5drn
	Hdk/UEZHgrQSldP80O6eu0oEImCOv1E0o0AmQk8gTrghmJ59ggQFMGzfzhvafovCKXAppN40nljSL
	0FVhjU2mUUTedzfNYswj/bawOCuSb/nySCqN9RMaLL7b23MxzP2Is16Xhwd1Gp4vopWTlShg/L8mT
	HqFcRGNtCVt8Bdi16ouHDD0Vj3eFJEF/eBxH/HLX9mUSINE1fCbtPKCLx4hjRNHQ6DMhH8m/o7w0t
	UsQD6zd6pp3eHd6QEuWF516HRitDKa6gKJQGfQTnf2i4+UHUxXNsAeyLHjRv4tD18nAsofN82Pogj
	0tG0H3QlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXshW-0005B9-4x; Mon, 03 Jun 2019 19:32:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXshS-0005Ak-Kl
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 19:32:56 +0000
Received: by mail-qt1-x843.google.com with SMTP id s15so10846358qtk.9
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 12:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=D8sJDUQeg/3BaI/UMXdmHu5hRw/iubnoLcxpOsW5D3Q=;
 b=La6ww2uATNoN7yrItM7txxX8Apw8fdYxyXdRNQ7rNfSBKh3HMPNJaptKjPo5jwzrO5
 h8B1eAU3cy7Aqcsx94HIDlUJGD2/CbA0MOMADoBCou3ZcaKhqld0xjGCC1GnyDyMs3Pm
 HvgNUezmZe6CbdB3oe9O3Z7MvSusdTjm/jziM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D8sJDUQeg/3BaI/UMXdmHu5hRw/iubnoLcxpOsW5D3Q=;
 b=GHKoYlzwL/qzj4qg+v8bI6ZXqsEmJi3/w1627ngDSi9bxXt/cwmcyvd53LV5B61Xga
 8+BBD25hJXFxFUpNAFDZ0pLT3QOb2rG3O00rg2vRBAvxTgBuH6pUsMlsxovMBbxLPxkF
 UhbrtpCBQ3sIujk2cpmSxvOn9M/Q+Li1lhO8dRs+4FFwiJdFdkyrvF6Iw6ErR5r1+rBk
 qbsrWD8V1C+XxqC0YxE7r4tiHN5kYSw4eOqNFxtrhl6fNkHUOMzCko4RLuAwrtRQpoJ8
 XRyjm7VSKTwfZd0zGvnyqoG/zOth7NOSDbCHM9D4Oo02YTSdTIXi/1LduATxE/dGsgL7
 r79w==
X-Gm-Message-State: APjAAAUEdtc/Fh8MFG5us2JmwWMzGYlLcgwB7Ru4G+1BMDvU2l2VO843
 1eSYfNZradMglou8uIj6IrflLw==
X-Google-Smtp-Source: APXvYqw3j4fbLGKL7VWoTorQOM0R2j2OmD0W3d8tQwTkN0H5H4NHvt7asZJeGwXpDkQBLFRIJL67LQ==
X-Received: by 2002:a0c:871d:: with SMTP id 29mr9556690qvh.28.1559590373108;
 Mon, 03 Jun 2019 12:32:53 -0700 (PDT)
Received: from bill-the-cat
 (cpe-2606-A000-1401-82DE-C135-CAE7-BFCB-5277.dyn6.twc.com.
 [2606:a000:1401:82de:c135:cae7:bfcb:5277])
 by smtp.gmail.com with ESMTPSA id s35sm9412390qth.79.2019.06.03.12.32.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 12:32:51 -0700 (PDT)
Date: Mon, 3 Jun 2019 15:32:49 -0400
From: Tom Rini <trini@konsulko.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [U-Boot] Distro bootcmd: Re: 5.2-rc1 boot on Unleashed
Message-ID: <20190603193249.GJ7705@bill-the-cat>
References: <20190603170257.GF7705@bill-the-cat>
 <mhng-8c636590-653b-4675-a4a3-94d2f2950ea0@palmer-si-x1e>
MIME-Version: 1.0
In-Reply-To: <mhng-8c636590-653b-4675-a4a3-94d2f2950ea0@palmer-si-x1e>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_123254_744236_8853BEA4 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
Cc: Dany Nativel <dany.nativel@sifive.com>, schwab@suse.de,
 U-Boot@lists.denx.de, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 linux-riscv@lists.infradead.org, merker@debian.org
Content-Type: multipart/mixed; boundary="===============2349153064629946474=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============2349153064629946474==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IbVRjBtIbJdbeK1C"
Content-Disposition: inline


--IbVRjBtIbJdbeK1C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 03, 2019 at 12:17:43PM -0700, Palmer Dabbelt wrote:
> On Mon, 03 Jun 2019 10:02:57 PDT (-0700), trini@konsulko.com wrote:
> >On Mon, Jun 03, 2019 at 09:44:28AM -0500, Troy Benjegerdes wrote:
> >>
> >>
> >>> On Jun 3, 2019, at 5:49 AM, Andreas Schwab <schwab@suse.de> wrote:
> >>> > On Mai 29 2019, Karsten Merker <merker@debian.org> wrote:
> >>> >> Mainline U-Boot already uses the distro bootcmd environment for
> >>>> the qemu "virt" machine and it works well.
> >>> > The distro_bootcmd doesn't work for the sifive platform yet because
> >>it
> >>> doesn't set the correct MAC address for booting.
> >>> > Andreas.
> >>>
> >>
> >>Before we go an use distro_bootcmd and drag in a bunch of legacy stuff
> >>we really should not be using, can we make some kind of effort to decide
> >>what the design goals and boot flow should look like instead using the
> >>default legacy behavior of a bunch of hard to read and maintain CPP
> >>macros?
> >
> >I feel like you're calling "what everyone agreed on and uses today"
> >legacy just because it already exists.  It is a bit complex because
> >devices are so complex, rather than it having to support one-off
> >situations or similar things people usually call "legacy".
>=20
> The goal in RISC-V land is to avoid inventing our own stuff, particularly=
 when
> there's an agreed upon way of doing things.  As far as I can tell the use=
rs
> (ie, distros) all want this distro_bootcmd stuff because it's what already
> works in ARM land.  While I'm not really a bootloader guy, the general
> arguments in favor of distro_bootcmd appaer to be "we tried it some other=
 ways
> and that was a mess, but this way works".  That is a really strong argume=
nt to
> me.

Right.  While I'm sure there's room for improvement, the distro_bootcmd
stuff was borne out of working with the distro folks to get what was
needed so they could Just Install on whatever SBC the user had.

And the EBBR spec (which in turn, roughly, is a subset of UEFI) intends
to make that more formal still.

As long as we can avoid <long list of problems I've personally had doing
things on x86_64> I think that's a good thing, overall.

--=20
Tom

--IbVRjBtIbJdbeK1C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJc9XXhAAoJEIf59jXTHXZSyOUP/1Nm8okRO+lTsSJyc82rq3i4
vIzYdCLgXPhye+TjVEYOE7oEoznOFzbY6eckOgw/txak1U2hKGA2NDHh5ZB+5L7+
XwYw+7TjDH8bCx+FvUkMbi3IRMLUBE/Cl5IVunkDhS6ijV65b5DSJy6Si1keeFK8
jmSrnVOr05xk4kWQFzut0OW/pPSeByWFnGIKyILGOlgI1CyiLYv9t73E2n+NlWR3
RvEmiaDdcdbfMFX1cyZllPqRYWiMyNYG1XgXWp6XTsWbtum7UhO6XdxdwfJMtH66
4O8xLuYoIEtpvFL/fmWE0qRp00AsTHUzLs1r9h4Odr59PdntlLg/uSmMscY1tLxB
Cua2FpF2wxaEtnLbfHpY+S94VrTFKJK7jpV+5eM0hTOJf6LUpvu8C0d38OU7jBuF
PnwC/GO5ZfPmrtvOJHz3JTMiVE7BuONcIYnbUH6T933KJl/exITLsAlWSNbTF24p
TDVcseHEKd4yDLgxrYBa+yHADRnXqbI4Co/NxjptWRuMXBr6gHbmyCcCxAurPeTE
7n2BQItyKSCiRd1Ro0rrG0j+7ccIQZIcwgsrca3IDhpKh86fTGHYcZxOYkBHV6Pa
h67orEXESm+hlsrO5X+DbyrIssYcLhaP55IXVRhx5T8KcCBv1OCgL2TIb3kORV2P
pUIr2tfBvILVrQZv7FIg
=hSo9
-----END PGP SIGNATURE-----

--IbVRjBtIbJdbeK1C--


--===============2349153064629946474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============2349153064629946474==--

