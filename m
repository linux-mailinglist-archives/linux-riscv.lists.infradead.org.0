Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216191FCEE
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 03:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=KuzuyOlKY/yBoGhvsYQr9NdnAGvpLwewn4nfVrvtgPQ=; b=Vxz8CBSXq0A3v2eERNShwiq/3
	e/o28l8yvDGUpezDGQuekSm7ZjuVc+/fDqV/lgz7+PqXp3y/xBgPAKHVnknxYiEvdyfrQIm7NaaNO
	bjNaA8MZ9HW22iNcBOqG1aZ6ts5oIB/Ak0f4aGV+O6WmTx+nuLQBDS+IHBzD3NABCLdp+yQLsqAM3
	3tay7MYTB0IXanLjKVGN1bTp3l0MgO7JC8uLCtnFBFA8SixIuiCaS1s2QCPT81oc8R2MhB6BJJJND
	ejrkgUQi254alzfd4DY9DnF2G6vFzzXjwgfRFF5LPHomJ+Mka04BjU3q2tMYYYTPyhuVG1dD3pOsT
	yo7OlP7kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR5QG-0008Cg-Gk; Thu, 16 May 2019 01:43:04 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR5QD-0008C7-Ed
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 01:43:03 +0000
Received: by mail-pf1-f193.google.com with SMTP id 13so918544pfw.9
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 18:43:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=7SwtIFTytRUIEDGWEwu6hti01P2GNQFISvzzuEXab0g=;
 b=R1PYz5UERnqmsBrQa3yo/y5KZX0nc3F9Y2NMK32alvY3kjLSBgDVChiCl2xoEdBciy
 zgDjV/0bdoZmXAMtWKpC65dTQXOJGSIE6h70S5gqjycSxbXkNeP211vQ9D/weKhmvV5n
 W5gMCgFoBryM7ZFYAeYc2olrnkangTlwzf3h6X8PFteyr6yEkFhFqcvlUKUA2PtJjNwF
 vEaizsccR6Vrl5LNnu2GCd+f3i5TEqSwN0M280Y1i/m39WgsjEky1oanYWQ3UFL2CbFM
 G1L2hwt76UxOMIKB3uceK9Sday9fGkbFbR1Ov7EdiDDI6HT5C78Lblk0W2kG7DuubWcR
 1/yA==
X-Gm-Message-State: APjAAAUmvxo9QKZky9eqFJUIPnaCLozDu8h4BAkCprQH/zRqzoKR6xlx
 Ou1IVazzO1F8ZFdEfQs5nuKV2NU+ubQ=
X-Google-Smtp-Source: APXvYqwuTsPktTTpaeES4T1KVD834+oVs1m82p0wEi8Msv0ip/VofHEk1XIvtOloFudhqitu6gsEeQ==
X-Received: by 2002:a63:465b:: with SMTP id v27mr47809999pgk.38.1557970979636; 
 Wed, 15 May 2019 18:42:59 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id n27sm8066642pfb.129.2019.05.15.18.42.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 18:42:59 -0700 (PDT)
