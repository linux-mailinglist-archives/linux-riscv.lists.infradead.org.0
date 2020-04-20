Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BEB1B171E
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 22:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wlD7exmpP2wJ9RvD3qhW6lLoxeeNIloAY3kkOGxGrPg=; b=K78Sn8tiEC3tENfzv5EsVnO+i
	LdUSBO4JeAg9m+iRVAvfKrBosMeg1Slil5Ri5uyYe7T3hxuBLXbiyO+FScErUw2EHqRhOBuRfZioG
	eIE0swIJaKfJdwDSODu8lUa2tRMHRc9vYOkFcaaRHP8YAzTf5XsPCIrepBlN0LWr3bvT+2eQJf7cK
	EUXK1z/zuWZB+VhQvgBCYy9rdUrqlxxS2N3PiezWnuWxvay7hVIhWENpxEapF8cphLCZMFXiszJ3/
	sGpWlxqRZBNJY344LMOqitEwT3NiU+KYmVeAjx9jFmEwOncH5kaewi8AJXYzmkb3umPc7aWkRdBjY
	FajkOi/Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQd3b-0005LV-UH; Mon, 20 Apr 2020 20:30:21 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQd3B-0002iS-8R
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 20:29:57 +0000
Received: by mail-lf1-x143.google.com with SMTP id m2so9148184lfo.6
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 13:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wlD7exmpP2wJ9RvD3qhW6lLoxeeNIloAY3kkOGxGrPg=;
 b=CSrYF4gwenMWMaslCcQijRCNO9eq1UfvXXSV8pttbEiArbr/aQ0aFZA3NJEU462YCW
 ta5FSBuZKNh3DjHJ9A+mTPvAqqcxx8gsP38e2aO+vWiQFGoU+OZBQPi5EAKOFGJQ9FJj
 Vj0bLG8tDjADXIf3/IHx2bOqwK0ghVn+Kk1WRa2/rhWY7yuPOAVIzb8+OB+1AXr7/mDV
 nPN9r/51dJd8TEtzmYhidX88xsTU+niNazjYNoDQ5+L3ER1iCQuriV+bIdRjpF61vIIh
 PYP3+KLT6Gdt17ScXYNgHxdjm+9KFieAZARtrDpZtitChEwJQ6XlOk4yvS9U0YGCd6pb
 P9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wlD7exmpP2wJ9RvD3qhW6lLoxeeNIloAY3kkOGxGrPg=;
 b=jDqTcycOeQaKN6f5pvMTn+cDH16zKGBN/nknoxw+W5xbOZhO2S6bqtuoFIP/q4FOAr
 8kc03BN+eOXcrp8KG4fznqfvesrPNxe/r7yVDPywzJGdAeh/xFbxF+dLRmqj7ub12Z+4
 5PQ/qflDsedopXSS27NhTy0Maw76FHzp6QEvxjDdz0K7GayfuUlmCQ60nTnq0erCESFS
 FO4b2H/UBCf9jKqRF/BwJ8K2L9yNrbIKqNZ/asG4LNZmLmcEqtirn8/unlr+2mLfixIv
 tnQHYpiu4oRxvJ3RXva5FWjUaD4NrpQE52z2SYfAupN/bk9cTFdKWEZaF3/E5hFnpwC4
 IVQg==
X-Gm-Message-State: AGi0PuYesr4NDeTsY8lToMqiQJuf2pZukvNkFVr4UEBcuFbl2r4sWTx6
 /8vtvtU+HSixSb41qj3paoAI5TkaU/DV5INk+G7uRQ==
X-Google-Smtp-Source: APiQypLQCUkv6jgt7apw+kFJDyvgCCL6sERDkdJtPaDNmQPtni41e7GpE29ZEcuR1aLfVCe6v6zEwl2b/z0I/2n6J3c=
X-Received: by 2002:a05:6512:1109:: with SMTP id
 l9mr11730849lfg.12.1587414591448; 
 Mon, 20 Apr 2020 13:29:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <5E312000-05D8-4C5D-A7C0-DDDE1842CB0E@lca.pw>
 <4c36c6ce-3774-78fa-abc4-b7346bf24348@oracle.com>
