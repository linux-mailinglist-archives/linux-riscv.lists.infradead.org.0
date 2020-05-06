Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CF61C64F3
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c2hLm6+zbJEAyEVfAYowpOyewzOW+kIv+YTbZQ2i84M=; b=FexbytJ+Xz6plz4HBcHMRMtij
	WfhXLLqDCi3PRvWRWhXesVjOVolaf+J8lSaekfeNygEDHSjUWy/kFd8Qt5bDGidHRhGLkar1toXy/
	2NUMzuJwLm8FvuJKd7KVHIRdOjJugpI7PDpghzmELR6uqIqy+KLNhkSgJ/YOVc2qytwMkt74hQE2N
	g7pqFA0w4Q285kOVLNWe5ymlqJf08Y+0tYtiYp5wYzaYCb5KuwxzvJ5haUXHDZu3pwqgSwfOrqzmF
	m/k6HF/DIj5htvplNZIMzC0O00KNu7UPFGxZKMk2Jg2MJaY7KLbFp4U/KS4NJg/dgVxFO6G2N98x7
	5T9cZARBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7j9-0000oD-4B; Wed, 06 May 2020 00:15:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7j5-0000mR-V6
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:15:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so73890wrn.6
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c2hLm6+zbJEAyEVfAYowpOyewzOW+kIv+YTbZQ2i84M=;
 b=Wnv9h8DFu6J1kDi8bq3i9rgHlErQOSO5b2nOTXCK2bc54VFNTOkk5Kd/ClmcCuHm4Q
 VwfRWOEr1NhchIQ8XeAqwgX4bGh1orWeSO4dAmSha799JFEOKbletI8XUJ7QmZdDatsG
 kqU09jDULZN8sx1sg/VAu8E3+7D6iQ374zGLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c2hLm6+zbJEAyEVfAYowpOyewzOW+kIv+YTbZQ2i84M=;
 b=G992+ixHz4MM3oj+qHkWEhAUwAgfQLxHnxbRfczhTt2AaP8Cc2r+QMBHYLm3aFvqJA
 ppwX9wwsqYONqFjV9Y0S4i+CHs87KIR+uvC/1xopPkpLUB+/6GkxyW9IqyuhCbfpPE7H
 a/crJMhB1yRrF4SRYRMOPxxq2hgaj349PURkYk51/ncyUGd6uSDx7mCP/dEJKTN/qEgk
 WBARepBbSnWdrsELigXs/M8InKarCtaej+Xxfaz0/51+T1y9UQcdenIzOwgl4aOF/Qk+
 hE7juHrCSV6Yac+eP+DSsQpbe6r7nRP4qhDd0BoZGkGDXmkXIY0YdIUu8DecbUz6JS8o
 dk3g==
X-Gm-Message-State: AGi0PubevlMTLCsthzc3maz3OU29W0O4SuRPBWLTa3w9Nrc+YwZ+9ehX
 G3iyUyaHHT72NOwhPneCCDHoDRQdms6kJNBEPxxP
X-Google-Smtp-Source: APiQypJ1u2GBFKhtFoqPNkbEjRt4MRHKXVYXGuuImjbH5C0ppvHZvK7OPliGzhwpMWEylhO8hEeXVUJxUpx+Nj3jUXE=
X-Received: by 2002:a5d:5703:: with SMTP id a3mr6910168wrv.53.1588724150121;
 Tue, 05 May 2020 17:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAOnJCUJtnVjYwfaHbiUdO4SqPk8rY0q0uYckNJpQpc7jK0Pz7g@mail.gmail.com>
 <mhng-3b48ef6b-d427-40af-b8f7-1bdccc117927@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-3b48ef6b-d427-40af-b8f7-1bdccc117927@palmerdabbelt-glaptop1>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 5 May 2020 17:15:38 -0700
