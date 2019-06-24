Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A76951083
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 17:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkTiy4fhDJ7oRKIHHvVG574wbdPm+fkh4wQKqTF9Sww=; b=LfILlTjEYQ0HSP
	egTMuYPucCIszBKItKR2uiTYkU4DfWkcd6KAvahGom2Ky6FinIqdrgTQ9DH080ycB/T9+1yzgovfu
	fmk1+9jQhcRr8tOrjXFsVRT6Kd5IoCnYi/OWberl/up/WBRIgBK1B/FlSHa8St1NXVK7oTP4KBorw
	Xupl6BXSa52wGLmM9tbaH227g9kV1tKcN+vx3i5QKfNY6btYFpJopotiJRw2yDRsfcJufj14nNmgI
	Mf5cFX5PEhKkZmfA05j6T8FqSLl6qaHt5ReoiaCe8clYj444AvFIfCPWNZqn6Jcn+zxdUwbMXygxC
	Qovjbp7tKAdGh12ESNGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQvu-0005ey-2R; Mon, 24 Jun 2019 15:31:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQvp-0005eQ-Vd; Mon, 24 Jun 2019 15:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e2lpl/1sZSKODxPM1Dl/3HkA1NQ+D7tlNhA9hB5flvI=; b=hznqjuWWiKm4k4LOSKiQKuSth
 r3JZisFuNnxz0KINf8QqglF4TbK4CsLfrIueptqfS/ECm0+IymVSxeiilgJzvxCimb0Xg2u/XKYtT
 KWV75an6a7XA+Yca/bsgCaqmucieQgXxYRdoo1w2q1UiyXi7rjw8BoRvhTBQT899HLrWlSBmJST1t
 IL2HtpyufdhXaIAAslC3ua+UTFG09+Z66wF5tEG/0gW4ksz8Z2+s1g3+r+jOPdOP6hyTsEY3N5DAD
 xeawZlYAPE0E3+uFk1QwNKNV/RzRPKJd8HeUtZCygpVQwZLfp2luXlg+FEH6rR+hSg05F52LTWkTw
 9Qzxflbgw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58958)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfQva-0000XB-9k; Mon, 24 Jun 2019 16:30:42 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfQvR-0006PW-FB; Mon, 24 Jun 2019 16:30:33 +0100
Date: Mon, 24 Jun 2019 16:30:33 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v7 4/7] arm: Use common cpu_topology structure and
 functions.
Message-ID: <20190624153033.3jpdd7vsekdiltmb@shell.armlinux.org.uk>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-5-atish.patra@wdc.com>
 <20190619121057.GE1360@e107155-lin>
 <20190624150658.GA1623@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624150658.GA1623@e107155-lin>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_083058_014635_2A69A582 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Otto Sabart <ottosabart@seberm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 04:06:58PM +0100, Sudeep Holla wrote:
> On Wed, Jun 19, 2019 at 01:10:57PM +0100, Sudeep Holla wrote:
> > Hi Russell,
> >
> > On Mon, Jun 17, 2019 at 11:59:17AM -0700, Atish Patra wrote:
> > > Currently, ARM32 and ARM64 uses different data structures to represent
> > > their cpu topologies. Since, we are moving the ARM64 topology to common
> > > code to be used by other architectures, we can reuse that for ARM32 as
> > > well.
> > >
> > > Take this opprtunity to remove the redundant functions from ARM32 and
> > > reuse the common code instead.
> > >
> > > To: Russell King <linux@armlinux.org.uk>
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > Tested-by: Sudeep Holla <sudeep.holla@arm.com> (on TC2)
> > > Reviewed-by : Sudeep Holla <sudeep.holla@arm.com>
> > >
> > > ---
> > > Hi Russell,
> > > Can we get a ACK for this patch ? We are hoping that the entire
> > > series can be merged at one go.
> >
> > It would be nice to get this in for v5.3 as it's almost there.
> > Are you fine with these changes ?
> >
> 
> Do you have any objections with this patch ? We plan to merge through
> RISC-V tree, please let us know. It has been acked-by all the other
> maintainers.

I have no interest in the CPU topology code; as far as I know I have
no systems that are able to exercise this code in any way.  Therefore,
I don't know this code, I have no way to test it, and so it is not
appropriate for me to ack patches for it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
