Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043457D818
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 10:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8r9I/U6Lr5RW+kPy6QOm7/d7lFTteVIHChBnxDRdrUI=; b=OwpjE5xYpVFumK
	k1NJLLNJv7GJVA7X7JBpTdpp1EReeLBB4yAtLiBkPH88lfqN7mRrhn/Ua4z01bKxGVzB1yaa+UYrr
	vS5JTGJc+nTieV5sMyoZcsihfqqoRy+cnF9ilMAinEX/HPlM9UGXaE8NbT+cyiq0VbPLPtLMIAv84
	NnuyAYte3MTJyn7l7c+g1MSCWjNea/NahTjaBkifi6mcFYjvh7nF8y2CLEsZxkYILcXvHu0EOD0hr
	kh9r4bfXErIR8Cz2s6U1uDbE/eVSTwNJEErIPc82mnSkdgGtx1i+CZHo86NrElX8I4z7jy4GCodjH
	QCcAzUOJ4vdIbXqxgOaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6sv-0004Gn-HK; Thu, 01 Aug 2019 08:56:29 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6sr-00045j-Pm
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 08:56:27 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so68424196edr.10
 for <linux-riscv@lists.infradead.org>; Thu, 01 Aug 2019 01:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PBTnLCvDSjUrM5VA6hRLwxeWErZVATZCYstiolhIwfY=;
 b=NoLb0vr03SaJFiFBi/AvOZ0tOGsl2F71+ULfqAHJQdNz1s6+g8ouEys8/MJETlTZEN
 srka9oQ1P7WPq65ngL0VmuS1fNb5kjPDXdTqtz1GLjJMS6YGrv8HmUFKH7WkNZDzAAcx
 0eTb6+UXViDSIC+/jTCaQe4v72rH4sd7pZy1SNaAFmftnAdoChzd8/Mj09Idt0i2cYu2
 cCYjF0UNolnQqV22RklzJJemUVinGgMLueDcFA2ZgJtgWaImKjmbkQst3rMS3KA0Q+th
 J7VvC6MqN6JDp1NFQpRDE9XMj9zktpMPZFpIdWoT6n0eymISZrqf0/Z088JDdIonV2pf
 1B5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PBTnLCvDSjUrM5VA6hRLwxeWErZVATZCYstiolhIwfY=;
 b=Dz6JcY4ws+vyFpc2rSmVohmq8fuFY/bHqoX1/2KltjK8BoIh8PgLi3/h7mbW9C5xVy
 0JBOZ88H3qP6UpG0zGAX/aYZNOUHQHzbeRE4qqLkIg7ctgEc990qa4jgVpuji3Kkdz8s
 QWkkJYsNXEn+P4hcFvE6NPZlbplnqTuGyoBH91Pa88bIZZ45tclfyqhBz0fN4aYi40hF
 LXuVZF9tUv6dNV6OQ6YwuVkZcLBGIoaqjs603DnlK8X3KlJbvsK18fItOxTVrA0aOZlU
 cflivCp6ITJ+9S2QdLX49z9i26Bhp7/X6RIHLpxzGJLT69juT6uSlBlng1T1MMgRNxvL
 KISg==
X-Gm-Message-State: APjAAAWng0BqWbhSiUVvv3H0DvKPRrPPBSKsGRUmxlmpinfP3uAXviSV
 Q9jYvAzS3SdJXu7k4P+iU7Mn0U7REQ5BaIn8jLcFgEQ0
X-Google-Smtp-Source: APXvYqySdIHX4t/XbVlFWPNMolBJN2yEroFtRV93xbfuz+4fTUGkuwwYkvNVJyZRFJG0EvIVMvbqsZIvTd3ouVg5yO4=
X-Received: by 2002:a17:906:fc5:: with SMTP id
 c5mr56482594ejk.129.1564649783883; 
 Thu, 01 Aug 2019 01:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
 <CAEUhbmUh0rJzFUoA05En9osy+Vv9AP0yOr-bs1goqk7+6SCv2g@mail.gmail.com>
 <alpine.DEB.2.21.9999.1907301218560.3486@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907301218560.3486@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Thu, 1 Aug 2019 16:56:12 +0800
