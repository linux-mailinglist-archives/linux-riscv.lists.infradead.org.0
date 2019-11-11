Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82342F71B5
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxtS0bNIJFFRKGwY14YC6eg7ZCtqDc7z+JwfkYlN70c=; b=FJ+scLcjCf7nOF
	AJOSJwNQRdOAUsWzm4bZdC2A88ZL7EH5dHrBJxjRl/9/8R5T7syX2aRvIJGRK+2pvv7B2KDaDnp9Z
	hyh0LR7aRzD3VEx4IfQ0HuiOttLOAxti5HEGtrI/9FHmfOvML5nFzMfX6BpgROD/nY07ADWFcjmGu
	P6haSlXMEXe6HMXFCDagY/xGd9RbFIdRWb4nXDaMoESHSqxvkuiH1yJPSk4mBgR5YKJs+d0TlYY0b
	X28iWAxu0RTon1XjI9qdUhTBPnwUu8AoS42urEY8VGu4cV+2E0U2Tvdp9jH54uhj43IUkCPezEJ11
	CjJTTa6pTTQ3AU3cCGmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6js-0008PO-B7; Mon, 11 Nov 2019 10:16:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6jO-0007w5-JL; Mon, 11 Nov 2019 10:15:35 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8B1EE68BE1; Mon, 11 Nov 2019 11:15:31 +0100 (CET)
Date: Mon, 11 Nov 2019 11:15:31 +0100
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 10/21] asm-generic: ioremap_uc should behave the same
 with and without MMU
Message-ID: <20191111101531.GA12294@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-11-hch@lst.de>
 <CAK8P3a2o4R+E2hTrHrmNy7K1ki3_98aWE5a-fjkQ_NWW=xd_gQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2o4R+E2hTrHrmNy7K1ki3_98aWE5a-fjkQ_NWW=xd_gQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_021534_784127_CBD7C181 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 linux-xtensa@linux-xtensa.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 linux-mips@vger.kernel.org, alpha <linux-alpha@vger.kernel.org>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 11:09:05AM +0100, Arnd Bergmann wrote:
> Maybe we could move the definition into the atyfb driver itself?
> 
> As I understand it, the difference between ioremap()/ioremap_nocache()
> and ioremap_uc() only exists on pre-PAT x86-32 systems (i.e. 486, P5,
> Ppro, PII, K6, VIA C3), while on more modern systems (all non-x86,
> PentiumIII, Athlon, VIA C7)  those three are meant to be synonyms
> anyway.

That's not how I understood it.  Based on the code and the UC-
explanation ioremap_uc always overrides the MTRR, which can still
be present on more modern x86 systems.  In fact I remember a patch
floating around very recently adding another ioremap_uc caller in
some Atom platform device driver that works around buggy MTRR
tables.  Also this series actually adds a new override and a few
callers for ia64 platform code, which works very similar to x86
based on the comments in the code.  That being said I'm not sure
the callers in ia64 are really required, but it was the safest thing
to do as part of this cleanup.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
