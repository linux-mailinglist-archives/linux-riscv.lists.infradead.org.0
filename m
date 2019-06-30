Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571045B06E
	for <lists+linux-riscv@lfdr.de>; Sun, 30 Jun 2019 17:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ar06oEXOJygPM2wmsLxs460zQHLEzDSWTmKYsm1vJw=; b=r5ZSytXK8wtvsyLf9vE11Q6Pj
	p7/og6uI9yEjnMotUuqbEVbPCBXTsU5J1zDPDIXaRdhMlg0k2ZBFtCaa3Fjl2pm40XSPUJSHgBima
	J7nVYvT9QicmM0CSlzBHdew5IH3PRE27boHRt6uNrpNBxQ2XycNtU9RcsWZl2+8mTyL0eUrbF4c5t
	k0EYcX12Eghgaj/fH16VAah1VYK6yCvE0cgyhiCwESnqP1iBO1WMlgzqpAUIROejO791MyFkqt/uh
	DEQali1Njt6syvGlFa667wRIgk+h1/V3IqvDAdGdlQ/AdDii9yi3dyfI2c8DL8UlbQNLPpRLUyISj
	x8XdtFmTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhboj-0007EK-TR; Sun, 30 Jun 2019 15:32:38 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhboF-00073p-Th; Sun, 30 Jun 2019 15:32:10 +0000
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5E3F9200004;
 Sun, 30 Jun 2019 15:31:40 +0000 (UTC)
Subject: Re: [PATCH REBASE v2 0/2] Hugetlbfs support for riscv
From: Alex Ghiti <alex@ghiti.fr>
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
 <59847eea-cee6-62ba-71b9-3e09a444f857@ghiti.fr>
Message-ID: <f77afa03-67df-046a-2b49-819cf04d1099@ghiti.fr>
Date: Sun, 30 Jun 2019 11:31:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <59847eea-cee6-62ba-71b9-3e09a444f857@ghiti.fr>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_083208_277571_0AE87C1B 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 6/13/19 1:18 AM, Alex Ghiti wrote:
> Hi Paul, Palmer,
>
> Now Ingo and Catalin have acked their part, do you consider this patch
> for inclusion ?
>
> Thanks,
>
> Alex
>

Hi Paul, Palmer,

Any thought about this patch ?

Thanks,

Alex


