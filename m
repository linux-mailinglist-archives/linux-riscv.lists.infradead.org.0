Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2CC46B69
	for <lists+linux-riscv@lfdr.de>; Fri, 14 Jun 2019 22:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dcI5XDnZd0FFuQhvGgrKJ3sVQWAKjlH9meIpPt6v35M=; b=jgcfxYX6kSOqAvry6QArvyycv
	xpvNfDAqC2eBoFCoCMjRP52mV4rv0E5y842wY6J4sjro/SQoW0Bjtce+vg4nYcVmLXSzPibzup5HN
	ZR0hVz6NLgWaBvDVKbesWCzeDRz08l+9AAScekSZkOBagVk9SUj3bRX6fC2nGSFTB1XfU/N/3ZvGO
	qSjgoYdZRBzwbG62HX0uLqOdkChLyo7t/SFpTTlaKUAdt6AeltfhgKgSpWQjg+JzAXk1mP+NBA6b0
	MJ3kxJ2C0TPF+fz3cWoXHddpMDB7DGxa4BwBBY1GfgvlXbvVeJIrj+Uqgpb4WP89TkpCjJchrasVM
	7+lYBJOxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtHh-0001TK-TL; Fri, 14 Jun 2019 20:58:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtHe-0001QL-Nn
 for linux-riscv@lists.infradead.org; Fri, 14 Jun 2019 20:58:52 +0000
Received: from localhost (p5486CF81.dip0.t-ipconnect.de [84.134.207.129])
 by pokefinder.org (Postfix) with ESMTPSA id 0EC2E4A12F7;
 Fri, 14 Jun 2019 22:58:50 +0200 (CEST)
Date: Fri, 14 Jun 2019 22:58:49 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH REPOST v8 3/3] i2c-ocores: sifive: add polling mode
 workaround for FU540-C000 SoC.
Message-ID: <20190614205849.GE17899@ninjato>
References: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
 <1559369475-15374-4-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
In-Reply-To: <1559369475-15374-4-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_135850_941926_353E397F 
X-CRM114-Status: UNSURE (   8.00  )
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, peter@korsgaard.com,
 devicetree@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6687188286852050240=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============6687188286852050240==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ffoCPvUAPMgSXi6H"
Content-Disposition: inline


--ffoCPvUAPMgSXi6H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 01, 2019 at 11:41:15AM +0530, Sagar Shrikant Kadam wrote:
> The i2c-ocore driver already has a polling mode interface.But it needs
> a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> There is an erratum in FU540 chip that prevents interrupt driven i2c
> transfers from working, and also the I2C controller's interrupt bit
> cannot be cleared if set, due to this the existing i2c polling mode
> interface added in mainline earlier doesn't work, and CPU stall's
> infinitely, when-ever i2c transfer is initiated.
>=20
> Ref:
> 	commit dd7dbf0eb090 ("i2c: ocores: refactor setup for polling")
>=20
> The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> FU540-COOO SoC.
>=20
> The polling function identifies a SiFive device based on the device node
> and enables the workaround.
>=20
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Applied to for-next, thanks!


--ffoCPvUAPMgSXi6H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0ECokACgkQFA3kzBSg
KbYR0hAAk0+oxNuosxpSqRdd+ybkY+5wQ4XEOSZddRvI05A8Q94hlKrrGbuZVXrf
NRg2i6cA1Zdvdvcheg0AVYY/1h9yfC+Vi8paSeXOiOq/D1o+GK4fCQnR8CONTqkD
8qHWFmqYInEeVbAxNoo7rInrlS47HavEvrOGg2Qpkmljz0kDqUZrGhgY9eaQ8mOH
8xMRooOzMniLx9uFVE+KmmOkaBetmoCJERVdnmKWqabV3r9sJs0Wvdhmrxjrdxhl
dA56SfVMhpg+JoGiApkvUOhjTAQQabEVmSbtQuxCAb9gwQHV7gV3pYQqoalp08cg
xLJNjGntX+kvtUcc7y1qa1HTKKPIBEk3Vsr3j8Toy8CKMI1uU4NI6FzZZ6Cl+lfU
fwoiIZYqOBeCNOpQlZYYdqsWTcmMzfIQuIghSl2RWl1ak7PSrBPG+ZXtzf7/E9CC
nTDLbMoe7LnYVjBt517jZCAtlrDfr02QmoGTIcFQFEsovI3m+/1F+eu2rXxbEEhM
L1/Eo6iX6hFGyCwyEnyxEGdEohH7IYyiMk17VCPGQRvk4YX0TRHPJntOHYPPhoWR
sxdkqyj8WgsdkhH+ZnGb2x48ArHw1wdayiZ0qE67Hht7zj2oBVxDaKHaVxzlv/lW
9RcwLLMTjYQrpZIiCiERDVBwK3usDOs3LbodTC7g4Tp1uQ9aYZ8=
=c6hW
-----END PGP SIGNATURE-----

--ffoCPvUAPMgSXi6H--


--===============6687188286852050240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============6687188286852050240==--

