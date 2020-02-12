Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2981A15AFEE
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 19:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9KNdQTzecz/SJfMs4GgqFV3ANdv8gWp3Rod0UgNCFVs=; b=r7qekc6uXDefl4V3u6a8K9amb
	OJb1ZwregCFsDRNBfH6rZt6rkrDOXS9ptwa551rVqCZohUXexh9mTgSWTvQV/QWevJXpEUqG44aS0
	Hdnlo3pCF9ngFLW9urUv3dnRCYkgh5zx2hDfLDVroKQi4IV2zG3OZHQaYe9phiyor3FJADTGgGpoX
	O45HQFnEFduIlHxDq6sKxAOkiIjjC0MpJk1fE5WM7fTKJQJBoKBmcTOdRtEtiHzhCvg6Q+zz0Uj40
	1oHc6m1UuawEmevMfbVtVhu0R439D2OP/1qWb2CduTtyAaomXnp4qv69Oq2iSeZdXo1KRQogVEdf6
	Gx76TB6TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wrS-0005lG-16; Wed, 12 Feb 2020 18:35:46 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wrN-0005kv-OV
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 18:35:43 +0000
Received: by mail-ot1-x344.google.com with SMTP id j20so2956657otq.3
 for <linux-riscv@lists.infradead.org>; Wed, 12 Feb 2020 10:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9KNdQTzecz/SJfMs4GgqFV3ANdv8gWp3Rod0UgNCFVs=;
 b=gL0FnKJNJiJNa9dSHzfhhNO8SJ4Pvmvg5qHjXBm14UpYgAz9qO/shxHONMQmDjm/F7
 CVgI1kGgADGkKWBRA0XCry6kkiADNAVNomJaW45cly2aK/nPwXtTYH2h+Fk+XIfIStRg
 GMneMhvlMmKABuSc4cuohZ9MurZaBflu5tAvvfGfQz6ooYomObrajNfY0EcNqD5pLuJz
 cnTw1K05XqPopYYhXXTldVau4/73meozj+jdbfnVzojvtHrd5HOJW5kV5/c3LIOuqv4h
 0kiwWAwb4J4FS2Qg2htzghvR7a//KW24+EuP5JaPfs33cLv1XBVp1W+u8WeCDZklnWNv
 xG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9KNdQTzecz/SJfMs4GgqFV3ANdv8gWp3Rod0UgNCFVs=;
 b=KaOIC2K899xbOWFuYTPfxhxS0TiGAwX4NM4E4DPe/urS23lkblGfpkEz7EPahXDwzC
 gV+sGdez8qZuWZjotLWcVXdskf4q1xpK+bB3TUHukxDAZawmxJtFxmuqM+0h53weWPHn
 ynRhTqvqitN4L7POhX6bVh6VAW7aL6wEhRbaeAI/E50K0YYsr2gf4EjaaFMuIT8tMtU0
 GGFq40tI6Q3pQfYJ7FEaaJBV33ZdsZ1rSqlZLG6rDmfDQueZfVr6tRplIzNJ3DutOOij
 tzXszio8Y9HCY9kEIFRNSn633bT3JhGf2ihKrvyI+5FRUwQiGIYWSg3ckEVl/uxsjjEM
 ZGBA==
X-Gm-Message-State: APjAAAWlKkrpEfl+f2sl9wAkQ0Iq08L3M+DsiN27f2zA17EqAneOC3ks
 H3VGSBC+DNxayPHmYiJtlW3FXAA+P/Y=
X-Google-Smtp-Source: APXvYqwUt8l78PKdBjAN9Sm0spQ3EBv7VF5bXaxMvmVuCBKXVYP4jn/2xFRFH/2gRqt+vQHJcJEVug==
X-Received: by 2002:a9d:6f0d:: with SMTP id n13mr10594922otq.165.1581532540729; 
 Wed, 12 Feb 2020 10:35:40 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id y6sm412731oti.44.2020.02.12.10.35.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 10:35:40 -0800 (PST)
Date: Wed, 12 Feb 2020 11:35:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Status of building and booting the RISCV64 kernel with Clang
Message-ID: <20200212183538.GA34230@ubuntu-m2-xlarge-x86>
References: <20200212054001.GA27071@ubuntu-m2-xlarge-x86>
 <CAKwvOdnTW1AjB8nVKFd9i=ur88QtEp7taT2jo8R2-FXdBzZthQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKwvOdnTW1AjB8nVKFd9i=ur88QtEp7taT2jo8R2-FXdBzZthQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_103541_804787_6A8174CF 
