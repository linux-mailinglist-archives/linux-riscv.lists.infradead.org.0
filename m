Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE531BE08B
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 16:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ikRp1jMR1EzFxoc+o3VOCA2gMw8FZkS2U5Oi/2AUBbY=; b=nwUBsLqnBfehNoqAxyKtVXqIW
	Ai5ZKhafIQB2SNGLN8IPlVy03ZFOJDK2OMFUqTrF3TJC9WIff1phE71hWMIXNHYaZFU0CxC04JUvh
	1WnCy0y7CSlKHYI5v1jzBbkdo64U3wFfsEm3fIkuWxuAMJFz+prw0j8ob9JKtWiBcgDkpycmSUknu
	RpwThCOTOZebVEBVacwQBymjK5eeZD3oX7fSYwRqN09AZKgxoHrBuAzvrUuGasO1kEceKj7TGG9a7
	3ubBv+n+xC3SK0+XRypmKJx+Mbv8AOcusYae0YBelYtP5MhEuQ+W5/+cNKQLohKc9l9oTWiQTmUxy
	rDj3xcvGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnWW-0001a5-0s; Wed, 29 Apr 2020 14:17:16 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTnWM-0001Yh-RC; Wed, 29 Apr 2020 14:17:06 +0000
Date: Wed, 29 Apr 2020 07:17:06 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 16/20] mm: remove early_pfn_in_nid() and
 CONFIG_NODES_SPAN_OTHER_NODES
Message-ID: <20200429141706.GA25142@infradead.org>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-17-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200429121126.17989-17-rppt@kernel.org>
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, x86@kernel.org,
 Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Ley Foon Tan <ley.foon.tan@intel.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Baoquan He <bhe@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-hexagon@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-sh@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Nick Hu <nickhu@andestech.com>, linux-um@lists.infradead.org,
 linux-mips@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 linux-m68k@lists.linux-m68k.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Qian Cai <cai@lca.pw>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-parisc@vger.kernel.org, linux-mm@kvack.org,
 Vineet Gupta <vgupta@synopsys.com>, Brian Cain <bcain@codeaurora.org>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:11:22PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The commit f47ac088c406 ("mm: memmap_init: iterate over memblock regions
> rather that check each PFN") made early_pfn_in_nid() obsolete and since
> CONFIG_NODES_SPAN_OTHER_NODES is only used to pick a stub or a real
> implementation of early_pfn_in_nid() it is also not needed anymore.

I don't think you can quote a commit id for something that hasn't been
commited to mainline yet.  Then again I would have just merged this
patch into the one that obsoleted early_pfn_in_nid anyway.

