Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEA71FA54
	for <lists+linux-riscv@lfdr.de>; Wed, 15 May 2019 21:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OcHwK7MUrU9ZAKgjhWciIp7tOC4NhNft6Ybed05IJak=; b=MNddfFV4/x/QLv5D/4PBLODXH
	oWhlthpi/0dxht9jiIlYbQRTEiVZK86WpEJeCYFyWULIE/E3aD1pg39OlmMpwA8mQZ3zEKmG+1jhJ
	VMLaCU/HedNR0hJFCA2USd2g/lDjfTJuuQTmGO5kcbHqvQiyUmxSQm8la3fnxSu3ZQIMFYCkcjJvm
	MQnhswE2Sx487f4WwZhSxxnQM9FtFAnGxeW8ykCMdZ5kIE/yITGrC9SOuM1G9XZOPvZf5PPxAEreB
	Q5p3qWhS5+fFnzddHQmkaKtE7pvspiXTGil62LS75TcF5Kd4A/qPRXh66cCDFls8tXsu9BLBqeeLa
	JyvWPtEXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzHd-0004cp-Ne; Wed, 15 May 2019 19:09:45 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzHa-0004cT-Dr
 for linux-riscv@lists.infradead.org; Wed, 15 May 2019 19:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557947382; x=1589483382;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=XKkp/5FjxcdzcXBiWVADd+bsrCzJBVpKiZx6bgPCtvw=;
 b=AKE/0JYwt9deov1HEzf5W7buQltj4yf/6STlqFhMEx78STrGNNmTfolp
 mIItTYBl6iRmk8hmOhtrD1lu0/ZtSnC49Q15YCWdeVzjGSbAvl75bJfBA
 ODO5D55Q1E985GCi4p07m06AKQSJ90X02Oh/kkBTU+F600AwV/K363Ajy
 KDVkyudBhqJtWD07ugb8+GicvjhlM/ykGWFnfER1Uww9sxmf+dCGQAhsd
 EuKkCsxWUcNqY280VRpa8D3xiZbgBmXXvavTk1kJnilcP4wISdY7RWUYv
 m5KzPLa8fXyiRl2XRjSMe3GCx3K3uTq1JkEhcsciIgHWomOLqCLCfqJ37 g==;
X-IronPort-AV: E=Sophos;i="5.60,473,1549900800"; d="scan'208";a="214461758"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 03:09:40 +0800
IronPort-SDR: hYrqEQyDrbRulqpEwC7eA6yXupRgnVggQSN15QYmDuVTcASR24gh7KdN9GgPyRISkjWEOvjsFY
 TTLSgw33izo55CLCBYjd5xL5Fjz2/tcReM7blVYRWImHZy+wYt3FE1xZnFf0Joa47YqMN7WkCI
 d11stFT3nFmVesivjANGpIgdB9zRdHRX+sIwdP0Tyv1nNzFjtvswD2XJWh6LmcG/L5W0U0Hrjf
 +YMlGSV2C3nAJp7LKDZMtvDzS6T1mYRY7UVdGR3d/+2eIMFKuSoJPTVHKebJFx8Fh7EV1qlLdQ
 jrBaHSyGQROBHm3QF1hR5rhs
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 15 May 2019 11:45:16 -0700
IronPort-SDR: uSNJ7/H3oezjbkZ/xHN2Zf6QnHXRZDxduONaF44lLAKW8Se8U78dFrVwcHUj0zQ7QShzCIaUp9
 SpxCxQhRISB/lSOTscaX5RjeW19vJ10QUDRa6rNfAxNVSpr/kJ/GXWOw5pf5XH3f++dQLiaZEf
 uSHHzshnW9klI1FvEOjH0gqxxb/yNDToZIyNJIk8hp8GQJmhDo++DmKknDqNzMGpWj9XtJPT0e
 fhgZFRAhusvBS1R6MLsK3ZZ7WB8p/QaOguZKRXcHxTjNgIg9PclWAV18DT7RYas8cjDhqJ+S8r
 MGM=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip01.wdc.com with ESMTP; 15 May 2019 12:09:39 -0700
