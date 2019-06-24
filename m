Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1099551097
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 17:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjQDQCI2AiykZDYr+FiUtFiyhQ8pflKIMK5n6QdbRGE=; b=b+AFYzs9ZjQTsd
	DONOSgGTKJv01gLT7Fd8SQ2fVhzk+jx8yEDhXfEkqUCyrT4957m1Dyq5OyG3cVxjA/5fTVsWOWymk
	1xFSZnZURMMX2arFzCYOrZpgt8FVEeNxucBCi1ItPMTJiBBBQlItvj3hStl8IqRDL8BrsvsuNe5Q7
	SlkIz0XS6sXW8HtzxWOD6vW07sg/bgZxA1PGThPEgt/HLrNvJMe6b9Xf4o1nein6o6oJDNUZK+sZp
	AGqgi0tdnJMLb9OxOlF5zdHU8HVgsbMPdB/pASYQl5hntcTYDcIvwE7JtC71vYkJV3F65rqxHg9EN
	otQIEhdCN8gW5Hhw6IOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQyv-0006Tq-Rs; Mon, 24 Jun 2019 15:34:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQya-0006Ht-IG; Mon, 24 Jun 2019 15:33:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 873E52B;
 Mon, 24 Jun 2019 08:33:47 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50AD03F71E;
 Mon, 24 Jun 2019 08:33:44 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:33:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v7 4/7] arm: Use common cpu_topology structure and
 functions.
Message-ID: <20190624153338.GA3762@e107155-lin>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-5-atish.patra@wdc.com>
 <20190619121057.GE1360@e107155-lin>
 <20190624150658.GA1623@e107155-lin>
 <20190624153033.3jpdd7vsekdiltmb@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624153033.3jpdd7vsekdiltmb@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_083348_656125_AC08A889 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Atish Patra <atish.patra@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 04:30:33PM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Jun 24, 2019 at 04:06:58PM +0100, Sudeep Holla wrote:
> > On Wed, Jun 19, 2019 at 01:10:57PM +0100, Sudeep Holla wrote:
> > > Hi Russell,
> > >
> > > On Mon, Jun 17, 2019 at 11:59:17AM -0700, Atish Patra wrote:
> > > > Currently, ARM32 and ARM64 uses different data structures to represent
> > > > their cpu topologies. Since, we are moving the ARM64 topology to common
> > > > code to be used by other architectures, we can reuse that for ARM32 as
> > > > well.
> > > >
> > > > Take this opprtunity to remove the redundant functions from ARM32 and
> > > > reuse the common code instead.
> > > >
> > > > To: Russell King <linux@armlinux.org.uk>
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > Tested-by: Sudeep Holla <sudeep.holla@arm.com> (on TC2)
> > > > Reviewed-by : Sudeep Holla <sudeep.holla@arm.com>
> > > >
> > > > ---
> > > > Hi Russell,
> > > > Can we get a ACK for this patch ? We are hoping that the entire
> > > > series can be merged at one go.
> > >
> > > It would be nice to get this in for v5.3 as it's almost there.
> > > Are you fine with these changes ?
> > >
> >
> > Do you have any objections with this patch ? We plan to merge through
> > RISC-V tree, please let us know. It has been acked-by all the other
> > maintainers.
>
> I have no interest in the CPU topology code; as far as I know I have
> no systems that are able to exercise this code in any way.  Therefore,
> I don't know this code, I have no way to test it, and so it is not
> appropriate for me to ack patches for it.
>

I completely understand that and we can take care of testing. As along
as you don't have objections to this, that should be fine I believe.

--
Regards,
Sudeep

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
