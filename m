Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741DA9E487
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 11:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWBK5Z68vSSPQxhP5lRVlGEca1vHPKnRCPvHkM0dnxw=; b=lI05UcIee6TKr/
	ZoHZPZcJgzNhqd52tnCqnGMOpTQYICipE5lZXvp+qgqimMEV+j1yr5VyPVhQBlT14ITJJjiDxOp/r
	tHaxK/5WAGQ8zph81o2vEYHR0y3nD1R0GfJED+OtrKxb4F+9b3qEdTyBG67sOKDr4QIO8JqcSlkv5
	3fqiXKm6NBOywyDrAKrcQpJjgH7IDSpibA52EcFbqWEJQ60GvSzm3Tmn5Ud9RFXi/qGr9dUNxyrjy
	VkXj4Kh2+39mAXYjHtDsvbm8GoWbohDmQstMWUYVVPgMXH60xgIQAnpilrnGoBuITFX3Obm+Gxzpb
	aT5i23Pmo8MIWfnCwOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Xua-00006V-Ip; Tue, 27 Aug 2019 09:37:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XuW-000068-Ji
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 09:37:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id k2so18088147wrq.2
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 02:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IV7f04O4NGHb2ANdnDGozNNJXYBrKg4ALn4SZ5C75rg=;
 b=lNRHf/ufr2g4BVhnZbV44iuKaYDSnfHRE3AYjHtHdaHw6Av+ZtNquOed+xALodlURD
 O/1+/BGHbK66VW7iseWAGCuDdQ27bW8/2FURXSpvNMxjJkb3QmRKGr8zX7Xqzw4r8JSl
 Hizuirmjs45Okqu62efIizHjaHiAW9QUxfzt16Psdpp9qTgocn4hCVUwBUTbQP/funsp
 iYP1QyBdCJcTZ21AGLE8LJSu4G9EgRS6+G0q+otPZzx6i1pQVZ31GgFniisHCFuohycw
 yI/7UT9AlJvpnB55Y8A+O5kQmeXO1ii67LOc+wd4xxDBfZ4nMUAdLi/lKFpyqhZNvlep
 iouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IV7f04O4NGHb2ANdnDGozNNJXYBrKg4ALn4SZ5C75rg=;
 b=s5SOO/LlIFqp7ui8Q7/cCyZ6coz40q5o3NDeCxl0XrWowiRH6/Hp/S6nTYfbkYB5y9
 C7pNPU8pkip7pV+eHYtvoSCkWKPmZD+acuJbsxdzablMBFyIr/64U531Mqos06rhK2YV
 olI4zG6hp0Gy7CS7bEjVbrvfBIQt31E2u9M0qXEyhLzH2BsQzdQ6B250vI0owjJjLs5T
 aXtW+JnwFRzxw56uxOqZAb7M57ipjddw2RKC0DHWWkEHp3YVenxg9V5vR8zwWyTU7aT+
 0XNV6Durij4gtgKZkp4g3KarCWihcAfENFNjhhP/JW3hcrff3PD4xXSXYwCvs93dm40l
 djew==
X-Gm-Message-State: APjAAAVHix9zkgXt15BAv9s0CGDYZ7sgy3DqjrhtLKkfLSDhS/bKAL/m
 pf5rqhgVOoQVaYU28HFVuiH2ZsM2aOA+vuGurnW25w==
X-Google-Smtp-Source: APXvYqyyhce71ARF6qZk6l8ClBMFCyVYDYFrxmy72sz8U/+9ZvjclTuZr/4w3v7Ke6KXbnlIPfY1JHhxZ1EOIUmIbsQ=
X-Received: by 2002:a5d:4ecb:: with SMTP id s11mr27675823wrv.323.1566898626499; 
 Tue, 27 Aug 2019 02:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
In-Reply-To: <20190826233256.32383-3-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 27 Aug 2019 15:06:55 +0530
Message-ID: <CAAhSdy35btg0SPDsrS70DezJpjrzmn07v2z04s65D_-U+NKPGA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_023708_652072_BDEB6FE8 
X-CRM114-Status: GOOD (  19.54  )
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
 Mike Rapoport <rppt@linux.ibm.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 5:03 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> The SBI v0.2 introduces a base extension which is backward compatible
