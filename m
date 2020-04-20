Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD401B130C
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 19:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MswZOiyN5SsXP5ZkfJgUx+uPyPLybSx80K2hcHMS1A=; b=UoSmlGqIoO2xA5
	Qf8EgeATb6B8V+ngWDTAO7UDUYO79pBOkpm0qdnhPm+tETUHCQYSSxC/f/r2TPpOQNM1MoZ2VEAD/
	PGDdL7/59mGvSlp1pu2c8UcPzKCxQCtDZxWLY0hriOukYJY7iGcuZx3D04HGHkKCMEthc9hoTWpvm
	TIMJON1WS48vBnIbutqswOhHP30J65YvHgqlk1ZMQ9Ro+IFBTW/fuLFALI0GSrzf1VQFU6g7kx3oV
	NJM4yN6YaWfTYWFpOd0buqimMhIdoqSKCFn5VJs/OsXYUuxIDrhW6iAerAZ3xp7Y6n0Esc3ahAChk
	KjTSc6WI5kO6izShfmEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaFt-0004IV-6J; Mon, 20 Apr 2020 17:30:49 +0000
Received: from smtprelay0200.hostedemail.com ([216.40.44.200]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaFp-0004Gu-S7
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 17:30:47 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id CD7071802EC18;
 Mon, 20 Apr 2020 17:30:37 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:334:355:368:369:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:3873:3874:4321:5007:6742:6743:10004:10400:11026:11232:11658:11914:12050:12295:12297:12740:12760:12895:13069:13071:13311:13357:13439:14180:14659:14721:21060:21080:21324:21627:30054:30089:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: wire77_794acccb34a52
X-Filterd-Recvd-Size: 2900
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Mon, 20 Apr 2020 17:30:33 +0000 (UTC)
Message-ID: <0cff04825062a6e4b04a19cac80152b9943402b1.camel@perches.com>
Subject: Re: [PATCHv3 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
From: Joe Perches <joe@perches.com>
To: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org
Date: Mon, 20 Apr 2020 10:28:17 -0700
In-Reply-To: <7616c5f4-def1-7362-ceef-db76107b9c2b@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
 <20200418201944.482088-2-dima@arista.com>
 <24a1f021e52ccabfd53baa22b93947ef10e6bf3b.camel@perches.com>
 <7616c5f4-def1-7362-ceef-db76107b9c2b@arista.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_103045_968956_7A7C97D6 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.200 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Mon, 2020-04-20 at 18:25 +0100, Dmitry Safonov wrote:
> Hi Joe,

Hi Dmitry.

> On 4/18/20 9:40 PM, Joe Perches wrote:
> > On Sat, 2020-04-18 at 21:18 +0100, Dmitry Safonov wrote:
> > > print_ip_sym() needs to have a log level parameter to comply with other
> > > parts being printed. Otherwise, half of the expected backtrace would be
> > > printed and other may be missing with some logging level.
> > 
> > I'd rather create another extension to %ps that also emits
> > the [<address>] along with the symbol lookup and retire
> > print_ip_sym altogether.
> 
> Makes sense.
> Would you mind if I'll do it on the top of these patches?
> [not to mix new printk-format with patches those add loglvl parameter]

Of course not, but the proposal below doesn't compile
and I've been playing with a slightly different
implementation.

I'll post it in a few days.



