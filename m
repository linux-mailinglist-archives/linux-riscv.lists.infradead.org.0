Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC568C55C
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz/qqreyU5gy+Hbs+ddmrF5tfaSpj4wPWDo9rRuRK8c=; b=KyUfb6RPPEeaEJ
	SXBelW0Z1ppb4gVTOw6tZJmiwOMBGAxpsJL33QUx4H4E2/Ra5/31CggGqnaAaVjMTfltMPYqA4g8L
	EQ5Ag6uJky/S4oFDxkDY2bAtNYB3Qp7ZcqYlVFBajQ4vunCdTnttk3xW6oH4MBfYEn9hwl4fy4eZD
	g01gI4iA5VK/OZOOBdd/SnHPmw/Z60BO0fSmFKJckW8hB9Cqk81MakzpyVP/JFUaFdP2nHUUmE4tS
	5HGr1EqDLxFvTqr8CL1ZIbqWzd9+8xbmaFFF9TkIrEmviqbCAuoeoSRzD7eUfOHZEdG8leXQOv/TR
	G5PPrdxA5B4UIXEPcERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxheS-0001cF-UZ; Wed, 14 Aug 2019 01:00:32 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxheP-0001bp-0v
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:00:30 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7E0mjaZ017904;
 Wed, 14 Aug 2019 08:48:45 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 14 Aug 2019
 09:00:13 +0800
Date: Wed, 14 Aug 2019 09:00:14 +0800
From: Alan Kao <alankao@andestech.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 13/15] riscv: clear the instruction cache and all
 registers when booting
Message-ID: <20190814010013.GA18655@andestech.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-14-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813154747.24256-14-hch@lst.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7E0mjaZ017904
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_180029_321352_FC6255B0 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Tue, Aug 13, 2019 at 05:47:45PM +0200, Christoph Hellwig wrote:
> When we get booted we want a clear slate without any leaks from previous
> supervisors or the firmware.  Flush the instruction cache and then clear
> all registers to known good values.  This is really important for the
> upcoming nommu support that runs on M-mode, but can't really harm when
> running in S-mode either.  

Sure.

> +#ifdef CONFIG_FPU

But it doesn't really mean that the running system has an FPU given CONFIG_FPU
enabled.  Normally the existence of an FPU is checked in riscv_fill_hwcap by
searching device tree, where the code looks like


bool has_fpu = false; // this one is global
...
#ifdef CONFIG_FPU
        if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
                has_fpu = true;
#endif


Or does CONFIG_FPU have a more intuitive meaning when CONFIG_M_MODE is enabled?

> +	csrr	t0, CSR_MISA
> +	andi	t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
> +	bnez	t0, .Lreset_regs_done
> +
> +	li	t1, SR_FS
> +	csrs	CSR_XSTATUS, t1
> +	fmv.s.x	f0, zero
> +	fmv.s.x	f1, zero
> +	fmv.s.x	f2, zero
> +	fmv.s.x	f3, zero
> +	fmv.s.x	f4, zero
> +	fmv.s.x	f5, zero
> +	fmv.s.x	f6, zero
> +	fmv.s.x	f7, zero
> +	fmv.s.x	f8, zero
> +	fmv.s.x	f9, zero
> +	fmv.s.x	f10, zero
> +	fmv.s.x	f11, zero
> +	fmv.s.x	f12, zero
> +	fmv.s.x	f13, zero
> +	fmv.s.x	f14, zero
> +	fmv.s.x	f15, zero
> +	fmv.s.x	f16, zero
> +	fmv.s.x	f17, zero
> +	fmv.s.x	f18, zero
> +	fmv.s.x	f19, zero
> +	fmv.s.x	f20, zero
> +	fmv.s.x	f21, zero
> +	fmv.s.x	f22, zero
> +	fmv.s.x	f23, zero
> +	fmv.s.x	f24, zero
> +	fmv.s.x	f25, zero
> +	fmv.s.x	f26, zero
> +	fmv.s.x	f27, zero
> +	fmv.s.x	f28, zero
> +	fmv.s.x	f29, zero
> +	fmv.s.x	f30, zero
> +	fmv.s.x	f31, zero
> +	csrw	fcsr, 0
> +	/* note that the caller must clear SR_FS */
> +#endif /* CONFIG_FPU */

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
