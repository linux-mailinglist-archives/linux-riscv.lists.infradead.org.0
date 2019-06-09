Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9533A573
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 14:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBReffpFbUbOvmLpSh4dG+8xiV9JbDoOsYRaAl6Mw2E=; b=ErqWco7zz7FTn9
	dOYL/iZnp8Wed7wQycfjkSDsRMp7twdK2dgeOMo/M0PVpeOeKbYa9yjMSaJIZh2c/HtPfZE11AKvU
	6aG9XfjlDkvcR8CIp3U6QF8dxvhlmKMe1hWL4U1jnFISM9ZXGULTF7GkPYxz972wfk4JRxM8onoPR
	2kaRGXacW0iyX/sn/8k7mvW4pNWzbcJfS52+gJjLRb0WUfMtM1gSdz633VLlLgJRbQ4ADU5DkKmYr
	Qo9FkSVrsNRgSfxuqWU77hC9vQRAT9gWwCbvzz+7zw0QXDdymoyoF05fW+HTwIXAqvKk7kYlYPVnl
	Lro6+l4JxeFguGQWSvag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZwxM-0002kJ-33; Sun, 09 Jun 2019 12:29:52 +0000
Received: from 179.176.115.133.dynamic.adsl.gvt.net.br ([179.176.115.133]
 helo=recife.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZwxI-0002Wx-RD; Sun, 09 Jun 2019 12:29:49 +0000
Date: Sun, 9 Jun 2019 09:29:40 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Heiko Carstens <heiko.carstens@de.ibm.com>
Subject: Re: [PATCH v3 00/33] Convert files to ReST - part 1
Message-ID: <20190609092940.5e34e3b0@recife.lan>
In-Reply-To: <20190609091642.GA3705@osiris>
References: <cover.1560045490.git.mchehab+samsung@kernel.org>
 <20190609091642.GA3705@osiris>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Greentime Hu <green.hu@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Em Sun, 9 Jun 2019 11:16:43 +0200
Heiko Carstens <heiko.carstens@de.ibm.com> escreveu:

> On Sat, Jun 08, 2019 at 11:26:50PM -0300, Mauro Carvalho Chehab wrote:
> > This is the first part of a series I wrote sometime ago where I manually
> > convert lots of files to be properly parsed by Sphinx as ReST files.
> > 
> > As it touches on lot of stuff, this series is based on today's docs-next
> > + linux-next, at tag next-20190607.
> > 
> > I have right now about 85 patches with this undergoing work. That's
> > because I opted to do ~1 patch per converted directory.
> > 
> > That sounds too much to be send on a single round. So, I'm opting to split
> > it on 3 parts. Those patches should probably be good to be merged
> > either by subsystem maintainers or via the docs tree.
> > 
> > I opted to mark new files not included yet to the main index.rst (directly or
> > indirectly ) with the :orphan: tag, in order to avoid adding warnings to the
> > build system. This should be removed after we find a "home" for all
> > the converted files within the new document tree arrangement.
> > 
> > Both this series and  the next parts are on my devel git tree,
> > at:
> > 
> > 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=convert_rst_renames_v4
> > 
> > The final output in html (after all patches I currently have, including 
> > the upcoming series) can be seen at:
> > 
> > 	https://www.infradead.org/~mchehab/rst_conversion/  
> 
> Will there be a web page (e.g. kernel.org), which contains always the
> latest upstream version?

Yes:

	https://www.kernel.org/doc/html/latest/

I guess this one is based on Linus tree.

Jon also maintains a version at:

	https://static.lwn.net/kerneldoc/

I guess that one is based on docs-next branch from the Docs tree.

Btw, if you want to build it for yourself, you could use:

	make htmldocs

If your system doesn't have all dependencies, it will give the
hints about how to install them.

> 
> >   docs: Debugging390.txt: convert table to ascii artwork
> >   docs: s390: convert docs to ReST and rename to *.rst
> >   s390: include/asm/debug.h add kerneldoc markups  
> 
> I can pick these up for s390. Or do you want to send the whole series
> in one go upstream?

Yeah, feel free to pick them via the s390 tree.

Regards,
Mauro

Thanks,
Mauro


Thanks,
Mauro

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
