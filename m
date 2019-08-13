Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A57F8BE9C
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 18:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIdu2piebB1GypXSU5G0yYTfRsNbJu7oCjy5+YWPKvE=; b=ssfIMxQ5x1EPOO
	F/ZHIh11IQMx/B+vfj6iIqc7XcjL3fvtHN0THEOaoNygnqLSbFVbDn30lxMb6JfSqCSwPo7ZMAAiZ
	QeSLsCOIgbBjY5buUbVRY/nceJaJeN1NUCzElTZznU4nozVADjwb2hDjD2ScVJY7dk4zcNZ2wsEOX
	KduUQ675t3ajgx2sGPG+8aBrdQuZRUE7FqQF9FP59u38cQ5wm8110CH/Ncw2Xi+k6rI2JcHKWu6Rb
	rHClYzwzVcb0+iUuE0+ucUfD1rJeNLM3wzHEQWzXsAkwG+S0L6JdVsRnv7mncArEM5HfBksyYLbcb
	iBfRpcy92Oj4taF02iag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZgu-0003a2-Eb; Tue, 13 Aug 2019 16:30:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZgU-0002Cf-6D
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 16:30:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E7FC337;
 Tue, 13 Aug 2019 09:30:05 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A59463F706;
 Tue, 13 Aug 2019 09:30:04 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:29:58 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
Message-ID: <20190813162958.GA27821@lakrids.cambridge.arm.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-9-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813154747.24256-9-hch@lst.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093006_351552_F130BC3D 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:47:40PM +0200, Christoph Hellwig wrote:
> RISC-V has the concept of a cpu level interrupt controller.  Part of it
> is expose as bits in the status registers, and 2 new CSRs per privilege
> level in the instruction set, but the machanisms to trigger IPIs and
> timer events, as well as reading the actual timer value are not
> specified in the RISC-V spec but usually delegated to a block of MMIO
> registers.  This patch adds support for those MMIO registers in the
> timer and IPI code.  For now only the SiFive layout also supported by
> a few other implementations is supported, but the code should be
> easily extensible to others in the future.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

> +/*
> + * This is the layout used by the SiFive clint, which is also shared by the qemu
> + * virt platform, and the Kendryte KD210 at least.
> + */
> +#define CLINT_IPI_OFF		0
> +#define CLINT_TIME_VAL_OFF	0xbff8
> +#define CLINT_TIME_CMP_OFF	0x4000;
> +
> +u32 __iomem *clint_ipi_base;
> +u64 __iomem *clint_time_val;
> +u64 __iomem *clint_time_cmp;
> +
> +void clint_init_boot_cpu(void)
> +{
> +	struct device_node *np;
> +	void __iomem *base;
> +
> +	np = of_find_compatible_node(NULL, NULL, "riscv,clint0");

Since the MMIO layout is that of the SiFive clint, the compatible string
should be specific to that. e.g. "sifive,clint". That way it will be
possible to distinguish it from other implementations.

What exactly is the "0" suffix for? Is that a version number?

If that's a CPU index, then I don't think that's the right way to encode
this unless the programming interface actually differs across CPUs. It
would be better to use an explicit phandle to express the affinity.

Thanks,
Mark.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
