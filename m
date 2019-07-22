Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754306FB21
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 10:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+Gm+Rod2pUvJZYx2BiNlKhv3sZHzpdnRFD/l8dq/YA=; b=kJnypPPfMUyrEK
	A03hWpidD98D7NQJN5gxYam3hAqtLHwoW08PsYCxmijUAtannVlK/lFriiKlH3185VcQeNvLhK/Dc
	oYor6L+WMvRnxI1Gqq6kGi6kRgN+/x/KIaeXSWGx4g4I/Be+Me8QZifjdZDWfieHn14J1/ABzy54K
	cVr+oI8wotWVtDhXHyjdRcvT8YA7JRNvqrni2hIzKXsfq325ssUheyf56UPZpdHCBJAmy7LRYP2Gd
	RrQkSgJ70DJ09OZ6uZYfCaFzOuIMQMQiM3Tmc40LCIwlAeR8TwHKAUhaXeQp2U5h8SIfY52kvh2HP
	CxNa7XkejP+QTtxpsFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTWz-0007gb-Eb; Mon, 22 Jul 2019 08:18:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTWu-0007fu-4t
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 08:18:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 614A3344;
 Mon, 22 Jul 2019 01:18:40 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DE3A3F71F;
 Mon, 22 Jul 2019 01:18:36 -0700 (PDT)
Date: Mon, 22 Jul 2019 09:18:30 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Message-ID: <20190722081157.rojxwc6qrsplpduo@salmiak>
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_011844_249054_22C80DEF 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: devicetree <devicetree@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 01:11:01PM +0800, Bin Meng wrote:
> On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > > Meng
> > > Sent: Friday, July 5, 2019 9:23 AM
> > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> > >
> > > Per device tree spec, the "status" property property shall be present for
> > > nodes representing CPUs in a SMP configuration. This property is currently
> > > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> >
> > We don't need explicit "status = okay" for SOC internal devices
> > (such as PLIC, INTC, etc) which are always enabled by default.
> >
> 
> Yes, that's fine because those device bindings do not require them.
> 
> > Absence of "status" DT prop is treated as enabled by default.
> >
> 
> But per current device tree spec, "status" in cpu node is mandatory.
> (spec uses "shall"). Missing it is a spec violation.

I think this is a spec bug (or at least misleading wording in the spec).

IEEE 1275 says (for status as a generic property):

  The absence of this property menas that the operational status is unknown or
  okay.

... and I think it's fine to treat that the same as an explicit "okay" here, as
we do generically in Linux.

Thanks,
Mark.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
