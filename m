Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992951B0E4A
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 16:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:
	Mime-Version:Content-Type:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x4haHkUujR1fKPz5RIOI82+KmuZk6e+W1yh47eNmIvQ=; b=Aqz3WiJ7HlXmfJc7cAJ/OZW7Q
	OyvlqSELA3cCzEwCLcLW0LId5d1CPyiluWJ5crwybR7tjdlP6lBbIi2a/cKayyQBNISsRSv106mUQ
	CJSgcCuDe3s2GziVGEpmpjrIvl+MRRGbeQE6DweJPHUVrokLKmY/2XBS0FgE0ml2NDDQJB9tgr0Jb
	eEkf/81cwgHg+e5/LhP+CvsPy+rgmHrxLs4ArsdwklbbMwtJCLa0M85uhvzMQucZC4c2fscs3afXC
	ZSJ+fpwyrvrqqL8IvNnxCuuNaVFuef/15iXBlmHAEXatmL6LJuoJDX2VmdBPHaIggXh2jk8yoPK/w
	TTvaYb2xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXNI-00017L-U3; Mon, 20 Apr 2020 14:26:17 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXNF-00015v-3S
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 14:26:14 +0000
Received: by mail-qt1-x843.google.com with SMTP id c16so8582521qtv.1
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 07:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=x4haHkUujR1fKPz5RIOI82+KmuZk6e+W1yh47eNmIvQ=;
 b=DnvEUFzSch8BOWv/K7yUwrGGEukS5excCJecSvcapVOhdy/OFYe7Y9x1bGe8SeT916
 l1+1chsImNg3ZkGKpfN6ahvWi6toqC2h9IrP5AAGTN0GSjdGn3qsRFRJ+RJKyRIC9tu1
 Dj3ea0wViCiibWw2vLnH2xAQFEOjXLO8KUs1T46qoBzPcqk7/mrvO1+D2/LejHD1ICpo
 KoyvCsqeLxeoDgKdlRyHMBD+KBeYlPJHqA50tfN8jzW6UL/Xp60Ax2PqCOWTXHM9g3GG
 cbNMSaz+pl+PNBKPTXdiSGvlo1iEHh3BDrH71SvZZsVGfYckGoh6BGUSunvfhu/heiMK
 xWhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=x4haHkUujR1fKPz5RIOI82+KmuZk6e+W1yh47eNmIvQ=;
 b=s0r5+B2IuJ7Vznbk+NRU7dSALsK/OwB5C/jCaW++3ydSF1vcpDJTAWUAJdUiyeqYo4
 BU+ZnwlcBZsu/+1RYPgjLv1ShpBbqV2uifagbiZxLoDFk6POQBUKOW4GyqgBVLHNPAGV
 259lUlZHDvaCp7iWtzQJaNO4LEacEU1sQzalPkJaCZmXxiLCgWgGjJT3cjVkxSejiN8J
 7DFjyfvnRR2x85oXurd1TDzhKdZ4FzrcwOIzEs8CZGafT/moj/YxU4FXCzCJjNwvI6Q8
 a7YXSrxN0avMHRfX932I7AVf6xM/BTFsywceJNMI3CH4cpEM8eInotzbwB1M+wcTMel2
 px2g==
X-Gm-Message-State: AGi0PuaXNObMUrpKU/GNzCgxGxfr1JIIR5G3Oy4nlx2YhbicUzjcaTaB
 MkyJHe/9HRtRC8uYPEXEjvb1DA==
X-Google-Smtp-Source: APiQypK9hXIJAT9p6UDuSW0Ke/HoSOO0StxcY8aUeQ8xLhHHYW6L8ucFNnBF0yisbryde+2cyEFxTQ==
X-Received: by 2002:ac8:76da:: with SMTP id q26mr15821003qtr.168.1587392770907; 
 Mon, 20 Apr 2020 07:26:10 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id p1sm665290qkd.23.2020.04.20.07.26.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Apr 2020 07:26:09 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 15/21] mm: memmap_init: iterate over memblock regions
 rather that check each PFN
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20200412194859.12663-16-rppt@kernel.org>
Date: Mon, 20 Apr 2020 10:26:06 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <CF6E407F-17DC-427C-8203-21979FB882EF@lca.pw>
References: <20200412194859.12663-1-rppt@kernel.org>
 <20200412194859.12663-16-rppt@kernel.org>
