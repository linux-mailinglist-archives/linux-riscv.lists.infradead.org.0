Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026309890E
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 03:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ep4nXqnaDrLRuRLupQAwPCelIZWiKdmjTfuy2j7CRUI=; b=rqo+8MMqWM8X+e
	U13rz7YdiFeHKcdM4GtPyGELFjDF885+rOOwKJje7+VBNznILudlJYxtyncdTfz6gxiAFL7b7KmM0
	JGX6gGfjp0doA+YOIuSU6ex39Ah5pcbOBfL81RJLWWvRUp8HziP96MJHp6yXE2amEikWYBYCd8/8k
	5JXhxRWq0G53bhEgWxfE3X6/46HT3n1C/E0FtV5IPfYrsncyUL9TF9AQv1ODdJ68ISVeCUqJ5KBee
	QnWr7TP8STQMCPViB5sEHxX+6KX6ZVh4rkxFZGlDrLH8pqAWiZdld/TbsGuMemJWocsGfPyQOmT9q
	MfQuH6sx3vtK8fTVBBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cBd-00016b-EI; Thu, 22 Aug 2019 01:46:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cBZ-00016G-S2
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 01:46:47 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 79BEB68BFE; Thu, 22 Aug 2019 03:46:42 +0200 (CEST)
Date: Thu, 22 Aug 2019 03:46:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Message-ID: <20190822014642.GA11922@lst.de>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-2-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822004644.25829-2-atish.patra@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_184646_057832_A2A40B27 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Anup Patel <Anup.Patel@wdc.com>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 05:46:42PM -0700, Atish Patra wrote:
> In RISC-V, tlb flush happens via SBI which is expensive. If the local
> cpu is the only cpu in cpumask, there is no need to invoke a SBI call.
> 
> Just do a local flush and return.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/mm/tlbflush.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
> index df93b26f1b9d..36430ee3bed9 100644
> --- a/arch/riscv/mm/tlbflush.c
> +++ b/arch/riscv/mm/tlbflush.c
> @@ -2,6 +2,7 @@
>  
>  #include <linux/mm.h>
>  #include <linux/smp.h>
> +#include <linux/sched.h>
>  #include <asm/sbi.h>
>  
>  void flush_tlb_all(void)
> @@ -13,9 +14,23 @@ static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
>  		unsigned long size)
>  {
>  	struct cpumask hmask;
> +	unsigned int cpuid = get_cpu();
>  
> +	if (!cmask) {
> +		riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
> +		goto issue_sfence;
> +	}
> +
> +	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) == 1) {
> +		local_flush_tlb_all();
> +		goto done;
> +	}

I think a single core on a SMP kernel is a valid enough use case given
how litte distros still have UP kernels.  So Maybe this shiuld rather be:

	if (!cmask)
		cmask = cpu_online_mask;

	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) == 1) {
		local_flush_tlb_all();
	} else {
	 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
	  	sbi_remote_sfence_vma(hmask.bits, start, size);
	}

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
