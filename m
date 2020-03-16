Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB72186D45
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 15:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXz4T/B3KLStmzRAt7XXeyU3eI2VFhj+Pr5+CtzGSpk=; b=Qc+T1EIuDq2cB4
	YIiCjv3AqPsen+MRR4LoRfsu53J/shXydwPVAEt32xNWZTx66RHYGpUJ7WiJMDVIk23fi2+fRrQgF
	3kYYZy34tzg7mr9gavXDnw9ygcyLUupuT7rswcWoNPYibMTzlesqnRG8X3Su6SmuVD5RFqnvxUZ8r
	msRpfLpxj7pFB6uQTjiHjdGTGKyEPuCoKEykXuL+JGCBG9ciwMQsWqnjHsu4hiHd9jJFPQh5s0epw
	iXNehkH5P+gxatz7OV0eVfA+NMRl1Y90UvDzTt6QuSUvQ38hvc58nsoafIdjc78Nr2S/3lwqsJ71W
	p8YTqUCGqau3DMmowFpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDquC-0000RS-VP; Mon, 16 Mar 2020 14:39:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqu5-0000P0-1l
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 14:39:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id z65so10042665pfz.8
 for <linux-riscv@lists.infradead.org>; Mon, 16 Mar 2020 07:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JXz4T/B3KLStmzRAt7XXeyU3eI2VFhj+Pr5+CtzGSpk=;
 b=V5DsuLdBDrQU3DGueYDXmPutpMPnsVBXM/eQ83/6L4OkgmDPPTuFCkmLm1hRLqXhnq
 +ccis/2OTb+htQSHYWyZ/4/YThdOQWX7uOr/GvGquWOQN6Myk8PeAZkMQihvSrPki0bQ
 RvORLArp6aWsAhjtKPCLTbt8aslVxgvAU5qUqTBAyMT71OwEIUYvMXTKhtMD87DLzlj3
 5akc6ZiHM5V0aedBKFt3I0yADb4lNRHBYegbVsvJGQCkIOCI+XU6FmN+Y3wjDPQpXEz3
 fiL5B0a19DcHOnOpQYFzbvapMVBueYF4ZCCnKi84aa+DbXUBKY6qRv/DrJDwZ5LN31wv
 JqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JXz4T/B3KLStmzRAt7XXeyU3eI2VFhj+Pr5+CtzGSpk=;
 b=qqY8teLMmabxHX6pCbIO1Z+FwaVtAGJHmnqAZ9ypc4VsJed0t5eOS9lA9LXvLACFY2
 nZ1SzUuSGeekxQoaPWDAA7IjRGg1DFPEglPgzHBQub62aHrUu901uaAcRtxAGLULRRM6
 M3tJ9ib9KgsWMJWJEHxdSCs2loAZs3hGfxqLNUEAKi8sOOTqcUTZuHNtHDHGjrr7IIf8
 1LHpa3j0l6n7jokHASkEuzzFY/e/2QgdsLpoKJQjwbACMYqY1uJJIV6IeNVPFzfao2gY
 so6yACrgFnhaRaGgyM2JHD11+FTSTM1OLBbCJrsRjhHGZ/heBNG+BvK8qy1nYxLtJHQb
 2qqw==
X-Gm-Message-State: ANhLgQ1kk7zvFuRtwtr0Hm1rQkme/Uw65Ke1DnICvZXmsnOEdSQvUxVD
 zftGH5TynFwWUas6Qevl52NJ5g==
X-Google-Smtp-Source: ADFU+vsTuMQvQOU35QDzo7rso0R0MKXK6oI29BcQH9Me/osWEDUSqC94Pv9XxDKFtYDkI9SSJ2n08g==
X-Received: by 2002:a62:1552:: with SMTP id 79mr28522840pfv.215.1584369579224; 
 Mon, 16 Mar 2020 07:39:39 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.39.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:39:38 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 00/50] Add log level to show_stack()
Date: Mon, 16 Mar 2020 14:38:26 +0000
Message-Id: <20200316143916.195608-1-dima@arista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_073941_187892_EE23F3D6 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Ben Segall <bsegall@google.com>,
 Guo Ren <guoren@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Dmitry Safonov <dima@arista.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Matt Turner <mattst88@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Len Brown <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-um@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Richard Henderson <rth@twiddle.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Ralf Baechle <ralf@linux-mips.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-ia64@vger.kernel.org, Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-hexagon@vger.kernel.org, Helge Deller <deller@gmx.de>,
 linux-xtensa@linux-xtensa.org, Vasily Gorbik <gor@linux.ibm.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k@lists.linux-m68k.org, Stafford Horne <shorne@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Douglas Anderson <dianders@chromium.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Will Deacon <will@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Brian Cain <bcain@codeaurora.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 kgdb-bugreport@lists.sourceforge.net, linux-snps-arc@lists.infradead.org,
 Fenghua Yu <fenghua.yu@intel.com>, Borislav Petkov <bp@alien8.de>,
 Jeff Dike <jdike@addtoit.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 "David S. Miller" <davem@davemloft.net>, Rich Felker <dalias@libc.org>,
 Petr Mladek <pmladek@suse.com>, Peter Zijlstra <peterz@infradead.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Richard Weinberger <richard@nod.at>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Mark Salter <msalter@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Michal Simek <monstr@monstr.eu>, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Jason Wessel <jason.wessel@windriver.com>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Changes to v2:
