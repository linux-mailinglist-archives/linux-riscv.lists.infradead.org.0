Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6346A8A264
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 17:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSae4+SoOE+pmd+yUqRKAzoOS6FyA7m3e4+QEaMrtxE=; b=HL9HPRK+xi+qA2
	fyPwzFe1cyomDJCKzJM9fRaD83ks0wkH04ZdOtL8KfbYmHJ3qY1GCeBW86N9n0VVe09CmVoOUOtcP
	YNWdYgslseCyNGnVYplbAdHiNeesWpBNkanOv0n3GECKeh3pJFYWmOAc34iKiWMx0TPmXyQpUDPMN
	JNiYZz3sPlu+SKhDXCZFBSYrLWtUvrE5Ttuq780e9unmV9qAUyrxqwzPo3mBhw+jfTzD3uFWTbhd9
	X2yH1k7nyshRysuSwUYtdA0WQ6lIqDDrg3MVnVvu8CQ/os8p/NIVVNwWQJXwk2xsbZqQSDXvAXnkz
	wIK0FV0Td5wFL3iX7O5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCNA-0001gE-5S; Mon, 12 Aug 2019 15:36:36 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCN5-0001fQ-Tr
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 15:36:33 +0000
Received: by mail-ot1-x343.google.com with SMTP id e12so16079611otp.10
 for <linux-riscv@lists.infradead.org>; Mon, 12 Aug 2019 08:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SpVDrjvk0esyF9nfi14Gtm3oms4DcxHW/Qvgatp0oR0=;
 b=BfBvPqT1d5Tmm728CwJnqdt1AuAqlPYluJ26znILoC3rHojNwJJi63xaK77vqBnwY0
 jC4hczUEyNpbGRmlYm3O7RHbxJ+HQmPFjnGIiHu9/DRnBWVhV0zuIUoZfYWv/meg6OTu
 6zQamXD5eI3R/N1ZwTV/J8GEDVsbnCwMuMqkNcZE7aWFMu7I1MwCGZASh8Ojv53mSMhS
 DHVCWaNWvYJd4GJ2uKcpe5rtMSHZyoaVwAJuybJ1/inGLETiGCOb6xi6965XpbLncq5b
 Kvf+tfOL7HLl2WT7NdjsuqlR0n+p1XPxYSK4jnadNN4ddU5zu/yWjwl7Pa5COcAYGemB
 JYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SpVDrjvk0esyF9nfi14Gtm3oms4DcxHW/Qvgatp0oR0=;
 b=m4deJWHlf56vuyOC6REH7HaceN4UP+NJHvgbwA613H2PusSiADyv+sXNuxzZbJor1o
 q9S2FMWffTCgSpIFBWTv5cn7ULWSOYLgYBIo7/wneauIK5rWO0SoNKQ7OUTpI5xG75yx
 UFH9AAlfam8Cgm+b7WbuUXDftXU2iJx7PHxu8uEK2eK5Nq7yZOsu/ZJnX4UOpj+3Qj54
 ZCUt/JLJN1WET4QCQrHbk0lQxNyS7jLcC8/Bxld5jtmyYtAgFYne0p590RcCnvA1fdJV
 o7XFvhQmiJZP7T09KgHs3tQH/1G8Z6szbFSBdHKqBnNJe2ykLIDDayP8OjL4p2cGUqHE
 6x5A==
X-Gm-Message-State: APjAAAVXfzh1k4RlTiAdxvhNxg4/XjC2dsEp6CPmXG++Ma93Nr3SxN5y
 hglwq3fuY/ZbdsbxwyCtJdVsjQ==
X-Google-Smtp-Source: APXvYqwvupGumFy7/McNZbWws2KK2uLWsFlbx7JImUAvZ/mtHsjUtks/0Vo5Bkkt2LcKvn/BSXX+EA==
X-Received: by 2002:a05:6638:637:: with SMTP id
 h23mr20742737jar.59.1565624187149; 
 Mon, 12 Aug 2019 08:36:27 -0700 (PDT)
Received: from [192.168.1.138] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id f1sm10078047ioh.73.2019.08.12.08.36.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 08:36:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <20190810014309.20838-1-atish.patra@wdc.com>
Date: Mon, 12 Aug 2019 10:36:25 -0500
Message-Id: <118B0DE7-EDCC-4947-88E5-7FF133A757D8@sifive.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
To: Atish Patra <atish.patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_083631_975829_C5327833 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, ron minnich <rminnich@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Aug 9, 2019, at 8:43 PM, Atish Patra <atish.patra@wdc.com> wrote:
> 
> In RISC-V, tlb flush happens via SBI which is expensive.
> If the target cpumask contains a local hartid, some cost
> can be saved by issuing a local tlb flush as we do that
> in OpenSBI anyways.

Is there anything other than convention and current usage that prevents
the kernel from natively handling TLB flushes without ever making the SBI
call?

Someone is eventually going to want to run the linux kernel in machine mode,
likely for performance and/or security reasons, and this will require flushing TLBs
natively anyway.


> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
> arch/riscv/include/asm/tlbflush.h | 33 +++++++++++++++++++++++++++----
> 1 file changed, 29 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
> index 687dd19735a7..b32ba4fa5888 100644
> --- a/arch/riscv/include/asm/tlbflush.h
> +++ b/arch/riscv/include/asm/tlbflush.h
> @@ -8,6 +8,7 @@
> #define _ASM_RISCV_TLBFLUSH_H
> 
> #include <linux/mm_types.h>
> +#include <linux/sched.h>
> #include <asm/smp.h>
> 
> /*
> @@ -46,14 +47,38 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
> 				     unsigned long size)
> {
> 	struct cpumask hmask;
> +	struct cpumask tmask;
> +	int cpuid = smp_processor_id();
> 
> 	cpumask_clear(&hmask);
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
> }
> 
> -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> +#define flush_tlb_all() remote_sfence_vma(NULL, 0, -1)
> +#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)
> #define flush_tlb_range(vma, start, end) \
> 	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> #define flush_tlb_mm(mm) \
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
