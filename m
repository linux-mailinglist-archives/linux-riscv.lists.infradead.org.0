Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEF9A85BB
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 16:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uTVw2tQmgTPJEwBcSkyzkXpcQ2Djhy4mEpVm+a7y9a4=; b=jtljLpm6qP9Yz6M94Og9Frjh4
	S8Shae5uJ8Zmhl6wIUN1uK8HBYC5sgYGkk5Lkob5iIJHHuOilvUfLGjHjDL9swv/pVEoUIcJeexzC
	7r7qxPFHSwaZZClbOMmKQWQckMcXtgC7H1ZJti8AB7AZTTNPQ3ZnDEmpV3REtjloYdl6OMGYz+eJm
	OumQ6g6ZF29wkUmM5xzqPlnWYArlya7Af+FS9sCxT86ZEm+5Q0gw8daY541IgnWnv1Cmn/FcWUh3O
	L0TIDGAF8VEq1Aa2/ayoCCZW3UWP9tFQEqoGJOloBEYYKWHeWMIdw7eMrH5H0cuPCxkeyzhxZ/jNE
	1in14m6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WS9-0002Jl-Ng; Wed, 04 Sep 2019 14:40:09 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WRq-0001mC-1P; Wed, 04 Sep 2019 14:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=enb3Eyheh3ZkU2pw9T92ijFf5m2SU7dyW+9oN6nQ2aA=; b=oFA8lI/2MLZSL2jMQKCUNOcfF
 XetrvE8ySqtCDsZTPH+9NN/zpPSxY/TG1S4OO0GDQuWpfHDUZ/zfuWQ8LYe+pkAA+xR4ctz09hSK/
 +Y1eyPRBsTFTPh57qabVYjBQtU5LTICbC4jCLu9gOx4ChEN4/1Z8TB07anBun9+khziVg=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5WRV-00066D-LZ; Wed, 04 Sep 2019 14:39:29 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BD1A82742B45; Wed,  4 Sep 2019 15:39:28 +0100 (BST)
Date: Wed, 4 Sep 2019 15:39:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904143928.GB4348@sirena.co.uk>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
 <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
X-Cookie: Help fight continental drift.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_073950_104491_65EE9511 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, f.fainelli@gmail.com, benjaminfair@google.com,
 shc_work@mail.ru, khilman@baylibre.com, openbmc@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, michal.simek@xilinx.com,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andi Shyti <andi@etezian.org>, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 paul.walmsley@sifive.com, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 baohua@kernel.org, sbranden@broadcom.com, yamada.masahiro@socionext.com,
 avifishman70@gmail.com, venture@google.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, thierry.reding@gmail.com, wahrenst@gmx.net,
 kernel@pengutronix.de, kgene@kernel.org, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============7841476057757753257=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============7841476057757753257==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GID0FwUMdk1T2AWN"
Content-Disposition: inline


--GID0FwUMdk1T2AWN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 04, 2019 at 04:28:29PM +0200, Krzysztof Kozlowski wrote:
> On Wed, 4 Sep 2019 at 16:00, YueHaibing <yuehaibing@huawei.com> wrote:

> > Reported-by: Hulk Robot <hulkci@huawei.com>

> This tag does not look real... First of all where is the report?
> Second, it was reported by coccinelle.
> Reported-by should be use to give real credits.

I think it's reasonable, it's giving credit to the automated system
they've got running coccinelle (which they do mention in their commit
logs).  It doesn't really hurt anyone and lets people see their system
is finding stuff.

--GID0FwUMdk1T2AWN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1vzJ8ACgkQJNaLcl1U
h9C55Qf9ElRCnBTb/SuDEmM1YeY2Tw9dAMV0y2jsYTl6UYAcJqOg3iMhAjCNbAVd
K59JgRS+lKB/HrEidQ3L3QfwZfOPhtyOEY5BmhZekABU6SI9ggg6VPIg8jqkOFQw
8poyZkiuaDhdrDn5rfdOSLpAQ7wls/djlfQ+zeoD0EdoiF5dtadKphhA1dT5NuvV
szO9xfucbd5yuUBQuUPW3M5tTkXlfyN86C8I1NkgZ26Ozrz5IYHrr+Tmp8++LBUs
GheNNGndIR/W/3pgCevW340G3aEqQ0G34v9pk1/HOWYuwVS2S1jhaSl77YTk1wZ5
jDsHN8NDORkPvAnmKmyFVlA1Z3W17A==
=5oz7
-----END PGP SIGNATURE-----

--GID0FwUMdk1T2AWN--


--===============7841476057757753257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============7841476057757753257==--

