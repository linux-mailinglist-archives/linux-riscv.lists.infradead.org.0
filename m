Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C136887BA
	for <lists+linux-riscv@lfdr.de>; Sat, 10 Aug 2019 05:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tQqLXaP0smJTvH/E6Xf/VJZhmiZWVO6xvY4FhrAfm4=; b=gsNnNuvDynKfYA
	lSI2lZv7DpcMFDQ/CjPug01fyTqtpTlA91ZKAn5vix3m0u6AdBdthn0BihhZ5xcuwDlIJ0p21pam7
	E+/Fz3FmwDvN733XgvWST9yjz4S+gUTGDiGTHBJFSC4bdXTLM5D5qzK1pEtNehzbGdstSQGsVGM1m
	bJ197T5200ZRqspTcvL5fQyPRyvkAL32Gv73bGOnwi6hZ1NQ0AqiJVpn6P0X74HD5o5wDlg1HEog+
	ad3CPZsgJedbOH41Lj4Aj9i2xnBhJ195wv5mpI00Ij+blysdXSS/dDHwJwolLz/k7uk6oqCzMzT6g
	P6Odi71B9tw2M+nWvcpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwI5e-0002jb-58; Sat, 10 Aug 2019 03:30:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwI5b-0002fZ-BF
 for linux-riscv@lists.infradead.org; Sat, 10 Aug 2019 03:30:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id b16so3184527wrq.9
 for <linux-riscv@lists.infradead.org>; Fri, 09 Aug 2019 20:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pI294dVKjBseXZ5d+Q9IVYt0QRka2gVN/5uVW6i/NR0=;
 b=J5PTbOEBgIKGa91XI8KrCeqtVkQDuGjs7vraImHqT8kgRrlykP4s4YYx4ReuuE7kOy
 cozMiwvKqevnP2ilsTl2/bG1Q6YauFFcfgbB+0CbUJ80YGpfbVvi4xdJY7AVw+bqwmkn
 9Wt8jiZFeRxeztak/hhCM6pDlwtJXBC0Y7+nWkXJWCLmfMFPTyUtXfos1Y/hgtJvuazT
 XRijkkIvmKiTPjUeqTxL+rJZqrk3Zcny9cnMbiZ/AG/mbncKQmCL9fBHoF+33VTU0Xnz
 lJoSqwG/fwKpAJ5j4mGzGXCuRAL9z3pGVsOKHrgEaqVUMBsuUatch+aaNJGaot4P2gw+
 SD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pI294dVKjBseXZ5d+Q9IVYt0QRka2gVN/5uVW6i/NR0=;
 b=XXICYuS5njSQU6bb0T+DdxDrg9PQ/Vd2bJsxxYAYQKQmkoLuDtU9u7Jx5Tz82a76zd
 A8SF0RqaxOqLhtS8ciuXCr6I8yKMti3hhjyxNKvl4lD6m1TqkqAyJTkwTkCgErvO9ARo
 qi1/o4ZCt79Nnu+6p8D+gUEJEBAqk7jIWwIBE0LtDQc0RUob0dDy3Lytv8HrnecdZYKW
 SseGCpSya7+phyYugPCq+Na5cnbyIMl/wqPhzSciDt19a8e6ct2O/glpRNNYJz3dJkN+
 GASDHaRZa1pB6dQNW59Vs7qMWSyhLDRqSwrBGJXXEiPINFPyrxngOZMc5f+WCTr4XLCP
 nUUw==
X-Gm-Message-State: APjAAAXS50AfnIF6ojFBvoWKG5DEWdyhzhHVMlle05IKv8SzqE13lgr/
 u0d9KZnQBlxFI3e4XT7KNjDR9QthUmOnyYduQj3HDA==
X-Google-Smtp-Source: APXvYqypoCZzcXQ8FotgjqFU5vd3tD3fOzGH1wJC5U9mOtgWpem3CLtHEq+cy2ZxQ6HRWkE7vE59MPaAjnpzgtOFChI=
X-Received: by 2002:adf:f641:: with SMTP id x1mr24936115wrp.179.1565407840017; 
 Fri, 09 Aug 2019 20:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190810014309.20838-1-atish.patra@wdc.com>
In-Reply-To: <20190810014309.20838-1-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 10 Aug 2019 09:00:29 +0530
Message-ID: <CAAhSdy1bnBoOdYJHm97JyG5oiY6PuLqamedx4BnfbrhVvmv6Xw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_203043_529880_FBE26BB3 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Aug 10, 2019 at 7:13 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> In RISC-V, tlb flush happens via SBI which is expensive.
> If the target cpumask contains a local hartid, some cost
> can be saved by issuing a local tlb flush as we do that
> in OpenSBI anyways.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/tlbflush.h | 33 +++++++++++++++++++++++++++----
>  1 file changed, 29 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
> index 687dd19735a7..b32ba4fa5888 100644
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
> @@ -46,14 +47,38 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
>                                      unsigned long size)
>  {
>         struct cpumask hmask;
> +       struct cpumask tmask;
> +       int cpuid = smp_processor_id();
>
>         cpumask_clear(&hmask);
> -       riscv_cpuid_to_hartid_mask(cmask, &hmask);
> -       sbi_remote_sfence_vma(hmask.bits, start, size);
> +       cpumask_clear(&tmask);
> +
> +       if (cmask)
> +               cpumask_copy(&tmask, cmask);
> +       else
> +               cpumask_copy(&tmask, cpu_online_mask);

This can be further simplified.

We can totally avoid tmask, cpumask_copy(), and cpumask_clear()
by directly updating hmask.

In addition to this patch, we should also handle the case of
empty hart mask in OpenSBI.

> +
> +       if (cpumask_test_cpu(cpuid, &tmask)) {
> +               /* Save trap cost by issuing a local tlb flush here */
> +               if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> +                       local_flush_tlb_all();
> +               else if (size == PAGE_SIZE)
> +                       local_flush_tlb_page(start);
> +               cpumask_clear_cpu(cpuid, &tmask);
> +       } else if (cpumask_empty(&tmask)) {
> +               /* cpumask is empty. So just do a local flush */
> +               local_flush_tlb_all();
> +               return;
> +       }
> +
> +       if (!cpumask_empty(&tmask)) {
> +               riscv_cpuid_to_hartid_mask(&tmask, &hmask);
> +               sbi_remote_sfence_vma(hmask.bits, start, size);
> +       }
>  }
>
> -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> +#define flush_tlb_all() remote_sfence_vma(NULL, 0, -1)
> +#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)
>  #define flush_tlb_range(vma, start, end) \
>         remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
>  #define flush_tlb_mm(mm) \
> --
> 2.21.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
