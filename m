Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09675C97E1
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTWdzWSDmERXIGcU1i8EUJ7elNdYtB+OdP/QsIkZeWM=; b=dVusdhI9JgKPia
	SjLm0KWyu/5jsCpoGiVXt9yWsruMma9FrXDWF9VRCaBxHDBSIG38wsLiYNpy30VecY3QxQSEBWUVB
	vmY1wwdzCSZpqIAZNk0Gg+MAvvSGeTP0xGkKC5hVRBltri0LaXXIH9RPtTvE0xf3Ul2pvCRCNQQ2E
	V435uIK+hMbyAkXhgoATHe6NtGZ++sSIc7pDI+0ufIAbXgLqO+1WwfC3cCx6W2geBMsZko7omeFTC
	sKhfwPgowFn/lTnNy62U1HM9BJ80Wujm3c9Le19cg8zgZGxxwPCYmtgt98tJfUmdGX+XPftSrAqG8
	e6jWa8FJB1QEPf2+4R6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtVi-0008Hi-Ub; Thu, 03 Oct 2019 05:18:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtVe-0008HH-1o
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:18:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so1410900wrd.3
 for <linux-riscv@lists.infradead.org>; Wed, 02 Oct 2019 22:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8SFU7QP3pWI0aJrQ1LBVYk0BXMjUssoTIenqbocU0FA=;
 b=iX25iQf0pHMOjERAg6UKVnJSyWO5j3LYO9bkNgxkFaiu9Sovp9Kg0tUoTMuZSxK5DH
 joZbrLtpV4SU0Fswv7cl2KyuvoZiH1VNAxNLHB1b3zQk/EYSuc8PbE4qRx2ZCnbJkG/g
 oNx2NYb3jTV0h+1jJtkWCJQSQfd169tRNDGXrnoak7/0BOTygLm7v5ydmPNtIDsW+h8O
 sWHHmx/kmLtsxS0RWQ3oGOrkxn9O75s7HMbpv02fT54pZzBfaNp0cwU7EhjXlPUJgdpa
 qtLaGdpJ7v1JErS5l+9awy7Ey5+MRoocMX7OAkMM90bbe9l2CuA+hSKvjXUG/2VDyhrs
 0UyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8SFU7QP3pWI0aJrQ1LBVYk0BXMjUssoTIenqbocU0FA=;
 b=qXx2sm6J5uUTp9fNhw/OWnSKdEc/6m/vdavv0SzgveWA6GnKrqD9yJLirFJx1Z6v3L
 WkG8GhaQTD74SkZiQOipZer9laLBxDGcGOghoOiA0QvyZnURpavDsF7LhBUiqls3NZeA
 65+dR/pMKztnj2oYiDica8UMOQcTD4ZNlsGMPYqKwB9/LP02+NUIcV3A6Z1Hbb3fp8yr
 +fhukvZ8zBuaDrOUafypVXs9uoxhjR8K8XP5TPzBbhTMafJDE1ln/4EJl4d+11UuDtSJ
 zjwwiwf5wqLVLDDSiprO2GatbvA3P/O8vdaimugrsoBbNju3fn3udZEcbxL3rHXbKwxf
 Ogcw==
X-Gm-Message-State: APjAAAUDUg5M/62OqXLBiQ++hXT0pvCOBuI/PeBhxG5rkCW+iWsQOmTQ
 uXD3bnr12wvJTHXQKkrtbWLQUcOpXhjhkrsalVaGWg==
X-Google-Smtp-Source: APXvYqzbhFgeZyc37BVq0hrJucB+tF7IhFcRa3iYTzG/A5FmTtYf66YJ0puCzapgdLZolJNg06Pg9WZtB031PW+daTo=
X-Received: by 2002:a5d:50c8:: with SMTP id f8mr2740740wrt.96.1570079915524;
 Wed, 02 Oct 2019 22:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190927000915.31781-1-atish.patra@wdc.com>
 <20190927000915.31781-3-atish.patra@wdc.com>
