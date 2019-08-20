Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3996395A6A
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 10:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uk7Be342s9atEfB2ln1zuS/BYKLsUWVC9dkU13hVCAg=; b=P59/8NO4Xei3gm
	nwWRvXouo0eQwAGfr193XZgJZejp/xWYaxtutFneHxjnAvOm/vA3bhIQJlsZO03lSfOjtZee1/jQq
	ES1jvx9yQLH+xt80jk/BBQi1Yw602nmol0xAyLNbRZWtN3JAXDRt5xhyoqRh4R0v0AOonUjGa/2ix
	czRaH0hJCGwkOoiGvZ1zZZcS6Eygj1MJdTqRTDy65uMKv8NvpPR+psDvbUWKXFmRzokAep9VN9lNR
	8VlMoJV8st/3LP2gpQhD9bxH0ldLMFpQ0lIi4JHhWx46OvXq9uZl2zfET0h8U2wpm/UwvPNl01zpD
	29nB5ePmICM8mWIfIQWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzte-0003yJ-Ok; Tue, 20 Aug 2019 08:53:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzro-0002C8-FW
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 08:51:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id g67so1902098wme.1
 for <linux-riscv@lists.infradead.org>; Tue, 20 Aug 2019 01:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v+zMdfxIJC6szl/s3F3QtV0vZKEEjr7EvMl1gxJ6Wko=;
 b=VzunMJleY9TwC0oBKPWz1G/teeRWt/mJNGQ8Yt6ooyD9ildZ6hLc9QhAL7zBcNN8UG
 oh/J3pynXQS3grHkDGYn3Y95nrQhenrNUzQRyawsmRS9zkCJBiiioN4uvrDxauZdGkPP
 GCBcAP1W4msKzzcI8n/V7wvKnOkSNp+yMDgyNOgHxDqanJEGAyz+Z5O9Z4Ipw3ieRlHV
 IjKmb7YMU4LdsIDki1fgr8GCSgL9+ykmI2Po/TSHNWPp3cGh09m+JZuUaIGxEaICaHED
 cxFCroQ5qHLcNRix6HfQQJtfqiHzVeMVNRzR5MoHLDVPXB6hBCK2fUEhfyW/dJPKShKm
 e+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v+zMdfxIJC6szl/s3F3QtV0vZKEEjr7EvMl1gxJ6Wko=;
 b=HJMMudS8Yo/+qWktRwuj1oPwSuMfCoR3yIqvqIgdGEiJVMYtamaarTJ9C4NqyZHa4B
 dvlTgIwMjcs6p8g91t/3SktuiJ6mjj9hI6Z17hCfmF9lNQY4TF6V6fC3YIwHTvPZc4fk
 XUN1FkvmXCIChzsBRSgDybMT1ve3xR0X6qNDCJDcq4oT8wGmo+VsDUME48U0QhQzXzhg
 5BK3ObjK5sO7v+9le4chlWsg6mzvlN+h3vrKh0wp+hM53dfbayG1VidkUrq2nzy8WOhn
 nnJw+DyRVjZurED/38NLVdA3KqGOcrGAkobc7W/XJVpNddAGemIGlABhJmGDglccLhjv
 y64w==
X-Gm-Message-State: APjAAAVt/e/U2vrct3h0PupXnXTfCo2+INK2Shb2Z9SkiovA4VDEUQoC
 vFLYMOq6URbuIj44Btdn79Leyox170dK3H8/W165Yw==
X-Google-Smtp-Source: APXvYqy8V5DPpUJexEYPlMqitRub8PR3y6aNCqaicw9koTGcTSjg2cVbFm0nu895bhfqr35b1qTsh1ChBfSggX68vPQ=
X-Received: by 2002:a7b:c933:: with SMTP id h19mr4236338wml.177.1566291106225; 
 Tue, 20 Aug 2019 01:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190820004735.18518-1-atish.patra@wdc.com>
In-Reply-To: <20190820004735.18518-1-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 20 Aug 2019 14:21:34 +0530
Message-ID: <CAAhSdy3uQ=CSg4pHb_BYCEOh_MMTyLf8SW2o9SCn0UZDYwgGpg@mail.gmail.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_015148_592570_AA66E8C1 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 6:17 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> In RISC-V, tlb flush happens via SBI which is expensive.
> If the target cpumask contains a local hartid, some cost
> can be saved by issuing a local tlb flush as we do that
> in OpenSBI anyways. There is also no need of SBI call if
> cpumask is empty.
>
> Do a local flush first if current cpu is present in cpumask.
> Invoke SBI call only if target cpumask contains any cpus
> other than local cpu.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/tlbflush.h | 37 ++++++++++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 6 deletions(-)
>
> diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
> index b5e64dc19b9e..3f9cd17b5402 100644
> --- a/arch/riscv/include/asm/tlbflush.h
> +++ b/arch/riscv/include/asm/tlbflush.h
> @@ -8,6 +8,7 @@
>  #define _ASM_RISCV_TLBFLUSH_H
>
>  #include <linux/mm_types.h>
> +#include <linux/sched.h>
>  #include <asm/smp.h>
>
>  /*
> @@ -42,20 +43,44 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
>
>  #include <asm/sbi.h>
>
> -static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
> -                                    unsigned long size)
> +static void __riscv_flush_tlb(struct cpumask *cmask, unsigned long start,
> +                             unsigned long size)
>  {
>         struct cpumask hmask;
> +       unsigned int hartid;
> +       unsigned int cpuid;
>
>         cpumask_clear(&hmask);
> +
> +       if (!cmask) {
> +               riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
> +               goto issue_sfence;
> +       }
> +
> +       cpuid = get_cpu();
> +       if (cpumask_test_cpu(cpuid, cmask)) {
> +               /* Save trap cost by issuing a local tlb flush here */
> +               if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> +                       local_flush_tlb_all();
> +               else if (size == PAGE_SIZE)
> +                       local_flush_tlb_page(start);
> +       }
> +       if (cpumask_any_but(cmask, cpuid) >= nr_cpu_ids)
> +               goto done;
> +
>         riscv_cpuid_to_hartid_mask(cmask, &hmask);
> +       hartid = cpuid_to_hartid_map(cpuid);
> +       cpumask_clear_cpu(hartid, &hmask);
> +
> +issue_sfence:
>         sbi_remote_sfence_vma(hmask.bits, start, size);
> +done:
> +       put_cpu();
>  }
>
> -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> -
> +#define flush_tlb_all() __riscv_flush_tlb(NULL, 0, -1)
>  #define flush_tlb_range(vma, start, end) \
> -       remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> +       __riscv_flush_tlb(mm_cpumask((vma)->vm_mm), start, (end) - (start))
>
>  static inline void flush_tlb_page(struct vm_area_struct *vma,
>                                   unsigned long addr) {
> @@ -63,7 +88,7 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
>  }
>
>  #define flush_tlb_mm(mm)                               \
> -       remote_sfence_vma(mm_cpumask(mm), 0, -1)
> +       __riscv_flush_tlb(mm_cpumask(mm), 0, -1)
>
>  #endif /* CONFIG_SMP */
>
> --
> 2.21.0
>

I think we should move __riscv_flush_tlb() to mm/tlbflush.c because it's quite
big now.

In future, we will also have __riscv_flush_tlb_asid() which will flush TLB based
on ASID.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
