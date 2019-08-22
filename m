Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E77898A72
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 06:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYvYooVovnMxKmHsGcKEarNntWnbB7Lby7M2fkYT8mM=; b=YotZW1vNhCc82g
	E2n+QOLBUEwiKb4dhbY0HjIs5xZ7TZE8BdwpB8qxNwv+/1Rvf56KNrCSbzgAi40GgI3oLU9FMA7dz
	Qv7kuenEqZ7DdBR5bZqNMCvRrgdjUtuv4RfGvoQU6M1uO59SKR9IfWGK8RxhCDrWf4XnpsUnzwYbu
	EI4kDyjfGU2742Mjbnt7qlGl/CFvM6sW7pHB+X5yjjTar98cjpV+0alidPaOb6Zx5Z8klXSoh3LWO
	jmIuw1MNTx74KDK48fvGFisXSEuFCUxxXegaw9hFRoWwQTVOFTRZA/QQrHxVXJ/jINEiJrKA9oQed
	yNTstD3Tx/vj/g6XGPtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0eh5-0007bJ-10; Thu, 22 Aug 2019 04:27:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0eh1-0007Kg-KE
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 04:27:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id ED3C668C4E; Thu, 22 Aug 2019 06:27:17 +0200 (CEST)
Date: Thu, 22 Aug 2019 06:27:17 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Message-ID: <20190822042717.GA14076@lst.de>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-2-atish.patra@wdc.com> <20190822014642.GA11922@lst.de>
 <0f66583404f89ab2bd6c264ba653364ab8a3160e.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f66583404f89ab2bd6c264ba653364ab8a3160e.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_212723_822866_F953BD2C 
X-CRM114-Status: UNSURE (   8.45  )
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 04:01:24AM +0000, Atish Patra wrote:
> The downside of this is that for every !cmask case in true SMP (more
> common probably) it will execute 2 extra cpumask instructions. As
> tlbflush path is in performance critical path, I think we should favor
> more common case (SMP with more than 1 core).

Actually, looking at both the current mainline code, and the code from my
cleanups tree I don't think remote_sfence_vma / __sbi_tlb_flush_range
can ever be called with  NULL cpumask, as we always have a valid mm.

So this is a bit of a moot point, and we can drop andling that case
entirely.  With that we can also use a simple if / else for the local
cpu only vs remote case.  Btw, what was the reason you didn't like
using cpumask_any_but like x86, which should be more efficient than
cpumask_test_cpu + hweigt?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
