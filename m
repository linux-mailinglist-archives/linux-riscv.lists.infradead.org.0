Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517391FBDC1
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 20:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=v75wcRwfSzzYs88L+bXEQzEqQpAborVkUAWGqPMuO4U=; b=HYF9VjM6qlKRFq
	+g7msf5HVP74lfRQyPChSlS2cJaDmrQYH22WJIIq5GIVLth+5Vm9rOKlNIe2+i2LjsUd+szvKNkzf
	Kri3Y0FbtnbIL4F8TI8iOxYqT+pvuwoJNQUGB+dw1fhbqBhbYMgEhpZmf2vNqDRWn+SmIGeEe0s4c
	gqUAS1uGm8LksxeUlAlapx5fIm8BOACEptfsn+xFDtoCFjERxEsGRNggYflSCzL87x1CDIQWWacOq
	x+0Nd4fi7iwTy768jle1wLbOfjTHhUOvUbBqsHwCwOxUi5lQ6LdUWlD4MR6H28YhvjEgxCaE6IDiA
	MtuuEcRF6Ha07MIuDlbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlG78-0004QZ-Lx; Tue, 16 Jun 2020 18:15:14 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG72-0003dv-Ge
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 18:15:10 +0000
Received: by mail-pj1-x1044.google.com with SMTP id h22so1972962pjf.1
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 11:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=v75wcRwfSzzYs88L+bXEQzEqQpAborVkUAWGqPMuO4U=;
 b=pjCJMeFa+fYUzMFnVqHfQpWJ0t0qnNgUEZtZG72zTclbZHOVAQwN1oly9rpR/ll4wx
 Srs+FGvJ8xKpEN72p4eWUgCHmWtYneACF+IecYCMzxTXWaqRmPWF3JxitfO+5+blqDZK
 BB7BJrxHwm53wVY/pDaeW3v4D3JCvMoEdkSzPBZ2BGvA6rEat/LPn9bdJzhpFcwqI7gt
 Cdk9I1esTmyzXPUdommeqQvyu8XTzwPK6I3/G4bKY7FVDfXSyeMS9KrhARu3l3mLbs3Y
 uL9Ggrout6Mmx6G3rBlbJtDvkvK8ahlW5GalhUW2mITx552ziraHfeu5Jf8KbCKkzDkg
 THsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=v75wcRwfSzzYs88L+bXEQzEqQpAborVkUAWGqPMuO4U=;
 b=kNZt/7KnifXGzaKVzkqmea6El/xy9X/dBAFtNf5eZpCkznaRwYfFn4DecWgSu3O3tb
 4ijCHPdlLlUvbNVdqWSOCqwZ+G3JLOmsjjiqRbd2LtO0gW+buKvDdGIVVLz7Sdihw2fO
 HPGMNfUADz4XT6FxinOaPn3vIqG8aGeTNcS/weAJYzJ7EeqC4Frq+eqRNwzwWKxaTMMp
 66ZA5X7rFOkZO6D5/jlQXI8uQVoQtAbnn52We7dz4qbdMheutxWwT9aTRBYU2aKj6glV
 DSlK+7V6DPHJP7kFD8At1de5Yx7wO2ucYj6RCGvfJ96O17vi56D9iYEr43Nnrsf5hBex
 56mw==
X-Gm-Message-State: AOAM533jDctsEzLi+ZF3SLI7N3Hl/gwgxSA0DnC1NnfT0JniXo3JHePj
 z8yk8v3qToglSFvkzbY67icjaQ==
X-Google-Smtp-Source: ABdhPJxR15HOCUPhxghZ89k/XIMG5z7xyOACTc2ZNMvDOvEa3H6y3W3knV0q/a7GlqkhDBY2bf1Bhw==
X-Received: by 2002:a17:90a:ea05:: with SMTP id
 w5mr4205975pjy.37.1592331307565; 
 Tue, 16 Jun 2020 11:15:07 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id d4sm3214287pjm.55.2020.06.16.11.15.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:15:07 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:15:07 -0700 (PDT)
