Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197CAFBDA3
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 02:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbqMsjubqC5JE0D/ucsVRKcIV4fIm1CfdyoPKhFa7I0=; b=O6CUejxgvdc2qK
	O02LIKvVlxkPieulyTJQHCLnfMdjUGdv3nwKtDvVzJC34FuCZxBoi5ZMl3iBEyf1ZZrWLwyOnUaEH
	keH6kZc/WHQeAW/6qw5oKa1j9tMzP1kny6DBg+qcencckLIHzC+NAfTdq/H0zRFHB67VfP6vWdE45
	dK4T2zwAGXNNoB/KoiC+w4Qn5Qe1NDVyM0mmutCXLqTm3f9ymMWFcbN+hEN3dYr/F2Izd3GwFjXZ7
	YqyUuFfWWXcZjUVpP77XyjKAB7PzJmMFD1ju5eWlJVdHxFoFAO4rfp1cSJXAYRpYWEaPc/Q/xQKgf
	U0dM/lGvM0H/7/137nzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4HH-0004g0-Lr; Thu, 14 Nov 2019 01:50:31 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4HD-0004fL-Sj
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 01:50:29 +0000
Received: by mail-ot1-f68.google.com with SMTP id w24so3002309otk.6
 for <linux-riscv@lists.infradead.org>; Wed, 13 Nov 2019 17:50:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9nyrjASHuxY3SmUh/9OWattAGU9yvQiMC8XCKQ9PU6E=;
 b=bwi7aaZhx6sgvKjGIW24LjFF274zJFQRDBuuPpv+LuQdJc5mhXX0I8GEUlF5W+ZP9Z
 z8ZGb4BarydUewgh9HEuHNH3Mm4df9JIFxGJPJL/CBQwm+Qy5Se9GpJGCW5gEKA4IUK/
 vnZYJIOkXAVmZZ3J/471GoZ7tjct8ozHaWeLttX19ymhumdBek1lKE7yYz57dpANwA5N
 KKblATv0Kvr4vZwAiohfvQOlNF0sU/pBPYWw0Ybq17SfpVOvoCewG24bfevyfoowrD1M
 x8xIUu5ytaw+2D2LyuZAvA6u4HTZOdLEWBGE8KaBRYD+rxjqWxcymMrMnzxDZ0meWWBH
 rIsA==
X-Gm-Message-State: APjAAAWY7hm0SePCgkvhXLvTyoIpSnMFvQmKghw6ieIp2N6dc3TabmdK
 F4aU2OhGfdl/Kf12yLroIw==
X-Google-Smtp-Source: APXvYqxXDx1ryBh7LgzlyMuLqJ1JbZcffCwA8tUWrgTFQ29Fnfy0PdvhQizqi+lr/ix1eERF8bgUMQ==
X-Received: by 2002:a9d:3675:: with SMTP id w108mr5840239otb.81.1573696226412; 
 Wed, 13 Nov 2019 17:50:26 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c20sm1327310otm.80.2019.11.13.17.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:50:25 -0800 (PST)
Date: Wed, 13 Nov 2019 19:50:25 -0600
From: Rob Herring <robh@kernel.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: QEMU RISC-V virt machine poweroff driver
Message-ID: <20191114015025.GB1748@bogus>
References: <20191107212408.11857-1-hch@lst.de>
 <CAAhSdy3SGAkOFMhx320KJdPDh6c=qcKqCZ=qrXNKBGtejpZwSA@mail.gmail.com>
 <20191111161217.GA19157@lst.de>
 <alpine.DEB.2.21.999.1911111717320.32333@utopia.booyaka.com>
 <CAAhSdy2Lki2rZeNJyH6p0RKWjd6O+DboDE_mq8rHzXA0JRQ=7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy2Lki2rZeNJyH6p0RKWjd6O+DboDE_mq8rHzXA0JRQ=7g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_175027_929150_0DFE57F9 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, linux-pm@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 09:46:33AM +0530, Anup Patel wrote:
> On Mon, Nov 11, 2019 at 10:50 PM Paul Walmsley <paul@pwsan.com> wrote:
> >
> > On Mon, 11 Nov 2019, Christoph Hellwig wrote:
> >
> > > On Mon, Nov 11, 2019 at 05:06:24PM +0530, Anup Patel wrote:
> > > > We really don't need this driver. Instead, we can simply re-use
> > > > following drivers:
> > > > mfd/syscon
> > > > power/reset/syscon-reboot
> > > > power/reset/syscon-poweroff
> > > >
> > > > Just enable following to your defconfig:
> > > > CONFIG_POWER_RESET=y
> > > > CONFIG_POWER_RESET_SYSCON=y
> > > > CONFIG_POWER_RESET_SYSCON_POWEROFF=y
> > > > CONFIG_SYSCON_REBOOT_MODE=y
> > > >
> > > >
> > > > Once above drivers are enabled in your defconfig, make sure
> > > > test device DT nodes are described in the following way for virt machine:
> > >
> > > Oh well, that is a lot more churn than a just works driver, and
> > > will also pull it dependencies like regmap which quite blow up the
> > > kernel size.  But I guess that is where modern Linux drivers are
> > > heading, so I'm not going to complain too loud..
> >
> > The core issue is that putting random register writes in DT doesn't match
> > the hardware.  And the doctrine with DT has always been that it's supposed
> > to represent the actual hardware.  On FPGA bitstreams or ASICs that have
> > the teststatus/testfinisher IP block, there really is an IP block out
> > there - it's not just a bare register.
> >
> > If you update your driver to note that this is a SiFive IP block rather
> > than a "RISC-V" IP block, I'll ack it.
> >
> 
> The SiFive Test device has only one register at offset 0x0 and three
> possible magic values (0x3333, 0x5555, and 0x7777).
> 
> The SYSCON based Reboot and Poweroff driver do exactly the same
> thing what Christop's virt machine poweroff driver does so we are not
> doing "random register writes" via DT.
> 
> In fact, using SYSCON based Reboot and Poweroff we are actually
> describing the Reboot and Poweroff mechanism directly in DT without
> adding a complete driver for just one register write. This means we
> are totally aligned with "DT doctrine" and over here we going one-step
> more by describing Reboot and Poweroff mechanism in DT.
> 
> A quick GREP shows that the SYSCON Reboot and Poweroff drivers
> are quite widely used in ARM, ARM64 and MIPS architectures. Some of
> the  SOCs using these drivers are: Samsung Exynos, HiSilicon Hi3660,
> HiSilicon Hi6220, Rockchip RK3xxx, AppliedMicro XGene, Broadcom
> BCM33xx, Broadcom BCM63xx, etc. Majority of ARM/ARM64 SOCs
> these days use the PSCI based SYSTEM RESET and SHUTDOWN
> methods so we might not see more Reboot and Poweroff drivers for
> ARM world.
> 
> IMHO, we should definitely avoid adding a driver to Linux when there
> a generic driver already available. This helps in kernel maintenance
> in long-term.

I guess I should have finished reading the thread...

I agree with both of you. :) The DT binding should match the h/w as Paul 
says. However, a h/w specific binding can easily map to a generic driver 
if a given client OS has one. That probably hasn't been done yet for 
syscon-poweroff, but should.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
