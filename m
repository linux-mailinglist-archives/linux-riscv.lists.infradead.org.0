Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAE9186E99
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 16:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGJ9Kt+N0h/cF6WzsLwDLpjB+P2ox+M06q/p8pnHVe8=; b=rsoHgq2DWA9YPC
	DpkVELtBwdIy/lCNmRZPtncwnqoFgLzKEa02x7etlsLjJX1xodLfmUVr37jLtyHc0+bIheHDvsOJe
	JFu47QpkW6M3NQDmhT4b648Q3Ct49nBr/WR4oMvrwAI4hc4INX07iLVb4PYNlILQUPQlGVAnZFdsA
	bLvzdxMV7IHUeVWVqmL45bxYnTkTI9Vx2dUMtIHnU3G5KuGKZcUVcC5YrdlR271r++LZNQd7ogeqZ
	I989ohG7OKhIQXLSXG5hkePC2d2OSuQ6XfU5YphDrmGhdsAq+NCrm0sO9z6i5ynb9HeC26d16jJcb
	c25MzTIDI4z1D52lcqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDriB-0002S4-Lc; Mon, 16 Mar 2020 15:31:27 +0000
Received: from smtprelay0118.hostedemail.com ([216.40.44.118]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDri8-0002R6-1F
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 15:31:25 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id E5402181D304D;
 Mon, 16 Mar 2020 15:31:19 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:4321:4605:5007:6742:6743:7903:10004:10400:11026:11658:11914:12043:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14659:21080:21627:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: route18_624da6916fc3d
X-Filterd-Recvd-Size: 2711
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Mon, 16 Mar 2020 15:31:15 +0000 (UTC)
Message-ID: <97ea305c0d336f3c36a804b37e6bbb4b1bbf24fd.camel@perches.com>
Subject: Re: [PATCHv2 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
From: Joe Perches <joe@perches.com>
To: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org
Date: Mon, 16 Mar 2020 08:29:28 -0700
In-Reply-To: <20200316143916.195608-2-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
 <20200316143916.195608-2-dima@arista.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_083124_139784_89199814 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.118 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.118 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Ben Segall <bsegall@google.com>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Steven Rostedt <rostedt@goodmis.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2020-03-16 at 14:38 +0000, Dmitry Safonov wrote:
> print_ip_sym() needs to have a log level parameter to comply with other
> parts being printed. Otherwise, half of the expected backtrace would be
> printed and other may be missing with some logging level.

There are 15 instances of print_ip_sym.

Perhaps it'd be better to get rid of print_ip_sym
altogether by expanding it in-place instead.

>  arch/microblaze/kernel/unwind.c | 2 +-
>  arch/mips/kernel/traps.c        | 4 ++--
>  arch/nds32/kernel/traps.c       | 4 ++--
>  arch/riscv/kernel/stacktrace.c  | 2 +-
>  include/linux/kallsyms.h        | 4 ++--
>  kernel/locking/lockdep.c        | 4 ++--
>  kernel/sched/core.c             | 6 ++----
>  kernel/trace/ftrace.c           | 8 ++++----
>  tools/include/linux/kallsyms.h  | 2 +-



