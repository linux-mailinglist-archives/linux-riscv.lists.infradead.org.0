Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558D30420
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 23:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7rudYTbfXfbSWYY9SqM/YsGaPtNa6h+3TVkDKkgFy4=; b=LqT1U8/Krs3nOP
	Mg/N7nW+g77bFFLWTnaVv18GguAPuxhLqvXW6XFiJ24IvhNZRoXlnLivVzKNTfLx27/oOlBKIwcj1
	576YDKMbxr+SD666VJHamMoc8DpDMeeWk6WJ5qtcsbjlF3jnuN3d34j4USFpwEcFIhhbnQPbkl2mX
	9EwWKqRY3YrNP2chMpB1qWMZbhHuBqM+LSktFMHNe1DZz8b02n3EkZu+NZ4XGIgO74wrWvj1Y+nRo
	zXat7A6AQVydk5WoDplrVAfy2droECmgXrSwr6yxfGR/Uj1QgjReWJxsUF7MDZEM6NV55qiBU+xHf
	5d7SRZc2COizibFBgRCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSpX-0001Od-Ex; Thu, 30 May 2019 21:43:23 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSpU-0001OG-8j; Thu, 30 May 2019 21:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cMVlGTvXkUveUITBldNsm2wqtZ0vfwdSAKndguUBaOQ=; b=DLH2JYbeHwq/YpEbWMtT0JGBL
 spO2pEc/2hmPltlibpNfKJ2Ih/2Rm4G0phN5i2XSKks3aWtbDZz/GjR3JOGCj0DN/EFFNJYoQcgdY
 KCaXkwyYwGjN4/dPWIvnF995pitZOxwUX3cRQdPGcd08tJMbDelcgzPTaceo+3xiEu6bQ9l0KxDmW
 A6ERMXUYjHd+RHWZrpMMqsX0zPrTCj1eb0FZ12RnJMUJ3c1CbH3/iBVkW/k/nJ87VxzdpYmPFA/Bj
 w8HefDp2VNcdyksBGBu0eg9AnsJHYltB0rlhwyOs9x/BKnj7EROswpX3bRDMtwawd5XTsxhzCT215
 893fQ6/Cw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56076)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWSpD-0005E4-3f; Thu, 30 May 2019 22:43:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWSp5-0005jk-2U; Thu, 30 May 2019 22:42:55 +0100
Date: Thu, 30 May 2019 22:42:54 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Morten Rasmussen <morten.rasmussen@arm.com>
Subject: Re: [PATCH v6 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Message-ID: <20190530214254.tuxsnyv52a2fyhck@shell.armlinux.org.uk>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-2-atish.patra@wdc.com>
 <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
 <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_144320_459454_A4294916 
X-CRM114-Status: GOOD (  16.40  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, "Andrew F. Davis" <afd@ti.com>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 12:51:03PM +0100, Morten Rasmussen wrote:
> On Wed, May 29, 2019 at 07:39:17PM -0400, Andrew F. Davis wrote:
> > On 5/29/19 5:13 PM, Atish Patra wrote:
> > >From: Sudeep Holla <sudeep.holla@arm.com>
> > >
> > >The current ARM DT topology description provides the operating system
> > >with a topological view of the system that is based on leaf nodes
> > >representing either cores or threads (in an SMT system) and a
> > >hierarchical set of cluster nodes that creates a hierarchical topology
> > >view of how those cores and threads are grouped.
> > >
> > >However this hierarchical representation of clusters does not allow to
> > >describe what topology level actually represents the physical package or
> > >the socket boundary, which is a key piece of information to be used by
> > >an operating system to optimize resource allocation and scheduling.
> > >
> > 
> > Are physical package descriptions really needed? What does "socket" imply
> > that a higher layer "cluster" node grouping does not? It doesn't imply a
> > different NUMA distance and the definition of "socket" is already not well
> > defined, is a dual chiplet processor not just a fancy dual "socket" or are
> > dual "sockets" on a server board "slotket" card, will we need new names for
> > those too..
> 
> Socket (or package) just implies what you suggest, a grouping of CPUs
> based on the physical socket (or package). Some resources might be
> associated with packages and more importantly socket information is
> exposed to user-space. At the moment clusters are being exposed to
> user-space as sockets which is less than ideal for some topologies.

Please point out a 32-bit ARM system that has multiple "socket"s.

As far as I'm aware, all 32-bit systems do not have socketed CPUs
(modern ARM CPUs are part of a larger SoC), and the CPUs are always
in one package.

Even the test systems I've seen do not have socketed CPUs.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
