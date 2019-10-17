Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB67DB919
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 23:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=14jP/AfrEKHlmuGhuAXJM++/jG4Q/VtQTynxoaq7ROQ=; b=mZ42/1ZRFcHKUF5nfSq30qMaY
	yksJoCI1X6p1nLp3EH5bT+f+gmHV/uQzyaIiWpGlXPU9GoQmfk/tH95DvQV6vJWL4pLhJVWsi803A
	HoxmunArm+AftyJuFXmsnOe/dwPzj39hSD58N1MkHvjo7z1VwSR3U5n1fSgLHE06AAMa/ZJNupm2Q
	9h/pzVX/3lCpVGnzQxsxUDT/OtgmFldGknnIf+CXaFgmQVxQjN9Q4VzddF8wfcVmUQElW6DiZjq2K
	sfBCtkeTy1hj2uglUjA7Lcgtd3G3QIqa7as8P7jcYhD50I63aFLF8lIZjQ+YYNLPRROm/gU0uCzJp
	iwu5HYKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLDRq-0005TP-Uy; Thu, 17 Oct 2019 21:36:42 +0000
Received: from mail.sf-mail.de ([2a01:4f8:1c17:6fae:616d:6c69:616d:6c69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLDRL-00054s-DN
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 21:36:14 +0000
Received: (qmail 27079 invoked from network); 17 Oct 2019 21:31:57 -0000
Received: from dslb-088-070-126-123.088.070.pools.vodafone-ip.de
 ([::ffff:88.70.126.123]:55060 HELO daneel.sf-tec.de) (auth=eike@sf-mail.de)
 by mail.sf-mail.de (Qsmtpd 0.36dev) with (DHE-RSA-AES256-GCM-SHA384 encrypted)
 ESMTPSA for <hch@lst.de>; Thu, 17 Oct 2019 23:31:57 +0200
From: Rolf Eike Beer <eike-kernel@sf-tec.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 07/21] parisc: remove __ioremap
Date: Thu, 17 Oct 2019 23:35:42 +0200
Message-ID: <1650819.dOKmve5HLd@daneel.sf-tec.de>
In-Reply-To: <20191017174554.29840-8-hch@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
 <20191017174554.29840-8-hch@lst.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_143611_781447_DD08811B 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============8585867285157431190=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--===============8585867285157431190==
Content-Type: multipart/signed; boundary="nextPart3002460.JnYtLPdinj"; micalg="pgp-sha1"; protocol="application/pgp-signature"

--nextPart3002460.JnYtLPdinj
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Christoph Hellwig wrote:
> __ioremap is always called with the _PAGE_NO_CACHE, so fold the whole
> thing and rename it to ioremap.  This allows allows to remove the
                                        ^^^^^^^^^^^^^
> special EISA quirk to force _PAGE_NO_CACHE.

Eike
--nextPart3002460.JnYtLPdinj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSaYVDeqwKa3fTXNeNcpIk+abn8TgUCXajergAKCRBcpIk+abn8
TkOlAJ46117xxLoFzZCiYYebEyVSrw/31gCeMRBoULeYp+iYijM534mn8tCGYHM=
=d3J8
-----END PGP SIGNATURE-----

--nextPart3002460.JnYtLPdinj--





--===============8585867285157431190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============8585867285157431190==--




