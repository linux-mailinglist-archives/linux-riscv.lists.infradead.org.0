Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11301B0153
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 08:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KBPsZBzCMiEHNyuicIllgFMhj8bJgrYK9pYLjZR0Ty4=; b=O6i
	F8XGjq7/9btGmyLbWuETs6X0XxogXg773QCYPB7TNzZj4f4jcWjhGalIbtjg+1iVRVv9P9w8JIRnN
	NWeSBmX1yz7rYsI/7ZcGvI/Ke7jRxrTOufE9r7p+4JtFwT8k8WV9ym5/BsNTebllcKB+ZiKq0ayFI
	FZPpq2b8QQRH4qa68w51FqD9QuBpO38jSoSZqNU7SKrvJUrmDFfPpJWYeVfSwd36QC07Vohvq6hY6
	EXJS46x81SAkoSzoFrt4iRBZxiqEdesvTuSheYhnQ2UA5Qq+HZszF2XU7i41B0DZAS6nqW8hxNHok
	XpO4z1vJKkZc319L3UykMuYXu9FKJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQPau-0000e1-9R; Mon, 20 Apr 2020 06:07:48 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQPap-0000ci-T9
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 06:07:46 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 03K65AvZ039721;
 Mon, 20 Apr 2020 14:05:10 +0800 (GMT-8)
 (envelope-from ruinland@andestech.com)
Received: from APC301.andestech.com (10.0.12.128) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Mon, 20 Apr 2020
 14:07:29 +0800
Date: Mon, 20 Apr 2020 14:07:31 +0800
From: Ruinland ChuanTzu Tsai <ruinland@andestech.com>
To: <sw-dev@groups.riscv.org>
Subject: The concern about RV32 Linux ABI stability raised by musl-libc's
 maintainer
Message-ID: <20200420060730.GA20374@APC301.andestech.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.0.12.128]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 03K65AvZ039721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_230744_192574_C8D0B0B8 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Dear RISC-V developers,
Sorry for dropping this mail out of the blue.

A couple of weeks ago, I was porting Alpine, a musl-libc based Linux
distro, to a RV32 platform named LiteX/VexRiscv . Since the support
for RV32 musl-libc was blocked whereas RV64 support got accepted back in
May 2019, I asked Rich Felker, the maintainer of musl-libc, about his
concern which blocks the RV32 port.

He said, and I quote, "kernel has not declared it (RV32 Linux) a stable
ABI yet." 

He added some comments on this issue in the follow-up e-mail : 
" I don't know the official statement of kernel policy, but my
understanding of it is just that the normal kernel stability policy
(that they can't "break userspace", including changing type
definitions that are part of user-kernel ABI, removing syscalls, etc.)
doesn't apply yet for RV32. I'd welcome a clarification from anyone
who can provide one on whether this is still the case, and if so, what
needs to happen to get past that. "

To the best of my recollection, I don't recall there's any official
statements to declare the stability of RV64 kernel or any kind of ABI
freeze.

I've been asking around my collegaues; they don't remember such kind of
annoucement either.

Yet I believe that to some degree, there's a rough transition point
when we all came to agree " not to touch RV64 kernel <=> user interface
(i.e. stuffs under arch/riscv/include/asm) too much from now on. "

As my own experience, we (Andes Tech) have been distributing RV32 kernel
to our customers without having ABI breakage for a long time.

Does anyone here also feels the same for RV32 ?

If that's the case, then we might be able to ease Rich's concern about
RV32 kernel's ABI stability.

Or if that's not the case, please enlighten me a bit so we could work it
out together :-)

A spinning tiny cog,
Ruinland ChuanTzu Tasi

----- Forwarded message from Rich Felker <dalias@libc.org> -----

Date: Wed, 1 Apr 2020 09:40:01 -0400
From: Rich Felker <dalias@libc.org>
To: musl@lists.openwall.com
Subject: Re: [musl] About "stable ABI" for riscv32 kernel issue and Alpine port
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Apr 01, 2020 at 02:18:27PM +0800, Ruinland ChuanTzu Tsai wrote:
> Hi Rich and All,
> 
> Back in 13th Mar, Rich has stated that "kernel has not declared it 
> (RV32 Linux) a stable ABI yet." I'm wondering whether Rich could kindly
> elaborate a little bit more details about this concern ?

I don't know the official statement of kernel policy, but my
understanding of it is just that the normal kernel stability policy
(that they can't "break userspace", including changing type
definitions that are part of user-kernel ABI, removing syscalls, etc.)
doesn't apply yet for RV32. I'd welcome a clarification from anyone
who can provide one on whether this is still the case, and if so, what
needs to happen to get past that.

> Since my employer, Andes Tech, is one of the founding plantium memeber
> of RISC-V Foundation and we're shipping a considerable amount of
> Linux-running RV32 products at the time we're speaking, we will be
> happy to help on the kernel side and make it more stablized and secured.

It's not a matter of secure or "stable" in the sense of not crashing.
It's a matter of "stable" in the sense of "not changing out from under
you".

> During my pastime, I've ported Alpine Linux with musl 1.2.0 to a 
> publicily available and open-sourced platform, LiteX/VexRiscv[1], which
> could be synthesized and "burnt" to a Lattice ECP5-5G Versa Evaluation
> Board with completely FOSS toolchain without any closed source
> component. [2]
> 
> And here's the footage of booting :
> https://asciinema.org/a/315205
> 
> Unfortunately, since my musl 1.2.0 is an inhouse work and we are still
> polishing and preparing it for upstreaming, please excuse me from not
> releasing the cpio image and stuffs at this time being.
> 
> P.S.
> Regarding the last mail:
> https://www.openwall.com/lists/musl/2020/03/13/4
> I'm not really qualified to answer the reason/profit of lacking LR/SC
> pair. Yet just a rough hunch that LR/SC is much stronger in atomicity
> than other AMOs.

Yes, LR/SC is a slightly stronger primitive in some sense, but at the
same time it's far easier to fake an implementation on single-core
designs.

In any case if there are chips people want to run Linux/musl on that
lack LR/SC then we need to know what the intended way to get atomics
is. Does kernel trap and emulate? Do we have to make a syscall? Is
there a function kernel exports to userspace like kuser_helper on
pre-v6 ARM that establishes a contract of cooperation between kernel
and userspace to restart interrupted atomics? What are you doing with
your WIP port?

Rich

----- End forwarded message -----

