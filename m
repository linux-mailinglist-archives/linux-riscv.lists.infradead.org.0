Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0E18C08B
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 20:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+Bij+PlZDwsbIP5wU1LG478+5331V+f0YPtkvdybsg=; b=LJIVt+JSNItUf2
	LpddT8yFpyjCIRa3Y58rLlTajChFIRFB7CoUns/kkUHQtw3cdsXCoOrbvGjEarbt0L8Z2kwB6jagI
	vb9JfyzXlc/Za4AOxns80pIC9zx/J4aOZdQKylf8/NVAwCHgVhxBF6upIGNjvi2wyNlcJvpUeLv2Y
	ks/9NuWJRpkPd47vpOsbxUk42lkrpuBvV6sF+hHZB1OhkpjOmHsfBAONrjhetUMYI8epq6L1ISv3g
	eQXQbcL+4oqXVq6WR7VheyYVRi9mSDVq5Mt7iuVQXU2xvCKNMS39h6ao1fpe4Beg9TUiVF2wBMISE
	BPPA57T7K8UBKVBpYocg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbU1-0000uv-Oa; Tue, 13 Aug 2019 18:25:21 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbTy-0000uU-IH
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 18:25:20 +0000
Received: by mail-ot1-x344.google.com with SMTP id f17so40881139otq.4
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 11:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=KKbCR1tFCWObTnhlH9C2d2XLJKP2zhB/LK0xe4rn60I=;
 b=FPOXc0AodraVwoTfynD6VRQNVTH0DcfUBNErnRpVBxdYrVdGm/iCq9GLJQQW36Phh6
 t9N7/MXMvJ7hZVt2cZoJ4QCPMLJkZuuwa808avZrvlCKI8oeWovWt2eMewROtONZzSHd
 7UzYHmk1Iwq4AXEfBrQW4GENapMDS+D8ZVk4okXLvHdJW0JuEVglqh7KVJdeW2y2VNo2
 CKZlp/Nna+R1ORJci9HqYjLSDhoWYaLYu2B7BXzIJFHh9c4wRToke9T5nlavWf5ZfFFL
 Dvn1lENwZ6jam7bhQD6lenKt0njDiYWAdrrVXpZGJmQTjVIUxs6ick/0lFz1YlJHqTsU
 M+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=KKbCR1tFCWObTnhlH9C2d2XLJKP2zhB/LK0xe4rn60I=;
 b=K1eHt77n3FXx1oofYOYAqE8hSzX6ckicPHKfUisMNyYD8R4R0GCZg7esFTdu5S+MXw
 cRceu4UBUb0rCLhtwq1vQYgQwpFdW/27caBgFlNhq8OAcfaj6fNqinU5lZ0AjQhYkk8f
 UTYjksbXkoX0h2PkzbXu2+6qD9o33fMDJgRAzQHmof4oevCABNxKkwV6agXGoYoXSp4z
 7au2/DvgHYGaINkOxTKT1DGt7Jt+VvwUd2h/8gcoui6hwdk6fYpwQfEbWFeCw7LL0Bz9
 GGGy8mKRGwY+kT2RgCeuOkip3xp8IRjqB5vOrWkZFGDw8wU0stnJ0y0zu7aWiDDQMyZO
 FSlg==
X-Gm-Message-State: APjAAAVSrRWmN1YwGqLNZKONFGkjTNWdx8WodLnroHJXvmF5+PolTOpy
 kew55t421iDPBbugOCPMiT8vXQ==
X-Google-Smtp-Source: APXvYqzCos6QmRqnSaor6zsGjXbzDUPbcse6TbNMSR4F/H38mTVtC5bxGKOPb7Z5BK5/ZQOkvMbwNQ==
X-Received: by 2002:a02:390c:: with SMTP id l12mr32485157jaa.76.1565720717060; 
 Tue, 13 Aug 2019 11:25:17 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 k7sm18488997iop.88.2019.08.13.11.25.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 11:25:16 -0700 (PDT)
Date: Tue, 13 Aug 2019 11:25:15 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
In-Reply-To: <20190810014309.20838-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908131053520.30024@viisi.sifive.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_112518_671934_026E6C1E 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup.patel@wdc.com>,
 linux-riscv@lists.infradead.org, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

On Fri, 9 Aug 2019, Atish Patra wrote:

> In RISC-V, tlb flush happens via SBI which is expensive.
> If the target cpumask contains a local hartid, some cost
> can be saved by issuing a local tlb flush as we do that
> in OpenSBI anyways.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

A few brief comments/questions beyond the ones that others have mentioned:

1. At some point, some RISC-V systems may implement this SBI call in 
hardware, rather than in software.  Then this might wind up becoming a 
de-optimization.  I don't think there's anything to do about that in code 
right now, but it might be worth adding a comment, and thinking about how 
that case might be handled in the platform specification group.

2. If this patch masks or reduces the likelihood of hitting the 
TLB-related crashes that we're seeing, we probably will want to hold off 
on merging this one until we're relatively certain that those other 
problems have been fixed. 



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
>  				     unsigned long size)
>  {
>  	struct cpumask hmask;
> +	struct cpumask tmask;
> +	int cpuid = smp_processor_id();
>  
>  	cpumask_clear(&hmask);
> -	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> -	sbi_remote_sfence_vma(hmask.bits, start, size);
> +	cpumask_clear(&tmask);
> +
> +	if (cmask)
> +		cpumask_copy(&tmask, cmask);
> +	else
> +		cpumask_copy(&tmask, cpu_online_mask);
> +
> +	if (cpumask_test_cpu(cpuid, &tmask)) {
> +		/* Save trap cost by issuing a local tlb flush here */
> +		if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> +			local_flush_tlb_all();
> +		else if (size == PAGE_SIZE)
> +			local_flush_tlb_page(start);
> +		cpumask_clear_cpu(cpuid, &tmask);
> +	} else if (cpumask_empty(&tmask)) {
> +		/* cpumask is empty. So just do a local flush */
> +		local_flush_tlb_all();
> +		return;
> +	}
> +
> +	if (!cpumask_empty(&tmask)) {
> +		riscv_cpuid_to_hartid_mask(&tmask, &hmask);
> +		sbi_remote_sfence_vma(hmask.bits, start, size);
> +	}
>  }
>  
> -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> +#define flush_tlb_all() remote_sfence_vma(NULL, 0, -1)
> +#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)
>  #define flush_tlb_range(vma, start, end) \
>  	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
>  #define flush_tlb_mm(mm) \
> -- 
> 2.21.0
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