- Removed excessive pr_cont("\n") (nits by Senozhatsky)
- Leave backtrace debugging messages with pr_debug()
  (noted by Russell King and Will Deacon)
- Correct microblaze_unwind_inner() declaration
  (Thanks to Michal Simek and kbuild test robot)
- Fix copy'n'paste typo in show_stack_loglvl() for sparc
  (kbuild robot)
- Fix backtrace output on xtensa
  (Thanks Max Filippov)
- Add loglevel to show_stack() on s390 (kbuild robot)
- Collected all Reviewed-by and Acked-by (thanks!)

Add log level argument to show_stack().
Done in three stages:
1. Introducing show_stack_loglvl() for every architecture
2. Migrating old users with an explicit log level
3. Renaming show_stack_loglvl() into show_stack()

Justification:
o It's a design mistake to move a business-logic decision
  into platform realization detail.
o I have currently two patches sets that would benefit from this work:
  Removing console_loglevel jumps in sysrq driver [1]
  Hung task warning before panic [2] - suggested by Tetsuo (but he
  probably didn't realise what it would involve).
o While doing (1), (2) the backtraces were adjusted to headers
  and other messages for each situation - so there won't be a situation
  when the backtrace is printed, but the headers are missing because
  they have lesser log level (or the reverse).

The least important for upstream, but maybe still worth to note that
every company I've worked in so far had an off-list patch to print
backtrace with the needed log level (but only for the architecture they
cared about).
If you have other ideas how you will benefit from show_stack() with
a log level - please, reply to this cover letter.

See also discussion on v1:
https://lore.kernel.org/linux-riscv/20191106083538.z5nlpuf64cigxigh@pathway.suse.cz/

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: Petr Mladek <pmladek@suse.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Thanks,
Dmitry

[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
[2]: https://lkml.kernel.org/r/41fd7652-df1f-26f6-aba0-b87ebae07db6@i-love.sakura.ne.jp

Dmitry Safonov (50):
  kallsyms/printk: Add loglvl to print_ip_sym()
  alpha: Add show_stack_loglvl()
  arc: Add show_stack_loglvl()
  arm/asm: Add loglvl to c_backtrace()
  arm: Add loglvl to unwind_backtrace()
  arm: Add loglvl to dump_backtrace()
  arm: Wire up dump_backtrace_{entry,stm}
  arm: Add show_stack_loglvl()
  arm64: Add loglvl to dump_backtrace()
  arm64: Add show_stack_loglvl()
  c6x: Add show_stack_loglvl()
  csky: Add show_stack_loglvl()
  h8300: Add show_stack_loglvl()
  hexagon: Add show_stack_loglvl()
  ia64: Pass log level as arg into ia64_do_show_stack()
  ia64: Add show_stack_loglvl()
  m68k: Add show_stack_loglvl()
  microblaze: Add loglvl to microblaze_unwind_inner()
  microblaze: Add loglvl to microblaze_unwind()
  microblaze: Add show_stack_loglvl()
  mips: Add show_stack_loglvl()
  nds32: Add show_stack_loglvl()
  nios2: Add show_stack_loglvl()
  openrisc: Add show_stack_loglvl()
  parisc: Add show_stack_loglvl()
  powerpc: Add show_stack_loglvl()
  riscv: Add show_stack_loglvl()
  s390: Add show_stack_loglvl()
  sh: Add loglvl to dump_mem()
  sh: Remove needless printk()
  sh: Add loglvl to printk_address()
  sh: Add loglvl to show_trace()
  sh: Add show_stack_loglvl()
  sparc: Add show_stack_loglvl()
  um/sysrq: Remove needless variable sp
  um: Add show_stack_loglvl()
  unicore32: Remove unused pmode argument in c_backtrace()
  unicore32: Add loglvl to c_backtrace()
  unicore32: Add show_stack_loglvl()
  x86: Add missing const qualifiers for log_lvl
  x86: Add show_stack_loglvl()
  xtensa: Add loglvl to show_trace()
  xtensa: Add show_stack_loglvl()
  sysrq: Use show_stack_loglvl()
  x86/amd_gart: Print stacktrace for a leak with KERN_ERR
  power: Use show_stack_loglvl()
  kdb: Don't play with console_loglevel
  sched: Print stack trace with KERN_INFO
  kernel: Use show_stack_loglvl()
  kernel: Rename show_stack_loglvl() => show_stack()

 arch/alpha/kernel/traps.c            | 22 +++++++--------
 arch/arc/include/asm/bug.h           |  3 ++-
 arch/arc/kernel/stacktrace.c         | 17 +++++++-----
 arch/arc/kernel/troubleshoot.c       |  2 +-
 arch/arm/include/asm/bug.h           |  3 ++-
 arch/arm/include/asm/traps.h         |  3 ++-
 arch/arm/include/asm/unwind.h        |  3 ++-
 arch/arm/kernel/traps.c              | 40 ++++++++++++++++------------
 arch/arm/kernel/unwind.c             |  7 ++---
 arch/arm/lib/backtrace-clang.S       |  9 +++++--
 arch/arm/lib/backtrace.S             | 14 +++++++---
 arch/arm64/include/asm/stacktrace.h  |  3 ++-
 arch/arm64/kernel/process.c          |  2 +-
 arch/arm64/kernel/traps.c            | 19 ++++++-------
 arch/c6x/kernel/traps.c              | 18 +++++++------
 arch/csky/kernel/dumpstack.c         |  9 ++++---
 arch/csky/kernel/ptrace.c            |  4 +--
 arch/h8300/kernel/traps.c            | 12 ++++-----
 arch/hexagon/kernel/traps.c          | 25 ++++++++---------
 arch/ia64/include/asm/ptrace.h       |  1 -
 arch/ia64/kernel/mca.c               |  2 +-
 arch/ia64/kernel/process.c           | 17 ++++++------
 arch/m68k/kernel/traps.c             | 13 ++++-----
 arch/microblaze/include/asm/unwind.h |  3 ++-
 arch/microblaze/kernel/stacktrace.c  |  4 +--
 arch/microblaze/kernel/traps.c       | 12 ++++-----
 arch/microblaze/kernel/unwind.c      | 37 ++++++++++++++-----------
 arch/mips/kernel/traps.c             | 35 ++++++++++++------------
 arch/nds32/kernel/traps.c            | 15 ++++++-----
 arch/nios2/kernel/traps.c            | 17 ++++++------
 arch/openrisc/kernel/traps.c         | 12 +++++----
 arch/parisc/kernel/traps.c           | 24 ++++++++---------
 arch/powerpc/kernel/process.c        | 15 ++++++-----
 arch/powerpc/kernel/stacktrace.c     |  2 +-
 arch/riscv/kernel/stacktrace.c       |  9 ++++---
 arch/s390/kernel/dumpstack.c         | 11 ++++----
 arch/sh/include/asm/kdebug.h         |  6 +++--
 arch/sh/include/asm/processor_32.h   |  2 +-
 arch/sh/kernel/dumpstack.c           | 36 ++++++++++++-------------
 arch/sh/kernel/process_32.c          |  2 +-
 arch/sh/kernel/process_64.c          |  3 +--
 arch/sh/kernel/traps.c               |  4 +--
 arch/sh/mm/fault.c                   |  2 +-
 arch/sparc/kernel/process_32.c       | 10 +++----
 arch/sparc/kernel/process_64.c       |  2 +-
 arch/um/drivers/mconsole_kern.c      |  2 +-
 arch/um/kernel/sysrq.c               | 23 ++++++++--------
 arch/unicore32/kernel/setup.h        |  2 +-
 arch/unicore32/kernel/traps.c        | 34 +++++++++++------------
 arch/unicore32/lib/backtrace.S       | 24 +++++++++++------
 arch/x86/include/asm/stacktrace.h    |  2 +-
 arch/x86/kernel/amd_gart_64.c        |  2 +-
 arch/x86/kernel/dumpstack.c          |  9 ++++---
 arch/xtensa/kernel/traps.c           | 26 ++++++++++--------
 drivers/base/power/main.c            |  2 +-
 drivers/tty/sysrq.c                  |  2 +-
 include/linux/kallsyms.h             |  4 +--
 include/linux/sched/debug.h          |  3 ++-
 kernel/debug/kdb/kdb_bt.c            | 11 +++-----
 kernel/locking/lockdep.c             |  4 +--
 kernel/locking/rtmutex-debug.c       |  2 +-
 kernel/sched/core.c                  |  6 ++---
 kernel/trace/ftrace.c                |  8 +++---
 lib/dump_stack.c                     |  2 +-
 64 files changed, 368 insertions(+), 311 deletions(-)

-- 
2.23.0


