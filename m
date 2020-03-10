Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CF317F073
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 07:22:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mddQfMK/AA3VHhx0sXMvvWiCV5dDAw1r7dHFwvG6/9c=; b=nbbnT4mdRUpaB3NGqhiJAXiEb
	yj4u8qKwj8guVhkImVNNBj8hdSGHR+lvrtNpJNrStgMEKE/13YbFhKgiHBOWqDJCeHoGOPUUOhOBc
	WEQgfA1aNWIT7Q6ehQQeUsvjHy5I6Z9DwFsHWw2ONyGLbCh6qwdQ0fsoC8R/1WwzxUf2lXNEkkEFs
	ANkAnk+XBdTxIFWSki4qU1F6ZFmRc1jqjUy+ydWOJpKKLk+YW1Osj3s8nDU96y0ohqoemTxYZ5SM6
	5j2JXIL5MfollqfEUf5vDP6zB3b+bcsbCKZbKE/b5Tu6ENJeDvV+V2MXOLzOUehz34ucamci36jfv
	9NO18NrXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYHL-0006Ny-6G; Tue, 10 Mar 2020 06:22:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYHF-0006Mt-T8
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 06:22:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so764321wme.1
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 23:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mddQfMK/AA3VHhx0sXMvvWiCV5dDAw1r7dHFwvG6/9c=;
 b=GgH4fOgz5QyN/XCMDripQyxGqibCAkG/4neLfHeaCZjOflhuPHSo/PM/TCWxTT2ddp
 zYE3hSD92mk8E2udceIEJoEgx8IAI+dik+X0qlIdnytJj26Hgx5MDbTWDSsrPbEYAb3L
 9KmXpQ3fA1xzlZsYBGa0Z0/yTR4ajvhb0FyeQyp0M4z5DGcPNgdhN+TPl33/3INMG5IW
 Q26YZxcD3VDHONkz7X4FVLGJ32nNGYlrfli2xxm93wjlGRSxahKTAQtxOjmRQQHsZj/n
 M90AS7S/SoI7Ks2+A/oRc3wYOapd6n7poBNceer79LI/RVt8nGxHVdfVhqWan9KQTd/B
 eIrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mddQfMK/AA3VHhx0sXMvvWiCV5dDAw1r7dHFwvG6/9c=;
 b=T18Y6qnsdxJubDWDT3LpzoMNpbW0k1NunhPgAfgXH/HdMZdI7pUrciRHEr24oITpnX
 KHHWfurSq+iFk/B0nFGLnTA1aiEW/tdp3v9H31EMECw5+5dkTiZL8JgB7XbuCkxuR//H
 I3vwy9WE0dqsZ/Q7gV/XCnaGJ6CQ+VM1VeD/jq+RA+OGl5+/wxewBvuOH6+1GKSNFDZN
 ZdG8rAZulTV457xRis5/7zaiTfFH8w+42AAbjn8SZclkNsvHcHrCR2/nmbf/4oCY3RJC
 0pnh+B22fLD3O97MxW3n+bhatca47KHp397mKf4rIiyF3buEEb0cPQA58euxl/ZsAOCB
 GpOQ==
X-Gm-Message-State: ANhLgQ2R/flWeKgyYXsk7lwox4ke2w2UEv73gXmkHpMlLiFIy1ViKLSl
 MEi4EsCdje8w4vzpmUDwa76jOTKp05tU7cNER7Q9
X-Google-Smtp-Source: ADFU+vug9Ck0KEE/plkc5wfAom5m1Qdb/GvNPVfBtJCDPH0yDGi4NoWwi8kg+74q2LwiWRLv/O5o4k1Ewt9sbraMbZ8=
X-Received: by 2002:a1c:4d13:: with SMTP id o19mr220881wmh.186.1583821322445; 
 Mon, 09 Mar 2020 23:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200221004413.12869-1-atish.patra@wdc.com>
 <20200221004413.12869-3-atish.patra@wdc.com>
 <CAEUhbmU4QZXMHSuz3WWnjiUygMRhACyXAUHqXUuuaDP2jOqixg@mail.gmail.com>
