Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9AA5B073
	for <lists+linux-riscv@lfdr.de>; Sun, 30 Jun 2019 17:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SZa4MkDRcPDBkU9p8eH7/lGfTumSFo9XEEa/z3qyLQ8=; b=pISfwvX5NouWs4UCrgIjZUULb
	jma7W9MmignlIFWr3k+AS9J6LhRwO+ieQNgyB5jorX9op8KusLx3zIToo6I3oRk4XxKJkeaMf6OS1
	DiVx02s8raikHORAvshnTsnOKCRILwqbFOROCFrNjPQIkybqFo0X2li9qgxCwD0iUeSB4ZwNDJGTe
	JckpGWJVhnaWMAj3w9FbtTV8AG12TEGp9FWfPjYtPC7MGuKAG8TrAO4DuzqcSAHPv+Uwx9bDdGgmC
	qJjGvnoa0X9LGaBgMrkmvusKIXszvumke6jnDZTWgnImTaogQWGVTqlB7NJrGKpnCfm9NdDKDZpLz
	dIZpAZw6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhbrT-0000Wc-M9; Sun, 30 Jun 2019 15:35:27 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhbr5-0007UX-Es; Sun, 30 Jun 2019 15:35:05 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9122DE0004;
 Sun, 30 Jun 2019 15:34:41 +0000 (UTC)
Subject: Re: [PATCH v4 00/14] Provide generic top-down mmap layout functions
From: Alex Ghiti <alex@ghiti.fr>
To: Paul Burton <paul.burton@mips.com>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <bfb1565d-0468-8ea8-19f9-b862faa4f1d4@ghiti.fr>
Message-ID: <c4049021-50fd-32e5-7052-24d58b31e072@ghiti.fr>
Date: Sun, 30 Jun 2019 11:34:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <bfb1565d-0468-8ea8-19f9-b862faa4f1d4@ghiti.fr>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_083503_828069_D3E376A5 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Luis Chamberlain <mcgrof@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/13/19 1:29 AM, Alex Ghiti wrote:
> On 5/26/19 9:47 AM, Alexandre Ghiti wrote:
>> This series introduces generic functions to make top-down mmap layout
>> easily accessible to architectures, in particular riscv which was
>> the initial goal of this series.
>> The generic implementation was taken from arm64 and used successively
>> by arm, mips and finally riscv.
>>
>> Note that in addition the series fixes 2 issues:
>> - stack randomization was taken into account even if not necessary.
>> - [1] fixed an issue with mmap base which did not take into account
>> =A0=A0 randomization but did not report it to arm and mips, so by moving
>> =A0=A0 arm64 into a generic library, this problem is now fixed for both
>> =A0=A0 architectures.
>>
>> This work is an effort to factorize architecture functions to avoid
>> code duplication and oversights as in [1].
>>
>> [1]: =

>> https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1429066.html
>>
>> Changes in v4:
>> =A0=A0 - Make ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT select =

>> ARCH_HAS_ELF_RANDOMIZE
>> =A0=A0=A0=A0 by default as suggested by Kees,
>> =A0=A0 - ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT depends on MMU and define=
s =

>> the
>> =A0=A0=A0=A0 functions needed by ARCH_HAS_ELF_RANDOMIZE =3D> architectur=
es that =

>> use
>> =A0=A0=A0=A0 the generic mmap topdown functions cannot have =

>> ARCH_HAS_ELF_RANDOMIZE
>> =A0=A0=A0=A0 selected without MMU, but I think it's ok since randomizati=
on =

>> without
>> =A0=A0=A0=A0 MMU does not add much security anyway.
>> =A0=A0 - There is no common API to determine if a process is 32b, so I =

>> came up with
>> =A0=A0=A0=A0 !IS_ENABLED(CONFIG_64BIT) || is_compat_task() in [PATCH v4 =
12/14].
>> =A0=A0 - Mention in the change log that x86 already takes care of not =

>> offseting mmap
>> =A0=A0=A0=A0 base address if the task does not want randomization.
>> =A0=A0 - Re-introduce a comment that should not have been removed.
>> =A0=A0 - Add Reviewed/Acked-By from Paul, Christoph and Kees, thank you =

>> for that.
>> =A0=A0 - I tried to minimize the changes from the commits in v3 in order =

