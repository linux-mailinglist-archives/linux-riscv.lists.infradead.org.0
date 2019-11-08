Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5845F3F10
	for <lists+linux-riscv@lfdr.de>; Fri,  8 Nov 2019 05:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vT6ki39Xb1wozRpFa8uR1QHUEr+e55dVQufQ4aOh4Wg=; b=kJJdY7ce3CRqCpD3vA54axmRB
	6Dq7JT7IaecrNCkj05WTtIuew1exRlm8aBr+c3HN383gFpwtaKJcPxqN1MiL2O1baLjR8WSiNyqfN
	wKLiD0xFkwtFO+G3MtJCKzP1iJa+Y83YaTNvHYS0gyuX30sffiajSlB0N1Cojl3vEnjHE7fcx0arl
	m/KdveW5ZEcXHs6yfdrp0vluQshjNlUnrqRAPiRejUg/9vy/MvqXL4BADJyCWfzDJjkYKAZaiB3O4
	XSVw8SR0rlQrcoPI/lB1Vwa2o+779/XHZRVQMkB9RLgrKDNml7YvX4Xq8xJwMuHaucBfEavFAPnnl
	K0BpU0Xjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwH0-0000N7-Dm; Fri, 08 Nov 2019 04:53:26 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwGc-0008PN-JB; Fri, 08 Nov 2019 04:53:04 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 478SZB0Shjz9s7T;
 Fri,  8 Nov 2019 15:52:50 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1573188777;
 bh=lsTl8lWOKmxCnD0se991UB82l6huuBGMFOozceyJHpc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Aga5bP62YWYX6iNtz585PAG4ScKlPSlTrEjqwE3ki+YzY7ybieoqKfiAYYHN3ZWFB
 dgeiWeIzKbrAc1LjDEbqb+7n6BKo8ZoNAEGb/GpuSMY/qWGblDc3ftTHDFdi/3SYk7
 f1uv5aZrwD6T5U/U9em7j4VZ9CxAvSzmWzmiTf/WhUxI4t1uwco2iMnRw+QceM6uTZ
 tLRh0cdl4StpJ6QyKwe/vbR2oz7U5o4mUFwxyUqRMMEe92kUlQJVrFAdfZZd5xU9JS
 ZYhkfWeXPzcZdut4sV7iiXkFFIh/Y1JyCFSYtdaVfsbRy5iI42riGD6QP401UVoRGe
 p7+WJZ1Mo/MGA==
Date: Fri, 8 Nov 2019 15:52:48 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: generic-iomap tree for linux-next
Message-ID: <20191108155248.0a32a03a@canb.auug.org.au>
In-Reply-To: <20191108132000.3e7bd5b8@canb.auug.org.au>
References: <20191029064834.23438-1-hch@lst.de> <20191107204743.GA22863@lst.de>
 <20191108132000.3e7bd5b8@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_205302_832564_D2C24B18 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: multipart/mixed; boundary="===============8187709496846521406=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--===============8187709496846521406==
Content-Type: multipart/signed; boundary="Sig_/tVtmaodFaJa/ooywirx=fo/";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/tVtmaodFaJa/ooywirx=fo/
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Christoph,

On Fri, 8 Nov 2019 13:20:00 +1100 Stephen Rothwell <sfr@canb.auug.org.au> w=
rote:
>
> On Thu, 7 Nov 2019 21:47:43 +0100 Christoph Hellwig <hch@lst.de> wrote:
> >
> > can you add the generic-ioremap tree:
> >=20
> >    git://git.infradead.org/users/hch/ioremap.git
> >=20
> > to linux-next?  =20
>=20
> I assume you mean the for-next branch?

With that assumption, added from today.

Thanks for adding your subsystem tree as a participant of linux-next.  As
you may know, this is not a judgement of your code.  The purpose of
linux-next is for integration testing and to lower the impact of
conflicts between subsystems in the next merge window.=20

You will need to ensure that the patches/commits in your tree/series have
been:
     * submitted under GPL v2 (or later) and include the Contributor's
        Signed-off-by,
     * posted to the relevant mailing list,
     * reviewed by you (or another maintainer of your subsystem tree),
     * successfully unit tested, and=20
     * destined for the current or next Linux merge window.

Basically, this should be just what you would send to Linus (or ask him
to fetch).  It is allowed to be rebased if you deem it necessary.

--=20
Cheers,
Stephen Rothwell=20
sfr@canb.auug.org.au

--Sig_/tVtmaodFaJa/ooywirx=fo/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3E9KAACgkQAVBC80lX
0GzmWwf+Klgi0tTyTa+t0RWIsOgTgCRRshcd2R+zC2TAQiqpOvNWxiNkHSOO6rPt
AIwk9/iB+0v8JHEaYe+JqqmAtlRJjfMKtLkGBCB8WLQ/Sw+V+BW+2kZfZbMDL47C
Q2NA/MqqCVxs38kWlJA+gd3xF1FJLjYYuHlhaksjzlHUVGVcCxeXRrd521DYPcwm
9ZzSoL0488rxdiISFluZ44y3nKSgX3Ye5J4DnymJod7hsctYKZvWL+GxoizD+i6m
HgzcYw5CxoMeQcS9WgBNCafeABW7i7w3jfCsmBjTNWCuUkE+Pruoct6C6G6Q5LqS
jgJAqa5QBfJCS5OsMXSaf1cZapFTkQ==
=R1aO
-----END PGP SIGNATURE-----

--Sig_/tVtmaodFaJa/ooywirx=fo/--


--===============8187709496846521406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============8187709496846521406==--

