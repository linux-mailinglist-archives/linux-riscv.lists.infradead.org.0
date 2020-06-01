Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA9C1EABE6
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 20:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ORKuPDr81ZTRpp39aYW+4mCM6zzq+FYt0tOhd8RtB8=; b=kHGzOewONq+7Zef5d5HB9NLhr
	5oECYGf+9JXAzLcChYVQxCDvm7Lo57jfdKAPsAttwirPBOU2LJ5MguGyuTlt0MNQlTrfm5SqU+OZV
	gKcUE/NovXUnEpQudlF3jkVutQpDDeCl0S8zCVLFUpNfvUN6SbW8QB2p7i7M5tNPxZZsFuYkBmEos
	LFRjKVgmp12IrVOReilExdMZawM3opJpaKQURvMAExn7dNhYr5l3h4OCkNwpCZN9x6bKg3/Ix6t0T
	8+cRzWdrjoHWsCI4ZMlEMLmdFMERFVtjXwwNx6UgCe1FWeTLWG8EdxQq1bBbWa2LapfYLlZ0CxFMC
	PRRvPiktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfp5s-0007mO-GY; Mon, 01 Jun 2020 18:23:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfp5o-0007lp-Uc
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 18:23:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so777375wrr.10
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 11:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7ORKuPDr81ZTRpp39aYW+4mCM6zzq+FYt0tOhd8RtB8=;
 b=V03H8YHXT0J3zKfEHNyuFSM+8VZyYqjgKZmFQoD7IoWAdl5ue3WkPABR4A2m1qnxIv
 TEi0T0Bs71krCQoC2Hz1kmVhqKEsfEYxAaUXego6pB3dMnsl4fgP28IxSqNy3yfo1KY6
 JtB21X3S69XND6s4AR5BKc65vUpNJV77q9Ptw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ORKuPDr81ZTRpp39aYW+4mCM6zzq+FYt0tOhd8RtB8=;
 b=GSAaUT5/p5AAW8JKw3h1hc2DrP3VOBnBKht9kYDfwkM5cC/RCL9505OUwPLkh6VB5T
 bz0rvp5hyQSA2G0IXsFazV+Zzi28N0QIokgiZmtI60FWO3hIA2xCZ8TpRPdYgviFn6qa
 V5svyF9m2RnxTPLndIbGwIekrNeXeY2a9agCPKkreEDyJrT4H5M5jPGHdiQua/4uCdgo
 +PH/PSoTy1ww5tkgmUuNNBYNqhi/wzgPdGKeMWL9I1PbqHSbSRbqm1tMUussStcMl83D
 ywbfcfslH1toINUjdhHjQnOD+WCn934Klpe2WIkVgVYjB1zMrlXcIqllSwOwAWle9dma
 4Elw==
X-Gm-Message-State: AOAM533Wt7usze1koal4PIHINR4GuRAOiEodIQJtmgg5yT0R2NjKUt4C
 bgHl6rAKkbatAXCpN1iGO1ZATfUDYbwPNFtSEfdP
X-Google-Smtp-Source: ABdhPJzUqjNllZMEEg1nn6d/J5AuzWmQPqp4dOddQX+lLHvzFb+TTwXYz/WenpZhHpRJLxBXZKmb6pusTzpc3hUhqhk=
X-Received: by 2002:adf:edc8:: with SMTP id v8mr22011928wro.176.1591035802832; 
 Mon, 01 Jun 2020 11:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200601050656.826296-1-anup.patel@wdc.com>
In-Reply-To: <20200601050656.826296-1-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 1 Jun 2020 11:23:11 -0700
Message-ID: <CAOnJCUKT_DT-F9g21q5kvYfYgHC3PQ9dJLrqbQ4z87ULpBiyBQ@mail.gmail.com>
Subject: Re: [PATCH v2] RISC-V: Don't mark init section as non-executable
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_112325_036772_DEA2F509 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 31, 2020 at 10:07 PM Anup Patel <anup.patel@wdc.com> wrote:
>
> The head text section (i.e. _start, secondary_start_sbi, etc) and the
> init section fall under same page table level-1 mapping.
>
> Currently, the runtime CPU hotplug is broken because we are marking
> init section as non-executable which in-turn marks head text section
> as non-executable.
>
> Further investigating other architectures, it seems marking the init
> section as non-executable is redundant because the init section pages
> are anyway poisoned and freed.
>
> To fix broken runtime CPU hotplug, we simply remove the code marking
> the init section as non-executable.
>
> Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
> Changes since v1:
>  - Updated free_initmem() is same as generic free_initmem() defined in
>    init/main.c so we completely remove free_initmem() from arch/riscv
> ---
>  arch/riscv/mm/init.c | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 736de6c8739f..fdc772f57edc 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -479,17 +479,6 @@ static void __init setup_vm_final(void)
>         csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
>         local_flush_tlb_all();
>  }
> -
> -void free_initmem(void)
> -{
> -       unsigned long init_begin = (unsigned long)__init_begin;
> -       unsigned long init_end = (unsigned long)__init_end;
> -
> -       /* Make the region as non-execuatble. */
> -       set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
> -       free_initmem_default(POISON_FREE_INITMEM);
> -}
> -
>  #else
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
> --
> 2.25.1
>
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

