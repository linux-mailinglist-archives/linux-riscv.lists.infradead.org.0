Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E501A1A60
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 05:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uu9w96uZytnHsrs7f5e7tXVrqaYyD9wlQfx6TNmWLWg=; b=GPm5o8tkWRCiYFqxdLmX2Snr+
	5QmjBTN80bIF1Ncwt9kCr1TOfxXgxW6hxPdPmcO1Q3ZDxU1dNNjmvd6u7EGXuB9sTw4VitAEc09DA
	NHgqdELNjS9u6yIEBowVgWOnrZ3cgsEKvYrnEwKb71TqtpyHZ6dlFjvUJYZFcq4wIGjSqYEgOxYLJ
	aBoszlwxc4xEsU3oAQmCppOeTMznVEAP7iY8w4Ob5Xy7r2A5DaqwBKdNKkFXJOkcZCEu2PI5yB4nU
	kYRauQfTyoc+z7z7SkDj3jqfWTIFAGFklJJVq8l3SjFc3u/LfKoHRj5ZYV5Zn3uTasTAmfkESckfZ
	7/CJH1CSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM1lX-0003O0-MM; Wed, 08 Apr 2020 03:52:39 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM1lT-0003NU-Vo
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 03:52:37 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 0383nq2K088232;
 Wed, 8 Apr 2020 11:49:52 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 8 Apr 2020
 11:51:17 +0800
Date: Wed, 8 Apr 2020 11:51:18 +0800
From: Alan Kao <alankao@andestech.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
Message-ID: <20200408035118.GA1451@andestech.com>
References: <20200331093241.3728-1-tesheng@andestech.com>
 <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 0383nq2K088232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_205236_282442_716A71E2 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Eric Lin <tesheng@andestech.com>, Gary Guo <gary@garyguo.net>,
 alex@ghiti.fr, David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Steven Price <steven.price@arm.com>,
 atish.patra@wdc.com, yash.shah@sifive.com, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greentime Hu <green.hu@gmail.com>,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>, Logan Gunthorpe <logang@deltatee.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 11:31:37AM +0200, Arnd Bergmann wrote:
> On Tue, Mar 31, 2020 at 11:34 AM Eric Lin <tesheng@andestech.com> wrote:
> >
> > With Highmem support, the kernel can map more than 1GB physical memory.
> >
> > This patchset implements Highmem for RV32, referencing to mostly nds32
> > and others like arm and mips, and it has been tested on Andes A25MP platform.
> 
> I would much prefer to not see highmem added to new architectures at all
> if possible, see https://lwn.net/Articles/813201/ for some background.
> 

Understood.

> For the arm32 architecture, we are thinking about implementing a
> VMPLIT_4G_4G option to replace highmem in the long run. The most
> likely way this would turn out at the moment looks like:
> 

Thanks for sharing the status from ARM32.  Is there any available branch
already?  It would be good to have a reference implementation.

> - have a 256MB region for vmalloc space at the top of the 4GB address
>   space, containing vmlinux, module, mmio mappings and vmalloc
>   allocations
> 
> - have 3.75GB starting at address zero for either user space or the
>   linear map.
> 
> - reserve one address space ID for kernel mappings to avoid tlb flushes
>   during normal context switches
> 
> - On any kernel entry, switch the page table to the one with the linear
>   mapping, and back to the user page table before returning to user space
>

After some survey I found previous disccusion
(https://lkml.org/lkml/2019/4/24/2110). The 5.2-based patch ended up not
being merged.  But at least we will have something to start if we want to.

Also interestingly, there was a PR for privileged spec that separates
addressing modes (https://github.com/riscv/riscv-isa-manual/pull/128) as
Sdas extension, but there was no progress afterwards.

Not very related to this thread, but there were some discussion about
ASID design in RISC-V (https://github.com/riscv/riscv-isa-manual/issues/348).
It is now in ratified 1.11 privileged spec.

> - add a generic copy_from_user/copy_to_user implementation based
>   on get_user_pages() in asm-generic/uaccess.h, using memcpy()
>   to copy from/to the page in the linear map.
> 
> - possible have architectures override get_user/put_user to use a
>   cheaper access based on a page table switch to read individual
>   words if that is cheaper than get_user_pages().
> 
> There was an implementation of this for x86 a long time ago, but
> it never got merged, mainly because there were no ASIDs on x86
> at the time and the TLB flushing during context switch were really
> expensive. As far as I can tell, all of the modern embedded cores
> do have ASIDs, and unlike x86, most do not support more than 4GB
> of physical RAM, so this scheme can work to replace highmem
> in most of the remaining cases, and provide additional benefits
> (larger user address range, higher separate of kernel/user addresses)
> at a relatively small performance cost.
> 
>        Arnd
> 

It seems to me that VMSPLIT_4G_4G is quite different from other VMSPLITs,
because it requires much more changes.

Thanks for showing the stance of kernel community against HIGHMEM support.
The cited discussion thread is comprehensive and clear.  Despite that RV32
users cannot get upstream support for their large memory, mechnisms like
VMSPLIT_4G_4G seems to be a promising way to go.  That being said, to
support the theoretical 16G physical memory, eventually kmap* will still
be needed.

Alan

