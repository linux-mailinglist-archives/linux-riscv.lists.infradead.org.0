Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E30D1CE0B4
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 18:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bCpTMvJJlCSM1A/nBsA2GeBioMk9jwYptfUvU7+eE2k=; b=JcVGs4pcjCgkC+tewPC94XfPW
	do3VLLA5iI0N7ipk7JYrhfsLpW3VyZyejzm8hRZcRiiCPmivuemAPWp1qP2nANXvKDGKpKvLu/7k9
	PsV4JczAW2G/pz8h6nEFH/yUao3PRcGHppGBGTDKx3XncfkXff6o3w3nYsVdBWOk/8ZZ3NPoLqc2R
	SU/RGygJSElzQ45yYD8cUf695JElP4Rt3OaXFoWT9BBna3DnweqqCm/CSo9JaQvKnYysqBKhmGJtg
	MTKuFufsj91nfi8gXlmGM1M7pNiR4ra+Ud+Kr84oZ0N9yi4wTz7WNUwXa6weTpYLv9NCyKEs3Bjxo
	D+lIgM3Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBRR-0000vE-S4; Mon, 11 May 2020 16:38:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBR8-0000Xi-KW; Mon, 11 May 2020 16:37:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C9A7568CEE; Mon, 11 May 2020 18:37:45 +0200 (CEST)
Date: Mon, 11 May 2020 18:37:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 31/31] module: move the set_fs hack for
 flush_icache_range to m68k
Message-ID: <20200511163744.GB32228@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-32-hch@lst.de>
 <CAMuHMdU_OxNoKfO=i903kx0mgk0-i2h4u2ase3m9_dn6oFh_5g@mail.gmail.com>
 <20200511151120.GA28634@lst.de>
 <CAMuHMdW1S91i3x0unNcJnypHse7ifynGb4dZcVhJaemR3GH1Pg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdW1S91i3x0unNcJnypHse7ifynGb4dZcVhJaemR3GH1Pg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_093750_977193_E9E9B4F8 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Roman Zippel <zippel@linux-m68k.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, Jessica Yu <jeyu@kernel.org>,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 05:24:30PM +0200, Geert Uytterhoeven wrote:
> > Btw, do you know what part of flush_icache_range relied on set_fs?
> > Do any of the m68k maintainers have an idea how to handle that in
> > a nicer way when we can split the implementations?
> 
> arch/m68k/mm/cache.c:virt_to_phys_slow()
> 
> All instructions that look up addresses in the page tables look at the
> source/destination function codes (SFC/DFC) to know if they have to use
> the supervisor or user page tables.
> So the actual implementation is the same: set_fs() merely configures
> SFC/DFC, to select the address space to use.

So instead of the magic instructions could we use the normal kernel
virt to phys helpers instead of switching the addresses space?  Something
like this patch on top of the series:

diff --git a/arch/m68k/mm/cache.c b/arch/m68k/mm/cache.c
index 5ecb3310e8745..5a861a14c1e69 100644
--- a/arch/m68k/mm/cache.c
+++ b/arch/m68k/mm/cache.c
@@ -71,47 +71,87 @@ static unsigned long virt_to_phys_slow(unsigned long vaddr)
 	return 0;
 }
 
-/* Push n pages at kernel virtual address and clear the icache */
-/* RZ: use cpush %bc instead of cpush %dc, cinv %ic */
-void flush_icache_user_range(unsigned long address, unsigned long endaddr)
+static inline void coldfire_flush_icache_range(unsigned long start,
+		unsigned long end)
 {
-	if (CPU_IS_COLDFIRE) {
-		unsigned long start, end;
-		start = address & ICACHE_SET_MASK;
-		end = endaddr & ICACHE_SET_MASK;
-		if (start > end) {
-			flush_cf_icache(0, end);
-			end = ICACHE_MAX_ADDR;
-		}
-		flush_cf_icache(start, end);
-	} else if (CPU_IS_040_OR_060) {
-		address &= PAGE_MASK;
-
-		do {
-			asm volatile ("nop\n\t"
-				      ".chip 68040\n\t"
-				      "cpushp %%bc,(%0)\n\t"
-				      ".chip 68k"
-				      : : "a" (virt_to_phys_slow(address)));
-			address += PAGE_SIZE;
-		} while (address < endaddr);
-	} else {
-		unsigned long tmp;
-		asm volatile ("movec %%cacr,%0\n\t"
-			      "orw %1,%0\n\t"
-			      "movec %0,%%cacr"
-			      : "=&d" (tmp)
-			      : "di" (FLUSH_I));
+	start &= ICACHE_SET_MASK;
+	end &= ICACHE_SET_MASK;
+
+	if (start > end) {
+		flush_cf_icache(0, end);
+		end = ICACHE_MAX_ADDR;
 	}
+	flush_cf_icache(start, end);
+}
+
+static inline void mc68040_flush_icache_user_range(unsigned long start,
+		unsigned long end)
+{
+	start &= PAGE_MASK;
+
+	do {
+		asm volatile ("nop\n\t"
+			      ".chip 68040\n\t"
+			      "cpushp %%bc,(%0)\n\t"
+			      ".chip 68k"
+			      : : "a" (virt_to_phys_slow(start)));
+		start += PAGE_SIZE;
+	} while (start < end);
+}
+
+static inline void mc68020_flush_icache_range(unsigned long start,
+		unsigned long end)
+{
+	unsigned long tmp;
+
+	asm volatile ("movec %%cacr,%0\n\t"
+		      "orw %1,%0\n\t"
+		      "movec %0,%%cacr"
+		      : "=&d" (tmp)
+		      : "di" (FLUSH_I));
+}
+
+void flush_icache_user_range(unsigned long start, unsigned long end)
+{
+	if (CPU_IS_COLDFIRE)
+		coldfire_flush_icache_range(start, end);
+	else if (CPU_IS_040_OR_060)
+		mc68040_flush_icache_user_range(start, end);
+	else
+		mc68020_flush_icache_range(start, end);
 }
 
-void flush_icache_range(unsigned long address, unsigned long endaddr)
+static inline void mc68040_flush_icache_range(unsigned long start,
+		unsigned long end)
 {
-	mm_segment_t old_fs = get_fs();
+	start &= PAGE_MASK;
+
+	do {
+		void *vaddr = (void *)start;
+		phys_addr_t paddr;
+
+		if (is_vmalloc_addr(vaddr))
+			paddr = page_to_phys(vmalloc_to_page(vaddr));
+		else
+			paddr = virt_to_phys(vaddr);
+
+		asm volatile ("nop\n\t"
+			      ".chip 68040\n\t"
+			      "cpushp %%bc,(%0)\n\t"
+			      ".chip 68k"
+			      : : "a" (paddr));
+		start += PAGE_SIZE;
+	} while (start < end);
+}
 
-	set_fs(KERNEL_DS);
-	flush_icache_user_range(address, endaddr);
-	set_fs(old_fs);
+void flush_icache_range(unsigned long start, unsigned long end)
+{
+	if (CPU_IS_COLDFIRE)
+		coldfire_flush_icache_range(start, end);
+	else if (CPU_IS_040_OR_060)
+		mc68040_flush_icache_range(start, end);
+	else
+		mc68020_flush_icache_range(start, end);
 }
 EXPORT_SYMBOL(flush_icache_range);
 

