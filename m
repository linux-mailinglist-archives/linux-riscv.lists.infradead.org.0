Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32AF1FC033
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 22:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wbNVkoO9X50pv+XXrfFYkvzWEgP9DGgUO3fwYN/CP5A=; b=PbCMvY6eWL7ckKca+2478Sqmj
	JFejBdgT6oQNqmv0wymBMtcCOHbdiwh5O2HKL3rHnJqFMf8UapKePUDwh3T574RDO4UCy2Ev2znfa
	9jlgnyZP8QOczBqgYaoOmyF5hP0RvdRoBPTty5Oz+MMdmWKsuw8zHrv1PrgXN9+0ykSiZezrpYmft
	jPT8Bn1kAl4Da1g3djYSYjLI3GOVU4p5j4uNDUwyeH51HGcCSJ68fHjeQLp84q3b2fWs/NpEX8SeL
	bONPp3WpBnLnd+rWi/TpWQui390GoL86/PHoxTPAzjBRHxvshXAcbmQ4PL3jgXkF5ALBXtzmAj15R
	sk0dEV2og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIUi-0005L8-KN; Tue, 16 Jun 2020 20:47:44 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIUd-0005KN-Cq
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 20:47:41 +0000
Received: by mail-yb1-xb43.google.com with SMTP id h39so127748ybj.3
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 13:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wbNVkoO9X50pv+XXrfFYkvzWEgP9DGgUO3fwYN/CP5A=;
 b=SKCPNL714Esf0jDo2Ok4Gv1PDZyy4dzctETSzM6E0jtsRXLJDUoYPGWlbCbxMPi8FF
 U7O5pfDsdWFzxEhvjPQBBUzwJLzugtU0JXGWlXMhgh0r3pmgEjeRvUjNmNC20Qg1yZCX
 howvBa83/rae31US4icXPG1y6CJfu460pxx5/SEdD3hFlMJdQ8I79jNls1qeG9zK1JN+
 Voze2up4nNwWzF7NYaXYPf4VNCDg0z7KOM9YMbbhvN7XDwJ7k+wRqv8S+7PblqkZUZqv
 d1U/2irEqTI3dzioleF9lOOkHJv0eB1hlZx7PKtwkvcNyGW7lu/AaJoZ9TGvhKou1Mly
 X8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wbNVkoO9X50pv+XXrfFYkvzWEgP9DGgUO3fwYN/CP5A=;
 b=im9XyqHty05xDQY2pISy0sAI4e046nuOaaIT3vqVAxcOTEO81pp14/eg6IjEl6CuCk
 9CdFDO5kGg53QktvJn6igCgMXyBgPWZ1d+zMizK+Uq9N61GlhFIyG/IPLtwS9knTnDre
 31uYdYh3VMaP4WaisAc5fUUc95ExgKShgjgtStLRiafmioyhfaPxDL25ops0V76QlJ/Y
 E2NmtYKE1rEg4sNkT5XKsHpbe1110kbnPgp9Of06cEHd8egkM5O+4SnGoHAzryPj1N8d
 tQZ+eZtUxmXoNQm110hodEPqoHRQppqgdggI+vD4iCmuX/9hYpeVlX63fa8KP0sqbRfY
 KEEA==
X-Gm-Message-State: AOAM531ZXkkn3fvUWxnkjdHhihmt3kVmZeFSyEeQddStwEzB/R4SgCYN
 GcFs/+I8wrJk3RYs31W0jzvPKfHrOJXpa7YqYmOBHg==
X-Google-Smtp-Source: ABdhPJw1mhD7EonvTUsMBG9sPsmcVhqoy5rKkOAs50P8qfjOQJrBBTBS2nrmDlXFk4hreSOBO1D8ZgJY6BGqnfy7yGo=
X-Received: by 2002:a5b:cc9:: with SMTP id e9mr6833688ybr.287.1592340457493;
 Tue, 16 Jun 2020 13:47:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200616045108.GP75760@lianli.shorne-pla.net>
 <mhng-b86477b3-4134-4023-968e-532ca0b33125@palmerdabbelt-glaptop1>
 <CANN689GkUUfpTn+fkjsC-a=RwGsxVwsg-QXKDnVe6zXLjvuZWA@mail.gmail.com>
 <20200616191943.GA1401039@lianli.shorne-pla.net>
 <CAOnJCUL52Ch3QHikik=DYJYciFE0e8zhrSL-AgaZPensXyZqyg@mail.gmail.com>