> with v0.1. Implement all helper functions and minimum required SBI
> calls from v0.2 for now. All other base extension function will be
> added later as per need.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 68 +++++++++++++++++++++++++++++-------
>  arch/riscv/kernel/Makefile   |  1 +
>  arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
>  arch/riscv/kernel/setup.c    |  2 ++
>  4 files changed, 108 insertions(+), 13 deletions(-)
>  create mode 100644 arch/riscv/kernel/sbi.c
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 7f5ecaaaa0d7..4a4476956693 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -8,7 +8,6 @@
>
>  #include <linux/types.h>
>
> -
>  #define SBI_EXT_LEGACY_SET_TIMER 0x0
>  #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
>  #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> @@ -19,28 +18,61 @@
>  #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
>  #define SBI_EXT_LEGACY_SHUTDOWN 0x8
>
> -#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
> +#define SBI_EXT_BASE 0x10
> +
> +enum sbi_ext_base_fid {
> +       SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> +       SBI_EXT_BASE_GET_IMP_ID,
> +       SBI_EXT_BASE_GET_IMP_VERSION,
> +       SBI_EXT_BASE_PROBE_EXT,
> +       SBI_EXT_BASE_GET_MVENDORID,
> +       SBI_EXT_BASE_GET_MARCHID,
> +       SBI_EXT_BASE_GET_MIMPID,
> +};
> +
> +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({   \
>         register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
>         register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
>         register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
>         register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> -       register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> +       register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);    \
> +       register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);    \
>         asm volatile ("ecall"                                   \
> -                     : "+r" (a0)                               \
> -                     : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> +                     : "+r" (a0), "+r" (a1)                    \
> +                     : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \
>                       : "memory");                              \
>         a0;                                                     \
>  })

I think instead of removing old convention we should use
calling convention based on sbi_version detected at boot-time.

>
>  /* Lazy implementations until SBI is finalized */
> -#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
> -#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
> -#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> -               SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> -#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> -               SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> -#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> -               SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> +#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0, 0, 0)
> +#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0, arg0, 0, 0, 0)
> +#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
> +               SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
> +#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
> +               SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
> +#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
> +               SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
> +
> +extern unsigned long sbi_firmware_version;
> +struct sbiret {
> +       long error;
> +       long value;
> +};
> +
> +void riscv_sbi_init(void);
> +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> +                              int arg2, int arg3);
> +
> +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
> +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0, 0, 0, 0)
> +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> +               riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> +               riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> +               riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
> +
>
>  static inline void sbi_console_putchar(int ch)
>  {
> @@ -99,4 +131,14 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>                           start, size, asid);
>  }

To be sure that new kernels work fine on older kernel, we
can be conservative and move all legacy SBI calls to kernel/sbi.c.
All legacy SBI calls can check sbi_version and use appropriate
SBI calling convention.

This might be redundant if we can ensure that newer kernels
work fine with older SBI v0.1 firmwares.

>
> +static inline unsigned long riscv_sbi_major_version(void)
> +{
> +       return (sbi_firmware_version >> 24) & 0x7f;
> +}
> +
> +static inline unsigned long riscv_sbi_minor_version(void)
> +{
> +       return sbi_firmware_version & 0xffffff;
> +}
> +
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
> index 000000000000..457b8cc0e9d9
> --- /dev/null
> +++ b/arch/riscv/kernel/sbi.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * SBI initialilization and base extension implementation.
> + *
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <asm/sbi.h>
> +#include <linux/sched.h>
> +
> +unsigned long sbi_firmware_version;

Rename this too sbi_version or sbi_spec_version.
The firmware version is different thing.

> +
> +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> +                            int arg2, int arg3)
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
> +static struct sbiret sbi_get_spec_version(void)
> +{
> +       return SBI_CALL_0(SBI_EXT_BASE, SBI_EXT_BASE_GET_SPEC_VERSION);
> +}
> +
> +void riscv_sbi_init(void)
> +{
> +       struct sbiret ret;
> +
> +       /* legacy SBI version*/
> +       sbi_firmware_version = 0x1;
> +       ret = sbi_get_spec_version();
> +       if (!ret.error)
> +               sbi_firmware_version = ret.value;
> +       pr_info("SBI version implemented in firmware [%lu:%lu]\n",
> +               riscv_sbi_major_version(), riscv_sbi_minor_version());

Should we not print SBI implementation ID and SBI firmware version.

Regards,
Anup

> +}
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index a990a6cb184f..4c324fd398c8 100644
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
> +       riscv_sbi_init();
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