In-Reply-To: <20190927000915.31781-3-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 3 Oct 2019 10:48:23 +0530
Message-ID: <CAAhSdy0cH6_Ygdygj=QWVVi68PV=kf-_JEBDmMjyN6-heDLMqw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] RISC-V: Add basic support for SBI v0.2
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_221838_206965_A7EDC6D6 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 5:39 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> The SBI v0.2 introduces a base extension which is backward compatible
> with v0.1. Implement all helper functions and minimum required SBI
> calls from v0.2 for now. All other base extension function will be
> added later as per need.
> As v0.2 calling convention is backward compatible with v0.1, remove
> the v0.1 helper functions and just use v0.2 calling convention.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 139 ++++++++++----------
>  arch/riscv/kernel/Makefile   |   1 +
>  arch/riscv/kernel/sbi.c      | 241 +++++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/setup.c    |   2 +
>  4 files changed, 311 insertions(+), 72 deletions(-)
>  create mode 100644 arch/riscv/kernel/sbi.c
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 2147f384fad0..279b7f10b3c2 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -8,93 +8,88 @@
>
>  #include <linux/types.h>
>
> -#define SBI_EXT_0_1_SET_TIMER 0x0
> -#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
> -#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
> -#define SBI_EXT_0_1_CLEAR_IPI 0x3
> -#define SBI_EXT_0_1_SEND_IPI 0x4
> -#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
> -#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
> -#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
> -#define SBI_EXT_0_1_SHUTDOWN 0x8
> +enum sbi_ext_id {
> +       SBI_EXT_0_1_SET_TIMER = 0x0,
> +       SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
> +       SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
> +       SBI_EXT_0_1_CLEAR_IPI = 0x3,
> +       SBI_EXT_0_1_SEND_IPI = 0x4,
> +       SBI_EXT_0_1_REMOTE_FENCE_I = 0x5,
> +       SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
> +       SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
> +       SBI_EXT_0_1_SHUTDOWN = 0x8,
> +       SBI_EXT_BASE = 0x10,
> +};
>
> -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
> -       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> -       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> -       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> -       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> -       register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> -       asm volatile ("ecall"                                   \
> -                     : "+r" (a0)                               \
> -                     : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> -                     : "memory");                              \
> -       a0;                                                     \
> -})
> +enum sbi_ext_base_fid {
> +       SBI_BASE_GET_SPEC_VERSION = 0,
> +       SBI_BASE_GET_IMP_ID,
> +       SBI_BASE_GET_IMP_VERSION,
> +       SBI_BASE_PROBE_EXT,
> +       SBI_BASE_GET_MVENDORID,
> +       SBI_BASE_GET_MARCHID,
> +       SBI_BASE_GET_MIMPID,
> +};
>
> -/* Lazy implementations until SBI is finalized */
> -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
> -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
> -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
> -#define SBI_CALL_3(which, arg0, arg1, arg2) \
> -               SBI_CALL(which, arg0, arg1, arg2, 0)
> -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
> -               SBI_CALL(which, arg0, arg1, arg2, arg3)
> +#define SBI_SPEC_VERSION_DEFAULT       0x1
> +#define SBI_SPEC_VERSION_MAJOR_OFFSET  24
> +#define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> +#define SBI_SPEC_VERSION_MINOR_MASK    0xffffff
>
> -static inline void sbi_console_putchar(int ch)
> -{
> -       SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
> -}
> +/* SBI return error codes */
> +#define SBI_SUCCESS            0
> +#define SBI_ERR_FAILURE                -1
> +#define SBI_ERR_NOT_SUPPORTED  -2
> +#define SBI_ERR_INVALID_PARAM   -3
> +#define SBI_ERR_DENIED         -4
> +#define SBI_ERR_INVALID_ADDRESS -5
>
> -static inline int sbi_console_getchar(void)
> -{
> -       return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
> -}
> -
> -static inline void sbi_set_timer(uint64_t stime_value)
> -{
> -#if __riscv_xlen == 32
> -       SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
> -                         stime_value >> 32);
> -#else
> -       SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
> -#endif
> -}
> +extern unsigned long sbi_spec_version;
> +struct sbiret {
> +       long error;
> +       long value;
> +};
>
> -static inline void sbi_shutdown(void)
> -{
> -       SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
> -}
> +void sbi_init(void);
> +struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
> +                             unsigned long arg1, unsigned long arg2,
> +                             unsigned long arg3);
> +int sbi_err_map_linux_errorno(int err);
>
> -static inline void sbi_clear_ipi(void)
> -{
> -       SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
> -}
> +void sbi_console_putchar(int ch);
> +int sbi_console_getchar(void);
> +void sbi_set_timer(uint64_t stime_value);
> +void sbi_shutdown(void);
> +void sbi_clear_ipi(void);
> +void sbi_send_ipi(const unsigned long *hart_mask);
> +void sbi_remote_fence_i(const unsigned long *hart_mask);
> +void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> +                          unsigned long start,
> +                          unsigned long size);
>
> -static inline void sbi_send_ipi(const unsigned long *hart_mask)
> -{
> -       SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
> -}
> +void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> +                               unsigned long start,
> +                               unsigned long size,
> +                               unsigned long asid);
> +int sbi_probe_extension(long ext);
>
> -static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
> +/* Check if current SBI specification version is 0.1 or not */
> +static inline int sbi_spec_is_0_1(void)
>  {
> -       SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
> +       return (sbi_spec_version == SBI_SPEC_VERSION_DEFAULT) ? 1 : 0;
>  }
>
> -static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> -                                        unsigned long start,
> -                                        unsigned long size)
> +/* Get the major version of SBI */
> +static inline unsigned long sbi_major_version(void)
>  {
> -       SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
> -                         start, size);
> +       return (sbi_spec_version >> SBI_SPEC_VERSION_MAJOR_OFFSET) &
> +               SBI_SPEC_VERSION_MAJOR_MASK;
>  }
>
> -static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> -                                             unsigned long start,
> -                                             unsigned long size,
> -                                             unsigned long asid)
> +/* Get the minor version of SBI */
> +static inline unsigned long sbi_minor_version(void)
>  {
> -       SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
> -                         start, size, asid);
> +       return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
>  }
>
>  #endif
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 2420d37d96de..faf862d26924 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -17,6 +17,7 @@ obj-y += irq.o
>  obj-y  += process.o
>  obj-y  += ptrace.o
>  obj-y  += reset.o
> +obj-y  += sbi.o
>  obj-y  += setup.o
>  obj-y  += signal.o
>  obj-y  += syscall_table.o
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> new file mode 100644
> index 000000000000..315fcb925278
> --- /dev/null
> +++ b/arch/riscv/kernel/sbi.c
> @@ -0,0 +1,241 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <asm/sbi.h>
> +#include <linux/sched.h>
> +
> +/* default SBI version is 0.1 */
> +unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
> +
> +struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
> +                             unsigned long arg1, unsigned long arg2,
> +                             unsigned long arg3)
> +{
> +       struct sbiret ret;
> +
> +       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> +       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> +       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> +       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> +       register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> +       register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> +       asm volatile ("ecall"
> +                     : "+r" (a0), "+r" (a1)
> +                     : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> +                     : "memory");
> +       ret.error = a0;
> +       ret.value = a1;
> +
> +       return ret;
> +}
> +
> +int sbi_err_map_linux_errno(int err)
> +{
> +       switch (err) {
> +       case SBI_SUCCESS:
> +               return 0;
> +       case SBI_ERR_DENIED:
> +               return -EPERM;
> +       case SBI_ERR_INVALID_PARAM:
> +               return -EINVAL;
> +       case SBI_ERR_INVALID_ADDRESS:
> +               return -EFAULT;
> +       case SBI_ERR_NOT_SUPPORTED:
> +       case SBI_ERR_FAILURE:
> +       default:
> +               return -ENOTSUPP;
> +       };
> +}
> +
> +/**
> + * sbi_console_putchar() - Writes given character to the console device.
> + * @ch: The data to be written to the console.
> + *
> + * Return: None
> + */
> +void sbi_console_putchar(int ch)
> +{
> +       sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0);
> +}
> +
> +/**
> + * sbi_console_getchar() - Reads a byte from console device.
> + *
> + * Returns the value read from console.
> + */
> +int sbi_console_getchar(void)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0);
> +
> +       return ret.error;
> +}
> +
> +/**
> + * sbi_set_timer() - Program the timer for next timer event.
> + * @stime_value: The value after which next timer event should fire.
> + *
> + * Return: None
> + */
> +void sbi_set_timer(uint64_t stime_value)
> +{
> +#if __riscv_xlen == 32
> +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> +                         stime_value >> 32, 0, 0);
> +#else
> +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0);
> +#endif
> +}
> +
> +/**
> + * sbi_shutdown() - Remove all the harts from executing supervisor code.
> + *
> + * Return: None
> + */
> +void sbi_shutdown(void)
> +{
> +       sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0);
> +}
> +
> +/**
> + * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> + *
> + * Return: None
> + */
> +void sbi_clear_ipi(void)
> +{
> +       sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0);
> +}
> +
> +/**
> + * sbi_send_ipi() - Send an IPI to any hart.
> + * @hart_mask: A cpu mask containing all the target harts.
> + *
> + * Return: None
> + */
> +void sbi_send_ipi(const unsigned long *hart_mask)
> +{
> +       sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
> +                       0, 0, 0);
> +}
> +
> +/**
> + * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
> + * @hart_mask: A cpu mask containing all the target harts.
> + *
> + * Return: None
> + */
> +void sbi_remote_fence_i(const unsigned long *hart_mask)
> +{
> +       sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
> +                       0, 0, 0);
> +}
> +
> +/**
> + * sbi_remote_sfence_vma() - Execute SFENCE.VMA instructions on given remote
> + *                          harts for the specified virtual address range.
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the virtual address
> + * @size: Total size of the virtual address range.
> + *
> + * Return: None
> + */
> +void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> +                                        unsigned long start,
> +                                        unsigned long size)
> +{
> +       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +                       (unsigned long)hart_mask, start, size, 0);
> +}
> +
> +/**
> + * sbi_remote_sfence_vma_asid() - Execute SFENCE.VMA instructions on given
> + * remote harts for a virtual address range belonging to a specific ASID.
> + *
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the virtual address
> + * @size: Total size of the virtual address range.
> + * @asid: The value of address space identifier (ASID).
> + *
> + * Return: None
> + */
> +void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> +                                             unsigned long start,
> +                                             unsigned long size,
> +                                             unsigned long asid)
> +{
> +       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +                       (unsigned long)hart_mask, start, size, asid);
> +}
> +
> +/**
> + * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
> + * @extid: The extension ID to be probed.
> + *
> + * Return: Extension specific nonzero value if yes, -ENOTSUPP otherwise.
> + */
> +int sbi_probe_extension(long extid)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_PROBE_EXT, 0, 0, 0, 0);
> +       if (!ret.error)
> +               if (ret.value)
> +                       return ret.value;
> +
> +       return -ENOTSUPP;
> +}

