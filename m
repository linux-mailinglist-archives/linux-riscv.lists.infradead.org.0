Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E2E1E280B
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 19:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ubvLJ8YSRynXaiXVpDjHwFPp3XSnC9DAjDhzzfA7pN4=; b=XVn3BOY2s+6luELu9nmosdkAj
	YdIqcGpEYht0AD5w1GaWJH3WMcDO+hiB3F9gmf/RdoeYV8ojCcxu8wYojsXIlV/zt4bou0dgvbwwO
	xk1i0mUDvNZWBH7sHEUI0DzqOZ+3Ufzt/HwUMUNiwhI2eofojzKsqjDBe32W3kY61To7IJsqDgqIg
	Ickhr6wSVEWTzE9og3W0D+pWV1cGLrk8b8kUnRg6qZsTBhK7hgWH52D3D0bZJSExo8cbdhNvovYre
	4iHdSPE765ZTbk4jk8HHvkg98DN5lQ+NB65iFwKngIW3Enw2QIm1joxtSpo47Z6CfeKNM+6qqxlz+
	rzvVCDPYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdd7f-0001OF-An; Tue, 26 May 2020 17:12:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdd7c-0001NM-2a; Tue, 26 May 2020 17:12:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F5431FB;
 Tue, 26 May 2020 10:12:09 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05C163F52E;
 Tue, 26 May 2020 10:12:01 -0700 (PDT)
Date: Tue, 26 May 2020 18:11:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 03/20] mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP option
Message-ID: <20200526171159.GJ17051@gaia>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-4-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200429121126.17989-4-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_101212_242507_A3BCE95B 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.2 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
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
 linux-doc@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org, Baoquan He <bhe@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-sh@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-mips@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Qian Cai <cai@lca.pw>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:11:09PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The CONFIG_HAVE_MEMBLOCK_NODE_MAP is used to differentiate initialization
> of nodes and zones structures between the systems that have region to node
> mapping in memblock and those that don't.
> 
> Currently all the NUMA architectures enable this option and for the
> non-NUMA systems we can presume that all the memory belongs to node 0 and
> therefore the compile time configuration option is not required.
> 
> The remaining few architectures that use DISCONTIGMEM without NUMA are
> easily updated to use memblock_add_node() instead of memblock_add() and
> thus have proper correspondence of memblock regions to NUMA nodes.
> 
> Still, free_area_init_node() must have a backward compatible version
> because its semantics with and without CONFIG_HAVE_MEMBLOCK_NODE_MAP is
> different. Once all the architectures will use the new semantics, the
> entire compatibility layer can be dropped.
> 
> To avoid addition of extra run time memory to store node id for
> architectures that keep memblock but have only a single node, the node id
> field of the memblock_region is guarded by CONFIG_NEED_MULTIPLE_NODES and
> the corresponding accessors presume that in those cases it is always 0.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  .../vm/numa-memblock/arch-support.txt         |  34 ------
>  arch/alpha/mm/numa.c                          |   4 +-
>  arch/arm64/Kconfig                            |   1 -

For arm64:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

