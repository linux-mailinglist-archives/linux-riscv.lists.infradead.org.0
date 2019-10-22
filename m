Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD840DFA3F
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 03:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnzn5KozwTrtJ8c9qbRCWgXXzjUEVq/0lbuyME7Lf+U=; b=gFmqSzWGt/uZGn
	hqat52Ic2qCw0wBaew8hxgsT7w+250Xrnq0DcuZLmNrhzAkAqbdzIWKvy3Tzz/DlZ0wi9iACp9ERk
	IVq7MAcZpG7koMQ/xi/1xApcNYO4C5L6GGaGcNpQbdC1REHbVm9zFIPFe8tfLvSblH20df6vQMB8x
	lHstVaNg404rqej8BFs8NU7oejem1kZoBhLOgCKSfLDzxY8Wyc/3Fq2fwY2+RU9mvyd3BUEy26abQ
	0bijwCYZVt+AgyD0Yrtp9wzAvG3JpLjJQYI9sWCNInu12W8G6uko+tRGJLTCDXha6xz4706xIzs/z
	9jkKpV2II3Q93WLREcAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjEc-0000MR-8B; Tue, 22 Oct 2019 01:45:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjEQ-0007ib-VW
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 01:45:08 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8A822166E;
 Tue, 22 Oct 2019 01:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571708705;
 bh=Z9fN3zd+PcUP2OO28Tpt6wFJZgF3dMPAo7VcQb/U9I8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0i1b5ekWUAVk+pezKqLDBwQO2VTdkPGR7Mb1hIlrgdqn2GaX+ium6MWFGHyzLLRr
 /+fDc4Gy16Zvxko6dPbUoIf8IPqsSOw+3cSWhi8SD69bJ2w88lMsPJWQha/Yzsg0yH
 C2iE6CDGM0Zpst5AA05hjnMMK25wvjZeiMjhoMW4=
Date: Mon, 21 Oct 2019 18:45:03 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: arch/riscv doesn't support xchg() on bool
Message-ID: <20191022014503.GA938@sol.localdomain>
Mail-Followup-To: Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org
References: <20191021204026.GE122863@gmail.com>
 <alpine.DEB.2.21.9999.1910211744450.28831@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910211744450.28831@viisi.sifive.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_184507_097309_29F36E83 
X-CRM114-Status: GOOD (  28.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, linux-fscrypt@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Mon, Oct 21, 2019 at 06:23:11PM -0700, Paul Walmsley wrote:
> Hi Eric,
> 
> On Mon, 21 Oct 2019, Eric Biggers wrote:
> 
> > The kbuild test robot reported a build error on RISC-V in this patch:
> > 
> > 	https://patchwork.kernel.org/patch/11182389/
> > 
> > ... because of the line:
> > 
> > 	if (!xchg(&mode->logged_impl_name, true)) {
> > 
> > where logged_impl_name is a 'bool'.  The problem is that unlike most (or 
> > all?) other kernel architectures, arch/riscv/ doesn't support xchg() on 
> > bytes.
> 
> When I looked at this in August, it looked like several Linux other 
> architectures - SPARC, Microblaze, C-SKY, and Hexagon - also didn't 
> support xchg() on anything other than 32-bit types:
> 
> https://lore.kernel.org/lkml/alpine.DEB.2.21.9999.1908161931110.32497@viisi.sifive.com/
> 
> Examples:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/sparc/include/asm/cmpxchg_32.h#n18
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/sparc/include/asm/cmpxchg_32.h#n41
> 
> > Is there any chance this could be implemented, to avoid this
> > architecture-specific quirk?
> 
> It is certainly possible.  I wonder whether it is wise.  Several of the 
> other architectures implement a software workaround for this operation, 
> and I guess you're advocating that we do the same.  We could copy one 
> these implementations.  However, the workarounds balloon into quite a lot 
> of code.  Here is an example from MIPS:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/mips/kernel/cmpxchg.c#n10
> 
> I could be wrong, but I think this expansion would be pretty surprising 
> for most users of xchg().  I suspect most xchg() users are looking for 
> something performant, and would be better served by simply using a 
> variable with a 32-bit type.
> 
> In the case of your patch, it appears that struct 
> fscrypt_mode.logged_impl_name is only used in the patched function.  It 
> looks like it could be promoted into a u32 without much difficulty.  
> Would you be willing to consider that approach of solving the problem?  
> Then the code would be able to take advantage of the fast hardware 
> implementation that's available on many architectures (including RISC-V).

Yes, I already sent a new version of the patch, which changes the variable to an
int: https://patchwork.kernel.org/patch/11203003/.  I was wondering more about
how to stop other people from running into this.

> 
> > Note, there's at least one other place in the kernel that also uses 
> > xchg() on a bool.
> 
> Given the nasty compatibility code, I wonder if we'd be better served by 
> removing most of this compatibility code across the kernel, and just 
> requiring callers to use a 32-bit type?  For most callers that I've seen, 
> this doesn't seem to be much of an issue; and it would avoid the nasty 
> code involved in software emulations of xchg().
> 

It's possible that's the better approach; someone would need to go through all
the xchg() users and check whether any truly need the 8 or 16-bit support.  My
main concern was just the annoyance of code that only fails to compile on
certain architectures.  It should either be one way or the other everywhere.

- Eric

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
