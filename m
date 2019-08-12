Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8068A1BB
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 16:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVnvFslKhquCyp1X2sfhrGEK5UULBoEAErKDAw7dhUI=; b=IH7mpVpEG338iT
	Kx0vuCtjsSzn4yXctWaTxRqoDBk6tfsu58ty6pDLwGUZHFiL8szEX8Ta/RY3hJqmSFmKeCt6prDAe
	MTU15E95piax93S0tWdL9iJPZ3P8uTdv/ylsOJIM6JSMh5qnb/rpGbNTyfmSiZ91fzqV6mdoS8uuj
	p9GqI+hy70rCU3HS6UjpJ43GElDPfpW4xlrcTpofW+lhKwQWsiQYCmn+7S58MNGfljapdFPfKULRN
	it/GBk1FrXxWt34MakYDYKuFhC7bPD592ELzJ0ZQ6/FXxvtmqVFbbKC2IJ9IIeh3FvdOo5/Sb52Tm
	2ywfB3G33VwZimNll07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBkQ-0003K4-AC; Mon, 12 Aug 2019 14:56:34 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxBkN-0003Jt-5S; Mon, 12 Aug 2019 14:56:31 +0000
Date: Mon, 12 Aug 2019 07:56:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Message-ID: <20190812145631.GC26897@infradead.org>
References: <20190810014309.20838-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810014309.20838-1-atish.patra@wdc.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I agree with the comment that we really should move this out of line
now, and also that we can simplify it further, which also includes
not bothering with the SBI call if we were the only online CPU.
I also thing we need to use get_cpu/put_cpu to be preemption safe.

Also why would we need to do a local flush if we have a mask that
doesn't include the local CPU?

How about something like:

void __riscv_flush_tlb(struct cpumask *cpumask, unsigned long start,
		unsigned long size)
{
	unsigned int cpu;

	if (!cpumask)
		cpumask = cpu_online_mask;

	cpu = get_cpu();
	if (!cpumask || cpumask_test_cpu(cpu, cpumask) {
		if ((start == 0 && size == -1) || size > PAGE_SIZE)
			local_flush_tlb_all();
		else if (size == PAGE_SIZE)
			local_flush_tlb_page(start);
		cpumask_clear_cpu(cpuid, cpumask);
	}

	if (!cpumask_empty(cpumask)) {
	  	struct cpumask hmask;

		riscv_cpuid_to_hartid_mask(cpumask, &hmask);
		sbi_remote_sfence_vma(hmask.bits, start, size);
	}
	put_cpu();
}

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