X-CRM114-Status: GOOD (  30.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 LKML <linux-kernel@vger.kernel.org>, asb@lowrisc.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 10:29:10AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> + Palmer, Alex
> 
> On Tue, Feb 11, 2020 at 9:40 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi all,
> >
> > We (ClangBuiltLinux) have started looking at building the RISCV64
> > kernel with clang and booting it in QEMU. I thought it would be nice to
> > give some sort of status update and go over the issues we have notice
> > so far and see what people's thoughts are for solving them. If this
> > email is unwelcome, apologies! This testing was done with clang-11 (tip
> > of tree) and QEMU 4.2.0 with this rootfs (built with
> > buildroot-2019.02.9):
> >
> > https://github.com/nathanchance/continuous-integration/blob/21ea056022f9cf1d62b7f805c3862daf9d89736f/images/riscv/rootfs.cpio
> >
> >
> >
> > Outstanding issues on the LLVM side:
> >
> > 1. LLVM output over -mno-save-restore (https://github.com/ClangBuiltLinux/linux/issues/804)
> >
> > The kernel passes -mno-save-restore to KBUILD_CFLAGS which causes a ton
> > of warning spam from LLVM:
> >
> > '-save-restore' is not a recognized feature for this target (ignoring feature)
> >
> > This has been reported upstream as https://llvm.org/pr44853 but it could
> > easily be fixed in the kernel by guarding the call against
> > CONFIG_CC_IS_CLANG (although this is obviously fragile if the ABI ever
> > changes to -msave-restore by default).

And this issue has been fixed:
https://github.com/llvm/llvm-project/commit/07f7c00208b393296f8f27d6cd3cec2b11d86fd8

> > 2. -fPIC causes issues when using Clang + GNU as (https://github.com/ClangBuiltLinux/linux/issues/865)
> >
> > The kernel on a whole builds with -fno-integrated-as so we fall back to
> > GNU as when assembling. Kernel modules are built with -fPIC and fail to
> > build with a bunch of assembler errors like so (seen with binutils
> > 2.31.1 and ToT):
> >
> > /tmp/flexfilelayout-2d0cdc.s:359: Error: bad expression
> > /tmp/flexfilelayout-2d0cdc.s:359: Error: illegal operands `auipc a0,%got_pcrel_hi(mem_map)'
> > /tmp/flexfilelayout-2d0cdc.s:367: Error: bad expression
> > /tmp/flexfilelayout-2d0cdc.s:367: Error: illegal operands `auipc a2,%got_pcrel_hi(pfn_base)'
> > /tmp/flexfilelayout-2d0cdc.s:374: Error: bad expression
> > /tmp/flexfilelayout-2d0cdc.s:374: Error: illegal operands `auipc a3,%got_pcrel_hi(va_pa_offset)'
> >
> > This has been reported upstream as https://llvm.org/pr44854. The way to
> > work around this in the kernel is to just disable CONFIG_MODULES (which
> > is a big hammer but that obviously won't be sent upstream in any form).
> >
> >
> >
> >
> > Outstanding issues on the kernel side:
> >
> > 1. -Wuninitialized warnings around local register variables
> >
> > There are a few warnings around local "register" variables, which are
> > uninitialized when using clang:
> >
> > In file included from ../arch/riscv/kernel/asm-offsets.c:10:
> > In file included from ../include/linux/sched.h:12:
> > ../arch/riscv/include/asm/current.h:30:9: warning: variable 'tp' is uninitialized when used here [-Wuninitialized]
> >         return tp;
> >                ^~
> > ../arch/riscv/include/asm/current.h:29:33: note: initialize the variable 'tp' to silence this warning
> >         register struct task_struct *tp __asm__("tp");
> >                                        ^
> >                                         = NULL
> > 1 warning generated.
> >
> > ../arch/riscv/kernel/process.c:112:19: warning: variable 'gp' is uninitialized when used here [-Wuninitialized]
> >                 childregs->gp = gp;
> >                                 ^~
> > ../arch/riscv/kernel/process.c:110:34: note: initialize the variable 'gp' to silence this warning
> >                 const register unsigned long gp __asm__ ("gp");
> >                                                ^
> >                                                 = 0
> > 1 warning generated.
> >
> > ../arch/riscv/kernel/stacktrace.c:34:8: warning: variable 'current_sp' is uninitialized when used here [-Wuninitialized]
> >                 sp = current_sp;
> >                      ^~~~~~~~~~
> > ../arch/riscv/kernel/stacktrace.c:32:42: note: initialize the variable 'current_sp' to silence this warning
> >                 const register unsigned long current_sp __asm__ ("sp");
> >                                                        ^
> >                                                         = 0
> > 1 warning generated.
> >
> > The way to solve these is to make these register variables global, where
> > they are properly initialized and work. This has been done in the kernel
> > a few times:
> >
> > fe92da0f355e ("MIPS: Changed current_thread_info() to an equivalent supported by both clang and GCC")
> > 3337a10e0d0c ("arm64: LLVMLinux: Add current_stack_pointer() for arm64")
> > 786248705ecf ("arm64: LLVMLinux: Calculate current_thread_info from current_stack_pointer")
> > 0abc08baf2dd ("ARM: 8170/1: Add global named register current_stack_pointer for ARM")
> > f6c9cbf091a4 ("ARM: 8173/1: Calculate current_thread_info from current_stack_pointer")
> >
> > The LLVM community has rejected adopting GCC's behavior of allowing
> > local register variables because it would seriously complicate the
> > register allocator; the full discussion can be viewed here:
> > http://lists.llvm.org/pipermail/llvm-dev/2014-March/071472.html
> >
> > This is the diff I am currently working with; I am not sure of any side
> > effects aside from two that I will list below.
> >
> > https://gist.github.com/b5fda253a243127736fd2ac5d317dcdd
> >
> >
> >
> > Booting in QEMU:
> >
> > This is where things get interesting... The kernel does not start at all
> > when the registers are purely local. It does start when the tp register
> > is moved globally (arch/riscv/include/asm/current.h diff above) but it
> > does not finish getting to userspace. Additionally, the diff in
> >  -s ARCH=riscv CC=clang CROSS_COMPILE=riscv64-linux-gnu- O=out.riscv distclean defconfig all
> > ...
> > $ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
> > ...
> > [    0.000000] Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (ClangBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 9c1a88c96457ffde71f13c74fd4d52a77d86cc9f)) #1 SMP Tue Feb 11 22:13:03 MST 2020
> > ...
> > [    0.624295] Run /init as init process
> > /init: exec: line 7: /sbin/init: Text file busy
> > [    0.712090] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200
> > [    0.712739] CPU: 0 PID: 1 Comm: init Not tainted 5.6.0-rc1-00001-g90c81dfc010e #1
> > [    0.713228] Call Trace:
> > [    0.713508] [<ffffffe00004a3e6>] walk_stackframe+0x0/0xc6
> > [    0.713832] [<ffffffe0007c0070>] dump_stack+0x9e/0xd6
> > [    0.714112] [<ffffffe00004f250>] panic+0x112/0x2dc
> > [    0.714387] [<ffffffe000051886>] exit_mm+0x0/0x12a
> > [    0.714676] [<ffffffe000051a80>] sys_exit_group+0x0/0xe
> > [    0.714965] [<ffffffe000051aa4>] __wake_up_parent+0x0/0x24
> > [    0.715262] [<ffffffe000051a8e>] __do_sys_exit_group+0x0/0x16
> > [    0.715568] [<ffffffe000048e3e>] ret_from_syscall+0x0/0x2
> > [    0.716409] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200 ]---
> > qemu-system-riscv64: terminating on signal 15 from pid 55965 (timeout)
> >
> > GCC 9.2.0 works just fine.
> >
> > $ make -j$(nproc) -s ARCH=riscv CROSS_COMPILE=riscv64-linux- O=out.riscv distclean defconfig all
> > $ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
> > ...
> > [    0.634854] Run /init as init process
> > Starting syslogd: OK
> > Starting klogd: OK
> > Initializing random number generator... [    1.329410] random: dd: uninitialized urandom read (512 bytes read)
> > done.
> > Starting network: OK
> > Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
> > Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
> > Stopping network: OK
> > Saving random seed... [    2.165960] random: dd: uninitialized urandom read (512 bytes read)
> > done.
> > Stopping klogd: OK
> > Stopping syslogd: OK
> > umount: devtmpfs busy - remounted read-only
> > umount: can't unmount /: Invalid argument
> > The system is going down NOW!
> > Sent SIGTERM to all processes
> > Sent SIGKILL to all processes
> > Requesting system poweroff
> > [    4.412388] reboot: Power down
> >
> > I have tried to do some debugging in gdb to see where things are going
> > wrong and I see it get to run_init_process, succeed, then jump to the
> > exception handler and panic so I am not really sure where things are
> > going wrong. Any sort of ideas on where to go from here would certainly
> > be appreciated :)
> >
> > Thanks for all the hard work everyone has done, hopefully we can help
> > add to it!
> >
> > Cheers,
> > Nathan