In-Reply-To: <4c36c6ce-3774-78fa-abc4-b7346bf24348@oracle.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Mon, 20 Apr 2020 22:29:40 +0200
Message-ID: <CADYN=9+=tCDmddTYGY44onvrzbg7yrbacMDSxd4hhD+=b=Yeiw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Clean up hugetlb boot command line processing
To: Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_132953_850367_67E3523B 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Qian Cai <cai@lca.pw>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 20:23, Mike Kravetz <mike.kravetz@oracle.com> wrote:
>
> On 4/20/20 8:34 AM, Qian Cai wrote:
> >
> >
> >> On Apr 17, 2020, at 2:50 PM, Mike Kravetz <mike.kravetz@oracle.com> wrote:
> >>
> >> Longpeng(Mike) reported a weird message from hugetlb command line processing
> >> and proposed a solution [1].  While the proposed patch does address the
> >> specific issue, there are other related issues in command line processing.
> >> As hugetlbfs evolved, updates to command line processing have been made to
> >> meet immediate needs and not necessarily in a coordinated manner.  The result
> >> is that some processing is done in arch specific code, some is done in arch
> >> independent code and coordination is problematic.  Semantics can vary between
> >> architectures.
> >>
> >> The patch series does the following:
> >> - Define arch specific arch_hugetlb_valid_size routine used to validate
> >>  passed huge page sizes.
> >> - Move hugepagesz= command line parsing out of arch specific code and into
> >>  an arch independent routine.
> >> - Clean up command line processing to follow desired semantics and
> >>  document those semantics.
> >>
> >> [1] https://lore.kernel.org/linux-mm/20200305033014.1152-1-longpeng2@huawei.com
> >>
> >> Mike Kravetz (4):
> >>  hugetlbfs: add arch_hugetlb_valid_size
> >>  hugetlbfs: move hugepagesz= parsing to arch independent code
> >>  hugetlbfs: remove hugetlb_add_hstate() warning for existing hstate
> >>  hugetlbfs: clean up command line processing
> >
> > Reverted this series fixed many undefined behaviors on arm64 with the config,
> >
> > https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> >
> > [   54.172683][    T1] UBSAN: shift-out-of-bounds in ./include/linux/hugetlb.h:555:34
> > [   54.180411][    T1] shift exponent 4294967285 is too large for 64-bit type 'unsigned long'
> > [   54.188885][    T1] CPU: 130 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc2-next-20200420 #1
> > [   54.197284][    T1] Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
> > [   54.207888][    T1] Call trace:
> > [   54.211100][    T1]  dump_backtrace+0x0/0x224
> > [   54.215565][    T1]  show_stack+0x20/0x2c
> > [   54.219651][    T1]  dump_stack+0xfc/0x184
> > [   54.223829][    T1]  __ubsan_handle_shift_out_of_bounds+0x304/0x344
> > [   54.230204][    T1]  hugetlb_add_hstate+0x3ec/0x414
> > huge_page_size at include/linux/hugetlb.h:555
> > (inlined by) hugetlb_add_hstate at mm/hugetlb.c:3301
> > [   54.235191][    T1]  hugetlbpage_init+0x14/0x30
> > [   54.239824][    T1]  do_one_initcall+0x6c/0x144
> > [   54.244446][    T1]  do_initcall_level+0x158/0x1c4
> > [   54.249336][    T1]  do_initcalls+0x68/0xb0
> > [   54.253597][    T1]  do_basic_setup+0x28/0x30
> > [   54.258049][    T1]  kernel_init_freeable+0x19c/0x228
> > [   54.263188][    T1]  kernel_init+0x14/0x208
> > [   54.267473][    T1]  ret_from_fork+0x10/0x18
>
> While rearranging the code (patch 3 in series), I made the incorrect
> assumption that CONT_XXX_SIZE == (1UL << CONT_XXX_SHIFT).  However,
> this is not the case.  Does the following patch fix these issues?
>
> From b75cb4a0852e208bee8c4eb347dc076fcaa88859 Mon Sep 17 00:00:00 2001
> From: Mike Kravetz <mike.kravetz@oracle.com>
> Date: Mon, 20 Apr 2020 10:41:18 -0700
> Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization
>
> When calling hugetlb_add_hstate() to initialize a new hugetlb size,
> be sure to use correct huge pages size order.
>
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>  arch/arm64/mm/hugetlbpage.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
> index 9ca840527296..a02411a1f19a 100644
> --- a/arch/arm64/mm/hugetlbpage.c
> +++ b/arch/arm64/mm/hugetlbpage.c
> @@ -453,11 +453,11 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
>  static int __init hugetlbpage_init(void)
>  {
>  #ifdef CONFIG_ARM64_4K_PAGES
> -       hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
> +       hugetlb_add_hstate(ilog2(PUD_SIZE) - PAGE_SHIFT);
>  #endif
> -       hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
> -       hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> -       hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
> +       hugetlb_add_hstate(ilog2(CONT_PMD_SIZE) - PAGE_SHIFT);
> +       hugetlb_add_hstate(ilog2(PMD_SIZE) - PAGE_SHIFT);
> +       hugetlb_add_hstate(ilog2(CONT_PTE_SIZE) - PAGE_SHIFT);
>
>         return 0;
>  }

I build this for an arm64 kernel and ran it in qemu and it worked.

Cheers,
Anders

