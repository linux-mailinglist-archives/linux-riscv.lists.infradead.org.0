Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE389432C5
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 07:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7XsTKpwtJll/T4Kn2zyjhZHMBM84jJalEaQMJ4gSbHc=; b=BsVZrO50/4f/kRmqdnQMyMbMZ
	IYa+Tf7LFwL+jCVc87uxLXmVw5K9G0azkp8+2OkKh9j0bf27SacHkLETxxIZTrzekiqdtiQd84gsk
	sw7oHvPeoeK2hdxvzlr2y/a1xwJFOUdTVbBTrdlhc40rp5F25bIAmalLnPr+LLv6H77hBEqtlMJ69
	LYiuvvnQtZ0lYt6dHVwahYCrmvgpwjL4iQlR46aqvIgpddFC3kMqatbgmsSzZNY6OAzB+VLv3jxuP
	Os76LjL1OHO1ZsQW5S9c+dC8o0cqMShMO373/YsSofBJbifG3pKj9UVU7JSIfCB6sonSgFFHRXLVM
	9Gg3X91mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbI9A-0001ok-Up; Thu, 13 Jun 2019 05:19:37 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbI8s-0001dz-NT; Thu, 13 Jun 2019 05:19:21 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EF0C2240008;
 Thu, 13 Jun 2019 05:18:54 +0000 (UTC)
Subject: Re: [PATCH REBASE v2 0/2] Hugetlbfs support for riscv
To: Christoph Hellwig <hch@infradead.org>,
 Mike Kravetz <mike.kravetz@oracle.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org, paul.walmsley@sifive.com
References: <20190526125038.8419-1-alex@ghiti.fr>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <59847eea-cee6-62ba-71b9-3e09a444f857@ghiti.fr>
Date: Thu, 13 Jun 2019 01:18:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190526125038.8419-1-alex@ghiti.fr>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_221919_100667_D9753AA3 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul, Palmer,

Now Ingo and Catalin have acked their part, do you consider this patch
for inclusion ?

Thanks,

Alex