To: Mike Rapoport <rppt@kernel.org>,
 Baoquan He <bhe@redhat.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072613_153777_3CEDFA9A 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-mips@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 Linux-MM <linux-mm@kvack.org>, Vineet Gupta <vgupta@synopsys.com>,
 LKML <linux-kernel@vger.kernel.org>, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Apr 12, 2020, at 3:48 PM, Mike Rapoport <rppt@kernel.org> wrote:
>=20
> From: Baoquan He <bhe@redhat.com>
>=20
> When called during boot the memmap_init_zone() function checks if each =
PFN
> is valid and actually belongs to the node being initialized using
> early_pfn_valid() and early_pfn_in_nid().
>=20
> Each such check may cost up to O(log(n)) where n is the number of =
memory
> banks, so for large amount of memory overall time spent in =
early_pfn*()
> becomes substantial.
>=20
> Since the information is anyway present in memblock, we can iterate =
over
> memblock memory regions in memmap_init() and only call =
memmap_init_zone()
> for PFN ranges that are know to be valid and in the appropriate node.
>=20
> Signed-off-by: Baoquan He <bhe@redhat.com>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
> mm/page_alloc.c | 26 ++++++++++++++++----------
> 1 file changed, 16 insertions(+), 10 deletions(-)
>=20
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 7f6a3081edb8..c43ce8709457 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5995,14 +5995,6 @@ void __meminit memmap_init_zone(unsigned long =
size, int nid, unsigned long zone,
> 		 * function.  They do not exist on hotplugged memory.
> 		 */
> 		if (context =3D=3D MEMMAP_EARLY) {
> -			if (!early_pfn_valid(pfn)) {
> -				pfn =3D next_pfn(pfn);
> -				continue;
> -			}
> -			if (!early_pfn_in_nid(pfn, nid)) {
> -				pfn++;
> -				continue;
> -			}

This causes a compilation warning from Clang,

mm/page_alloc.c:5917:39: warning: unused function 'next_pfn' =
[-Wunused-function]
static inline __meminit unsigned long next_pfn(unsigned long pfn)

This should fix it,

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index d469384c9ca7..b48336e20bdc 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5912,23 +5912,6 @@ overlap_memmap_init(unsigned long zone, unsigned =
long *pfn)
 	return false;
 }
=20
-#ifdef CONFIG_SPARSEMEM
-/* Skip PFNs that belong to non-present sections */
-static inline __meminit unsigned long next_pfn(unsigned long pfn)
-{
-	const unsigned long section_nr =3D pfn_to_section_nr(++pfn);
-
-	if (present_section_nr(section_nr))
-		return pfn;
-	return section_nr_to_pfn(next_present_section_nr(section_nr));
-}
-#else
-static inline __meminit unsigned long next_pfn(unsigned long pfn)
-{
-	return pfn++;
-}
-#endif
-
 /*
  * Initially all pages are reserved - free ones are freed
  * up by memblock_free_all() once the early boot process is

> 			if (overlap_memmap_init(zone, &pfn))
> 				continue;
> 			if (defer_init(nid, pfn, end_pfn))
> @@ -6118,9 +6110,23 @@ static void __meminit =
zone_init_free_lists(struct zone *zone)
> }
>=20
> void __meminit __weak memmap_init(unsigned long size, int nid,
> -				  unsigned long zone, unsigned long =
start_pfn)
> +				  unsigned long zone,
> +				  unsigned long range_start_pfn)
> {
> -	memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, =
NULL);
> +	unsigned long start_pfn, end_pfn;
> +	unsigned long range_end_pfn =3D range_start_pfn + size;
> +	int i;
> +
> +	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> +		start_pfn =3D clamp(start_pfn, range_start_pfn, =
range_end_pfn);
> +		end_pfn =3D clamp(end_pfn, range_start_pfn, =
range_end_pfn);
> +
> +		if (end_pfn > start_pfn) {
> +			size =3D end_pfn - start_pfn;
> +			memmap_init_zone(size, nid, zone, start_pfn,
> +					 MEMMAP_EARLY, NULL);
> +		}
> +	}
> }
>=20
> static int zone_batchsize(struct zone *zone)
> --=20
> 2.25.1
>=20
>=20


