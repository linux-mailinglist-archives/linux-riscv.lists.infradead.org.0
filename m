Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEC0954CC
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 05:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpinTE0/N2MJwHQznCfhVhZfXy8u8RQGlTwDg2BLLck=; b=LtMjiSlFgvD0H/
	g8KLc4ObE8oEM1gcp/hUB3p0L1WzUOAe3+NKAQ4cHQ3koXghJGLYtZySHxRRdgccR2Zmc1FYEFx24
	loFP3JiX+9QSwBgxGEfpsUhbUhbIPZqQ5nxSSfw6SSIh6R92CcEMzzbrRXvwFtCVOmSDfGTBmG8pD
	cUsidVfLGhysy7f1/ew39cvf/OhNkzRPV2+gFPlne6aVlSWW1WL1kKSM7+H2VBB/5DMBDpHUYH4z+
	XZRMLdWsdNWaiDe4EyCSj8B6qYgJPPUUtuTSgVXiC2sxkw8hcbJ4qbBRXqiO6mnHO2HsQtH85z0tH
	l4amj0psvTtgDJfxba6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuTt-0002xc-JI; Tue, 20 Aug 2019 03:06:45 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hzuTp-0002xI-Pr; Tue, 20 Aug 2019 03:06:41 +0000
Date: Mon, 19 Aug 2019 20:06:41 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190820030641.GA24946@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820004735.18518-1-atish.patra@wdc.com>
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 "hch@infradead.org" <hch@infradead.org>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 05:47:35PM -0700, Atish Patra wrote:
> In RISC-V, tlb flush happens via SBI which is expensive.
> If the target cpumask contains a local hartid, some cost
> can be saved by issuing a local tlb flush as we do that
> in OpenSBI anyways. There is also no need of SBI call if
> cpumask is empty.
> 
> Do a local flush first if current cpu is present in cpumask.
> Invoke SBI call only if target cpumask contains any cpus
> other than local cpu.

Btw, you can use up your 70-ish chars per line for commit logs..

> +	if (cpumask_test_cpu(cpuid, cmask)) {
> +		/* Save trap cost by issuing a local tlb flush here */
> +		if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> +			local_flush_tlb_all();
> +		else if (size == PAGE_SIZE)
> +			local_flush_tlb_page(start);
> +	}

This looks a little odd to m and assumes we never pass a size smaller
than PAGE_SIZE.  Whule that is probably true, why not something like:

	if (size < PAGE_SIZE && size != -1)
		local_flush_tlb_page(start);
	else
		local_flush_tlb_all();

?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