>> to make
>> =A0=A0=A0=A0 easier the review of the v4, the commits changed or added a=
re:
>> =A0=A0=A0=A0 - [PATCH v4 5/14]
>> =A0=A0=A0=A0 - [PATCH v4 8/14]
>> =A0=A0=A0=A0 - [PATCH v4 11/14]
>> =A0=A0=A0=A0 - [PATCH v4 12/14]
>> =A0=A0=A0=A0 - [PATCH v4 13/14]
>
> Hi Paul,
>
> Compared to the previous version you already acked, patches 11, 12 and 13
> would need your feedback, do you have time to take a look at them ?
>
> Hope I don't bother you,
>
> Thanks,
>
> Alex
>

Hi Paul,

Would you have time to give your feedback on patches 11, 12 and 13 ?

Thanks,

Alex


>
>>
>> Changes in v3:
>> =A0=A0 - Split into small patches to ease review as suggested by Christo=
ph
>> =A0=A0=A0=A0 Hellwig and Kees Cook
>> =A0=A0 - Move help text of new config as a comment, as suggested by =

>> Christoph
>> =A0=A0 - Make new config depend on MMU, as suggested by Christoph
>>
>> Changes in v2 as suggested by Christoph Hellwig:
>> =A0=A0 - Preparatory patch that moves randomize_stack_top
>> =A0=A0 - Fix duplicate config in riscv
>> =A0=A0 - Align #if defined on next line =3D> this gives rise to a checkp=
atch
>> =A0=A0=A0=A0 warning. I found this pattern all around the tree, in the s=
ame =

>> proportion
>> =A0=A0=A0=A0 as the previous pattern which was less pretty:
>> =A0=A0=A0=A0 git grep -C 1 -n -P "^#if defined.+\|\|.*\\\\$"
>>
>> Alexandre Ghiti (14):
>> =A0=A0 mm, fs: Move randomize_stack_top from fs to mm
>> =A0=A0 arm64: Make use of is_compat_task instead of hardcoding this test
>> =A0=A0 arm64: Consider stack randomization for mmap base only when neces=
sary
>> =A0=A0 arm64, mm: Move generic mmap layout functions to mm
>> =A0=A0 arm64, mm: Make randomization selected by generic topdown mmap la=
yout
>> =A0=A0 arm: Properly account for stack randomization and stack guard gap
>> =A0=A0 arm: Use STACK_TOP when computing mmap base address
>> =A0=A0 arm: Use generic mmap top-down layout and brk randomization
>> =A0=A0 mips: Properly account for stack randomization and stack guard gap
>> =A0=A0 mips: Use STACK_TOP when computing mmap base address
>> =A0=A0 mips: Adjust brk randomization offset to fit generic version
>> =A0=A0 mips: Replace arch specific way to determine 32bit task with gene=
ric
>> =A0=A0=A0=A0 version
>> =A0=A0 mips: Use generic mmap top-down layout and brk randomization
>> =A0=A0 riscv: Make mmap allocation top-down by default
>>
>> =A0 arch/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 |=A0 11 +++
>> =A0 arch/arm/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0 2 +-
>> =A0 arch/arm/include/asm/processor.h=A0=A0 |=A0=A0 2 -
>> =A0 arch/arm/kernel/process.c=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 5 --
>> =A0 arch/arm/mm/mmap.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 52 --------------
>> =A0 arch/arm64/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0=A0 2 +-
>> =A0 arch/arm64/include/asm/processor.h |=A0=A0 2 -
>> =A0 arch/arm64/kernel/process.c=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 8 ---
>> =A0 arch/arm64/mm/mmap.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 =
72 -------------------
>> =A0 arch/mips/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 |=A0=A0 2 +-
>> =A0 arch/mips/include/asm/processor.h=A0 |=A0=A0 5 --
>> =A0 arch/mips/mm/mmap.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 84 ----------------------
>> =A0 arch/riscv/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 11 +++
>> =A0 fs/binfmt_elf.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0 20 ------
>> =A0 include/linux/mm.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0=A0 2 +
>> =A0 kernel/sysctl.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0=A0 6 +-
>> =A0 mm/util.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 | 107 ++++++++++++++++++++++++++++-
>> =A0 17 files changed, 137 insertions(+), 256 deletions(-)
>>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
