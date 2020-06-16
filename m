Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A421FBED5
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 21:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JMm4ABI1NtD7lR3xmXWIwhS0HOQjmKFtkwbijdYZrw=; b=rpcXH6pGcfA8Hq
	VQdtH23euM0s6hk8+9keAdpJx6r3351WMWZ56/lUdtICsgFPEUpSGUAeIFoMzs5eDvXY7H+anNk2/
	FGSU4c7QCI+mOtYnnbP9uhJkrx2drBxfc6Fdcegt84QnI8QO+VbsOzwSsXj+5Vp93+GHvWpUQ0Yu4
	4gwVJFfPMCkIZDS3A6FK78UKJ3q+MPPmokd7HjRi4unYdl4XAXtlbRF6t4LRVIW9znL3694wlTGLi
	0zZju86rbb+MJzh66JrwqBq/wXN4X5kMsCaDXtNk9hCBVJQzoYb57MfEyPERiZ2D7L1luQVzESeuS
	oX7CcfMBz28X7QT4Azvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlH6X-000257-5V; Tue, 16 Jun 2020 19:18:41 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlH6T-00023m-J3
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 19:18:39 +0000
X-Originating-IP: 90.112.45.105
Received: from [192.168.1.11] (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 06B6F20004;
 Tue, 16 Jun 2020 19:18:21 +0000 (UTC)
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
To: Palmer Dabbelt <palmer@dabbelt.com>, atishp@atishpatra.org
References: <mhng-cc304512-36aa-4488-bcbe-fd376f53cc96@palmerdabbelt-glaptop1>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <2267b15a-6ed1-f24e-32fe-7f905c532b00@ghiti.fr>
Date: Tue, 16 Jun 2020 15:18:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <mhng-cc304512-36aa-4488-bcbe-fd376f53cc96@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_121837_904498_82AD9901 
X-CRM114-Status: GOOD (  26.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: Bjorn Topel <bjorn.topel@gmail.com>, shorne@gmail.com, walken@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Le 6/16/20 à 2:07 PM, Palmer Dabbelt a écrit :
> On Tue, 16 Jun 2020 10:54:51 PDT (-0700), atishp@atishpatra.org wrote:
>> On Tue, Jun 16, 2020 at 3:45 AM Michel Lespinasse <walken@google.com> 
>> wrote:
>>>
>>> I am also unable to reproduce the issue so far.
>>>
>>> I wanted to point to a few things in case this helps:
>>> - Commit 42fc541404f2 was bisected as the cause. This commit changes
>>> walk_page_range_novma() to use mmap_assert_locked() instead of
>>> lockdep_assert_held()
>>> - mmap_assert_locked() checks lockdep_assert_held(), but also checks
>>> that the rwsem itself is locked.
>>>
>>> Now how could lockdep think the lock is held, but the lock itself is
>>> not marked as locked ???
>>>
>>> I'm not sure if it helps at all, but a few commits earlier,
>>> 0cc55a0213a0 introduces mmap_read_trylock_non_owner(), which is used
>>> exclusively by stackmap, and does the opposite: it acquires the mmap
>>> lock without telling lockdep about it. I can't see any smoking gun
>>> linking this to our bug, but I thought it may be worth mentioning as
>>> it involves the same suspects (stackmap and the difference between
>>> owning the lock vs lockdep thinking we own the lock).
>>>
>>> I'm sorry, that's only how far I was able to go on this bug - I'm not
>>> sure how to investigate it further as I can not reproduce the issue...
>>>
>>> On Tue, Jun 16, 2020 at 1:40 AM Palmer Dabbelt <palmer@dabbelt.com> 
>>> wrote:
>>> >
>>> > On Mon, 15 Jun 2020 21:51:08 PDT (-0700), shorne@gmail.com wrote:
>>> > > On Tue, Jun 16, 2020 at 06:57:47AM +0900, Stafford Horne wrote:
>>> > >> On Mon, Jun 15, 2020 at 12:28:11AM -0700, Atish Patra wrote:
>>> > >> > Hi,
>>> > >> > I encountered the following issue while booting 5.8-rc1 on 
>>> Qemu for RV64.
>>> > >> > I added additional dump_stack and observed that it's 
>>> happening in bpf free path.
>>> > >> > It happens always if CONFIG_DEBUG_VM is enabled. VM_BUG_ON_MM is
>>> > >> > compiled away without that.
>>> > >> > 
>>> ------------------------------------------------------------------------ 
>>>
>>> > >> > forked to background, child pid 113
>>> > >> > [   10.328850] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted
>>> > >> > 5.8.0-rc1-dirty #732
>>> > >> > [   10.331739] Workqueue: events bpf_prog_free_deferred
>>> > >> > [   10.334133] Call Trace:
>>> > >> > [   10.338039] [<ffffffe000202698>] walk_stackframe+0x0/0xa4
>>> > >> > [   10.339988] [<ffffffe000202880>] show_stack+0x2e/0x3a
>>> > >> > [   10.340902] [<ffffffe00047074c>] dump_stack+0x72/0x8c
>>> > >> > [   10.341451] [<ffffffe0002db4ce>] 
>>> mmap_assert_locked.part.13+0x14/0x1c
>>> > >> > [   10.342131] [<ffffffe0002db330>] 
>>> walk_page_range_novma+0x0/0x4e
>>> > >> > [   10.342973] [<ffffffe000204f94>] 
>>> set_direct_map_invalid_noflush+0x66/0x6e
>>> > >> > [   10.343917] [<ffffffe0002e0706>] __vunmap+0xe8/0x212
>>> > >> > [   10.344680] [<ffffffe0002e0882>] __vfree+0x22/0x6e
>>> > >> > [   10.345270] [<ffffffe0002e0902>] vfree+0x34/0x56
>>> > >> > [   10.345834] [<ffffffe00027d752>] __bpf_prog_free+0x2c/0x36
>>> > >> > [   10.346529] [<ffffffe0002801a2>] 
>>> bpf_prog_free_deferred+0x74/0x8a
>>> > >> > [   10.347394] [<ffffffe000219c70>] process_one_work+0x13a/0x272
>>> > >> > [   10.348239] [<ffffffe00021a4b4>] worker_thread+0x50/0x2e4
>>> > >> > [   10.348900] [<ffffffe00021ed98>] kthread+0xfc/0x10a
>>> > >> > [   10.349470] [<ffffffe0002013da>] ret_from_exception+0x0/0xc
>>> > >> > [   10.354405] mm ffffffe001018600 mmap 0000000000000000 
>>> seqnum 0 task_size 0
>>> > >> > [   10.354405] get_unmapped_area 0000000000000000
>>> > >> > [   10.354405] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
>>> > >> > [   10.354405] pgd ffffffe001074000 mm_users 2 mm_count 1
>>> > >> > pgtables_bytes 8192 map_count 0
>>> > >> > [   10.354405] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
>>> > >> > [   10.354405] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
>>> > >> > [   10.354405] start_code ffffffe000200000 end_code 
>>> ffffffe00084acc2
>>> > >> > start_data 0 end_data ffffffe00106dfe4
>>> > >> > [   10.354405] start_brk 0 brk ffffffe0010bd6d0 start_stack 0
>>> > >> > [   10.354405] arg_start 0 arg_end 0 env_start 0 env_end 0
>>> > >> > [   10.354405] binfmt 0000000000000000 flags 0 core_state 
>>> 0000000000000000
>>> > >> > [   10.354405] ioctx_table 0000000000000000
>>> > >> > [   10.354405] exe_file 0000000000000000
>>> > >> > [   10.354405] tlb_flush_pending 0
>>> > >> > [   10.354405] def_flags: 0x0()
>>> > >> > [   10.369325] ------------[ cut here ]------------
>>> > >> > [   10.370763] kernel BUG at include/linux/mmap_lock.h:81!
>>> > >> > [   10.375235] Kernel BUG [#1]
>>> > >> > [   10.377198] Modules linked in:
>>> > >> > [   10.378931] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted 
>>> 5.8.0-rc1-dirty #732
>>> > >> > [   10.380179] Workqueue: events bpf_prog_free_deferred
>>> > >> > [   10.381270] epc: ffffffe0002db4d4 ra : ffffffe0002db4d4 sp 
>>> : ffffffe3eaea7c70
>>> > >> > [   10.382561]  gp : ffffffe00106d950 tp : ffffffe3ef752f80 t0 :
>>> > >> > ffffffe0010836e8
>>> > >> > [   10.383996]  t1 : 0000000000000064 t2 : 0000000000000000 s0 :
>>> > >> > ffffffe3eaea7c90
>>> > >> > [   10.385119]  s1 : ffffffe001018600 a0 : 0000000000000289 a1 :
>>> > >> > 0000000000000020
>>> > >> > [   10.386099]  a2 : 0000000000000005 a3 : 0000000000000000 a4 :
>>> > >> > ffffffe001012758
>>> > >> > [   10.387294]  a5 : 0000000000000000 a6 : 0000000000000102 a7 :
>>> > >> > 0000000000000006
>>> > >> > [   10.388265]  s2 : ffffffe3f00674c0 s3 : ffffffe00106e108 s4 :
>>> > >> > ffffffe00106e100
>>> > >> > [   10.389250]  s5 : ffffffe00106e908 s6 : 0000000000000000 s7 :
>>> > >> > 6db6db6db6db6db7
>>> > >> > [   10.390272]  s8 : 0000000000000001 s9 : ffffffe00021a4f8 s10:
>>> > >> > ffffffffffffffff
>>> > >> > [   10.391293]  s11: ffffffe3f0066600 t3 : 000000000001a7a8 t4 :
>>> > >> > 000000000001a7a8
>>> > >> > [   10.392314]  t5 : 0000000000000000 t6 : ffffffe00107b76b
>>> > >> > [   10.393096] status: 0000000000000120 badaddr: 
>>> 0000000000000000
>>> > >> > cause: 0000000000000003
>>> > >> > [   10.397755] ---[ end trace 861659596ac28841 ]---
>>> > >> > 
>>> ---------------------------------------------------------------------------------------------------
>>> > >> >
>>> > >> > I haven't had the chance to bisect to figure out which commit 
>>> caused
>>> > >> > the issue. Just wanted
>>> > >> > to check if it is a known issue already.
>>> > >>
>>> > >> Hi Atish,
>>> > >>
>>> > >> Note, I am getting the same (just now) when booting v5.8-rc1 on 
>>> OpenRISC.  If
>>> > >> you have any updates please post back.  I will try to look into 
>>> this today or
>>> > >> tomorrow.
>>> > >
>>> > > I have bisected this to, 42fc541404f249778e752ab39c8bc25fcb2dbe1e:
>>> > >
>>> > >   mmap locking API: add mmap_assert_locked() and 
>>> mmap_assert_write_locked()
>>> > >
>>> > > This should have just changed the existing lockdep api's but 
>>> something has
>>> > > changed.  I haven't had time to look at it yet.
>>> > >
>>> > > Ccing: Michel Lespinasse <walken@google.com>
>>> >
>>> > This isn't manifesting on boot for me, on either rc1 or that 
>>> commit.  I'm
>>> > running a simple buildroot-based userspace, so I doubt anything is 
>>> triggering
>>> > BPF.  I don't run the BPF selftests, as they're a bit of a pain 
>>> (IIRC they
>>> > don't cross compile and need LLVM) -- does anyone have a userspace 
>>> I can use to
>>> > trigger the bug?
>>>
>> I am also using buildroot based userspace but it's a bit bulky because
>> of my config.
>> You can access it from here:
>> https://wdc.box.com/s/r8j0d5ynp5gr27n2wo124xi9t8fp0tls
>
> I'm up to ~900M trying to get enough of a userspace to run the BPF 
> selftests,
> so this would be way better.  Unfortunately I'm not actually getting the
> crash with your rootfs.
>

I have what looks like the same bug by simply using the TEST_BPF config, 
with a very small rootfs
generated by buildroot if that can help.


>>
>> A defconfig build & boot in Qemu with above userspace is sufficient to
>> trigger the bug.
>>
>> FYI: I noticed the kernel bug message every time during ssh-key
>> generation. Not sure if that is related.
>>
>>>
>>>
>>> -- 
>>> Michel "Walken" Lespinasse
>>> A program is never fully debugged until the last user dies.
>

