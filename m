Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C013CF52A8
	for <lists+linux-riscv@lfdr.de>; Fri,  8 Nov 2019 18:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJyZMQ5U0e8MTIyIQ+ZdvtMwOH3MrdmtOZYra2edj5g=; b=agRhA0X0rb5gXh
	7eBg9I+3hYQF7PlGr0rpm737S1WtYTMS8CT+oUGwhmJc2eocNe2AvPV14vD8/RtblkYJgdRr4TrnF
	Yh7sHptBwImCzu0d93fGcmqUA85cFQJ2QTqIrdy7eKvqmShZMm3zEMc2lKkh77aHS13tmDgea3xIg
	yl4KGR8xfPOihQ5X61aNWQB3TgW9jHpTnJU0x8OnRjNoIRsJmQv7o0AyzkWEB2W1znY8m89fIZ9Ib
	4hBHp2+97MQKMvOw8ggeiaBnytYSCLCCMc7m0htHK4wqC5OdTuj1+3wY7cjokfrZgIw/jteL1fuM7
	ZiFV1NtkTmRQg5vnvUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8BR-000665-Ow; Fri, 08 Nov 2019 17:36:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8BN-0004fV-GG; Fri, 08 Nov 2019 17:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8OKQ8ybzqBvVwbNEFVvCvShIsxDoVn1JKRJjkQiqoKU=; b=swiYqGJ7LEVqyrrRsI7H1eTTa
 hKUL+RUA60U6nmKfQ3wx4HeACdCMgfizQI7y71CmrPZ9FkR78hjjzmqBZLEHXPhbl2wyXwtowYyht
 q3s2gW++t5nGtMEhwRgjQdMHHO6gZwwwuAzS21l3ty+eVTpDYUq3y7bBgzQWbko3SSiRfkjM9FyAG
 ozIGQYkMiL4DSG7CHuy+TRP0trl6r2Nd1q0qtEbaW+lBXN63gMwtPy6r2GzdFA2Jn6NOahkxyCgl6
 RA7vVtn4kk9c9iT0zwgIxtjo4SQcsvTNqcn2tKatz1/KsHP3DQuGLUdi5b2RLs4XIvzS7bfH1igZp
 ONICUo7nw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:53540)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iT86P-0003rG-IT; Fri, 08 Nov 2019 17:31:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iT85t-000697-Tp; Fri, 08 Nov 2019 17:30:45 +0000
Date: Fri, 8 Nov 2019 17:30:45 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191108173045.GY25745@shell.armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
 <20191106203440.GH3079@worktop.programming.kicks-ass.net>
 <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_093625_899080_ECF9D4D4 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Matt Turner <mattst88@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Len Brown <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-um@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Richard Henderson <rth@twiddle.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-ia64@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-hexagon@vger.kernel.org, Helge Deller <deller@gmx.de>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Vasily Gorbik <gor@linux.ibm.com>,
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
 X86 ML <x86@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Mark Salter <msalter@redhat.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Michal Simek <monstr@monstr.eu>, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Jason Wessel <jason.wessel@windriver.com>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 04:28:30PM +0000, Dmitry Safonov wrote:
> On 11/6/19 8:34 PM, Peter Zijlstra wrote:
> > On Wed, Nov 06, 2019 at 04:27:33PM +0000, Dmitry Safonov wrote:
> [..]
> >> Sorry, I should have tried to describe better.
> >>
> >> I'm trying to remove external users of console_loglevel by following
> >> reasons:
> >
> > I suppose since all my machines have 'debug ignore_loglevel
> > earlyprintk=serial,ttyS0,115200 console=ttyS0,115200' I don't have this
> > experience.
> 
> Yeah, I remember you avoid all those functionalities of printk(), fair
> enough. On the other side, regular users and I'm betting most of
> the non-tuned distributions use /proc/sys/kernel/printk by default.
> (Checking on my Arch & Fedora - loglevel 4 from the box)
> 
> >> - changing console_loglevel on SMP means that unwanted messages from
> >> other CPUs will appear (that have lower log level)
> >> - on UMP unwanted messages may appear if the code is preempted while it
> >> hasn't set the console_loglevel back to old
> >> - rising console_loglevel to print wanted message(s) may not work at all
> >> if printk() has being delayed and the console_loglevel is already set
> >> back to old value
> >
> > Sure, frobbing the global console_loglevel is bad.
> >
> >> I also have patches in wip those needs to print backtrace with specific
> >> loglevel (higher when it's critical, lower when it's notice and
> >> shouldn't go to serial console).
> >
> > (everything always should go to serial, serial is awesome :-)
> 
> Personally I agree. Unfortunately, here @Arista there are switches (I'm
> speaking about the order of thousands at least) those have baud-rate 9600.
> It's a bit expensive being elaborate with such setup.
> 
> >> Besides on local tests I see hits those have headers (messages like
> >> "Backtrace: ") without an actual backtrace and the reverse - a backtrace
> >> without a reason for it. It's quite annoying and worth addressing by
> >> syncing headers log levels to backtraces.
> >
> > I suppose I'm surprised there are backtraces that are not important.
> > Either badness happened and it needs printing, or the user asked for it
> > and it needs printing.
> >
> > Perhaps we should be removing backtraces if they're not important
> > instead of allowing to print them as lower loglevels?
> 
> Well, the use-case for lower log-level is that everything goes into logs
> (/var/log/dmesg or /var/log/messages whatever rsyslog has settting).
> 
> That has it's value:
> - after a failure (i.e. panic) messages, those were only signs that
> something goes wrong can be seen in logs which can give ideas what has
> happened.

No they don't.  When the kernel panics, userspace generally stops
running, so rsyslog won't be able to write them to /var/log/messages.

How, by "kernel panics" I mean a real kernel panic, which probably
isn't what you're talking about there.  You are probably talking
about the whole shebang of non-fatal kernel oops, kernel warnings
and the like.  If so, I'd ask you to stop confuzzilating terminology.

If you really want to capture such events, then you need to have the
kernel write the panic to (e.g.) flash - see the mtdoops driver.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
