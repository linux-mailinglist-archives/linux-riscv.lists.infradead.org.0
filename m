Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118C67E232
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 20:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyLQFYK0NHh0qwukKo2c7y45XKkzwDMvXE0jpCck+Fc=; b=dQtQUTU83YWRzK
	xh5fh6bctod2XhvOwMPCrHpqT78kDE7mbexmcFcs7aUyHXF1GgdBr5fU275DRVApj27zkv0/jfVTk
	ZH0HPSEE4RCByY5IBO9drZOKnPJQ7ktAiGAbLvUwT50ImQ2DoQJhpu4V3vmEt0+QRrRw0GzvR6fUV
	xcds4PztCIRXv5b52k+33vA4SaMuWpKSzYakJVegpiuGRYBFipi6EFwyeV0I66MHDs6ITwT7ZnJRe
	ckBkq+DF1JOMJGU9h6j6NpjD1U6gJh0s4MjBeXLp/arxYhExhdUfcc5ErkBAj+8+cY6PgE9x5bHI3
	+uwdTwbQt4db0pZACM0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFsX-0003Yo-0u; Thu, 01 Aug 2019 18:32:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFsT-0003YP-Ub; Thu, 01 Aug 2019 18:32:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A2F07AFE2;
 Thu,  1 Aug 2019 18:32:34 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Random memory corruption with v5.2
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
X-Yow: Do you think the ``Monkees'' should get gas on odd or even days?
Date: Thu, 01 Aug 2019 20:32:33 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com> (Paul
 Walmsley's message of "Tue, 30 Jul 2019 17:22:01 -0700 (PDT)")
Message-ID: <mvmwofw68ji.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_113238_270185_627E63D0 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, opensbi@lists.infradead.org,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jul 30 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Tue, 30 Jul 2019, Andreas Schwab wrote:
>
>> On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com> wrote:
>> 
>> > On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de> wrote:
>> >>
>> >> Since switching to 5.2 kernels I'm seeing random crashes and
>> >> misbehaviors on the HiFive, for example while building gcc or glibc.
>> >> Perhaps missing TLB flushes?
>> >
>> > Do you have some examples of crashes?
>> 
>> While building glibc:
>> 
>> an_ES.UTF-8...realloc(): invalid pointer
>> /bin/sh: line 1:  7841 Aborted                 (core dumped) I18NPATH=. GCONV_PATH=/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/iconvdata LC_ALL=C /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf/ld-linux-riscv64-lp64d.so.1 --library-path /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/math:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/dlfcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nss:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/resolv:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef $flags --alias-file=../intl/locale.alias -i locales/$input -f charmaps/$charset --prefix=/home/abuild/rpmbuild/BUILDROOT/glibc-2.29-0.riscv64 $locale
>> make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8] Error 134
>> 
>> While building gcc:
>> 
>> ../../gcc/ada/exp_aggr.adb: In function 'Exp_Aggr.Expand_N_Aggregate':
>> ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used uninitialized in this function [-Wmaybe-uninitialized]
>> ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
>> +===========================GNAT BUG DETECTED==============================+
>> | 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-suse-linux) |
>> | Storage_Error stack overflow or erroneous memory access                  |
>> | Error detected at output.ads:39:8                                        |
>> realloc(): invalid pointer
>
> I personally haven't seen these issues; but then again, I haven't done any 
> glibc or gcc builds on v5.2.  Will take a closer look.

I think there is some fundamental problem with SBI_REMOTE_SFENCE_VMA or
the kernel interface to it.

For exmaple, flush_tlb_page is defined as:

#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)

But the third argument of flush_tlb_range is supposed to be the end
address, so this should actually be:

#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)

Alas, that doesn't fix the crashes.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
