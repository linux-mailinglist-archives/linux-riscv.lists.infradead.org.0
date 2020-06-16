Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4860E1FBD8E
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 20:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GSrL23+mYW8PFUOtrO/CJiyZBufGnWyGNX6smYpZiQI=; b=Egh5iSmZP9Fo2PzoWi/1BVr7S
	flQ1ebUTLuh/oA5I9aviQT0TyWzXHRgU80mRpyJ8+uuDc1LpBWRgIj+0WYngVS6DCmlwLA0WlHUVF
	bA3xs4F86Uhp36k8IOria7YZhppfHSzlZqiTSZsRxRpVT13Cql86X94EdopCRFKaRv1jnBc9qvIvg
	OjXPW8BWLXfxpM3BBouoXS+pnXIMuPk7c3jmmFGb0T2r2av9BBnm9Ii8R/+zIglJ6hQL+4XMbmDo9
	k85jsuv7Ej2Ju0zp3+ty3XgTljE1Fow1sX1XpBv2ZENjyAWPR0okDq4PsMzSePvrusUps5rQdhOvd
	5yjzJt6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlG1I-0006jB-5Q; Tue, 16 Jun 2020 18:09:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG1E-0006ih-CE
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 18:09:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so21764177wru.6
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 11:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GSrL23+mYW8PFUOtrO/CJiyZBufGnWyGNX6smYpZiQI=;
 b=tGTPNjJyCNGQspiuN2nAmaPII1kFz0EW51MF6b9UuMTpkXA49ZDLDv2EZ5tSfe+Tl7
 /YjIDnYQPTE8tfFllIalmVZx9uLEMmRL/rtH/tmVZWyRfc3BBBZE/cSgHhD19rTY1lTW
 Wbfzy2px2cavIguVQvDD7Jygdk07zTmK5FOMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GSrL23+mYW8PFUOtrO/CJiyZBufGnWyGNX6smYpZiQI=;
 b=rYtvrUNnQ0mcN9McrCWVE5WM+m51A1uH8fue2Rm00NyBfErSrynhI6XtTNHNM6DMjE
 TX+wxdNIkkBYfQF3KsHkx+hpp6iaF5PGWn/11pJIV+9vG5XoXtWeKmPOGrNKKOLxFqAT
 1PpWDNVXOKwyp2zrGzHhN0vFEoa4F13VUPO6i75I/B1flbTE4XbNBPBlKpVuG15tLgDk
 GLSfJTXNY5i1dlbk9XVsLD8OUaKUo3SMlJrVaes/iWIC/GmJf7+ni0fdU7Q5j+wvgB2b
 MVpDG2Znt4owQjOCXXK36CF3HSvt90ratWdNcILSDLQHfVlZNY3IgD2IXzdpbeqzWRNu
 NbDg==
X-Gm-Message-State: AOAM530AOFTRKRU15OWS5GZv3JXhU67Rmm9+G6XJzg1NPElUqQ+OFED5
 4sozir8jB9m82K6Z//jRWj3J15uOTiG45llEbAz6
X-Google-Smtp-Source: ABdhPJw/E/uhZ+/aFYp5jHwuGH6o/Ms2p9hfwqTIr4VdnxWrHM8luPG6ZVxui/5YAdZgvUyyPu7fNlQKhnywr8F/j2s=
X-Received: by 2002:adf:e68a:: with SMTP id r10mr4232004wrm.384.1592330946894; 
 Tue, 16 Jun 2020 11:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAOnJCUKDP=xr=ddFvaTW_1gux=jshycvxmb=CYtt_+jpN6-u4g@mail.gmail.com>
 <mhng-cc304512-36aa-4488-bcbe-fd376f53cc96@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-cc304512-36aa-4488-bcbe-fd376f53cc96@palmerdabbelt-glaptop1>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 16 Jun 2020 11:08:55 -0700