Subject: Re: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1
To: Palmer Dabbelt <palmer@sifive.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <mhng-d6bbd5f4-7409-4d3e-94a0-7ff0c6a71c9e@palmer-si-x1e>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <21598eb7-8ff0-2b6b-4cab-c0d1295fd46e@wdc.com>
Date: Wed, 15 May 2019 12:08:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mhng-d6bbd5f4-7409-4d3e-94a0-7ff0c6a71c9e@palmer-si-x1e>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_120942_612656_E87199A2 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/15/19 10:40 AM, Palmer Dabbelt wrote:
> The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:
> 
>    Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)
> 
> are available in the Git repository at:
> 
>    git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw0
> 
> for you to fetch changes up to e23fc917f04ffac8c156fdb4ee8b56f3867fa50b:
> 
>    RISC-V: Avoid using invalid intermediate translations (2019-05-08 15:06:18 -0700)
> 
> ----------------------------------------------------------------
> RISC-V Patches for the 5.2 Merge Window, Part 1
> 
> This patch set contains an assortment of RISC-V related patches that I'd
> like to target for the 5.2 merge window.  Most of the patches are
> cleanups, but there are a handful of user-visible changes:
> 
> * The nosmp and nr_cpus command-line arguments are now supported, which
>    work like normal.
> * The SBI console no longer installs itself as a preferred console, we
>    rely on standard mechanisms (/chosen, command-line, hueristics)
>    instead.
> * sfence_remove_sfence_vma{,_asid} now pass their arguments along to the
>    SBI call.
> * Modules now support BUG().
> * A missing sfence.vma during boot has been added.  This bug only
>    manifests during boot.
> 
> I've only tested this on QEMU again, as I didn't have time to get things
> running on the Unleashed.  The latest master from this morning merges in
> cleanly and passes the tests as well.
> 
> ----------------------------------------------------------------
> Anup Patel (4):
>        RISC-V: Use tabs to align macro values in asm/csr.h
>        RISC-V: Add interrupt related SCAUSE defines in asm/csr.h
>        RISC-V: Access CSRs using CSR numbers
>        tty: Don't force RISCV SBI console as preferred console
> 
> Atish Patra (4):
>        RISC-V: Add RISC-V specific arch_match_cpu_phys_id
>        RISC-V: Implement nosmp commandline option.
>        RISC-V: Support nr_cpus command line option.
>        RISC-V: Fix minor checkpatch issues.
> 
> Christoph Hellwig (11):
>        riscv: use asm-generic/extable.h
>        riscv: turn mm_segment_t into a struct
>        riscv: remove unreachable big endian code
>        riscv: remove CONFIG_RISCV_ISA_A
>        riscv: clear all pending interrupts when booting
>        riscv: simplify the stack pointer setup in head.S
>        riscv: cleanup the parse_dtb calling conventions
>        riscv: remove unreachable !HAVE_FUNCTION_GRAPH_RET_ADDR_PTR code
>        riscv: remove duplicate macros from ptrace.h
>        riscv: print the unexpected interrupt cause
>        riscv: call pm_power_off from machine_halt / machine_power_off
> 
> Gary Guo (3):
>        riscv: move flush_icache_{all,mm} to cacheflush.c
>        riscv: move switch_mm to its own file
>        riscv: fix sbi_remote_sfence_vma{,_asid}.
> 
> Guo Ren (1):
>        riscv/signal: Fixup additional syscall restarting
> 
> Nick Desaulniers (1):
>        riscv: vdso: drop unnecessary cc-ldoption
> 
> Palmer Dabbelt (1):
>        RISC-V: Avoid using invalid intermediate translations
> 
> Vincent Chen (3):
>        riscv: support trap-based WARN()
>        riscv: Add the support for c.ebreak check in is_valid_bugaddr()
>        riscv: Support BUG() in kernel module
> 
>   arch/riscv/Kconfig                   |   6 +-
>   arch/riscv/Makefile                  |   5 +-
>   arch/riscv/include/asm/Kbuild        |   1 +
>   arch/riscv/include/asm/bug.h         |  35 ++++++----
>   arch/riscv/include/asm/cacheflush.h  |   2 +-
>   arch/riscv/include/asm/csr.h         | 123 ++++++++++++++++++++++-------------
>   arch/riscv/include/asm/elf.h         |   6 --
>   arch/riscv/include/asm/futex.h       |  13 ----
>   arch/riscv/include/asm/irqflags.h    |  10 +--
>   arch/riscv/include/asm/mmu_context.h |  59 +----------------
>   arch/riscv/include/asm/ptrace.h      |  21 ++----
>   arch/riscv/include/asm/sbi.h         |  19 ++++--
>   arch/riscv/include/asm/thread_info.h |   4 +-
>   arch/riscv/include/asm/uaccess.h     |  28 +++-----
>   arch/riscv/kernel/asm-offsets.c      |   3 -
>   arch/riscv/kernel/cpu.c              |   3 +-
>   arch/riscv/kernel/entry.S            |  22 +++----
>   arch/riscv/kernel/head.S             |  33 ++++++----
>   arch/riscv/kernel/irq.c              |  19 ++----
>   arch/riscv/kernel/perf_event.c       |   4 +-
>   arch/riscv/kernel/reset.c            |  15 +++--
>   arch/riscv/kernel/setup.c            |   6 +-
>   arch/riscv/kernel/signal.c           |   6 ++
>   arch/riscv/kernel/smp.c              |  61 +++--------------
>   arch/riscv/kernel/smpboot.           |   0
>   arch/riscv/kernel/smpboot.c          |  22 ++++++-
>   arch/riscv/kernel/stacktrace.c       |  14 ++--
>   arch/riscv/kernel/traps.c            |  30 ++++++---
>   arch/riscv/kernel/vdso/Makefile      |   2 +-
>   arch/riscv/mm/Makefile               |   1 +
>   arch/riscv/mm/cacheflush.c           |  61 +++++++++++++++++
>   arch/riscv/mm/context.c              |  69 ++++++++++++++++++++
>   arch/riscv/mm/fault.c                |   6 +-
>   drivers/tty/hvc/hvc_riscv_sbi.c      |   1 -
>   34 files changed, 390 insertions(+), 320 deletions(-)
>   create mode 100644 arch/riscv/kernel/smpboot.

I think "smpboot." got added as a typo because of commit (RISC-V: 
Support nr_cpus command line option.).

Can you please update the PR directly or should I send a fixup patch?

Regards,
Atish
>   create mode 100644 arch/riscv/mm/context.c
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