Message-ID: <CAOnJCU+LrLSbf2HqFJY6PkOYqt6_dHSj_zwKrEHYQCvmKrZQaQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Remove unused code from STRICT_KERNEL_RWX
To: Palmer Dabbelt <palmer@dabbelt.com>, Nick Kossifidis <mick@ics.forth.gr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_171552_009780_599158BC 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 5:03 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 05 May 2020 17:00:05 PDT (-0700), atishp@atishpatra.org wrote:
> > On Tue, May 5, 2020 at 4:55 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> >>
> >> On Sun, 03 May 2020 21:03:19 PDT (-0700), Atish Patra wrote:
> >> > This patch removes the unused functions set_kernel_text_rw/ro.
> >> > Currently, it is not being invoked from anywhere and no other architecture
> >> > (except arm) uses this code. Even in ARM, these functions are not invoked
> >> > from anywhere currently.
> >> >
> >> > Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
> >> >
> >> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> >> > ---
> >> >  arch/riscv/mm/init.c | 16 ----------------
> >> >  1 file changed, 16 deletions(-)
> >> >
> >> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >> > index b55be44ff9bd..ba60a581e9b6 100644
> >> > --- a/arch/riscv/mm/init.c
> >> > +++ b/arch/riscv/mm/init.c
> >> > @@ -501,22 +501,6 @@ static inline void setup_vm_final(void)
> >> >  #endif /* CONFIG_MMU */
> >> >
> >> >  #ifdef CONFIG_STRICT_KERNEL_RWX
> >> > -void set_kernel_text_rw(void)
> >> > -{
> >> > -     unsigned long text_start = (unsigned long)_text;
> >> > -     unsigned long text_end = (unsigned long)_etext;
> >> > -
> >> > -     set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> >> > -}
> >> > -
> >> > -void set_kernel_text_ro(void)
> >> > -{
> >> > -     unsigned long text_start = (unsigned long)_text;
> >> > -     unsigned long text_end = (unsigned long)_etext;
> >> > -
> >> > -     set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> >> > -}
> >> > -
> >> >  void mark_rodata_ro(void)
> >> >  {
> >> >       unsigned long text_start = (unsigned long)_text;
> >>
> >> Thanks, this is on fixes.  Are you going to remove the ARM code as well?
> >>
> >
> > Yeah and also I realized that I forgot to remove the declarations from
> > the header file.
> > My bad. I will send out a v2. Please drop this one and take v2.
>
> I just fixed it up
>

Thanks. I was going over the code again and found one usage for
set_kernel_text_rw for ARM.
It is used in kexec while set_kernel_text_ro is not invoked anywhere.
I am not sure if it is required
for kexec implementation for RISC-V.

@nick: Can you please comment ?

> commit 73cb8e2a5863ccc5215660f5123db621bd57dff7
> gpg: Signature made Tue 05 May 2020 05:02:17 PM PDT
> gpg:                using RSA key 2B3C3747446843B24A943A7A2E1319F35FBB1889
> gpg:                issuer "palmer@dabbelt.com"
> gpg: Good signature from "Palmer Dabbelt <palmer@dabbelt.com>" [ultimate]
> gpg:                 aka "Palmer Dabbelt <palmerdabbelt@google.com>" [ultimate]
> Author: Atish Patra <atish.patra@wdc.com>
> Date:   Sun May 3 21:03:19 2020 -0700
>
>     RISC-V: Remove unused code from STRICT_KERNEL_RWX
>
>     This patch removes the unused functions set_kernel_text_rw/ro.
>     Currently, it is not being invoked from anywhere and no other architecture
>     (except arm) uses this code. Even in ARM, these functions are not invoked
>     from anywhere currently.
>
>     Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
>     Signed-off-by: Atish Patra <atish.patra@wdc.com>
>     Reviewed-by: Zong Li <zong.li@sifive.com>
>     Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> index c38df4771c09..4c5bae7ca01c 100644
> --- a/arch/riscv/include/asm/set_memory.h
> +++ b/arch/riscv/include/asm/set_memory.h
> @@ -22,14 +22,6 @@ static inline int set_memory_x(unsigned long addr, int numpages) { return 0; }
>  static inline int set_memory_nx(unsigned long addr, int numpages) { return 0; }
>  #endif
>
> -#ifdef CONFIG_STRICT_KERNEL_RWX
> -void set_kernel_text_ro(void);
> -void set_kernel_text_rw(void);
> -#else
> -static inline void set_kernel_text_ro(void) { }
> -static inline void set_kernel_text_rw(void) { }
> -#endif
> -
>  int set_direct_map_invalid_noflush(struct page *page);
>  int set_direct_map_default_noflush(struct page *page);
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 5b813532db59..27a334106708 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -502,22 +502,6 @@ static inline void setup_vm_final(void)
>  #endif /* CONFIG_MMU */
>
>  #ifdef CONFIG_STRICT_KERNEL_RWX
> -void set_kernel_text_rw(void)
> -{
> -       unsigned long text_start = (unsigned long)_text;
> -       unsigned long text_end = (unsigned long)_etext;
> -
> -       set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> -}
> -
> -void set_kernel_text_ro(void)
> -{
> -       unsigned long text_start = (unsigned long)_text;
> -       unsigned long text_end = (unsigned long)_etext;
> -
> -       set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> -}
> -
>  void mark_rodata_ro(void)
>  {
>         unsigned long text_start = (unsigned long)_text;
>


-- 
Regards,
Atish