Message-ID: <CAEUhbmU8u-Z1At+U3KMk1OnQm8+NJnFiQGhu2f=xkOHYMkrPCA@mail.gmail.com>
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_015625_836751_9F86354E 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 3:37 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sun, 28 Jul 2019, Bin Meng wrote:
>
> > The spec does not mention 40-bit physical addresses, but 56-bit.
>
> Thanks, agreed.  Updated patch below
>
>
> - Paul
>
> From: Paul Walmsley <paul.walmsley@sifive.com>
> Date: Fri, 26 Jul 2019 10:21:11 -0700
> Subject: [PATCH v2] riscv: kbuild: add virtual memory system selection
>
> The RISC-V specifications currently define three virtual memory
> translation systems: Sv32, Sv39, and Sv48.  Sv32 is currently specific
> to 32-bit systems; Sv39 and Sv48 are currently specific to 64-bit
> systems.  The current kernel only supports Sv32 and Sv39, but we'd
> like to start preparing for Sv48.  As an initial step, allow the
> virtual memory translation system to be selected via kbuild, and stop
> the build if an option is selected that the kernel doen't currently
> support.
>
> This second version of the patch fixes some errors in the Kconfig
> description text, found by Bin Meng <bmeng.cn@gmail.com>.
>
> This patch currently has no functional impact.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Alexandre Ghiti <alex@ghiti.fr>
> Cc: Bin Meng <bmeng.cn@gmail.com>
> ---
>  arch/riscv/Kconfig                  | 43 +++++++++++++++++++++++++++++
>  arch/riscv/include/asm/pgtable-32.h |  4 +++
>  arch/riscv/include/asm/pgtable-64.h |  4 +++
>  3 files changed, 51 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 59a4727ecd6c..f5e76e25a91e 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -155,6 +155,49 @@ config MODULE_SECTIONS
>         bool
>         select HAVE_MOD_ARCH_SPECIFIC
>
> +choice
> +       prompt "Virtual Memory System"
> +       default RISCV_VM_SV32 if 32BIT
> +       default RISCV_VM_SV39 if 64BIT
> +       help
> +         The RISC-V Instruction Set Manual Volume II: Privileged
> +         Architecture defines several different "virtual memory
> +         systems" which specify virtual and physical address formats
> +         and the structure of page table entries.  This determines
> +         the amount of virtual address space present and how it is
> +         translated into physical addresses.
> +
> +       config RISCV_VM_SV32
> +               depends on 32BIT
> +               bool "RISC-V Sv32"
> +               help
> +                 The Sv32 virtual memory system is a page-based
> +                 address and page table format for RV32 systems.
> +                 It specifies a translation between 32-bit virtual
> +                 addresses and 33-bit physical addresses, via a
> +                 two-stage page table layout.
> +       config RISCV_VM_SV39
> +               depends on 64BIT
> +               bool "RISC-V Sv39"
> +               help
> +                 The Sv39 virtual memory system is a page-based
> +                 address and page table format for RV64 systems.
> +                 It specifies a translation between 39-bit virtual
> +                 addresses and 56-bit physical addresses, via a
> +                 three-stage page table layout.
> +       config RISCV_VM_SV48
> +               depends on 64BIT
> +               bool "RISC-V Sv48"
> +               help
> +                 The Sv48 virtual memory system is a page-based
> +                 address and page table format for RV64 systems.
> +                 It specifies a translation between 48-bit virtual
> +                 addresses and 56-bit physical addresses, via a
> +                 four-stage page table layout.
> +
> +endchoice
> +
> +
>  choice
>         prompt "Maximum Physical Memory"
>         default MAXPHYSMEM_2GB if 32BIT
> diff --git a/arch/riscv/include/asm/pgtable-32.h b/arch/riscv/include/asm/pgtable-32.h
> index b0ab66e5fdb1..86d41a04735b 100644
> --- a/arch/riscv/include/asm/pgtable-32.h
> +++ b/arch/riscv/include/asm/pgtable-32.h
> @@ -6,6 +6,10 @@
>  #ifndef _ASM_RISCV_PGTABLE_32_H
>  #define _ASM_RISCV_PGTABLE_32_H
>
> +#if !defined(CONFIG_RISCV_VM_SV32)
> +#error Only Sv32 supported
> +#endif
> +
>  #include <asm-generic/pgtable-nopmd.h>
>  #include <linux/const.h>
>
> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
> index 74630989006d..86935595115d 100644
> --- a/arch/riscv/include/asm/pgtable-64.h
> +++ b/arch/riscv/include/asm/pgtable-64.h
> @@ -6,6 +6,10 @@
>  #ifndef _ASM_RISCV_PGTABLE_64_H
>  #define _ASM_RISCV_PGTABLE_64_H
>
> +#if !defined(CONFIG_RISCV_VM_SV39)
> +#error Only Sv39 supported for now
> +#endif
> +
>  #include <linux/const.h>
>
>  #define PGDIR_SHIFT     30
> --

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