X-Google-Original-Date: Tue, 16 Jun 2020 11:15:05 PDT (-0700)
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
In-Reply-To: <CAOnJCUJ5h+A3Rk8anj7dakSY_3CbpmZb4YOoD849ocUCeTFvmA@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: atishp@atishpatra.org
Message-ID: <mhng-e4a01ade-a7e3-4dee-b8e6-c37ddca3c214@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_111508_591715_5C288E25 
X-CRM114-Status: GOOD (  28.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, 16 Jun 2020 11:08:55 PDT (-0700), atishp@atishpatra.org wrote:
> On Tue, Jun 16, 2020 at 11:07 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> On Tue, 16 Jun 2020 10:54:51 PDT (-0700), atishp@atishpatra.org wrote:
>> > On Tue, Jun 16, 2020 at 3:45 AM Michel Lespinasse <walken@google.com> wrote:
>> >>
>> >> I am also unable to reproduce the issue so far.
>> >>
>> >> I wanted to point to a few things in case this helps:
>> >> - Commit 42fc541404f2 was bisected as the cause. This commit changes
>> >> walk_page_range_novma() to use mmap_assert_locked() instead of
>> >> lockdep_assert_held()
>> >> - mmap_assert_locked() checks lockdep_assert_held(), but also checks
>> >> that the rwsem itself is locked.
>> >>
>> >> Now how could lockdep think the lock is held, but the lock itself is
>> >> not marked as locked ???
>> >>
>> >> I'm not sure if it helps at all, but a few commits earlier,
>> >> 0cc55a0213a0 introduces mmap_read_trylock_non_owner(), which is used
>> >> exclusively by stackmap, and does the opposite: it acquires the mmap
>> >> lock without telling lockdep about it. I can't see any smoking gun
>> >> linking this to our bug, but I thought it may be worth mentioning as
>> >> it involves the same suspects (stackmap and the difference between
>> >> owning the lock vs lockdep thinking we own the lock).
>> >>
>> >> I'm sorry, that's only how far I was able to go on this bug - I'm not
>> >> sure how to investigate it further as I can not reproduce the issue...
>> >>
>> >> On Tue, Jun 16, 2020 at 1:40 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>> >> >
>> >> > On Mon, 15 Jun 2020 21:51:08 PDT (-0700), shorne@gmail.com wrote:
>> >> > > On Tue, Jun 16, 2020 at 06:57:47AM +0900, Stafford Horne wrote:
>> >> > >> On Mon, Jun 15, 2020 at 12:28:11AM -0700, Atish Patra wrote:
>> >> > >> > Hi,
>> >> > >> > I encountered the following issue while booting 5.8-rc1 on Qemu for RV64.
>> >> > >> > I added additional dump_stack and observed that it's happening in bpf free path.
>> >> > >> > It happens always if CONFIG_DEBUG_VM is enabled. VM_BUG_ON_MM is
>> >> > >> > compiled away without that.
>> >> > >> > ------------------------------------------------------------------------
>> >> > >> > forked to background, child pid 113
>> >> > >> > [   10.328850] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted
>> >> > >> > 5.8.0-rc1-dirty #732
>> >> > >> > [   10.331739] Workqueue: events bpf_prog_free_deferred
>> >> > >> > [   10.334133] Call Trace:
>> >> > >> > [   10.338039] [<ffffffe000202698>] walk_stackframe+0x0/0xa4
>> >> > >> > [   10.339988] [<ffffffe000202880>] show_stack+0x2e/0x3a
>> >> > >> > [   10.340902] [<ffffffe00047074c>] dump_stack+0x72/0x8c
>> >> > >> > [   10.341451] [<ffffffe0002db4ce>] mmap_assert_locked.part.13+0x14/0x1c
>> >> > >> > [   10.342131] [<ffffffe0002db330>] walk_page_range_novma+0x0/0x4e
>> >> > >> > [   10.342973] [<ffffffe000204f94>] set_direct_map_invalid_noflush+0x66/0x6e
>> >> > >> > [   10.343917] [<ffffffe0002e0706>] __vunmap+0xe8/0x212
>> >> > >> > [   10.344680] [<ffffffe0002e0882>] __vfree+0x22/0x6e
>> >> > >> > [   10.345270] [<ffffffe0002e0902>] vfree+0x34/0x56
>> >> > >> > [   10.345834] [<ffffffe00027d752>] __bpf_prog_free+0x2c/0x36
>> >> > >> > [   10.346529] [<ffffffe0002801a2>] bpf_prog_free_deferred+0x74/0x8a
>> >> > >> > [   10.347394] [<ffffffe000219c70>] process_one_work+0x13a/0x272
>> >> > >> > [   10.348239] [<ffffffe00021a4b4>] worker_thread+0x50/0x2e4
>> >> > >> > [   10.348900] [<ffffffe00021ed98>] kthread+0xfc/0x10a
>> >> > >> > [   10.349470] [<ffffffe0002013da>] ret_from_exception+0x0/0xc
>> >> > >> > [   10.354405] mm ffffffe001018600 mmap 0000000000000000 seqnum 0 task_size 0
>> >> > >> > [   10.354405] get_unmapped_area 0000000000000000
>> >> > >> > [   10.354405] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
>> >> > >> > [   10.354405] pgd ffffffe001074000 mm_users 2 mm_count 1
>> >> > >> > pgtables_bytes 8192 map_count 0
>> >> > >> > [   10.354405] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
>> >> > >> > [   10.354405] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
>> >> > >> > [   10.354405] start_code ffffffe000200000 end_code ffffffe00084acc2
>> >> > >> > start_data 0 end_data ffffffe00106dfe4
>> >> > >> > [   10.354405] start_brk 0 brk ffffffe0010bd6d0 start_stack 0
>> >> > >> > [   10.354405] arg_start 0 arg_end 0 env_start 0 env_end 0
>> >> > >> > [   10.354405] binfmt 0000000000000000 flags 0 core_state 0000000000000000
>> >> > >> > [   10.354405] ioctx_table 0000000000000000
>> >> > >> > [   10.354405] exe_file 0000000000000000
>> >> > >> > [   10.354405] tlb_flush_pending 0
>> >> > >> > [   10.354405] def_flags: 0x0()
>> >> > >> > [   10.369325] ------------[ cut here ]------------
>> >> > >> > [   10.370763] kernel BUG at include/linux/mmap_lock.h:81!
>> >> > >> > [   10.375235] Kernel BUG [#1]
>> >> > >> > [   10.377198] Modules linked in:
>> >> > >> > [   10.378931] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted 5.8.0-rc1-dirty #732
>> >> > >> > [   10.380179] Workqueue: events bpf_prog_free_deferred
>> >> > >> > [   10.381270] epc: ffffffe0002db4d4 ra : ffffffe0002db4d4 sp : ffffffe3eaea7c70
>> >> > >> > [   10.382561]  gp : ffffffe00106d950 tp : ffffffe3ef752f80 t0 :
>> >> > >> > ffffffe0010836e8
>> >> > >> > [   10.383996]  t1 : 0000000000000064 t2 : 0000000000000000 s0 :
>> >> > >> > ffffffe3eaea7c90
>> >> > >> > [   10.385119]  s1 : ffffffe001018600 a0 : 0000000000000289 a1 :
>> >> > >> > 0000000000000020
>> >> > >> > [   10.386099]  a2 : 0000000000000005 a3 : 0000000000000000 a4 :
>> >> > >> > ffffffe001012758
>> >> > >> > [   10.387294]  a5 : 0000000000000000 a6 : 0000000000000102 a7 :
>> >> > >> > 0000000000000006
>> >> > >> > [   10.388265]  s2 : ffffffe3f00674c0 s3 : ffffffe00106e108 s4 :
>> >> > >> > ffffffe00106e100
>> >> > >> > [   10.389250]  s5 : ffffffe00106e908 s6 : 0000000000000000 s7 :
>> >> > >> > 6db6db6db6db6db7
>> >> > >> > [   10.390272]  s8 : 0000000000000001 s9 : ffffffe00021a4f8 s10:
>> >> > >> > ffffffffffffffff
>> >> > >> > [   10.391293]  s11: ffffffe3f0066600 t3 : 000000000001a7a8 t4 :
>> >> > >> > 000000000001a7a8
>> >> > >> > [   10.392314]  t5 : 0000000000000000 t6 : ffffffe00107b76b
>> >> > >> > [   10.393096] status: 0000000000000120 badaddr: 0000000000000000
>> >> > >> > cause: 0000000000000003
>> >> > >> > [   10.397755] ---[ end trace 861659596ac28841 ]---
>> >> > >> > ---------------------------------------------------------------------------------------------------
>> >> > >> >
>> >> > >> > I haven't had the chance to bisect to figure out which commit caused
>> >> > >> > the issue. Just wanted
>> >> > >> > to check if it is a known issue already.
>> >> > >>
>> >> > >> Hi Atish,
>> >> > >>
>> >> > >> Note, I am getting the same (just now) when booting v5.8-rc1 on OpenRISC.  If
>> >> > >> you have any updates please post back.  I will try to look into this today or
>> >> > >> tomorrow.
>> >> > >
>> >> > > I have bisected this to, 42fc541404f249778e752ab39c8bc25fcb2dbe1e:
>> >> > >
>> >> > >   mmap locking API: add mmap_assert_locked() and mmap_assert_write_locked()
>> >> > >
>> >> > > This should have just changed the existing lockdep api's but something has
>> >> > > changed.  I haven't had time to look at it yet.
>> >> > >
>> >> > > Ccing: Michel Lespinasse <walken@google.com>
>> >> >
>> >> > This isn't manifesting on boot for me, on either rc1 or that commit.  I'm
>> >> > running a simple buildroot-based userspace, so I doubt anything is triggering
>> >> > BPF.  I don't run the BPF selftests, as they're a bit of a pain (IIRC they
>> >> > don't cross compile and need LLVM) -- does anyone have a userspace I can use to
>> >> > trigger the bug?
>> >>
>> > I am also using buildroot based userspace but it's a bit bulky because
>> > of my config.
>> > You can access it from here:
>> > https://wdc.box.com/s/r8j0d5ynp5gr27n2wo124xi9t8fp0tls
>>
>> I'm up to ~900M trying to get enough of a userspace to run the BPF selftests,
>> so this would be way better.  Unfortunately I'm not actually getting the
>> crash with your rootfs.
>>
>
> Strange. I see it every time with this rootfs and CONFIG_DEBUG_VM enabled.
> Do you have CONFIG_DEBUG_VM enabled ?

Ya, that's the first thing I checked :).  I'm just building defconfig and it's
in there:

# zcat /proc/config.gz | grep DEBUG_VM
CONFIG_DEBUG_VM=y
# CONFIG_DEBUG_VM_VMACACHE is not set
# CONFIG_DEBUG_VM_RB is not set
CONFIG_DEBUG_VM_PGFLAGS=y

>> >
>> > A defconfig build & boot in Qemu with above userspace is sufficient to
>> > trigger the bug.
>> >
>> > FYI: I noticed the kernel bug message every time during ssh-key
>> > generation. Not sure if that is related.
>> >
>> >>
>> >>
>> >> --
>> >> Michel "Walken" Lespinasse
>> >> A program is never fully debugged until the last user dies.

