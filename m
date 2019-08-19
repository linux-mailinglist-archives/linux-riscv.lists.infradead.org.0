Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61499280E
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 17:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEZ5opWXNs6pDctX1+eEPeIrsCpVkjlbYeNyyQXrT9w=; b=en26yL6PBiubJU
	lZ4zm7YAag+YWfO5hvyrxwyS98z8ZBvdVbDEaIRsjlFll+SZ2Zok7lhqzjrNKnjwutj23q4xAXYSC
	uZR8IfhG7hO3I3YoUxtwo5Is1bX81BTEaAEwbwJ1f7psPV57ql4I09K+96wcr66xcfAhQaABmGdMf
	Ddw4z3MvgBhE8qBX5hwlOvLXGVwwOvEnxkuVXjdyLMXUr3O28dLBdR9wL52w9sNZGW/3rFl/Jkn+b
	tnPYDl4Vf+pew9NK+CFlGREsXbSqh4EhBbRBkj2axYUP+OQK9jI95eyBL3RCzBDjfSST/2JEan9iy
	JE70jPLSCp0zs3AMBwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjId-0002I4-Ht; Mon, 19 Aug 2019 15:10:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hzjIX-0002Hg-IY; Mon, 19 Aug 2019 15:10:17 +0000
Date: Mon, 19 Aug 2019 08:10:17 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Message-ID: <20190819151015.GA3316@infradead.org>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <20190812145631.GC26897@infradead.org>
 <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
 <20190813143027.GA31668@infradead.org>
 <3f55d5878044129a3cbb72b13b712e9a1c218dc7.camel@wdc.com>
 <20190819144627.GA27061@infradead.org>
 <CAAhSdy3KLCW540mLVk4F6nAqYP2dYuiGqO4FuwTD1Hra_gHcGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy3KLCW540mLVk4F6nAqYP2dYuiGqO4FuwTD1Hra_gHcGg@mail.gmail.com>
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:39:02PM +0530, Anup Patel wrote:
> If we were using ASID then yes we don't need to flush anything
> but currently we don't use ASID due to lack of HW support and
> HW can certainly do speculatively page table walks so flushing
> local TLB when MM mask is empty might help.
> 
> This just my theory and we need to stress test more.

Well, when we context switch away from a mm we always flush the
local tlb.  So either the mm_struct has never been scheduled in,
or we alrady did a local_tlb_flush and we context switched it up.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