In-Reply-To: <CAOnJCUL52Ch3QHikik=DYJYciFE0e8zhrSL-AgaZPensXyZqyg@mail.gmail.com>
From: Michel Lespinasse <walken@google.com>
Date: Tue, 16 Jun 2020 13:47:24 -0700
Message-ID: <CANN689Ek3szVSVC4H0NKpkdZes82VW_Xvs4+GLTGCWES7A-ySQ@mail.gmail.com>
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
To: Atish Patra <atishp@atishpatra.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_134739_458701_C72777BF 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Bjorn Topel <bjorn.topel@gmail.com>, Stafford Horne <shorne@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This makes me wonder actually - maybe there is a latent bug that got
exposed after my change added the rwsem_is_locked assertion to the
lockdep_assert_held one. If that is the case, it may be helpful to
bisect when that issue first appeared, by testing before my patchset
with VM_BUG_ON(!rwsem_is_locked(&walk.mm->mmap_lock)) added to
walk_page_range() / walk_page_range_novma() / walk_page_vma() ...

On Tue, Jun 16, 2020 at 12:41 PM Atish Patra <atishp@atishpatra.org> wrote:
>
> On Tue, Jun 16, 2020 at 12:19 PM Stafford Horne <shorne@gmail.com> wrote:
> >
> > On Tue, Jun 16, 2020 at 03:44:49AM -0700, Michel Lespinasse wrote:
> > > I am also unable to reproduce the issue so far.
> > >
> > > I wanted to point to a few things in case this helps:
> > > - Commit 42fc541404f2 was bisected as the cause. This commit changes
> > > walk_page_range_novma() to use mmap_assert_locked() instead of
> > > lockdep_assert_held()
> > > - mmap_assert_locked() checks lockdep_assert_held(), but also checks
> > > that the rwsem itself is locked.
> > >
> > > Now how could lockdep think the lock is held, but the lock itself is
> > > not marked as locked ???
> > >
> > > I'm not sure if it helps at all, but a few commits earlier,
> > > 0cc55a0213a0 introduces mmap_read_trylock_non_owner(), which is used
> > > exclusively by stackmap, and does the opposite: it acquires the mmap
> > > lock without telling lockdep about it. I can't see any smoking gun
> > > linking this to our bug, but I thought it may be worth mentioning as
> > > it involves the same suspects (stackmap and the difference between
> > > owning the lock vs lockdep thinking we own the lock).
> > >
> > > I'm sorry, that's only how far I was able to go on this bug - I'm not
> > > sure how to investigate it further as I can not reproduce the issue...
> >
> > Hello Michel,
> >
> > Thanks for your notes, it may be related.
> >
> > On my OpenRISC build with DEBUG_LOCKDEP and DEBUG_VM I am seeing the below
> > trace.  Without DEBUG_VM enabled the system does seem to work normally.
> >
> > Some notes on the trace:
> >  - The mmap_assert_locked failure is not in the same place as RISC-V, but
> >    similarly during walk_page_range not walk_page_range_novma.
> >  - This build does not use BPF.
> >  - I do see a LOCKDEP warning early on, which may be the cause.
> >
>
> I don't have LOCKDEP enabled in RISC-V. I guess we are seeing the same
> bug caused in different paths.
> Here is the full boot log for RISC-V if it helps.
>
> https://paste.centos.org/view/bb5ee1e7
>
> > I will still do some more investination, you input is very helpful.
> >
> > -Stafford
> >
> > exec: /home/shorne/work/openrisc/qemu/build/or1k-softmmu/qemu-system-or1k -cpu or1200 -M or1k-sim -kernel /home/shorne/work/linux/vmlinux -net nic -net tap,ifname=tap0,script=no,downscript=no -serial mon:stdio -nographic -gdb tcp::10001 -m 512
> > [    0.000000] Compiled-in FDT at (ptrval)
> > [    0.000000] Linux version 5.8.0-rc1-simple-smp-00002-g2335724b6a99-dirty (shorne@lianli.shorne-pla.net) (or1k-elf-gcc (GCC) 9.0.1 20190409 (experimental), GNU ld (GNU Binutils) 2.32.51.20190425) #140 Wed Jun 17 04:01:43 JST 2020
> > [    0.000000] CPU: OpenRISC-13 (revision 8) @20 MHz
> > [    0.000000] -- dcache disabled
> > [    0.000000] -- icache disabled
> > [    0.000000] -- dmmu:  128 entries, 1 way(s)
> > [    0.000000] -- immu:  128 entries, 1 way(s)
> > [    0.000000] -- additional features:
> > [    0.000000] -- power management
> > [    0.000000] -- PIC
> > [    0.000000] -- timer
> > [    0.000000] setup_memory: Memory: 0x0-0x2000000
> > [    0.000000] Setting up paging and PTEs.
> > [    0.000000] map_ram: Memory: 0x0-0x2000000
> > [    0.000000] Zone ranges:
> > [    0.000000]   Normal   [mem 0x0000000000000000-0x0000000001ffffff]
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000000000000-0x0000000001ffffff]
> > [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000001ffffff]
> > [    0.000000] On node 0 totalpages: 4096
> > [    0.000000]   Normal zone: 16 pages used for memmap
> > [    0.000000]   Normal zone: 0 pages reserved
> > [    0.000000]   Normal zone: 4096 pages, LIFO batch:0
> > [    0.000000] itlb_miss_handler (ptrval)
> > [    0.000000] dtlb_miss_handler (ptrval)
> > [    0.000000] OpenRISC Linux -- http://openrisc.io
> > [    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
> > [    0.000000] pcpu-alloc: [0] 0
> > [    0.000000] Built 1 zonelists, mobility grouping off.  Total pages: 4080
> > [    0.000000] ------------[ cut here ]------------
> > [    0.000000] WARNING: CPU: 0 PID: 0 at kernel/locking/mutex.c:1242 __mutex_unlock_slowpath+0x328/0x3ec
> > [    0.000000] DEBUG_LOCKS_WARN_ON(__owner_task(owner) != current)
> > [    0.000000] Modules linked in:
> > [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.8.0-rc1-simple-smp-00002-g2335724b6a99-dirty #140
> > [    0.000000] Call trace:
> > [    0.000000] [<(ptrval)>] dump_stack+0x34/0x48
> > [    0.000000] [<(ptrval)>] __warn+0x104/0x158
> > [    0.000000] [<(ptrval)>] ? __mutex_unlock_slowpath+0x328/0x3ec
> > [    0.000000] [<(ptrval)>] warn_slowpath_fmt+0x7c/0x94
> > [    0.000000] [<(ptrval)>] __mutex_unlock_slowpath+0x328/0x3ec
> > [    0.000000] [<(ptrval)>] ? vprintk_emit+0x1e8/0x3d8
> > [    0.000000] [<(ptrval)>] ? page_alloc_cpu_dead+0x0/0x30
> > [    0.000000] [<(ptrval)>] mutex_unlock+0x18/0x28
> > [    0.000000] [<(ptrval)>] __cpuhp_setup_state_cpuslocked+0x200/0x2f4
> > [    0.000000] [<(ptrval)>] ? vprintk_func+0x94/0x14c
> > [    0.000000] [<(ptrval)>] ? start_kernel+0x0/0x684
> > [    0.000000] [<(ptrval)>] __cpuhp_setup_state+0x14/0x24
> > [    0.000000] [<(ptrval)>] page_alloc_init+0x34/0x68
> > [    0.000000] [<(ptrval)>] ? start_kernel+0x1a0/0x684
> > [    0.000000] [<(ptrval)>] ? early_init_dt_scan_nodes+0x60/0x70
> > [    0.000000] irq event stamp: 0
> > [    0.000000] hardirqs last  enabled at (0): [<00000000>] 0x0
> > [    0.000000] hardirqs last disabled at (0): [<00000000>] 0x0
> > [    0.000000] softirqs last  enabled at (0): [<00000000>] 0x0
> > [    0.000000] softirqs last disabled at (0): [<00000000>] 0x0
> > [    0.000000] random: get_random_bytes called from print_oops_end_marker+0x40/0x98 with crng_init=0
> > [    0.000000] ---[ end trace 0000000000000000 ]---
> > [    0.000000] Kernel command line: earlycon
> > [    0.000000] earlycon: ns16550a0 at MMIO 0x90000000 (options '115200')
> > [    0.000000] printk: bootconsole [ns16550a0] enabled
> > [    0.000000] Dentry cache hash table entries: 4096 (order: 1, 16384 bytes, linear)
> > [    0.000000] Inode-cache hash table entries: 2048 (order: 0, 8192 bytes, linear)
> > [    0.000000] Sorting __ex_table...
> > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> > [    0.000000] Memory: 11384K/32768K available (4756K kernel code, 380K rwdata, 1160K rodata, 4072K init, 10784K bss, 21384K reserved, 0K cma-reserved)
> > [    0.000000] mem_init_done ...........................................
> > [    0.000000] Running RCU self tests
> > [    0.000000] NR_IRQS: 32, nr_irqs: 32, preallocated irqs: 0
> > [    0.000000] clocksource: openrisc_timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 95563022313 ns
> > [    0.000000] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
> > [    0.000000] ... MAX_LOCKDEP_SUBCLASSES:  8
> > [    0.000000] ... MAX_LOCK_DEPTH:          48
> > [    0.000000] ... MAX_LOCKDEP_KEYS:        8192
> > [    0.000000] ... CLASSHASH_SIZE:          4096
> > [    0.000000] ... MAX_LOCKDEP_ENTRIES:     32768
> > [    0.000000] ... MAX_LOCKDEP_CHAINS:      65536
> > [    0.000000] ... CHAINHASH_SIZE:          32768
> > [    0.000000]  memory used by lock dependency info: 3773 kB
> > [    0.000000]  memory used for stack traces: 2112 kB
> > [    0.000000]  per task-struct memory footprint: 1344 bytes
> > [    0.010000] 40.00 BogoMIPS (lpj=200000)
> > [    0.010000] pid_max: default: 32768 minimum: 301
> > [    0.010000] Mount-cache hash table entries: 2048 (order: 0, 8192 bytes, linear)
> > [    0.010000] Mountpoint-cache hash table entries: 2048 (order: 0, 8192 bytes, linear)
> > [    0.150000] devtmpfs: initialized
> > [    0.210000] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
> > [    0.210000] futex hash table entries: 256 (order: 0, 12288 bytes, linear)
> > [    0.240000] NET: Registered protocol family 16
> > [    0.450000] clocksource: Switched to clocksource openrisc_timer
> > [    2.820000] NET: Registered protocol family 2
> > [    2.840000] tcp_listen_portaddr_hash hash table entries: 256 (order: 0, 11264 bytes, linear)
> > [    2.850000] TCP established hash table entries: 2048 (order: 0, 8192 bytes, linear)
> > [    2.850000] TCP bind hash table entries: 2048 (order: 3, 81920 bytes, linear)
> > [    2.850000] TCP: Hash tables configured (established 2048 bind 2048)
> > [    2.860000] UDP hash table entries: 256 (order: 1, 24576 bytes, linear)
> > [    2.860000] UDP-Lite hash table entries: 256 (order: 1, 24576 bytes, linear)
> > [    2.880000] NET: Registered protocol family 1
> > [    2.900000] RPC: Registered named UNIX socket transport module.
> > [    2.900000] RPC: Registered udp transport module.
> > [    2.900000] RPC: Registered tcp transport module.
> > [    2.900000] RPC: Registered tcp NFSv4.1 backchannel transport module.
> > [    4.120000] workingset: timestamp_bits=30 max_order=11 bucket_order=0
> > [    4.150000] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> > [    4.210000] printk: console [ttyS0] disabled
> > [    4.220000] 90000000.serial: ttyS0 at MMIO 0x90000000 (irq = 2, base_baud = 1250000) is a 16550A
> > [    4.230000] printk: console [ttyS0] enabled
> > [    4.230000] printk: console [ttyS0] enabled
> > [    4.230000] printk: bootconsole [ns16550a0] disabled
> > [    4.230000] printk: bootconsole [ns16550a0] disabled
> > [    4.280000] libphy: Fixed MDIO Bus: probed
> > [    4.310000] mm c05fb530 mmap 00000000 seqnum 0 task_size 0
> > [    4.310000] get_unmapped_area 00000000
> > [    4.310000] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
> > [    4.310000] pgd c05d2000 mm_users 2 mm_count 2 pgtables_bytes 0 map_count 0
> > [    4.310000] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
> > [    4.310000] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
> > [    4.310000] start_code c0000000 end_code c04a5208 start_data 0 end_data c06263d8
> > [    4.310000] start_brk 0 brk c14aa360 start_stack 0
> > [    4.310000] arg_start 0 arg_end 0 env_start 0 env_end 0
> > [    4.310000] binfmt 00000000 flags 0 core_state 00000000
> > [    4.310000] exe_file 00000000
> > [    4.310000] tlb_flush_pending 0
> > [    4.310000] def_flags: 0x0()
> > [    4.310000] BUG: failure at include/linux/mmap_lock.h:81/mmap_assert_locked()!
> > [    4.310000] CPU: 0 PID: 1 Comm: swapper Tainted: G        W         5.8.0-rc1-simple-smp-00002-g2335724b6a99-dirty #140
> > [    4.310000] Call trace:
> > [    4.320000] [<(ptrval)>] dump_stack+0x34/0x48
> > [    4.320000] [<(ptrval)>] walk_page_range+0x230/0x244
> > [    4.320000] [<(ptrval)>] arch_dma_set_uncached+0x38/0x60
> > [    4.320000] [<(ptrval)>] dma_direct_alloc_pages+0x104/0x178
> > [    4.320000] [<(ptrval)>] dma_direct_alloc+0x14/0x24
> > [    4.320000] [<(ptrval)>] dma_alloc_attrs+0x9c/0x13c
> > [    4.320000] [<(ptrval)>] dmam_alloc_attrs+0x80/0xf4
> > [    4.320000] [<(ptrval)>] ethoc_probe+0x1b0/0x884
> > [    4.320000] [<(ptrval)>] ? ignore_unknown_bootoption+0x0/0x24
> > [    4.320000] [<(ptrval)>] platform_drv_probe+0x3c/0xa8
> > [    4.320000] [<(ptrval)>] really_probe+0x238/0x42c
> > [    4.320000] [<(ptrval)>] ? __driver_attach+0x0/0x140
> > [    4.320000] [<(ptrval)>] ? ignore_unknown_bootoption+0x0/0x24
> > [    4.320000] [<(ptrval)>] driver_probe_device+0x50/0xa8
> > [    4.320000] [<(ptrval)>] ? __device_driver_lock+0x44/0x84
> > [    4.320000] [<(ptrval)>] device_driver_attach+0x88/0x90
> > [    4.320000] [<(ptrval)>] __driver_attach+0x84/0x140
> > [    4.320000] [<(ptrval)>] ? __driver_attach+0x0/0x140
> > [    4.330000] [<(ptrval)>] bus_for_each_dev+0x8c/0xd4
> > [    4.330000] [<(ptrval)>] driver_attach+0x28/0x38
> > [    4.330000] [<(ptrval)>] bus_add_driver+0x1dc/0x270
> > [    4.330000] [<(ptrval)>] ? ethoc_driver_init+0x0/0x30
> > [    4.330000] [<(ptrval)>] ? ethoc_driver_init+0x0/0x30
> > [    4.330000] [<(ptrval)>] driver_register+0xbc/0x1a8
> > [    4.330000] [<(ptrval)>] ? phy_drivers_register+0x68/0xdc
> > [    4.330000] [<(ptrval)>] ? ethoc_driver_init+0x0/0x30
> > [    4.330000] [<(ptrval)>] __platform_driver_register+0x50/0x60
> > [    4.330000] [<(ptrval)>] ethoc_driver_init+0x20/0x30
> > [    4.330000] [<(ptrval)>] do_one_initcall+0x80/0x2e0
> > [    4.330000] [<(ptrval)>] ? parse_args+0x270/0x4f0
> > [    4.330000] [<(ptrval)>] kernel_init_freeable+0x1c8/0x268
> > [    4.330000] [<(ptrval)>] ? ignore_unknown_bootoption+0x0/0x24
> > [    4.330000] [<(ptrval)>] ? kernel_init+0x0/0x144
> > [    4.330000] [<(ptrval)>] kernel_init+0x18/0x144
> > [    4.340000] [<(ptrval)>] ? schedule_tail+0x54/0x94
> > [    4.340000] [<(ptrval)>] ret_from_fork+0x1c/0x150
> > [    4.340000] Kernel panic - not syncing: BUG!
> > [    4.340000] ---[ end Kernel panic - not syncing: BUG! ]---
> >
> >
> > > On Tue, Jun 16, 2020 at 1:40 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> > > >
> > > > On Mon, 15 Jun 2020 21:51:08 PDT (-0700), shorne@gmail.com wrote:
> > > > > On Tue, Jun 16, 2020 at 06:57:47AM +0900, Stafford Horne wrote:
> > > > >> On Mon, Jun 15, 2020 at 12:28:11AM -0700, Atish Patra wrote:
> > > > >> > Hi,
> > > > >> > I encountered the following issue while booting 5.8-rc1 on Qemu for RV64.
> > > > >> > I added additional dump_stack and observed that it's happening in bpf free path.
> > > > >> > It happens always if CONFIG_DEBUG_VM is enabled. VM_BUG_ON_MM is
> > > > >> > compiled away without that.
> > > > >> > ------------------------------------------------------------------------
> > > > >> > forked to background, child pid 113
> > > > >> > [   10.328850] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted
> > > > >> > 5.8.0-rc1-dirty #732
> > > > >> > [   10.331739] Workqueue: events bpf_prog_free_deferred
> > > > >> > [   10.334133] Call Trace:
> > > > >> > [   10.338039] [<ffffffe000202698>] walk_stackframe+0x0/0xa4
> > > > >> > [   10.339988] [<ffffffe000202880>] show_stack+0x2e/0x3a
> > > > >> > [   10.340902] [<ffffffe00047074c>] dump_stack+0x72/0x8c
> > > > >> > [   10.341451] [<ffffffe0002db4ce>] mmap_assert_locked.part.13+0x14/0x1c
> > > > >> > [   10.342131] [<ffffffe0002db330>] walk_page_range_novma+0x0/0x4e
> > > > >> > [   10.342973] [<ffffffe000204f94>] set_direct_map_invalid_noflush+0x66/0x6e
> > > > >> > [   10.343917] [<ffffffe0002e0706>] __vunmap+0xe8/0x212
> > > > >> > [   10.344680] [<ffffffe0002e0882>] __vfree+0x22/0x6e
> > > > >> > [   10.345270] [<ffffffe0002e0902>] vfree+0x34/0x56
> > > > >> > [   10.345834] [<ffffffe00027d752>] __bpf_prog_free+0x2c/0x36
> > > > >> > [   10.346529] [<ffffffe0002801a2>] bpf_prog_free_deferred+0x74/0x8a
> > > > >> > [   10.347394] [<ffffffe000219c70>] process_one_work+0x13a/0x272
> > > > >> > [   10.348239] [<ffffffe00021a4b4>] worker_thread+0x50/0x2e4
> > > > >> > [   10.348900] [<ffffffe00021ed98>] kthread+0xfc/0x10a
> > > > >> > [   10.349470] [<ffffffe0002013da>] ret_from_exception+0x0/0xc
> > > > >> > [   10.354405] mm ffffffe001018600 mmap 0000000000000000 seqnum 0 task_size 0
> > > > >> > [   10.354405] get_unmapped_area 0000000000000000
> > > > >> > [   10.354405] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
> > > > >> > [   10.354405] pgd ffffffe001074000 mm_users 2 mm_count 1
> > > > >> > pgtables_bytes 8192 map_count 0
> > > > >> > [   10.354405] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
> > > > >> > [   10.354405] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
> > > > >> > [   10.354405] start_code ffffffe000200000 end_code ffffffe00084acc2
> > > > >> > start_data 0 end_data ffffffe00106dfe4
> > > > >> > [   10.354405] start_brk 0 brk ffffffe0010bd6d0 start_stack 0
> > > > >> > [   10.354405] arg_start 0 arg_end 0 env_start 0 env_end 0
> > > > >> > [   10.354405] binfmt 0000000000000000 flags 0 core_state 0000000000000000
> > > > >> > [   10.354405] ioctx_table 0000000000000000
> > > > >> > [   10.354405] exe_file 0000000000000000
> > > > >> > [   10.354405] tlb_flush_pending 0
> > > > >> > [   10.354405] def_flags: 0x0()
> > > > >> > [   10.369325] ------------[ cut here ]------------
> > > > >> > [   10.370763] kernel BUG at include/linux/mmap_lock.h:81!
> > > > >> > [   10.375235] Kernel BUG [#1]
> > > > >> > [   10.377198] Modules linked in:
> > > > >> > [   10.378931] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted 5.8.0-rc1-dirty #732
> > > > >> > [   10.380179] Workqueue: events bpf_prog_free_deferred
> > > > >> > [   10.381270] epc: ffffffe0002db4d4 ra : ffffffe0002db4d4 sp : ffffffe3eaea7c70
> > > > >> > [   10.382561]  gp : ffffffe00106d950 tp : ffffffe3ef752f80 t0 :
> > > > >> > ffffffe0010836e8
> > > > >> > [   10.383996]  t1 : 0000000000000064 t2 : 0000000000000000 s0 :
> > > > >> > ffffffe3eaea7c90
> > > > >> > [   10.385119]  s1 : ffffffe001018600 a0 : 0000000000000289 a1 :
> > > > >> > 0000000000000020
> > > > >> > [   10.386099]  a2 : 0000000000000005 a3 : 0000000000000000 a4 :
> > > > >> > ffffffe001012758
> > > > >> > [   10.387294]  a5 : 0000000000000000 a6 : 0000000000000102 a7 :
> > > > >> > 0000000000000006
> > > > >> > [   10.388265]  s2 : ffffffe3f00674c0 s3 : ffffffe00106e108 s4 :
> > > > >> > ffffffe00106e100
> > > > >> > [   10.389250]  s5 : ffffffe00106e908 s6 : 0000000000000000 s7 :
> > > > >> > 6db6db6db6db6db7
> > > > >> > [   10.390272]  s8 : 0000000000000001 s9 : ffffffe00021a4f8 s10:
> > > > >> > ffffffffffffffff
> > > > >> > [   10.391293]  s11: ffffffe3f0066600 t3 : 000000000001a7a8 t4 :
> > > > >> > 000000000001a7a8
> > > > >> > [   10.392314]  t5 : 0000000000000000 t6 : ffffffe00107b76b
> > > > >> > [   10.393096] status: 0000000000000120 badaddr: 0000000000000000
> > > > >> > cause: 0000000000000003
> > > > >> > [   10.397755] ---[ end trace 861659596ac28841 ]---
> > > > >> > ---------------------------------------------------------------------------------------------------
> > > > >> >
> > > > >> > I haven't had the chance to bisect to figure out which commit caused
> > > > >> > the issue. Just wanted
> > > > >> > to check if it is a known issue already.
> > > > >>
> > > > >> Hi Atish,
> > > > >>
> > > > >> Note, I am getting the same (just now) when booting v5.8-rc1 on OpenRISC.  If
> > > > >> you have any updates please post back.  I will try to look into this today or
> > > > >> tomorrow.
> > > > >
> > > > > I have bisected this to, 42fc541404f249778e752ab39c8bc25fcb2dbe1e:
> > > > >
> > > > >   mmap locking API: add mmap_assert_locked() and mmap_assert_write_locked()
> > > > >
> > > > > This should have just changed the existing lockdep api's but something has
> > > > > changed.  I haven't had time to look at it yet.
> > > > >
> > > > > Ccing: Michel Lespinasse <walken@google.com>
> > > >
> > > > This isn't manifesting on boot for me, on either rc1 or that commit.  I'm
> > > > running a simple buildroot-based userspace, so I doubt anything is triggering
> > > > BPF.  I don't run the BPF selftests, as they're a bit of a pain (IIRC they
> > > > don't cross compile and need LLVM) -- does anyone have a userspace I can use to
> > > > trigger the bug?
> > >
> > >
> > >
> > > --
> > > Michel "Walken" Lespinasse
> > > A program is never fully debugged until the last user dies.
>
>
>
> --
> Regards,
> Atish



-- 
Michel "Walken" Lespinasse
A program is never fully debugged until the last user dies.