Please EXPORT() all public APIs of SBI.

The KVM RISC-V does not compile as module if these public APIs are not
exported.

Regards,
Anup

> +
> +static long sbi_get_spec_version(void)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_SPEC_VERSION,
> +                              0, 0, 0, 0);
> +       if (!ret.error)
> +               return ret.value;
> +       else
> +               return ret.error;
> +}
> +
> +static long sbi_get_firmware_id(void)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_ID,
> +                              0, 0, 0, 0);
> +       if (!ret.error)
> +               return ret.value;
> +       else
> +               return sbi_err_map_linux_errno(ret.error);
> +}
> +
> +static long sbi_get_firmware_version(void)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_VERSION,
> +                              0, 0, 0, 0);
> +       if (!ret.error)
> +               return ret.value;
> +       else
> +               return sbi_err_map_linux_errno(ret.error);
> +}
> +
> +void sbi_init(void)
> +{
> +       int ret;
> +
> +       ret = sbi_get_spec_version();
> +       if (ret > 0)
> +               sbi_spec_version = ret;
> +
> +       pr_info("SBI specification v%lu.%lu detected\n",
> +               sbi_major_version(), sbi_minor_version());
> +       if (!sbi_spec_is_0_1())
> +               pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
> +                       sbi_get_firmware_id(), sbi_get_firmware_version());
> +}
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index a990a6cb184f..abf2b9ee5307 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -21,6 +21,7 @@
>  #include <asm/sections.h>
>  #include <asm/pgtable.h>
>  #include <asm/smp.h>
> +#include <asm/sbi.h>
>  #include <asm/tlbflush.h>
>  #include <asm/thread_info.h>
>
> @@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
>         swiotlb_init(1);
>  #endif
>
> +       sbi_init();
>  #ifdef CONFIG_SMP
>         setup_smp();
>  #endif
> --
> 2.21.0
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