Message-ID: <CAOnJCUJ5h+A3Rk8anj7dakSY_3CbpmZb4YOoD849ocUCeTFvmA@mail.gmail.com>
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_110908_419537_BFFBD3C2 
X-CRM114-Status: GOOD (  30.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Topel <bjorn.topel@gmail.com>, shorne@gmail.com,
 Michel Lespinasse <walken@google.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 11:07 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 16 Jun 2020 10:54:51 PDT (-0700), atishp@atishpatra.org wrote:
> > On Tue, Jun 16, 2020 at 3:45 AM Michel Lespinasse <walken@google.com> wrote:
> >>
> >> I am also unable to reproduce the issue so far.
> >>
> >> I wanted to point to a few things in case this helps:
> >> - Commit 42fc541404f2 was bisected as the cause. This commit changes
> >> walk_page_range_novma() to use mmap_assert_locked() instead of
> >> lockdep_assert_held()
> >> - mmap_assert_locked() checks lockdep_assert_held(), but also checks
> >> that the rwsem itself is locked.
> >>
> >> Now how could lockdep think the lock is held, but the lock itself is
> >> not marked as locked ???
> >>
> >> I'm not sure if it helps at all, but a few commits earlier,
> >> 0cc55a0213a0 introduces mmap_read_trylock_non_owner(), which is used
> >> exclusively by stackmap, and does the opposite: it acquires the mmap
> >> lock without telling lockdep about it. I can't see any smoking gun
> >> linking this to our bug, but I thought it may be worth mentioning as
> >> it involves the same suspects (stackmap and the difference between
> >> owning the lock vs lockdep thinking we own the lock).
> >>
> >> I'm sorry, that's only how far I was able to go on this bug - I'm not
> >> sure how to investigate it further as I can not reproduce the issue...
> >>
> >> On Tue, Jun 16, 2020 at 1:40 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> >> >
> >> > On Mon, 15 Jun 2020 21:51:08 PDT (-0700), shorne@gmail.com wrote:
> >> > > On Tue, Jun 16, 2020 at 06:57:47AM +0900, Stafford Horne wrote:
> >> > >> On Mon, Jun 15, 2020 at 12:28:11AM -0700, Atish Patra wrote:
> >> > >> > Hi,
> >> > >> > I encountered the following issue while booting 5.8-rc1 on Qemu for RV64.
> >> > >> > I added additional dump_stack and observed that it's happening in bpf free path.
> >> > >> > It happens always if CONFIG_DEBUG_VM is enabled. VM_BUG_ON_MM is
> >> > >> > compiled away without that.
> >> > >> > ------------------------------------------------------------------------
> >> > >> > forked to background, child pid 113
> >> > >> > [   10.328850] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted
> >> > >> > 5.8.0-rc1-dirty #732
> >> > >> > [   10.331739] Workqueue: events bpf_prog_free_deferred
> >> > >> > [   10.334133] Call Trace:
> >> > >> > [   10.338039] [<ffffffe000202698>] walk_stackframe+0x0/0xa4
> >> > >> > [   10.339988] [<ffffffe000202880>] show_stack+0x2e/0x3a
> >> > >> > [   10.340902] [<ffffffe00047074c>] dump_stack+0x72/0x8c
> >> > >> > [   10.341451] [<ffffffe0002db4ce>] mmap_assert_locked.part.13+0x14/0x1c
> >> > >> > [   10.342131] [<ffffffe0002db330>] walk_page_range_novma+0x0/0x4e
> >> > >> > [   10.342973] [<ffffffe000204f94>] set_direct_map_invalid_noflush+0x66/0x6e
> >> > >> > [   10.343917] [<ffffffe0002e0706>] __vunmap+0xe8/0x212
> >> > >> > [   10.344680] [<ffffffe0002e0882>] __vfree+0x22/0x6e
> >> > >> > [   10.345270] [<ffffffe0002e0902>] vfree+0x34/0x56
> >> > >> > [   10.345834] [<ffffffe00027d752>] __bpf_prog_free+0x2c/0x36
> >> > >> > [   10.346529] [<ffffffe0002801a2>] bpf_prog_free_deferred+0x74/0x8a
> >> > >> > [   10.347394] [<ffffffe000219c70>] process_one_work+0x13a/0x272
> >> > >> > [   10.348239] [<ffffffe00021a4b4>] worker_thread+0x50/0x2e4
> >> > >> > [   10.348900] [<ffffffe00021ed98>] kthread+0xfc/0x10a
> >> > >> > [   10.349470] [<ffffffe0002013da>] ret_from_exception+0x0/0xc
> >> > >> > [   10.354405] mm ffffffe001018600 mmap 0000000000000000 seqnum 0 task_size 0
> >> > >> > [   10.354405] get_unmapped_area 0000000000000000
> >> > >> > [   10.354405] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
> >> > >> > [   10.354405] pgd ffffffe001074000 mm_users 2 mm_count 1
> >> > >> > pgtables_bytes 8192 map_count 0
> >> > >> > [   10.354405] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
> >> > >> > [   10.354405] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
> >> > >> > [   10.354405] start_code ffffffe000200000 end_code ffffffe00084acc2
> >> > >> > start_data 0 end_data ffffffe00106dfe4
> >> > >> > [   10.354405] start_brk 0 brk ffffffe0010bd6d0 start_stack 0
> >> > >> > [   10.354405] arg_start 0 arg_end 0 env_start 0 env_end 0
> >> > >> > [   10.354405] binfmt 0000000000000000 flags 0 core_state 0000000000000000
> >> > >> > [   10.354405] ioctx_table 0000000000000000
> >> > >> > [   10.354405] exe_file 0000000000000000
> >> > >> > [   10.354405] tlb_flush_pending 0
> >> > >> > [   10.354405] def_flags: 0x0()
> >> > >> > [   10.369325] ------------[ cut here ]------------
> >> > >> > [   10.370763] kernel BUG at include/linux/mmap_lock.h:81!
> >> > >> > [   10.375235] Kernel BUG [#1]
> >> > >> > [   10.377198] Modules linked in:
> >> > >> > [   10.378931] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted 5.8.0-rc1-dirty #732
> >> > >> > [   10.380179] Workqueue: events bpf_prog_free_deferred
> >> > >> > [   10.381270] epc: ffffffe0002db4d4 ra : ffffffe0002db4d4 sp : ffffffe3eaea7c70
> >> > >> > [   10.382561]  gp : ffffffe00106d950 tp : ffffffe3ef752f80 t0 :
> >> > >> > ffffffe0010836e8
> >> > >> > [   10.383996]  t1 : 0000000000000064 t2 : 0000000000000000 s0 :
> >> > >> > ffffffe3eaea7c90
> >> > >> > [   10.385119]  s1 : ffffffe001018600 a0 : 0000000000000289 a1 :
> >> > >> > 0000000000000020
> >> > >> > [   10.386099]  a2 : 0000000000000005 a3 : 0000000000000000 a4 :
> >> > >> > ffffffe001012758
> >> > >> > [   10.387294]  a5 : 0000000000000000 a6 : 0000000000000102 a7 :
> >> > >> > 0000000000000006
> >> > >> > [   10.388265]  s2 : ffffffe3f00674c0 s3 : ffffffe00106e108 s4 :
> >> > >> > ffffffe00106e100
> >> > >> > [   10.389250]  s5 : ffffffe00106e908 s6 : 0000000000000000 s7 :
> >> > >> > 6db6db6db6db6db7
> >> > >> > [   10.390272]  s8 : 0000000000000001 s9 : ffffffe00021a4f8 s10:
> >> > >> > ffffffffffffffff
> >> > >> > [   10.391293]  s11: ffffffe3f0066600 t3 : 000000000001a7a8 t4 :
> >> > >> > 000000000001a7a8
> >> > >> > [   10.392314]  t5 : 0000000000000000 t6 : ffffffe00107b76b
> >> > >> > [   10.393096] status: 0000000000000120 badaddr: 0000000000000000
> >> > >> > cause: 0000000000000003
> >> > >> > [   10.397755] ---[ end trace 861659596ac28841 ]---
> >> > >> > ---------------------------------------------------------------------------------------------------
> >> > >> >
> >> > >> > I haven't had the chance to bisect to figure out which commit caused
> >> > >> > the issue. Just wanted
> >> > >> > to check if it is a known issue already.
> >> > >>
> >> > >> Hi Atish,
> >> > >>
> >> > >> Note, I am getting the same (just now) when booting v5.8-rc1 on OpenRISC.  If
> >> > >> you have any updates please post back.  I will try to look into this today or
> >> > >> tomorrow.
> >> > >
> >> > > I have bisected this to, 42fc541404f249778e752ab39c8bc25fcb2dbe1e:
> >> > >
> >> > >   mmap locking API: add mmap_assert_locked() and mmap_assert_write_locked()
> >> > >
> >> > > This should have just changed the existing lockdep api's but something has
> >> > > changed.  I haven't had time to look at it yet.
> >> > >
> >> > > Ccing: Michel Lespinasse <walken@google.com>
> >> >
> >> > This isn't manifesting on boot for me, on either rc1 or that commit.  I'm
> >> > running a simple buildroot-based userspace, so I doubt anything is triggering
> >> > BPF.  I don't run the BPF selftests, as they're a bit of a pain (IIRC they
> >> > don't cross compile and need LLVM) -- does anyone have a userspace I can use to
> >> > trigger the bug?
> >>
> > I am also using buildroot based userspace but it's a bit bulky because
> > of my config.
> > You can access it from here:
> > https://wdc.box.com/s/r8j0d5ynp5gr27n2wo124xi9t8fp0tls
>
> I'm up to ~900M trying to get enough of a userspace to run the BPF selftests,
> so this would be way better.  Unfortunately I'm not actually getting the
> crash with your rootfs.
>

Strange. I see it every time with this rootfs and CONFIG_DEBUG_VM enabled.
Do you have CONFIG_DEBUG_VM enabled ?

> >
> > A defconfig build & boot in Qemu with above userspace is sufficient to
> > trigger the bug.
> >
> > FYI: I noticed the kernel bug message every time during ssh-key
> > generation. Not sure if that is related.
> >
> >>
> >>
> >> --
> >> Michel "Walken" Lespinasse
> >> A program is never fully debugged until the last user dies.



-- 
Regards,
Atish

