Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FD28A1DB
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 17:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXtuBWIpH2QlnSL+Kf4hKqPEPTGPL4vBjptafg2o19o=; b=rBZf9FD6rEv/Dr
	jwfIDnGBzPpBZvk3vEuHIRdOleY4f6X3czjoQDA4hAEhgLOZuVAg7ldTCXjCfJkUxVhojy+RjdmO2
	tFX1aYA0To/KwKqJaZMV7I9/8Bu6H0d2qNaR4hgF7cl3jJ9dWGFKU8wABaTdkUifjlb2QVdWfXiex
	ycZYLuW+7LWZMBZwl0T2X5gDjO2HrJbiim4MtXZvlOTECOQnvPaWPcHE4yl+k/rnRG1HjCcNzg34A
	uLfnwQS6yoZxjLJcFShZxieb53aH/3yb8hvr3EzkKFc/5YYGeABK7NsNaxbozFcEe8M5js5Jf/eD1
	SQgsDWephXm55MyS6FrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBsY-0006ev-UR; Mon, 12 Aug 2019 15:04:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxBsN-0006Xf-19; Mon, 12 Aug 2019 15:04:47 +0000
Date: Mon, 12 Aug 2019 08:04:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nick Hu <nickhu@andestech.com>
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
Message-ID: <20190812150446.GI26897@infradead.org>
References: <cover.1565161957.git.nickhu@andestech.com>
 <a6c24ce01dc40da10d58fdd30bc3e1316035c832.1565161957.git.nickhu@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6c24ce01dc40da10d58fdd30bc3e1316035c832.1565161957.git.nickhu@andestech.com>
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
Cc: aou@eecs.berkeley.edu, alankao@andestech.com, atish.patra@wdc.com,
 gregkh@linuxfoundation.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, zong@andestech.com, alexios.zavras@intel.com,
 Anup.Patel@wdc.com, glider@google.com, green.hu@gmail.com,
 paul.walmsley@sifive.com, aryabinin@virtuozzo.com, tglx@linutronix.de,
 deanbo422@gmail.com, linux-riscv@lists.infradead.org, dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 03:19:14PM +0800, Nick Hu wrote:
> There are some features which need this string operation for compilation,
> like KASAN. So the purpose of this porting is for the features like KASAN
> which cannot be compiled without it.
> 
> KASAN's string operations would replace the original string operations and
> call for the architecture defined string operations. Since we don't have
> this in current kernel, this patch provides the implementation.
> 
> This porting refers to the 'arch/nds32/lib/memmove.S'.

This looks sensible to me, although my stringop asm is rather rusty,
so just an ack and not a real review-by:

Acked-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
