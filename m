Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AF727ED5
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 15:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=14orFNn34+DrAYmO/HCesS1dYaz+QRdMORMbNNQu8JI=; b=AQgFKJ4L95XsetyFxqNOVgCOa
	Wxaa65jEaojBTRL15JYuv3LXgHiDFG0F0R4h5C3NTK0FNoneHnPPmTCZgOb2Sp68LdoytkKyzmXk1
	56Nqo1uDB/HPYUwYqpKbN4RA0dbmWDcEAUsBd/5Pm7+K/AukD1sg2cp6V0Kw8K5Hj2rYbSIUgpb1Y
	E4EDfjMdbGD6fK3QxKeECawZ92wF225PrN0P5TjxGv0qFtD5K1TfLkCR5vbJ5Mbu50NDmNBXaATJq
	HSm5o9V8/LsJKvGPwIiELhprc8UqExUBYsiPb8wJuksz0FZY2RArWyirDh8a2wLm7c5ANMmtJhFyE
	Fx/bK6Rsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToAQ-0002TW-8r; Thu, 23 May 2019 13:53:58 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToAM-0002Sn-PU
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 13:53:56 +0000
Received: from localhost (p54B333B6.dip0.t-ipconnect.de [84.179.51.182])
 by pokefinder.org (Postfix) with ESMTPSA id 90F8E2C0398;
 Thu, 23 May 2019 15:53:50 +0200 (CEST)
Date: Thu, 23 May 2019 15:53:50 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Sagar Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v7 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
Message-ID: <20190523135350.GA4985@kunai>
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
 <1558515574-11155-4-git-send-email-sagar.kadam@sifive.com>
 <20190522194529.GJ7281@lunn.ch>
 <CAARK3HmMVibudG2CFLBoMSAqnraXyirTL6CXYo1T_XJEuGJy7Q@mail.gmail.com>
 <20190523123435.GA15531@lunn.ch>
 <CAARK3H=BPT3aGUGiQvov5aqFRNVTSeyqJ-bNGw6uEoU7c8iiJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAARK3H=BPT3aGUGiQvov5aqFRNVTSeyqJ-bNGw6uEoU7c8iiJg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_065354_975683_5A8CD8F3 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 peter@korsgaard.com, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2815766488441076821=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============2815766488441076821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Ok, Great. Do we need to write to him about this patchset?

Nope. Hint: You can dig in the mail archives studying older patches to
see how things work. I do this as well because things may work
differently per subsystem.


--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzmpeYACgkQFA3kzBSg
KbZ50xAAimynxr0PJx8ptAPr43eEclJl1OQihcsB1bfsNnwPm0VKds2AQLP2dYHC
BISTG9B+IPj/7E9E/1D8UnmP1KQU9sYaZUS7HFnx1sSowG3Uy0ppnfhEDphLb34q
Upt3domZHzvBwz2uDM4dI0RCUtB0wM+bGDqYp0PA9XL82KUCLdDOD4mEkwb8GrYd
HKbij71iHnHZymVM1ESn2hp0t9dYOGw8JnPE1SXk2CxjVRJrguLKMR9AMZjhS/eJ
ASDTDStxqRl60v6HrMYgHZEfACZcx42627191pHOp+e12aftKm3jArMyN9oWMLZM
W5tdlvcYHk9zWtBOm9ICQLoUENdzZE0/p4xPqjCvYlWJ8a+RPKdgAYq9jQ8u32qF
VsABTkJV3wMV+LfQxPY9lZ/8VVtfAIzxsFcCb3Z8eRFxXqXm+snIZ36Cd5MCKMXq
iVh/VNvVCfku76W6wcHH0wZwoBacDjkv+it4bR5zVoEOXpgXuw45rzzNroNssxQ9
ITj5IcJh1xQ3CyqxoTCNqLHbznNgdN5cG6ZXVP5P3badfY134i1C7plwLSG4EhMr
qE6pgVZxp/cCpvAKxfq6hbz8XqKmmRDT14ENK9h3uBK2n7nwlm4MhBXpFBzSbJM6
qe2KzVv56JSG61v1tjAFjGgVb7lsGQzlNV+eNsMXeZzZBLbM4Mk=
=171K
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--


--===============2815766488441076821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============2815766488441076821==--

