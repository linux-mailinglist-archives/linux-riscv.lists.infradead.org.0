Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB10A1797
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 12:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOo2dIIM8ew4MbzqzG+iVa/p0YRcbTrpgvX4BiGcIs0=; b=VbRlbmX4a8YISs
	hYNpg0mZfiRqIWnknF1qrfyXgk0JeU2G3XFckgnDTs9irWMndHvPLVo6briMSoWGnthyJ/rBvCzC0
	A4f3pqU0gNMrv9z32Zt4dD0/Lo2VfPQj3QT8ztTO0lekkyaQOXABbL8POuLFUMyiXIFtJVDh/ZGIF
	DJ7RSl3RNuFQ8Q/LS10W4eMISpVpyoRh5asxyVu9vO/8nHOuYcGxToCjuypI40mmy1hw5o4JoFV/5
	PMaFa7TBmOHuBy3jy/hNshP7B7am9WjQ/dhzvZU6VzSvX5ccv38W+AEPFrqJc0by/kWCPUbUfY7ln
	M/hksRP3XUS0L7tsprSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3I9C-0002pF-HA; Thu, 29 Aug 2019 10:59:22 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3I99-0002ot-RM; Thu, 29 Aug 2019 10:59:19 +0000
Date: Thu, 29 Aug 2019 03:59:19 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
Message-ID: <20190829105919.GB8968@infradead.org>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190827144624.GA18535@infradead.org>
 <a31c39e8653bd04efe0051a5fd6f0238d33a80e7.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a31c39e8653bd04efe0051a5fd6f0238d33a80e7.camel@wdc.com>
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 10:19:42PM +0000, Atish Patra wrote:
> I did not understand this part. All the legacy SBI calls are defined as
> a separate extension ID not single extension. How did it break the
> backward compatibility ?

Yes, sorry I mistead this.  The way is is defined is rather
non-intuitive, but actually backwards compatible.

> I think the confusion is because of legacy renaming. They are not
> single legacy extension. They are all separate extensions. The spec
> just called all those extensions as collectively as legacy. So I just
> tried to make the patch sync with the spec.
> 
> If that's the source of confusion, I can rename it to sbi_0.1_x in
> stead of legacy.

I think we actually need to fix the spec instead, even if it just the
naming and not the mechanism.

> >  (1) actually board specific and have not place in a cpu abstraction
> >      layer: getchar/putchar, these should just never be advertised in
> > a
> >       non-legacy setup, and the drivers using them should not probe
> >       on a sbi 0.2+ system
> 
> In that case, we have to update the drivers(earlycon-riscv-sbi &
> hvc_riscv_sbi) in kernel as well. Once these patches are merged, nobody
> will be able to use earlycon=sbi feature in mainline kernel.
> 
> Personally, I am fine with it. But there were some interest during
> RISC-V workshop in keeping these for now for easy debugging and early
> bringup.

The getchar/putchar calls unfortunately are fundamentally flawed, as
they mean the sbi can still access the console after the host has taken
it over using its own drivers.  Which will lead to bugs sooner or later.

And if you can bring up a console driver in opensbi it should be just
as trivial to bring up the kernel version.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
