Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7403F1A1A5F
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 05:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xw2rI/jmpxVQh3fg5HZvbuztTOiWeSN/YRHbSv4sdDQ=; b=Tr3h79Ab5XsHKRnD6KuTEzDZe
	PjioIBAjbKz3i5ikQ6beIj4ziyg8IALtr0kSGtyBV7rSu4PqdkBkhrOYhXMCUB8Lq3X8xzH4m/NkW
	99gpNQyxo5bk9zIi0S8NBbFXfrbSVCQlZFHajNgeenA+zR/xzGlo78V2CLbATvpED++V/rG1J8pa5
	ecxdlkbVY6YpgT8Upa82wUbhEwgSdJ5yxJfqvPQAUBZO06fUYabE6bjUIMVhp1XTCr5qbU954/6S0
	8RkZ3U1UeePIwJjfwRPzeyH1KHp6zsAQRkZY6F9lx4zt/mQN84jSLKp3esXefj/LuOy0Xog6Vdogs
	kx+bscngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM1kx-0003IV-S3; Wed, 08 Apr 2020 03:52:03 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM1ku-0003Hr-At
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 03:52:02 +0000
Received: by mail-ot1-x342.google.com with SMTP id q2so2707543otk.7
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 20:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xw2rI/jmpxVQh3fg5HZvbuztTOiWeSN/YRHbSv4sdDQ=;
 b=DHKeeqH6Q3E68LNdbDbqIx4CouB3Y8X149/xttc6yHxlRm60ztbyCGSaM+cEHF0wHj
 La2e1NkGONdfQnkTbxjnzu+jVp6+5ttGid5efU8OkQB0csXNWo5wfG8u1NGd449UkjFL
 4GE4vzyn3TcXMrQdNaZjZFCkf2cc+yaV1PyYB2qBtpF3i5Di3ell7tOE8ksK1AJdfiDr
 pTsLn0YZv3Cff6BJEtbw8md+RHTwObf3MHY3H+6SPyQVfT//leSdLXG54SUMlCEL1wUb
 DD/71WuhEA4GusruqLRrfQukgrWvrwTvWYc7jnfvVIJ8xMf5LgXGghIF+jK4svC8Ou9R
 6gsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xw2rI/jmpxVQh3fg5HZvbuztTOiWeSN/YRHbSv4sdDQ=;
 b=Fppkz3IcP6C1v/TxtrXV6B1sIeARWXpVPcN0DaKjFJsmibrEkNgGDuBIuj2B0+M2SJ
 dAPC1tbdIVs8KMEQxsxBFeZQaUMjMl0wPLwC3O6CqYg2wTTTWmS/ne5mbVd7v1VJFfmR
 +Zl6z1yVAyfi3TJoekWJAaDjTo+Wb7SbxAeJxrKAUIb8/rMdh2HFD2043K4VXM2Oghrj
 5USu5r/gzmBeFZxhIX7Jbrl5DO0kBUf+Jtq9lj5sC550VKEK5PiZ3XssRD1kfp/yTw/w
 6Ic5qiNxmJCNVHuwXaegbhsurGFnWXcAMS5ixOmya+p1AjyQDon+oYCvxI8TeI2o3oca
 IlYg==
X-Gm-Message-State: AGi0PubLJdvz3R7YGHvdmxrPrILbzobRA+P41ti0znpBCYn7T0QO4Rj9
 /ay18hovVZKhj4qu1k3RS4Ma02mcne7N+k6JnDzBxQ==
X-Google-Smtp-Source: APiQypKidIcy81Re1WUxWRaaF/ZfKWH4GrAhl8S4y6oJIoAmx0g/bqCZFCYAWXXPw3xD9LnSCoCtQMpILlRwfxJ3QxM=
X-Received: by 2002:a9d:2002:: with SMTP id n2mr4457288ota.127.1586317916395; 
 Tue, 07 Apr 2020 20:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586265122.git.zong.li@sifive.com>
 <a491ce48973a0b4f0eed3fe4e97d6a07cb6d6ae8.1586265122.git.zong.li@sifive.com>
 <20200408005850.5e1a7666013f080ff60020e2@kernel.org>