On 5/26/19 8:50 AM, Alexandre Ghiti wrote:
> This series is simply rebased on v5.2rc1 and I added the Reviewed-By
> from Palmer for the first patch, thanks for that.
>
> This series introduces hugetlbfs support for both riscv 32/64. Riscv32
> is architecturally limited to huge pages of size 4MB whereas riscv64 has
> 2MB/1G huge pages support. Transparent huge page support is not
> implemented here, I will submit another series later.
>                                                                                   
> As stated in "The RISC-V Instruction Set Manual, Volume II: Privileged
> Architecture", riscv page table entries are marked as non-leaf entries
> as soon as at least one of the R/W/X bit set:
>                                                                                   
> - pmd_huge/pud_huge check if one of those bits are set,
> - pte_mkhuge simply returns the same pte value and does not set any of
>    the R/W/X bits
>                                                                                   
> This series was validated using libhugetlbfs testsuite ported to riscv64
> without linker script support.
> (https://github.com/AlexGhiti/libhugetlbfs.git, branch dev/alex/riscv).
>                                                                                   
> - libhugetlbfs testsuite on riscv64/2M:
>    - brk_near_huge triggers an assert in malloc.c, does not on x86.
>                                                                                   
> - libhugetlbfs testsuite on riscv64/1G:
>    - brk_near_huge triggers an assert in malloc.c, does not on x86.
>    - mmap-gettest, mmap-cow: testsuite passes the number of default free
>      pages as parameters and then fails for 1G which is not the default.
>      Otherwise succeeds when given the right number of pages.
>    - map_high_truncate_2 fails on x86 too: 0x60000000 is not 1G aligned
>      and fails at line 694 of fs/hugetlbfs/inode.c.
>    - heapshrink on 1G fails on x86 too, not investigated.
>    - counters.sh on 1G fails on x86 too: alloc_surplus_huge_page returns
>      NULL in case of gigantic pages.
>    - icache-hygiene succeeds after patch #3 of this series which lowers
>      the base address of mmap.
>    - fallocate_stress.sh on 1G never ends, on x86 too, not investigated.
>                                                                                   
> - libhugetlbfs testsuite on riscv32/4M: kernel build passes, lacks
>    libhugetlbfs support for 32bits.
>                                                                                   
> * Output for riscv64 2M and 1G libhugetbfs testsuite:
>                                                                                   
> zero_filesize_segment (2M: 64):
> zero_filesize_segment (1024M: 64):
> test_root (2M: 64):     PASS
> test_root (1024M: 64):  PASS
> meminfo_nohuge (2M: 64):        PASS
> meminfo_nohuge (1024M: 64):     PASS
> gethugepagesize (2M: 64):       PASS
> gethugepagesize (1024M: 64):    PASS
> gethugepagesizes (2M: 64):      PASS
> gethugepagesizes (1024M: 64):   PASS
> HUGETLB_VERBOSE=1 empty_mounts (2M: 64):        PASS
> HUGETLB_VERBOSE=1 empty_mounts (1024M: 64):     PASS
> HUGETLB_VERBOSE=1 large_mounts (2M: 64):        PASS
> HUGETLB_VERBOSE=1 large_mounts (1024M: 64):     PASS
> find_path (2M: 64):     PASS
> find_path (1024M: 64):  PASS
> unlinked_fd (2M: 64):   PASS
> unlinked_fd (1024M: 64):        PASS
> readback (2M: 64):      PASS
> readback (1024M: 64):   PASS
> truncate (2M: 64):      PASS
> truncate (1024M: 64):   PASS
> shared (2M: 64):        PASS
> shared (1024M: 64):     PASS
> mprotect (2M: 64):      PASS
> mprotect (1024M: 64):   PASS
> mlock (2M: 64): PASS
> mlock (1024M: 64):      PASS
> misalign (2M: 64):      PASS
> misalign (1024M: 64):   PASS
> fallocate_basic.sh (2M: 64):    PASS
> fallocate_basic.sh (1024M: 64): PASS
> fallocate_align.sh (2M: 64):    PASS
> fallocate_align.sh (1024M: 64): PASS
> ptrace-write-hugepage (2M: 64): PASS
> ptrace-write-hugepage (1024M: 64):      PASS
> icache-hygiene (2M: 64):        PASS
> icache-hygiene (1024M: 64):     PASS
> slbpacaflush (2M: 64):  PASS (inconclusive)
> slbpacaflush (1024M: 64):       PASS (inconclusive)
> straddle_4GB_static (2M: 64):   PASS
> straddle_4GB_static (1024M: 64):        PASS
> huge_at_4GB_normal_below_static (2M: 64):       PASS
> huge_at_4GB_normal_below_static (1024M: 64):    PASS
> huge_below_4GB_normal_above_static (2M: 64):    PASS
> huge_below_4GB_normal_above_static (1024M: 64): PASS
> map_high_truncate_2 (2M: 64):   PASS
> map_high_truncate_2 (1024M: 64):        FAIL    ftruncate(): Invalid
> argument
> misaligned_offset (2M: 64):     PASS (inconclusive)
> misaligned_offset (1024M: 64):  PASS (inconclusive)
> truncate_above_4GB (2M: 64):    PASS
> truncate_above_4GB (1024M: 64): PASS
> brk_near_huge (2M: 64): brk_near_huge: malloc.c:2385: sysmalloc:
> Assertion `(old_top == initial_top (av) && old_size == 0) || ((unsigned
> long) (old_size) >= MINSIZE && prev_inuse (old_top) && ((unsigned long)
> old_end & (pagesize - 1)) == 0)' failed.
> brk_near_huge (1024M: 64):      brk_near_huge: malloc.c:2385: sysmalloc:
> Assertion `(old_top == initial_top (av) && old_size == 0) || ((unsigned
> long) (old_size) >= MINSIZE && prev_inuse (old_top) && ((unsigned long)
> old_end & (pagesize - 1)) == 0)' failed.
> task-size-overrun (2M: 64):     PASS
> task-size-overrun (1024M: 64):  PASS
> stack_grow_into_huge (2M: 64):   PASS
> stack_grow_into_huge (1024M: 64): PASS
> corrupt-by-cow-opt (2M: 64):    PASS
> corrupt-by-cow-opt (1024M: 64): PASS
> noresv-preserve-resv-page (2M: 64):     PASS
> noresv-preserve-resv-page (1024M: 64):  PASS
> noresv-regarded-as-resv (2M: 64):       PASS
> noresv-regarded-as-resv (1024M: 64):    PASS
> readahead_reserve.sh (2M: 64):  PASS
> readahead_reserve.sh (1024M: 64):       PASS
> madvise_reserve.sh (2M: 64):    PASS
> madvise_reserve.sh (1024M: 64): PASS
> fadvise_reserve.sh (2M: 64):    PASS
> fadvise_reserve.sh (1024M: 64): PASS
> mremap-expand-slice-collision.sh (2M: 64):      PASS
> mremap-expand-slice-collision.sh (1024M: 64):   PASS
> mremap-fixed-normal-near-huge.sh (2M: 64):      PASS
> mremap-fixed-normal-near-huge.sh (1024M: 64):   PASS
> mremap-fixed-huge-near-normal.sh (2M: 64):      PASS
> mremap-fixed-huge-near-normal.sh (1024M: 64):   PASS
> set shmmax limit to 67108864
> shm-perms (2M: 64):     PASS
> private (2M: 64):       PASS
> private (1024M: 64):    PASS
> fork-cow (2M: 64):      PASS
> fork-cow (1024M: 64):   PASS
> direct (2M: 64):        Bad configuration: Failed to open direct-IO
> file: Invalid argument
> direct (1024M: 64):     Bad configuration: Failed to open direct-IO
> file: File exists
> malloc (2M: 64):        PASS
> malloc (1024M: 64):     PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc (2M: 64):
> PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc (1024M: 64):
> PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:none
> HUGETLB_MORECORE=yes malloc (2M: 64):      PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:none
> HUGETLB_MORECORE=yes malloc (1024M: 64):PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:malloc
> HUGETLB_MORECORE=yes malloc (2M: 64):    PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:malloc
> HUGETLB_MORECORE=yes malloc (1024M: 64): PASS
> malloc_manysmall (2M: 64):      PASS
> malloc_manysmall (1024M: 64):   PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc_manysmall (2M:
> 64):      PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc_manysmall (1024M:
> 64):   PASS
> heapshrink (2M: 64):    PASS
> heapshrink (1024M: 64): PASS
> LD_PRELOAD=libheapshrink.so heapshrink (2M: 64):        PASS
> LD_PRELOAD=libheapshrink.so heapshrink (1024M: 64):     PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes heapshrink (2M: 64):
> PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes heapshrink (1024M: 64):
> PASS
> LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE=yes
> heapshrink (2M: 64):   PASS
> LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE=yes
> heapshrink (1024M: 64):        PASS
> LD_PRELOAD=libheapshrink.so HUGETLB_MORECORE_SHRINK=yes
> HUGETLB_MORECORE=yes heapshrink (2M: 64):       PASS (inconclusive)
> LD_PRELOAD=libheapshrink.so HUGETLB_MORECORE_SHRINK=yes
> HUGETLB_MORECORE=yes heapshrink (1024M: 64):    PASS (inconclusive)
> LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE_SHRINK=yes
> HUGETLB_MORECORE=yes heapshrink (2M: 64):       PASS
> LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE_SHRINK=yes
> HUGETLB_MORECORE=yes heapshrink (1024M: 64):    FAIL    Heap did not
> shrink
> HUGETLB_VERBOSE=1 HUGETLB_MORECORE=yes heap-overflow (2M: 64):  PASS
> HUGETLB_VERBOSE=1 HUGETLB_MORECORE=yes heap-overflow (1024M: 64):
> PASS
> HUGETLB_VERBOSE=0 linkhuge_nofd (2M: 64):
> HUGETLB_VERBOSE=0 linkhuge_nofd (1024M: 64):
> LD_PRELOAD=libhugetlbfs.so HUGETLB_VERBOSE=0 linkhuge_nofd (2M: 64):
> LD_PRELOAD=libhugetlbfs.so HUGETLB_VERBOSE=0 linkhuge_nofd (1024M: 64):
> linkhuge (2M: 64):
> linkhuge (1024M: 64):
> LD_PRELOAD=libhugetlbfs.so linkhuge (2M: 64):
> LD_PRELOAD=libhugetlbfs.so linkhuge (1024M: 64):
> linkhuge_rw (2M: 64):
> linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=R linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=R linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=W linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=W linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=RW linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=RW linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=no linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=no linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=R HUGETLB_MINIMAL_COPY=no linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=R HUGETLB_MINIMAL_COPY=no linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=W HUGETLB_MINIMAL_COPY=no linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=W HUGETLB_MINIMAL_COPY=no linkhuge_rw (1024M: 64):
> HUGETLB_ELFMAP=RW HUGETLB_MINIMAL_COPY=no linkhuge_rw (2M: 64):
> HUGETLB_ELFMAP=RW HUGETLB_MINIMAL_COPY=no linkhuge_rw (1024M: 64):
> HUGETLB_SHARE=0 HUGETLB_ELFMAP=R linkhuge_rw (2M: 64):
> HUGETLB_SHARE=0 HUGETLB_ELFMAP=R linkhuge_rw (1024M: 64):
> HUGETLB_SHARE=1 HUGETLB_ELFMAP=R linkhuge_rw (2M: 64):
> HUGETLB_SHARE=1 HUGETLB_ELFMAP=R linkhuge_rw (1024M: 64):
> HUGETLB_SHARE=0 HUGETLB_ELFMAP=W linkhuge_rw (2M: 64):
> HUGETLB_SHARE=0 HUGETLB_ELFMAP=W linkhuge_rw (1024M: 64):
> HUGETLB_SHARE=1 HUGETLB_ELFMAP=W linkhuge_rw (2M: 64):
> HUGETLB_SHARE=1 HUGETLB_ELFMAP=W linkhuge_rw (1024M: 64):
> HUGETLB_SHARE=0 HUGETLB_ELFMAP=RW linkhuge_rw (2M: 64):
> HUGETLB_SHARE=0 HUGETLB_ELFMAP=RW linkhuge_rw (1024M: 64):
> HUGETLB_SHARE=1 HUGETLB_ELFMAP=RW linkhuge_rw (2M: 64):
> HUGETLB_SHARE=1 HUGETLB_ELFMAP=RW linkhuge_rw (1024M: 64):
> chunk-overcommit (2M: 64):      PASS
> chunk-overcommit (1024M: 64):   PASS
> alloc-instantiate-race shared (2M: 64): PASS
> alloc-instantiate-race shared (1024M: 64):      PASS
> alloc-instantiate-race private (2M: 64):        PASS
> alloc-instantiate-race private (1024M: 64):     PASS
> truncate_reserve_wraparound (2M: 64):   PASS
> truncate_reserve_wraparound (1024M: 64):        PASS
> truncate_sigbus_versus_oom (2M: 64):    PASS
> truncate_sigbus_versus_oom (1024M: 64): PASS
> get_huge_pages (2M: 64):        PASS
> get_huge_pages (1024M: 64):     PASS
> shmoverride_linked (2M: 64):    PASS
> HUGETLB_SHM=yes shmoverride_linked (2M: 64):    PASS
> shmoverride_linked_static (2M: 64):
> HUGETLB_SHM=yes shmoverride_linked_static (2M: 64):
> LD_PRELOAD=libhugetlbfs.so shmoverride_unlinked (2M: 64):       PASS
> LD_PRELOAD=libhugetlbfs.so HUGETLB_SHM=yes shmoverride_unlinked (2M:
> 64):       PASS
> quota.sh (2M: 64):      PASS
> quota.sh (1024M: 64):   PASS
> counters.sh (2M: 64):   PASS
> counters.sh (1024M: 64):        FAIL mmap failed: Invalid argument
> mmap-gettest 10 35 (2M: 64):    PASS
> mmap-gettest 10 35 (1024M: 64): FAIL    Failed to mmap the hugetlb file:
> Cannot allocate memory
> mmap-cow 34 35 (2M: 64):        PASS
> mmap-cow 34 35 (1024M: 64):     FAIL    Thread 15 (pid=514) failed
> set shmmax limit to 73400320
> shm-fork 10 17 (2M: 64):        PASS
> set shmmax limit to 73400320
> shm-fork 10 35 (2M: 64):        PASS
> set shmmax limit to 73400320
> shm-getraw 35 /dev/full (2M: 64):       PASS
> fallocate_stress.sh (2M: 64):   libgcc_s.so.1 must be installed for
> pthread_cancel to work
> fallocate_stress.sh (1024M: 64):
> ********** TEST SUMMARY
> *                      2M             1024M
> *                      32-bit 64-bit  32-bit 64-bit
> *     Total testcases:     0     93       0     83
> *             Skipped:     0      0       0      0
> *                PASS:     0     69       0     56
> *                FAIL:     0      0       0      5
> *    Killed by signal:     0      1       0      2
> *   Bad configuration:     0      1       0      1
> *       Expected FAIL:     0      0       0      0
> *     Unexpected PASS:     0      0       0      0
> *    Test not present:     0     21       0     19
> * Strange test result:     0      1       0      0
> **********
>                                                                                   
> Changes in v2:
>    - Merge comment fix about task size.
>    - Patch about mmap base address was merged separately.
>    - Rebased on top of linux-next where series about the capability
>      to free gigantic pages regardless of the configuration was merged.
>    - Add huge pmd sharing as suggested by Mike Kravetz.
>    - Gigantic page hstate is automatically created if CONTIG_ALLOC is
>      set, even if not explicitly asked for in command line, as suggested
>      by Mike.
>    - Replace #ifdef CONFIG_64BIT into IS_ENABLED(CONFIG_64BIT), as suggested
>      by Christoph Hellwig.
>
> Alexandre Ghiti (2):
>    x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config in arch/Kconfig
>    riscv: Introduce huge page support for 32/64bit kernel
>
>   arch/Kconfig                     |  3 +++
>   arch/arm64/Kconfig               |  2 +-
>   arch/riscv/Kconfig               |  8 ++++++
>   arch/riscv/include/asm/hugetlb.h | 18 +++++++++++++
>   arch/riscv/include/asm/page.h    | 10 ++++++++
>   arch/riscv/include/asm/pgtable.h |  8 ++++--
>   arch/riscv/mm/Makefile           |  2 ++
>   arch/riscv/mm/hugetlbpage.c      | 44 ++++++++++++++++++++++++++++++++
>   arch/x86/Kconfig                 |  4 +--
>   9 files changed, 93 insertions(+), 6 deletions(-)
>   create mode 100644 arch/riscv/include/asm/hugetlb.h
>   create mode 100644 arch/riscv/mm/hugetlbpage.c
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
