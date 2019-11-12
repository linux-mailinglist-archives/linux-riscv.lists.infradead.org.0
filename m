Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AB6F874D
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 05:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9pbOeGgBcYIfwxeP2XFnADv+Vr9M9TfeEjbEZPEIPs=; b=a5+Rh+NVdJAR/M
	oT6l7HrSvu6nOUajKk+d8U9/DbPPyoQss27sWaC4bO9HnM7sufBGJlsStRFnnRg8o2eYgohybNM1u
	i8NtBmFHJ3D/LDjo1Ze94tV160iolNhCSDOnYLV60drJe8VhHUyCAEeqsF2f4TMddDfgitmvEsHIE
	xdbY0MSBWrU1CXRj5jO5nY6w3bzAzEtoI6zIgos5KaNtcDUEoa1OsOj2V/cCZck2e2+QY+oPr42mc
	jjT9HcdSsGA0PsVRgQT2yIscDnaKL9sEeYL9ad7nqBSx1A4Ad1wRSI8ViS5lIYI8kKR+/u0T9Xodw
	RaKkGyLIw+rjirTUMdNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUNbp-0000eH-Ae; Tue, 12 Nov 2019 04:16:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUNbm-0000da-62
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 04:16:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so1440831wmk.3
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 20:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W50KQG2LFA7dHByW0G4rq+4w30ZkeUHgi/q749Efz9c=;
 b=E0hRKU/Dadwcx5lWC6Ebg2wEBHzcFiZavDG8bsoKpnC1H225E6HAfLRzGIpXXPXr/K
 /n944XNNZk2M0OaMQTi858v3bUpjhR8cMD14PV85iO2EWbn36gQ6k3sMV79xxo1hvIDE
 WkbH35o2w7c/D9v/+tX54m+90eyGuSkkXRrGRV6+pzyOGSFPmvrYclzsIlFwou7DNiCz
 FyGtGRS3DyikeLyPKb94A2gg7ngVEpp4+2k6CYXAI053kJnhL/9Uh9mTLeXbh+4Fmcza
 /QCGAh/HrSMZ27VizL2GoblO5awCKHHX1yBN+S9MT7xYNmrKeOKEPuV2cOGonAEXjzsv
 OYKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W50KQG2LFA7dHByW0G4rq+4w30ZkeUHgi/q749Efz9c=;
 b=seras2drYCZNBVs3ImjcGfIK31uxsMyy9D5sg4CtPBDaKBnd2SH1rWCrsT39aaA9eB
 PN3ZFtqdn1MSwJnPbBF56m8udnLswEmOQBryWBLXiQSbE18S6fmQiLVY8g7EdZvhhR8b
 OHMr1L5lOWCwfEM+cves5TJJbMPMjJsTTSO38dMrgXEcGYbA5T21KqSZa0pyFRknlgWe
 HUlLj6P8dErazFR/W4mJZyH7hup0RbBV9yoX9OoBr0Em0TT8kaKdYJ049V7i+k1Lke/m
 aEz8TFmep9LFs8iOimVPYlFuvYOhtsp7rXW/d2AZg2CSLiA/73gnJYUjZ7YxEqc8chDl
 /Qlg==
X-Gm-Message-State: APjAAAUQ4meOtYHsPQvSZu0js0IQZ+dRHijuHyZvwc0umWOIe9FLeigE
 V1bm46dM3KQGXJIldb7VU7+ZEXN734A2U3HAE6Kzfp2WP8I=
X-Google-Smtp-Source: APXvYqxUyN+ibz5Y/rVkCie2tTUD7Oq+mca7VUbRYcUXzCivhJSFkdhIOnQeiyijk6BsUunYFgG1TWWyTYC7BV+GO9s=
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr1791779wmf.24.1573532204655; 
 Mon, 11 Nov 2019 20:16:44 -0800 (PST)
MIME-Version: 1.0
References: <20191107212408.11857-1-hch@lst.de>
 <CAAhSdy3SGAkOFMhx320KJdPDh6c=qcKqCZ=qrXNKBGtejpZwSA@mail.gmail.com>
 <20191111161217.GA19157@lst.de>
 <alpine.DEB.2.21.999.1911111717320.32333@utopia.booyaka.com>
In-Reply-To: <alpine.DEB.2.21.999.1911111717320.32333@utopia.booyaka.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 12 Nov 2019 09:46:33 +0530
Message-ID: <CAAhSdy2Lki2rZeNJyH6p0RKWjd6O+DboDE_mq8rHzXA0JRQ=7g@mail.gmail.com>
Subject: Re: QEMU RISC-V virt machine poweroff driver
To: Paul Walmsley <paul@pwsan.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_201650_247598_873DC682 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 10:50 PM Paul Walmsley <paul@pwsan.com> wrote:
>
> On Mon, 11 Nov 2019, Christoph Hellwig wrote:
>
> > On Mon, Nov 11, 2019 at 05:06:24PM +0530, Anup Patel wrote:
> > > We really don't need this driver. Instead, we can simply re-use
> > > following drivers:
> > > mfd/syscon
> > > power/reset/syscon-reboot
> > > power/reset/syscon-poweroff
> > >
> > > Just enable following to your defconfig:
> > > CONFIG_POWER_RESET=y
> > > CONFIG_POWER_RESET_SYSCON=y
> > > CONFIG_POWER_RESET_SYSCON_POWEROFF=y
> > > CONFIG_SYSCON_REBOOT_MODE=y
> > >
> > >
> > > Once above drivers are enabled in your defconfig, make sure
> > > test device DT nodes are described in the following way for virt machine:
> >
> > Oh well, that is a lot more churn than a just works driver, and
> > will also pull it dependencies like regmap which quite blow up the
> > kernel size.  But I guess that is where modern Linux drivers are
> > heading, so I'm not going to complain too loud..
>
> The core issue is that putting random register writes in DT doesn't match
> the hardware.  And the doctrine with DT has always been that it's supposed
> to represent the actual hardware.  On FPGA bitstreams or ASICs that have
> the teststatus/testfinisher IP block, there really is an IP block out
> there - it's not just a bare register.
>
> If you update your driver to note that this is a SiFive IP block rather
> than a "RISC-V" IP block, I'll ack it.
>

The SiFive Test device has only one register at offset 0x0 and three
possible magic values (0x3333, 0x5555, and 0x7777).

The SYSCON based Reboot and Poweroff driver do exactly the same
thing what Christop's virt machine poweroff driver does so we are not
doing "random register writes" via DT.

In fact, using SYSCON based Reboot and Poweroff we are actually
describing the Reboot and Poweroff mechanism directly in DT without
adding a complete driver for just one register write. This means we
are totally aligned with "DT doctrine" and over here we going one-step
more by describing Reboot and Poweroff mechanism in DT.

A quick GREP shows that the SYSCON Reboot and Poweroff drivers
are quite widely used in ARM, ARM64 and MIPS architectures. Some of
the  SOCs using these drivers are: Samsung Exynos, HiSilicon Hi3660,
HiSilicon Hi6220, Rockchip RK3xxx, AppliedMicro XGene, Broadcom
BCM33xx, Broadcom BCM63xx, etc. Majority of ARM/ARM64 SOCs
these days use the PSCI based SYSTEM RESET and SHUTDOWN
methods so we might not see more Reboot and Poweroff drivers for
ARM world.

IMHO, we should definitely avoid adding a driver to Linux when there
a generic driver already available. This helps in kernel maintenance
in long-term.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