In-Reply-To: <CAEUhbmU4QZXMHSuz3WWnjiUygMRhACyXAUHqXUuuaDP2jOqixg@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 9 Mar 2020 23:21:51 -0700
Message-ID: <CAOnJCUJmLeXcD93m6mxpj0chS32Xfi8TyspPv8W7-OUGXomj2A@mail.gmail.com>
Subject: Re: [PATCH v9 02/12] RISC-V: Add basic support for SBI v0.2
To: Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_232206_391035_9037C0A3 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 3:34 AM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> On Fri, Feb 21, 2020 at 8:45 AM Atish Patra <atish.patra@wdc.com> wrote:
> >
> > The SBI v0.2 introduces a base extension which is backward compatible
> > with v0.1. Implement all helper functions and minimum required SBI
> > calls from v0.2 for now. All other base extension function will be
> > added later as per need.
> > As v0.2 calling convention is backward compatible with v0.1, remove
> > the v0.1 helper functions and just use v0.2 calling convention.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Reviewed-by: Anup Patel <anup@brainfault.org>
> > Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > ---
> >  arch/riscv/include/asm/sbi.h | 140 ++++++++++----------
> >  arch/riscv/kernel/sbi.c      | 243 ++++++++++++++++++++++++++++++++++-
> >  arch/riscv/kernel/setup.c    |   5 +
> >  3 files changed, 314 insertions(+), 74 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > index b38bc36f7429..fbdb7443784a 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -10,93 +10,88 @@
> >  #include <linux/types.h>
> >
> >  #ifdef CONFIG_RISCV_SBI
> > -#define SBI_EXT_0_1_SET_TIMER 0x0
> > -#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
> > -#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
> > -#define SBI_EXT_0_1_CLEAR_IPI 0x3
> > -#define SBI_EXT_0_1_SEND_IPI 0x4
> > -#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
> > -#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
> > -#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
> > -#define SBI_EXT_0_1_SHUTDOWN 0x8
> > +enum sbi_ext_id {
> > +       SBI_EXT_0_1_SET_TIMER = 0x0,
> > +       SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
> > +       SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
> > +       SBI_EXT_0_1_CLEAR_IPI = 0x3,
> > +       SBI_EXT_0_1_SEND_IPI = 0x4,
> > +       SBI_EXT_0_1_REMOTE_FENCE_I = 0x5,
> > +       SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
> > +       SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
> > +       SBI_EXT_0_1_SHUTDOWN = 0x8,
> > +       SBI_EXT_BASE = 0x10,
> > +};
> >
> > -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
> > -       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> > -       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> > -       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> > -       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> > -       register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> > -       asm volatile ("ecall"                                   \
> > -                     : "+r" (a0)                               \
> > -                     : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> > -                     : "memory");                              \
> > -       a0;                                                     \
> > -})
> > +enum sbi_ext_base_fid {
> > +       SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> > +       SBI_EXT_BASE_GET_IMP_ID,
> > +       SBI_EXT_BASE_GET_IMP_VERSION,
> > +       SBI_EXT_BASE_PROBE_EXT,
> > +       SBI_EXT_BASE_GET_MVENDORID,
> > +       SBI_EXT_BASE_GET_MARCHID,
> > +       SBI_EXT_BASE_GET_MIMPID,
> > +};
> >
> > -/* Lazy implementations until SBI is finalized */
> > -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
> > -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
> > -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
> > -#define SBI_CALL_3(which, arg0, arg1, arg2) \
> > -               SBI_CALL(which, arg0, arg1, arg2, 0)
> > -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
> > -               SBI_CALL(which, arg0, arg1, arg2, arg3)
> > +#define SBI_SPEC_VERSION_DEFAULT       0x1
> > +#define SBI_SPEC_VERSION_MAJOR_SHIFT   24
> > +#define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> > +#define SBI_SPEC_VERSION_MINOR_MASK    0xffffff
> >
> > -static inline void sbi_console_putchar(int ch)
> > -{
> > -       SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
> > -}
> > +/* SBI return error codes */
> > +#define SBI_SUCCESS            0
> > +#define SBI_ERR_FAILURE                -1
> > +#define SBI_ERR_NOT_SUPPORTED  -2
> > +#define SBI_ERR_INVALID_PARAM   -3
>
> nits: should use tab before -3
>
> > +#define SBI_ERR_DENIED         -4
> > +#define SBI_ERR_INVALID_ADDRESS -5
>
> nits: should use tab before -5
>
> >
> > -static inline int sbi_console_getchar(void)
> > -{
> > -       return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
> > -}
> > +extern unsigned long sbi_spec_version;
> > +struct sbiret {
> > +       long error;
> > +       long value;
> > +};
> >
> > -static inline void sbi_set_timer(uint64_t stime_value)
> > -{
> > -#if __riscv_xlen == 32
> > -       SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
> > -                         stime_value >> 32);
> > -#else
> > -       SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
> > -#endif
> > -}
> > -
> > -static inline void sbi_shutdown(void)
> > -{
> > -       SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
> > -}
> > +int sbi_init(void);
> > +struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
> > +                       unsigned long arg1, unsigned long arg2,
> > +                       unsigned long arg3, unsigned long arg4,
> > +                       unsigned long arg5);
> >
> > -static inline void sbi_clear_ipi(void)
> > -{
> > -       SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
> > -}
> > +void sbi_console_putchar(int ch);
> > +int sbi_console_getchar(void);
> > +void sbi_set_timer(uint64_t stime_value);
> > +void sbi_shutdown(void);
> > +void sbi_clear_ipi(void);
> > +void sbi_send_ipi(const unsigned long *hart_mask);
> > +void sbi_remote_fence_i(const unsigned long *hart_mask);
> > +void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> > +                          unsigned long start,
> > +                          unsigned long size);
> >
> > -static inline void sbi_send_ipi(const unsigned long *hart_mask)
> > -{
> > -       SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
> > -}
> > +void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > +                               unsigned long start,
> > +                               unsigned long size,
> > +                               unsigned long asid);
> > +int sbi_probe_extension(int ext);
> >
> > -static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
> > +/* Check if current SBI specification version is 0.1 or not */
> > +static inline int sbi_spec_is_0_1(void)
> >  {
> > -       SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
> > +       return (sbi_spec_version == SBI_SPEC_VERSION_DEFAULT) ? 1 : 0;
> >  }
> >
> > -static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> > -                                        unsigned long start,
> > -                                        unsigned long size)
> > +/* Get the major version of SBI */
> > +static inline unsigned long sbi_major_version(void)
> >  {
> > -       SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
> > -                         start, size);
> > +       return (sbi_spec_version >> SBI_SPEC_VERSION_MAJOR_SHIFT) &
> > +               SBI_SPEC_VERSION_MAJOR_MASK;
> >  }
> >
> > -static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > -                                             unsigned long start,
> > -                                             unsigned long size,
> > -                                             unsigned long asid)
> > +/* Get the minor version of SBI */
> > +static inline unsigned long sbi_minor_version(void)
> >  {
> > -       SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
> > -                         start, size, asid);
> > +       return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
> >  }
> >  #else /* CONFIG_RISCV_SBI */
> >  /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
> > @@ -104,5 +99,6 @@ void sbi_set_timer(uint64_t stime_value);
> >  void sbi_clear_ipi(void);
> >  void sbi_send_ipi(const unsigned long *hart_mask);
> >  void sbi_remote_fence_i(const unsigned long *hart_mask);
> > +void sbi_init(void);
> >  #endif /* CONFIG_RISCV_SBI */
> >  #endif /* _ASM_RISCV_SBI_H */
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > index f6c7c3e82d28..33632e7f91da 100644
> > --- a/arch/riscv/kernel/sbi.c
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -1,17 +1,256 @@
> >  // SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * SBI initialilization and all extension implementation.
> > + *
> > + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> > + */
> >
> >  #include <linux/init.h>
> >  #include <linux/pm.h>
> >  #include <asm/sbi.h>
> >
> > +/* default SBI version is 0.1 */
> > +unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
> > +EXPORT_SYMBOL(sbi_spec_version);
> > +
> > +struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
> > +                       unsigned long arg1, unsigned long arg2,
> > +                       unsigned long arg3, unsigned long arg4,
> > +                       unsigned long arg5)
> > +{
> > +       struct sbiret ret;
> > +
> > +       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> > +       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> > +       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> > +       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> > +       register uintptr_t a4 asm ("a4") = (uintptr_t)(arg4);
> > +       register uintptr_t a5 asm ("a5") = (uintptr_t)(arg5);
> > +       register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> > +       register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> > +       asm volatile ("ecall"
> > +                     : "+r" (a0), "+r" (a1)
> > +                     : "r" (a2), "r" (a3), "r" (a4), "r" (a5), "r" (a6), "r" (a7)
> > +                     : "memory");
> > +       ret.error = a0;
> > +       ret.value = a1;
> > +
> > +       return ret;
> > +}
> > +EXPORT_SYMBOL(sbi_ecall);
> > +
> > +static int sbi_err_map_linux_errno(int err)
> > +{
> > +       switch (err) {
> > +       case SBI_SUCCESS:
> > +               return 0;
> > +       case SBI_ERR_DENIED:
> > +               return -EPERM;
> > +       case SBI_ERR_INVALID_PARAM:
> > +               return -EINVAL;
> > +       case SBI_ERR_INVALID_ADDRESS:
> > +               return -EFAULT;
> > +       case SBI_ERR_NOT_SUPPORTED:
> > +       case SBI_ERR_FAILURE:
> > +       default:
> > +               return -ENOTSUPP;
> > +       };
> > +}
> > +
> > +/**
> > + * sbi_console_putchar() - Writes given character to the console device.
> > + * @ch: The data to be written to the console.
> > + *
> > + * Return: None
> > + */
> > +void sbi_console_putchar(int ch)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_console_putchar);
> > +
> > +/**
> > + * sbi_console_getchar() - Reads a byte from console device.
> > + *
> > + * Returns the value read from console.
> > + */
> > +int sbi_console_getchar(void)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0, 0, 0);
> > +
> > +       return ret.error;
> > +}
> > +EXPORT_SYMBOL(sbi_console_getchar);
> > +
> > +/**
> > + * sbi_set_timer() - Program the timer for next timer event.
> > + * @stime_value: The value after which next timer event should fire.
> > + *
> > + * Return: None
> > + */
> > +void sbi_set_timer(uint64_t stime_value)
> > +{
> > +#if __riscv_xlen == 32
> > +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> > +                         stime_value >> 32, 0, 0, 0, 0);
>
> nits: leading spaces before stime_value. The alignment should match
> open parenthesis of previous line
>
> > +#else
> > +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
> > +#endif
> > +}
> > +EXPORT_SYMBOL(sbi_set_timer);
> > +
> > +/**
> > + * sbi_shutdown() - Remove all the harts from executing supervisor code.
> > + *
> > + * Return: None
> > + */
> > +void sbi_shutdown(void)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_shutdown);
> > +
> > +/**
> > + * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> > + *
> > + * Return: None
> > + */
> > +void sbi_clear_ipi(void)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
> > +}
> > +
> > +/**
> > + * sbi_send_ipi() - Send an IPI to any hart.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + *
> > + * Return: None
> > + */
> > +void sbi_send_ipi(const unsigned long *hart_mask)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
> > +                       0, 0, 0, 0, 0);
>
> nits: the alignment should match open parenthesis of previous line
>
> > +}
> > +EXPORT_SYMBOL(sbi_send_ipi);
> > +
> > +/**
> > + * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + *
> > + * Return: None
> > + */
> > +void sbi_remote_fence_i(const unsigned long *hart_mask)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
> > +                       0, 0, 0, 0, 0);
>
> nits: the alignment should match open parenthesis of previous line
>
> > +}
> > +EXPORT_SYMBOL(sbi_remote_fence_i);
> > +
> > +/**
> > + * sbi_remote_sfence_vma() - Execute SFENCE.VMA instructions on given remote
> > + *                          harts for the specified virtual address range.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the virtual address
> > + * @size: Total size of the virtual address range.
> > + *
> > + * Return: None
> > + */
> > +void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> > +                                        unsigned long start,
> > +                                        unsigned long size)
>
> nits: the alignment of above 2 lines should match open parenthesis of
> previous line
>
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> > +                       (unsigned long)hart_mask, start, size, 0, 0, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_sfence_vma);
> > +
> > +/**
> > + * sbi_remote_sfence_vma_asid() - Execute SFENCE.VMA instructions on given
> > + * remote harts for a virtual address range belonging to a specific ASID.
> > + *
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the virtual address
> > + * @size: Total size of the virtual address range.
> > + * @asid: The value of address space identifier (ASID).
> > + *
> > + * Return: None
> > + */
> > +void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > +                                             unsigned long start,
> > +                                             unsigned long size,
> > +                                             unsigned long asid)
>
> nits: the alignment of above 3 lines should match open parenthesis of
> previous line
>
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> > +                       (unsigned long)hart_mask, start, size, asid, 0, 0);
>
> nits: the alignment should match open parenthesis of previous line
>
> > +}
> > +EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
> > +
> > +/**
> > + * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
> > + * @extid: The extension ID to be probed.
> > + *
> > + * Return: Extension specific nonzero value f yes, -ENOTSUPP otherwise.
> > + */
> > +int sbi_probe_extension(int extid)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_BASE, SBI_EXT_BASE_PROBE_EXT, extid,
> > +                       0, 0, 0, 0, 0);
>
> nits: the alignment should match open parenthesis of previous line
>
> > +       if (!ret.error)
> > +               if (ret.value)
> > +                       return ret.value;
> > +
> > +       return -ENOTSUPP;
> > +}
> > +EXPORT_SYMBOL(sbi_probe_extension);
> > +
> > +static long __sbi_base_ecall(int fid)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_BASE, fid, 0, 0, 0, 0, 0, 0);
> > +       if (!ret.error)
> > +               return ret.value;
> > +       else
> > +               return sbi_err_map_linux_errno(ret.error);
> > +}
> > +
> > +static inline long sbi_get_spec_version(void)
> > +{
> > +       return __sbi_base_ecall(SBI_EXT_BASE_GET_SPEC_VERSION);
> > +}
> > +
> > +static inline long sbi_get_firmware_id(void)
> > +{
> > +       return __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_ID);
> > +}
> > +
> > +static inline long sbi_get_firmware_version(void)
> > +{
> > +       return __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION);
> > +}
> > +
> >  static void sbi_power_off(void)
> >  {
> >         sbi_shutdown();
> >  }
> >
> > -static int __init sbi_init(void)
> > +int __init sbi_init(void)
> >  {
> > +       int ret;
> > +
> >         pm_power_off = sbi_power_off;
> > +       ret = sbi_get_spec_version();
> > +       if (ret > 0)
> > +               sbi_spec_version = ret;
> > +
> > +       pr_info("SBI specification v%lu.%lu detected\n",
> > +               sbi_major_version(), sbi_minor_version());
> > +       if (!sbi_spec_is_0_1())
> > +               pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
> > +                       sbi_get_firmware_id(), sbi_get_firmware_version());
> >         return 0;
> >  }
> > -early_initcall(sbi_init);
> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > index 0a6d415b0a5a..582ecbed6442 100644
> > --- a/arch/riscv/kernel/setup.c
> > +++ b/arch/riscv/kernel/setup.c
> > @@ -22,6 +22,7 @@
> >  #include <asm/sections.h>
> >  #include <asm/pgtable.h>
> >  #include <asm/smp.h>
> > +#include <asm/sbi.h>
> >  #include <asm/tlbflush.h>
> >  #include <asm/thread_info.h>
> >  #include <asm/kasan.h>
> > @@ -79,6 +80,10 @@ void __init setup_arch(char **cmdline_p)
> >         kasan_init();
> >  #endif
> >
> > +#if IS_ENABLED(CONFIG_RISCV_SBI)
> > +               sbi_init();
> > +#endif
> > +
> >  #ifdef CONFIG_SMP
> >         setup_smp();
> >  #endif
> > --
>
> Regards,
> Bin
>

Thanks. I will fix all the nits in next version.

-- 
Regards,
Atish