In-Reply-To: <20200408005850.5e1a7666013f080ff60020e2@kernel.org>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 8 Apr 2020 11:51:46 +0800
Message-ID: <CANXhq0oYbF17wL9eYfdN_N9ofCpvUwi4Reyf145YHJTpDOsjTA@mail.gmail.com>
Subject: Re: [PATCH v4 2/9] riscv: introduce interfaces to patch kernel code
To: Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_205200_541543_E8D1A311 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 11:58 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>
> Hi Zong,
>
> On Tue,  7 Apr 2020 22:46:47 +0800
> Zong Li <zong.li@sifive.com> wrote:
>
> > On strict kernel memory permission, we couldn't patch code without
> > writable permission. Preserve two holes in fixmap area, so we can map
> > the kernel code temporarily to fixmap area, then patch the instructions.
> >
> > We need two pages here because we support the compressed instruction, so
> > the instruction might be align to 2 bytes. When patching the 32-bit
> > length instruction which is 2 bytes alignment, it will across two pages.
> >
> > Introduce two interfaces to patch kernel code:
> > riscv_patch_text_nosync:
> >  - patch code without synchronization, it's caller's responsibility to
> >    synchronize all CPUs if needed.
> > riscv_patch_text:
> >  - patch code and always synchronize with stop_machine()
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> > ---
> >  arch/riscv/include/asm/fixmap.h |   2 +
> >  arch/riscv/include/asm/patch.h  |  12 ++++
> >  arch/riscv/kernel/Makefile      |   4 +-
> >  arch/riscv/kernel/patch.c       | 120 ++++++++++++++++++++++++++++++++
> >  4 files changed, 137 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/include/asm/patch.h
> >  create mode 100644 arch/riscv/kernel/patch.c
> >
> > diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> > index 42d2c42f3cc9..2368d49eb4ef 100644
> > --- a/arch/riscv/include/asm/fixmap.h
> > +++ b/arch/riscv/include/asm/fixmap.h
> > @@ -27,6 +27,8 @@ enum fixed_addresses {
> >       FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
> >       FIX_PTE,
> >       FIX_PMD,
> > +     FIX_TEXT_POKE1,
> > +     FIX_TEXT_POKE0,
> >       FIX_EARLYCON_MEM_BASE,
> >       __end_of_fixed_addresses
> >  };
> > diff --git a/arch/riscv/include/asm/patch.h b/arch/riscv/include/asm/patch.h
> > new file mode 100644
> > index 000000000000..9a7d7346001e
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/patch.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2020 SiFive
> > + */
> > +
> > +#ifndef _ASM_RISCV_PATCH_H
> > +#define _ASM_RISCV_PATCH_H
> > +
> > +int patch_text_nosync(void *addr, const void *insns, size_t len);
> > +int patch_text(void *addr, u32 insn);
> > +
> > +#endif /* _ASM_RISCV_PATCH_H */
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index f40205cb9a22..d189bd3d8501 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -4,7 +4,8 @@
> >  #
> >
> >  ifdef CONFIG_FTRACE
> > -CFLAGS_REMOVE_ftrace.o = -pg
> > +CFLAGS_REMOVE_ftrace.o       = -pg
> > +CFLAGS_REMOVE_patch.o        = -pg
> >  endif
> >
> >  extra-y += head.o
> > @@ -26,6 +27,7 @@ obj-y       += traps.o
> >  obj-y        += riscv_ksyms.o
> >  obj-y        += stacktrace.o
> >  obj-y        += cacheinfo.o
> > +obj-y        += patch.o
> >  obj-$(CONFIG_MMU) += vdso.o vdso/
> >
> >  obj-$(CONFIG_RISCV_M_MODE)   += clint.o
> > diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
> > new file mode 100644
> > index 000000000000..5b4f0d37097f
> > --- /dev/null
> > +++ b/arch/riscv/kernel/patch.c
> > @@ -0,0 +1,120 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2020 SiFive
> > + */
> > +
> > +#include <linux/spinlock.h>
> > +#include <linux/mm.h>
> > +#include <linux/uaccess.h>
> > +#include <linux/stop_machine.h>
> > +#include <asm/kprobes.h>
> > +#include <asm/cacheflush.h>
> > +#include <asm/fixmap.h>
> > +
> > +struct patch_insn_patch {
> > +     void *addr;
> > +     u32 insn;
> > +     atomic_t cpu_count;
> > +};
> > +
> > +#ifdef CONFIG_MMU
> > +static void *patch_map(void *addr, int fixmap)
> > +{
> > +     uintptr_t uintaddr = (uintptr_t) addr;
> > +     struct page *page;
> > +
> > +     if (core_kernel_text(uintaddr))
> > +             page = phys_to_page(__pa_symbol(addr));
> > +     else if (IS_ENABLED(CONFIG_STRICT_MODULE_RWX))
> > +             page = vmalloc_to_page(addr);
> > +     else
> > +             return addr;
> > +
> > +     BUG_ON(!page);
> > +
> > +     return (void *)set_fixmap_offset(fixmap, page_to_phys(page) +
> > +                                      (uintaddr & ~PAGE_MASK));
> > +}
> > +NOKPROBE_SYMBOL(patch_map);
> > +
> > +static void patch_unmap(int fixmap)
> > +{
> > +     clear_fixmap(fixmap);
> > +}
> > +NOKPROBE_SYMBOL(patch_unmap);
> > +
>
> Please leave a comment here about text_mutex,
>
> > +static int patch_insn_write(void *addr, const void *insn, size_t len)
> > +{
> > +     void *waddr = addr;
> > +     bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
> > +     int ret;
>
> Or use lockdep_assert_held(&text_mutex); here so that user can easily
> understand they have to lock the text_mutex before calling this.
>

OK, it seems to me that both could be added in the next version. Thanks.

> Thank you,
>
> > +
> > +     if (across_pages)
> > +             patch_map(addr + len, FIX_TEXT_POKE1);
> > +
> > +     waddr = patch_map(addr, FIX_TEXT_POKE0);
> > +
> > +     ret = probe_kernel_write(waddr, insn, len);
> > +
> > +     patch_unmap(FIX_TEXT_POKE0);
> > +
> > +     if (across_pages)
> > +             patch_unmap(FIX_TEXT_POKE1);
> > +
> > +     return ret;
> > +}
> > +NOKPROBE_SYMBOL(patch_insn_write);
> > +#else
> > +static int patch_insn_write(void *addr, const void *insn, size_t len)
> > +{
> > +     return probe_kernel_write(addr, insn, len);
> > +}
> > +NOKPROBE_SYMBOL(patch_insn_write);
> > +#endif /* CONFIG_MMU */
> > +
> > +int patch_text_nosync(void *addr, const void *insns, size_t len)
> > +{
> > +     u32 *tp = addr;
> > +     int ret;
> > +
> > +     ret = patch_insn_write(tp, insns, len);
> > +
> > +     if (!ret)
> > +             flush_icache_range((uintptr_t) tp, (uintptr_t) tp + len);
> > +
> > +     return ret;
> > +}
> > +NOKPROBE_SYMBOL(patch_text_nosync);
> > +
> > +static int patch_text_cb(void *data)
> > +{
> > +     struct patch_insn_patch *patch = data;
> > +     int ret = 0;
> > +
> > +     if (atomic_inc_return(&patch->cpu_count) == 1) {
> > +             ret =
> > +                 patch_text_nosync(patch->addr, &patch->insn,
> > +                                         GET_INSN_LENGTH(patch->insn));
> > +             atomic_inc(&patch->cpu_count);
> > +     } else {
> > +             while (atomic_read(&patch->cpu_count) <= num_online_cpus())
> > +                     cpu_relax();
> > +             smp_mb();
> > +     }
> > +
> > +     return ret;
> > +}
> > +NOKPROBE_SYMBOL(patch_text_cb);
> > +
> > +int patch_text(void *addr, u32 insn)
> > +{
> > +     struct patch_insn_patch patch = {
> > +             .addr = addr,
> > +             .insn = insn,
> > +             .cpu_count = ATOMIC_INIT(0),
> > +     };
> > +
> > +     return stop_machine_cpuslocked(patch_text_cb,
> > +                                    &patch, cpu_online_mask);
> > +}
> > +NOKPROBE_SYMBOL(patch_text);
> > --
> > 2.26.0
> >
>
>
> --
> Masami Hiramatsu <mhiramat@kernel.org>