> On 5/26/19 8:50 AM, Alexandre Ghiti wrote:
>> This series is simply rebased on v5.2rc1 and I added the Reviewed-By
>> from Palmer for the first patch, thanks for that.
>>
>> This series introduces hugetlbfs support for both riscv 32/64. Riscv32
>> is architecturally limited to huge pages of size 4MB whereas riscv64 has
>> 2MB/1G huge pages support. Transparent huge page support is not
>> implemented here, I will submit another series later.
>> As stated in "The RISC-V Instruction Set Manual, Volume II: Privileged
>> Architecture", riscv page table entries are marked as non-leaf entries
>> as soon as at least one of the R/W/X bit set:
>> - pmd_huge/pud_huge check if one of those bits are set,
>> - pte_mkhuge simply returns the same pte value and does not set any of
>> =A0=A0 the R/W/X bits
>> This series was validated using libhugetlbfs testsuite ported to riscv64
>> without linker script support.
>> (https://github.com/AlexGhiti/libhugetlbfs.git, branch dev/alex/riscv).
>> - libhugetlbfs testsuite on riscv64/2M:
>> =A0=A0 - brk_near_huge triggers an assert in malloc.c, does not on x86.
>> - libhugetlbfs testsuite on riscv64/1G:
>> =A0=A0 - brk_near_huge triggers an assert in malloc.c, does not on x86.
>> =A0=A0 - mmap-gettest, mmap-cow: testsuite passes the number of default =
free
>> =A0=A0=A0=A0 pages as parameters and then fails for 1G which is not the =
default.
>> =A0=A0=A0=A0 Otherwise succeeds when given the right number of pages.
>> =A0=A0 - map_high_truncate_2 fails on x86 too: 0x60000000 is not 1G alig=
ned
>> =A0=A0=A0=A0 and fails at line 694 of fs/hugetlbfs/inode.c.
>> =A0=A0 - heapshrink on 1G fails on x86 too, not investigated.
>> =A0=A0 - counters.sh on 1G fails on x86 too: alloc_surplus_huge_page ret=
urns
>> =A0=A0=A0=A0 NULL in case of gigantic pages.
>> =A0=A0 - icache-hygiene succeeds after patch #3 of this series which low=
ers
>> =A0=A0=A0=A0 the base address of mmap.
>> =A0=A0 - fallocate_stress.sh on 1G never ends, on x86 too, not investiga=
ted.
>> - libhugetlbfs testsuite on riscv32/4M: kernel build passes, lacks
>> =A0=A0 libhugetlbfs support for 32bits.
>> * Output for riscv64 2M and 1G libhugetbfs testsuite:
>> zero_filesize_segment (2M: 64):
>> zero_filesize_segment (1024M: 64):
>> test_root (2M: 64):=A0=A0=A0=A0 PASS
>> test_root (1024M: 64):=A0 PASS
>> meminfo_nohuge (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> meminfo_nohuge (1024M: 64):=A0=A0=A0=A0 PASS
>> gethugepagesize (2M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> gethugepagesize (1024M: 64):=A0=A0=A0 PASS
>> gethugepagesizes (2M: 64):=A0=A0=A0=A0=A0 PASS
>> gethugepagesizes (1024M: 64):=A0=A0 PASS
>> HUGETLB_VERBOSE=3D1 empty_mounts (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> HUGETLB_VERBOSE=3D1 empty_mounts (1024M: 64):=A0=A0=A0=A0 PASS
>> HUGETLB_VERBOSE=3D1 large_mounts (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> HUGETLB_VERBOSE=3D1 large_mounts (1024M: 64):=A0=A0=A0=A0 PASS
>> find_path (2M: 64):=A0=A0=A0=A0 PASS
>> find_path (1024M: 64):=A0 PASS
>> unlinked_fd (2M: 64):=A0=A0 PASS
>> unlinked_fd (1024M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> readback (2M: 64):=A0=A0=A0=A0=A0 PASS
>> readback (1024M: 64):=A0=A0 PASS
>> truncate (2M: 64):=A0=A0=A0=A0=A0 PASS
>> truncate (1024M: 64):=A0=A0 PASS
>> shared (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> shared (1024M: 64):=A0=A0=A0=A0 PASS
>> mprotect (2M: 64):=A0=A0=A0=A0=A0 PASS
>> mprotect (1024M: 64):=A0=A0 PASS
>> mlock (2M: 64): PASS
>> mlock (1024M: 64):=A0=A0=A0=A0=A0 PASS
>> misalign (2M: 64):=A0=A0=A0=A0=A0 PASS
>> misalign (1024M: 64):=A0=A0 PASS
>> fallocate_basic.sh (2M: 64):=A0=A0=A0 PASS
>> fallocate_basic.sh (1024M: 64): PASS
>> fallocate_align.sh (2M: 64):=A0=A0=A0 PASS
>> fallocate_align.sh (1024M: 64): PASS
>> ptrace-write-hugepage (2M: 64): PASS
>> ptrace-write-hugepage (1024M: 64):=A0=A0=A0=A0=A0 PASS
>> icache-hygiene (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> icache-hygiene (1024M: 64):=A0=A0=A0=A0 PASS
>> slbpacaflush (2M: 64):=A0 PASS (inconclusive)
>> slbpacaflush (1024M: 64):=A0=A0=A0=A0=A0=A0 PASS (inconclusive)
>> straddle_4GB_static (2M: 64):=A0=A0 PASS
>> straddle_4GB_static (1024M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> huge_at_4GB_normal_below_static (2M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> huge_at_4GB_normal_below_static (1024M: 64):=A0=A0=A0 PASS
>> huge_below_4GB_normal_above_static (2M: 64):=A0=A0=A0 PASS
>> huge_below_4GB_normal_above_static (1024M: 64): PASS
>> map_high_truncate_2 (2M: 64):=A0=A0 PASS
>> map_high_truncate_2 (1024M: 64):=A0=A0=A0=A0=A0=A0=A0 FAIL=A0=A0=A0 ftru=
ncate(): Invalid
>> argument
>> misaligned_offset (2M: 64):=A0=A0=A0=A0 PASS (inconclusive)
>> misaligned_offset (1024M: 64):=A0 PASS (inconclusive)
>> truncate_above_4GB (2M: 64):=A0=A0=A0 PASS
>> truncate_above_4GB (1024M: 64): PASS
>> brk_near_huge (2M: 64): brk_near_huge: malloc.c:2385: sysmalloc:
>> Assertion `(old_top =3D=3D initial_top (av) && old_size =3D=3D 0) || ((u=
nsigned
>> long) (old_size) >=3D MINSIZE && prev_inuse (old_top) && ((unsigned long)
>> old_end & (pagesize - 1)) =3D=3D 0)' failed.
>> brk_near_huge (1024M: 64):=A0=A0=A0=A0=A0 brk_near_huge: malloc.c:2385: =
sysmalloc:
>> Assertion `(old_top =3D=3D initial_top (av) && old_size =3D=3D 0) || ((u=
nsigned
>> long) (old_size) >=3D MINSIZE && prev_inuse (old_top) && ((unsigned long)
>> old_end & (pagesize - 1)) =3D=3D 0)' failed.
>> task-size-overrun (2M: 64):=A0=A0=A0=A0 PASS
>> task-size-overrun (1024M: 64):=A0 PASS
>> stack_grow_into_huge (2M: 64):=A0=A0 PASS
>> stack_grow_into_huge (1024M: 64): PASS
>> corrupt-by-cow-opt (2M: 64):=A0=A0=A0 PASS
>> corrupt-by-cow-opt (1024M: 64): PASS
>> noresv-preserve-resv-page (2M: 64):=A0=A0=A0=A0 PASS
>> noresv-preserve-resv-page (1024M: 64):=A0 PASS
>> noresv-regarded-as-resv (2M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> noresv-regarded-as-resv (1024M: 64):=A0=A0=A0 PASS
>> readahead_reserve.sh (2M: 64):=A0 PASS
>> readahead_reserve.sh (1024M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> madvise_reserve.sh (2M: 64):=A0=A0=A0 PASS
>> madvise_reserve.sh (1024M: 64): PASS
>> fadvise_reserve.sh (2M: 64):=A0=A0=A0 PASS
>> fadvise_reserve.sh (1024M: 64): PASS
>> mremap-expand-slice-collision.sh (2M: 64):=A0=A0=A0=A0=A0 PASS
>> mremap-expand-slice-collision.sh (1024M: 64):=A0=A0 PASS
>> mremap-fixed-normal-near-huge.sh (2M: 64):=A0=A0=A0=A0=A0 PASS
>> mremap-fixed-normal-near-huge.sh (1024M: 64):=A0=A0 PASS
>> mremap-fixed-huge-near-normal.sh (2M: 64):=A0=A0=A0=A0=A0 PASS
>> mremap-fixed-huge-near-normal.sh (1024M: 64):=A0=A0 PASS
>> set shmmax limit to 67108864
>> shm-perms (2M: 64):=A0=A0=A0=A0 PASS
>> private (2M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> private (1024M: 64):=A0=A0=A0 PASS
>> fork-cow (2M: 64):=A0=A0=A0=A0=A0 PASS
>> fork-cow (1024M: 64):=A0=A0 PASS
>> direct (2M: 64):=A0=A0=A0=A0=A0=A0=A0 Bad configuration: Failed to open =
direct-IO
>> file: Invalid argument
>> direct (1024M: 64):=A0=A0=A0=A0 Bad configuration: Failed to open direct=
-IO
>> file: File exists
>> malloc (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> malloc (1024M: 64):=A0=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_MORECORE=3Dyes malloc (2M: 64):
>> PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_MORECORE=3Dyes malloc (1024M: 64):
>> PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_RESTRICT_EXE=3Dunknown:none
>> HUGETLB_MORECORE=3Dyes malloc (2M: 64):=A0=A0=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_RESTRICT_EXE=3Dunknown:none
>> HUGETLB_MORECORE=3Dyes malloc (1024M: 64):PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_RESTRICT_EXE=3Dunknown:malloc
>> HUGETLB_MORECORE=3Dyes malloc (2M: 64):=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_RESTRICT_EXE=3Dunknown:malloc
>> HUGETLB_MORECORE=3Dyes malloc (1024M: 64): PASS
>> malloc_manysmall (2M: 64):=A0=A0=A0=A0=A0 PASS
>> malloc_manysmall (1024M: 64):=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_MORECORE=3Dyes malloc_manysmall (2M:
>> 64):=A0=A0=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_MORECORE=3Dyes malloc_manysmall (10=
24M:
>> 64):=A0=A0 PASS
>> heapshrink (2M: 64):=A0=A0=A0 PASS
>> heapshrink (1024M: 64): PASS
>> LD_PRELOAD=3Dlibheapshrink.so heapshrink (2M: 64):=A0=A0=A0=A0=A0=A0=A0 =
PASS
>> LD_PRELOAD=3Dlibheapshrink.so heapshrink (1024M: 64):=A0=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_MORECORE=3Dyes heapshrink (2M: 64):
>> PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_MORECORE=3Dyes heapshrink (1024M: 6=
4):
>> PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so libheapshrink.so HUGETLB_MORECORE=3Dyes
>> heapshrink (2M: 64):=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so libheapshrink.so HUGETLB_MORECORE=3Dyes
>> heapshrink (1024M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibheapshrink.so HUGETLB_MORECORE_SHRINK=3Dyes
>> HUGETLB_MORECORE=3Dyes heapshrink (2M: 64):=A0=A0=A0=A0=A0=A0 PASS (inco=
nclusive)
>> LD_PRELOAD=3Dlibheapshrink.so HUGETLB_MORECORE_SHRINK=3Dyes
>> HUGETLB_MORECORE=3Dyes heapshrink (1024M: 64):=A0=A0=A0 PASS (inconclusi=
ve)
>> LD_PRELOAD=3Dlibhugetlbfs.so libheapshrink.so HUGETLB_MORECORE_SHRINK=3D=
yes
>> HUGETLB_MORECORE=3Dyes heapshrink (2M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so libheapshrink.so HUGETLB_MORECORE_SHRINK=3D=
yes
>> HUGETLB_MORECORE=3Dyes heapshrink (1024M: 64):=A0=A0=A0 FAIL=A0=A0=A0 He=
ap did not
>> shrink
>> HUGETLB_VERBOSE=3D1 HUGETLB_MORECORE=3Dyes heap-overflow (2M: 64): PASS
>> HUGETLB_VERBOSE=3D1 HUGETLB_MORECORE=3Dyes heap-overflow (1024M: 64):
>> PASS
>> HUGETLB_VERBOSE=3D0 linkhuge_nofd (2M: 64):
>> HUGETLB_VERBOSE=3D0 linkhuge_nofd (1024M: 64):
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_VERBOSE=3D0 linkhuge_nofd (2M: 64):
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_VERBOSE=3D0 linkhuge_nofd (1024M: 6=
4):
>> linkhuge (2M: 64):
>> linkhuge (1024M: 64):
>> LD_PRELOAD=3Dlibhugetlbfs.so linkhuge (2M: 64):
>> LD_PRELOAD=3Dlibhugetlbfs.so linkhuge (1024M: 64):
>> linkhuge_rw (2M: 64):
>> linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3DR linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3DR linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3DW linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3DW linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3DRW linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3DRW linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3Dno linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3Dno linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3DR HUGETLB_MINIMAL_COPY=3Dno linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3DR HUGETLB_MINIMAL_COPY=3Dno linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3DW HUGETLB_MINIMAL_COPY=3Dno linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3DW HUGETLB_MINIMAL_COPY=3Dno linkhuge_rw (1024M: 64):
>> HUGETLB_ELFMAP=3DRW HUGETLB_MINIMAL_COPY=3Dno linkhuge_rw (2M: 64):
>> HUGETLB_ELFMAP=3DRW HUGETLB_MINIMAL_COPY=3Dno linkhuge_rw (1024M: 64):
>> HUGETLB_SHARE=3D0 HUGETLB_ELFMAP=3DR linkhuge_rw (2M: 64):
>> HUGETLB_SHARE=3D0 HUGETLB_ELFMAP=3DR linkhuge_rw (1024M: 64):
>> HUGETLB_SHARE=3D1 HUGETLB_ELFMAP=3DR linkhuge_rw (2M: 64):
>> HUGETLB_SHARE=3D1 HUGETLB_ELFMAP=3DR linkhuge_rw (1024M: 64):
>> HUGETLB_SHARE=3D0 HUGETLB_ELFMAP=3DW linkhuge_rw (2M: 64):
>> HUGETLB_SHARE=3D0 HUGETLB_ELFMAP=3DW linkhuge_rw (1024M: 64):
>> HUGETLB_SHARE=3D1 HUGETLB_ELFMAP=3DW linkhuge_rw (2M: 64):
>> HUGETLB_SHARE=3D1 HUGETLB_ELFMAP=3DW linkhuge_rw (1024M: 64):
>> HUGETLB_SHARE=3D0 HUGETLB_ELFMAP=3DRW linkhuge_rw (2M: 64):
>> HUGETLB_SHARE=3D0 HUGETLB_ELFMAP=3DRW linkhuge_rw (1024M: 64):
>> HUGETLB_SHARE=3D1 HUGETLB_ELFMAP=3DRW linkhuge_rw (2M: 64):
>> HUGETLB_SHARE=3D1 HUGETLB_ELFMAP=3DRW linkhuge_rw (1024M: 64):
>> chunk-overcommit (2M: 64):=A0=A0=A0=A0=A0 PASS
>> chunk-overcommit (1024M: 64):=A0=A0 PASS
>> alloc-instantiate-race shared (2M: 64): PASS
>> alloc-instantiate-race shared (1024M: 64):=A0=A0=A0=A0=A0 PASS
>> alloc-instantiate-race private (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> alloc-instantiate-race private (1024M: 64):=A0=A0=A0=A0 PASS
>> truncate_reserve_wraparound (2M: 64):=A0=A0 PASS
>> truncate_reserve_wraparound (1024M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> truncate_sigbus_versus_oom (2M: 64):=A0=A0=A0 PASS
>> truncate_sigbus_versus_oom (1024M: 64): PASS
>> get_huge_pages (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> get_huge_pages (1024M: 64):=A0=A0=A0=A0 PASS
>> shmoverride_linked (2M: 64):=A0=A0=A0 PASS
>> HUGETLB_SHM=3Dyes shmoverride_linked (2M: 64):=A0=A0=A0 PASS
>> shmoverride_linked_static (2M: 64):
>> HUGETLB_SHM=3Dyes shmoverride_linked_static (2M: 64):
>> LD_PRELOAD=3Dlibhugetlbfs.so shmoverride_unlinked (2M: 64): PASS
>> LD_PRELOAD=3Dlibhugetlbfs.so HUGETLB_SHM=3Dyes shmoverride_unlinked (2M:
>> 64):=A0=A0=A0=A0=A0=A0 PASS
>> quota.sh (2M: 64):=A0=A0=A0=A0=A0 PASS
>> quota.sh (1024M: 64):=A0=A0 PASS
>> counters.sh (2M: 64):=A0=A0 PASS
>> counters.sh (1024M: 64):=A0=A0=A0=A0=A0=A0=A0 FAIL mmap failed: Invalid =
argument
>> mmap-gettest 10 35 (2M: 64):=A0=A0=A0 PASS
>> mmap-gettest 10 35 (1024M: 64): FAIL=A0=A0=A0 Failed to mmap the hugetlb=
 file:
>> Cannot allocate memory
>> mmap-cow 34 35 (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> mmap-cow 34 35 (1024M: 64):=A0=A0=A0=A0 FAIL=A0=A0=A0 Thread 15 (pid=3D5=
14) failed
>> set shmmax limit to 73400320
>> shm-fork 10 17 (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> set shmmax limit to 73400320
>> shm-fork 10 35 (2M: 64):=A0=A0=A0=A0=A0=A0=A0 PASS
>> set shmmax limit to 73400320
>> shm-getraw 35 /dev/full (2M: 64):=A0=A0=A0=A0=A0=A0 PASS
>> fallocate_stress.sh (2M: 64):=A0=A0 libgcc_s.so.1 must be installed for
>> pthread_cancel to work
>> fallocate_stress.sh (1024M: 64):
>> ********** TEST SUMMARY
>> *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2M=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1024M
>> *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 32-bit =
64-bit=A0 32-bit 64-bit
>> *=A0=A0=A0=A0 Total testcases:=A0=A0=A0=A0 0=A0=A0=A0=A0 93=A0=A0=A0=A0=
=A0=A0 0=A0=A0=A0=A0 83
>> *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Skipped:=A0=A0=A0=A0 0=A0=A0=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 0
>> *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PASS:=A0=A0=A0=A0 0=A0=A0=
=A0=A0 69=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0 56
>> *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 FAIL:=A0=A0=A0=A0 0=A0=A0=
=A0=A0=A0 0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 5
>> *=A0=A0=A0 Killed by signal:=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0=A0 0=A0=A0=A0=A0=A0 2
>> *=A0=A0 Bad configuration:=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0=
=A0 0=A0=A0=A0=A0=A0 1
>> *=A0=A0=A0=A0=A0=A0 Expected FAIL:=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 0=A0=A0=
=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 0
>> *=A0=A0=A0=A0 Unexpected PASS:=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0=A0 0=A0=A0=A0=A0=A0 0
>> *=A0=A0=A0 Test not present:=A0=A0=A0=A0 0=A0=A0=A0=A0 21=A0=A0=A0=A0=A0=
=A0 0=A0=A0=A0=A0 19
>> * Strange test result:=A0=A0=A0=A0 0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0=A0 =
0=A0=A0=A0=A0=A0 0
>> **********
>> Changes in v2:
>> =A0=A0 - Merge comment fix about task size.
>> =A0=A0 - Patch about mmap base address was merged separately.
>> =A0=A0 - Rebased on top of linux-next where series about the capability
>> =A0=A0=A0=A0 to free gigantic pages regardless of the configuration was =
merged.
>> =A0=A0 - Add huge pmd sharing as suggested by Mike Kravetz.
>> =A0=A0 - Gigantic page hstate is automatically created if CONTIG_ALLOC is
>> =A0=A0=A0=A0 set, even if not explicitly asked for in command line, as s=
uggested
>> =A0=A0=A0=A0 by Mike.
>> =A0=A0 - Replace #ifdef CONFIG_64BIT into IS_ENABLED(CONFIG_64BIT), as =

>> suggested
>> =A0=A0=A0=A0 by Christoph Hellwig.
>>
>> Alexandre Ghiti (2):
>> =A0=A0 x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config in arch/Kconfig
>> =A0=A0 riscv: Introduce huge page support for 32/64bit kernel
>>
>> =A0 arch/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0 3 +++
>> =A0 arch/arm64/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 2 =
+-
>> =A0 arch/riscv/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 8 =
++++++
>> =A0 arch/riscv/include/asm/hugetlb.h | 18 +++++++++++++
>> =A0 arch/riscv/include/asm/page.h=A0=A0=A0 | 10 ++++++++
>> =A0 arch/riscv/include/asm/pgtable.h |=A0 8 ++++--
>> =A0 arch/riscv/mm/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 2 ++
>> =A0 arch/riscv/mm/hugetlbpage.c=A0=A0=A0=A0=A0 | 44 ++++++++++++++++++++=
++++++++++++
>> =A0 arch/x86/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 4 +--
>> =A0 9 files changed, 93 insertions(+), 6 deletions(-)
>> =A0 create mode 100644 arch/riscv/include/asm/hugetlb.h
>> =A0 create mode 100644 arch/riscv/mm/hugetlbpage.c
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
