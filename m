Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294128BD60
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 17:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5Z7hLBRgXciQWOs6+HOpYQL1/yJdas2MQUV6/ja2KE=; b=Hri1G+dDXxFSLA
	fqNkUS39p5OADW3yXxx32J0H8LZGwJJ4aEyCJUfLjNzaXPSzFJUimxa6U2JIHxq4wATc7fpuRps2S
	rJxFJp2j7sjG2wWjsB+xg3oEFjSWGIM/dJEKkh1lAkVrqa0/prr2zXFuR4Dx3jxuTpf7SrqxwDzAy
	leeHFL2KXCXygrfm9pPnzT7Y++Y0hzUEO3AfpSNukWSuH8LBtZo7+10oS9ak3pK/GoRc0MpSfYuvt
	FOwe7H43tesjJafJNkuaE+2h74IOlKKATvFOsvgmbI8oICO4HdP6aigKURcpNwlp3R65q1HjYLtbL
	RePLKF/Xa6qfO5u4ut/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYuG-0002WO-VI; Tue, 13 Aug 2019 15:40:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYuD-0002Ve-MP
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 15:40:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A99E68C4E; Tue, 13 Aug 2019 17:40:09 +0200 (CEST)
Date: Tue, 13 Aug 2019 17:40:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 16/17] riscv: clear the instruction cache and all
 registers when booting
Message-ID: <20190813154008.GB8686@lst.de>
References: <78919862d11f6d56446f8fffd8a1a8c601ea5c32.camel@wdc.com>
 <mhng-3f43f4b8-473d-429d-9a09-12d3542e33bc@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-3f43f4b8-473d-429d-9a09-12d3542e33bc@palmer-si-x1e>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_084013_884774_5D6EA4AC 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 01:26:33AM -0700, Palmer Dabbelt wrote:
>>> +	csrs	sstatus, t1
>
> You need to check that the write stuck and branch around the FP instructions.
> Specifically, CONFIG_FPU means there may be an FPU, not there's definately an
> FPU.  You should also turn the FPU back off after zeroing the state.

Well, that is why we check the hwcaps from misa just above and skip
this fp reg clearing if it doesn't contain the 'F' or 'D' extension.

The caller disables the FPU a few instructions later:

	/*
         * Disable FPU to detect illegal usage of
	 * floating point in kernel space
	 */
	li t0, SR_FS
	csrc CSR_XSTATUS, t0

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
