Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF941BBB5
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 19:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOoQNq2uEmRo/GRvzUHnsL4s2/pkVc9dTJW2EIXLu00=; b=YQUa5+H97vgqIj
	b0ap5aUtGg/nVqHJINHxtGV3NC2lFZrTywAkwFmzHWJ2g8n0X+ajmxqjudHN9QEjxO5RHaLDwiq1M
	AsjHmOSIPX2et3FcoSCeg1+YxPoSPnb9J5Sap4Y+y0J0/ThAWH0Zjk9zLWDYuSPayPOYyCIKTMWmi
	12BhTr0t/gcK0N2DxppqTtfBar0pvrzkKAorKel1XHj9ZiYWuCTxhU2PJbH7VMIW3LTzA1M5/POB9
	yXvyMxWYpqDgMV0/VJzpF8uuR7jOy7FPBMGDDYh3ECvL2H23exH/ZuSBXKXgeeTYFxjKPOTFuxp7t
	QDDqfONt2XrGRoc9Q98w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEcc-0003S9-0B; Mon, 13 May 2019 17:20:18 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEcZ-0003Qs-L1
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 17:20:16 +0000
Received: (qmail 5770 invoked by uid 1019); 13 May 2019 17:20:13 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 13 May 2019 17:20:13 -0000
Date: Mon, 13 May 2019 17:20:13 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] s390: move arch/s390/defconfig to
 arch/s390/configs/defconfig
In-Reply-To: <20190513021116.12191-1-yamada.masahiro@socionext.com>
Message-ID: <alpine.DEB.2.21.999.1905131719430.5613@utopia.booyaka.com>
References: <20190513021116.12191-1-yamada.masahiro@socionext.com>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_102015_772815_2BCCF30A 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-s390@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 May 2019, Masahiro Yamada wrote:

> As of Linux 5.1, alpha and s390 are the last architectures that
> have defconfig in arch/*/ instead of arch/*/configs/.
> 
>   $ find arch -name defconfig | sort
>   arch/alpha/defconfig
>   arch/arm64/configs/defconfig
>   arch/csky/configs/defconfig
>   arch/nds32/configs/defconfig
>   arch/riscv/configs/defconfig
>   arch/s390/defconfig
> 
> The arch/$(ARCH)/defconfig is the hard-coded default in Kconfig,
> and I want to deprecate it after evacuating the remaining defconfig
> into the standard location, arch/*/configs/.
> 
> Define KBUILD_DEFCONFIG like other architectures, and move defconfig
> into the configs/ subdirectory.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Reviewed-by: Paul Walmsley <paul@pwsan.com>

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
