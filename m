Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0784132B6C
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 11:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d05DkLjXUuYAKYk9bZAlop4QSx3sW36zRWJ9baQVN6U=; b=cuK7Hqm+8uv6LH
	rILJLIgkACBmCCmI6ShS5Nby4ie5JrrFW3i0iSVbuMoUYuHcHDZtUB2Bv/pgp5E+XHU9vMZGcdtMI
	TFU6QXzGoJxhAzdQ9u9RQR2tKYAONhqd2/4Y9eQsfKh1gzLyqIqO9DIL2csarzXu5RSx66tJHXGLr
	8UrG1ZjfSmwH3NjEon4T+T3f7jNGWKY6J5ZhkWXST9/D0eJY46pAZDBGzSoMVlBVRnUX2ZBqmQNio
	bFTjKct161bBaTnShk8Ev1LbXxVFgCXgFuXWpAdACCjVprVnXRohIyNxgyKihugvyodLeztzbeRI9
	Ag9KcylF6lT30OZBZMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXius-0006DH-Ek; Mon, 03 Jun 2019 09:06:06 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiud-0005pI-OT; Mon, 03 Jun 2019 09:05:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AB3B374;
 Mon,  3 Jun 2019 02:05:49 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C69F3F690;
 Mon,  3 Jun 2019 02:05:45 -0700 (PDT)
Date: Mon, 3 Jun 2019 10:05:31 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v6 2/7] dt-binding: cpu-topology: Move cpu-map to a
 common binding.
Message-ID: <20190603090531.GA26487@e107155-lin>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-3-atish.patra@wdc.com>
 <0515d803-0da5-dcbe-3d3e-bb786b320d8b@arm.com>
 <28118149-193d-2a8a-995a-2f1829e95c1c@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28118149-193d-2a8a-995a-2f1829e95c1c@wdc.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_020552_608460_7CDD7EFF 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Ingo Molnar <mingo@kernel.org>, Rob Herring <robh@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 01:49:13AM -0700, Atish Patra wrote:
> On 5/30/19 1:55 PM, Jeremy Linton wrote:
> > Hi,
> >
> > On 5/29/19 4:13 PM, Atish Patra wrote:
> > > cpu-map binding can be used to described cpu topology for both
> > > RISC-V & ARM. It makes more sense to move the binding to document
> > > to a common place.
> > >
> > > The relevant discussion can be found here.
> > > https://lkml.org/lkml/2018/11/6/19
> > >
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > ---
> > >    .../topology.txt => cpu/cpu-topology.txt}     | 82 +++++++++++++++----
> > >    1 file changed, 66 insertions(+), 16 deletions(-)
> > >    rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (86%)
> > >

[...]

> > <nit picking>
> >
> > While socket is optional, its probably a good idea to include the node
> > in the example even if the result is the same.
>
> Sure. I will update that.
>
> That is because at least
> > on arm64 the DT clusters=sockets decision had performance implications
> > for larger systems.
> >
> > Assuring the socket information is correct is helpful by itself to avoid
> > having to explain why a single socket machine is displaying some other
> > value in lscpu.
> >
> Just for my understanding, can you give a example?
>

That's simple. Today any ARM{32,64} DT based platform sets their cluster
id to physical package id, which is exposed to userspace. The userspace
can/must interpret that as multi-socket system. E.g. TC2/Juno which
2 clusters show up as 2 socket systems which is wrong and needs fixing.
We have fixed it for ARM64 ACPI based systems but for DT(mostly used in
mobile/embedded) we need to make sure we don't break anything else before
we fix it.

--
Regards,
Sudeep

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