Date: Wed, 15 May 2019 18:42:59 -0700 (PDT)
X-Google-Original-Date: Wed, 15 May 2019 18:42:40 PDT (-0700)
Subject: Re: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1
In-Reply-To: <21598eb7-8ff0-2b6b-4cab-c0d1295fd46e@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: atish.patra@wdc.com
Message-ID: <mhng-54fad465-30c1-426c-84c1-99fd4ac827b0@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_184301_488221_EFE35BD7 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 15 May 2019 12:08:36 PDT (-0700), atish.patra@wdc.com wrote:
> On 5/15/19 10:40 AM, Palmer Dabbelt wrote:
>> The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:
>>
>>    Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)
>>
>> are available in the Git repository at:
>>
>>    git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw0
>>
>> for you to fetch changes up to e23fc917f04ffac8c156fdb4ee8b56f3867fa50b:
>>
>>    RISC-V: Avoid using invalid intermediate translations (2019-05-08 15:06:18 -0700)
>>
>> ----------------------------------------------------------------
>> RISC-V Patches for the 5.2 Merge Window, Part 1
>>
>> This patch set contains an assortment of RISC-V related patches that I'd
>> like to target for the 5.2 merge window.  Most of the patches are
>> cleanups, but there are a handful of user-visible changes:
>>
>> * The nosmp and nr_cpus command-line arguments are now supported, which
>>    work like normal.
>> * The SBI console no longer installs itself as a preferred console, we
>>    rely on standard mechanisms (/chosen, command-line, hueristics)
>>    instead.
>> * sfence_remove_sfence_vma{,_asid} now pass their arguments along to the
>>    SBI call.
>> * Modules now support BUG().
>> * A missing sfence.vma during boot has been added.  This bug only
>>    manifests during boot.
>>
>> I've only tested this on QEMU again, as I didn't have time to get things
>> running on the Unleashed.  The latest master from this morning merges in
>> cleanly and passes the tests as well.
>>
>> ----------------------------------------------------------------
>> Anup Patel (4):
>>        RISC-V: Use tabs to align macro values in asm/csr.h
>>        RISC-V: Add interrupt related SCAUSE defines in asm/csr.h
>>        RISC-V: Access CSRs using CSR numbers
>>        tty: Don't force RISCV SBI console as preferred console
>>
>> Atish Patra (4):
>>        RISC-V: Add RISC-V specific arch_match_cpu_phys_id
>>        RISC-V: Implement nosmp commandline option.
>>        RISC-V: Support nr_cpus command line option.
>>        RISC-V: Fix minor checkpatch issues.
>>
>> Christoph Hellwig (11):
>>        riscv: use asm-generic/extable.h
>>        riscv: turn mm_segment_t into a struct
>>        riscv: remove unreachable big endian code
>>        riscv: remove CONFIG_RISCV_ISA_A
>>        riscv: clear all pending interrupts when booting
>>        riscv: simplify the stack pointer setup in head.S
>>        riscv: cleanup the parse_dtb calling conventions
>>        riscv: remove unreachable !HAVE_FUNCTION_GRAPH_RET_ADDR_PTR code
>>        riscv: remove duplicate macros from ptrace.h
>>        riscv: print the unexpected interrupt cause
>>        riscv: call pm_power_off from machine_halt / machine_power_off
>>
>> Gary Guo (3):
>>        riscv: move flush_icache_{all,mm} to cacheflush.c
>>        riscv: move switch_mm to its own file
>>        riscv: fix sbi_remote_sfence_vma{,_asid}.
>>
>> Guo Ren (1):
>>        riscv/signal: Fixup additional syscall restarting
>>
>> Nick Desaulniers (1):
>>        riscv: vdso: drop unnecessary cc-ldoption
>>
>> Palmer Dabbelt (1):
>>        RISC-V: Avoid using invalid intermediate translations
>>
>> Vincent Chen (3):
>>        riscv: support trap-based WARN()
>>        riscv: Add the support for c.ebreak check in is_valid_bugaddr()
>>        riscv: Support BUG() in kernel module
>>
>>   arch/riscv/Kconfig                   |   6 +-
>>   arch/riscv/Makefile                  |   5 +-
>>   arch/riscv/include/asm/Kbuild        |   1 +
>>   arch/riscv/include/asm/bug.h         |  35 ++++++----
>>   arch/riscv/include/asm/cacheflush.h  |   2 +-
>>   arch/riscv/include/asm/csr.h         | 123 ++++++++++++++++++++++-------------
>>   arch/riscv/include/asm/elf.h         |   6 --
>>   arch/riscv/include/asm/futex.h       |  13 ----
>>   arch/riscv/include/asm/irqflags.h    |  10 +--
>>   arch/riscv/include/asm/mmu_context.h |  59 +----------------
>>   arch/riscv/include/asm/ptrace.h      |  21 ++----
>>   arch/riscv/include/asm/sbi.h         |  19 ++++--
>>   arch/riscv/include/asm/thread_info.h |   4 +-
>>   arch/riscv/include/asm/uaccess.h     |  28 +++-----
>>   arch/riscv/kernel/asm-offsets.c      |   3 -
>>   arch/riscv/kernel/cpu.c              |   3 +-
>>   arch/riscv/kernel/entry.S            |  22 +++----
>>   arch/riscv/kernel/head.S             |  33 ++++++----
>>   arch/riscv/kernel/irq.c              |  19 ++----
>>   arch/riscv/kernel/perf_event.c       |   4 +-
>>   arch/riscv/kernel/reset.c            |  15 +++--
>>   arch/riscv/kernel/setup.c            |   6 +-
>>   arch/riscv/kernel/signal.c           |   6 ++
>>   arch/riscv/kernel/smp.c              |  61 +++--------------
>>   arch/riscv/kernel/smpboot.           |   0
>>   arch/riscv/kernel/smpboot.c          |  22 ++++++-
>>   arch/riscv/kernel/stacktrace.c       |  14 ++--
>>   arch/riscv/kernel/traps.c            |  30 ++++++---
>>   arch/riscv/kernel/vdso/Makefile      |   2 +-
>>   arch/riscv/mm/Makefile               |   1 +
>>   arch/riscv/mm/cacheflush.c           |  61 +++++++++++++++++
>>   arch/riscv/mm/context.c              |  69 ++++++++++++++++++++
>>   arch/riscv/mm/fault.c                |   6 +-
>>   drivers/tty/hvc/hvc_riscv_sbi.c      |   1 -
>>   34 files changed, 390 insertions(+), 320 deletions(-)
>>   create mode 100644 arch/riscv/kernel/smpboot.
>
> I think "smpboot." got added as a typo because of commit (RISC-V:
> Support nr_cpus command line option.).
>
> Can you please update the PR directly or should I send a fixup patch?

OK.  It looks like I dropped the L2 patches, which I was going to submit as
another PR.  Since I have to do that anyway, I think it's best to just drop
this one.

Linus: I'm not sure how to tag this PR as a mistake, so I'm going to just send
another one.  If this gets merged then I'll handle the follow-on.

>
> Regards,
> Atish
>>   create mode 100644 arch/riscv/mm/context.c
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
