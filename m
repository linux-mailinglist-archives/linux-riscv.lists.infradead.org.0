Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D1C3CD99
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 15:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ymWVwDo+X4/YyOxOtbza/EQnGS1pOw2xHYwZ0kiwqk=; b=dk69qGdMMhSo7Q
	PypRODGbbRMTIE9ogL96un0m36epsZTa6zc1Ruxl1CyJFBVqRURDl9D71h9R7JeYIW9vSpagL0HHb
	cl4nHwoxTEyHE+JlsmO7h7ZE8Cuno2lnylXTSksP3LKP6BxDifjlbvrYwv9w4ECuvjvBzAMpfZAMH
	zLr0dDLD+fPQeZdBvYP+qphC0s5hWHKL/HAwZODX1q7DznNAr77MD7EhG7n8r5S7czHfY2w4yaLp5
	tLCINtN+auBvj2K+jGDKlGFif2SnMERo/Wr8qQH/hhZBo63UN4AE39DcVbxRYnNJP2HImUedtzdaz
	ojegVYhREAVqncAfMFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahB0-0003DP-GR; Tue, 11 Jun 2019 13:51:02 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahAw-0003Cy-Do
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 13:50:59 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3148468AA6; Tue, 11 Jun 2019 15:50:31 +0200 (CEST)
Date: Tue, 11 Jun 2019 15:50:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] riscv: export pm_power_off again
Message-ID: <20190611135030.GB28532@lst.de>
References: <mvm36kgpg9z.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvm36kgpg9z.fsf@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_065058_614644_F77DEDC4 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 12:28:40PM +0200, Andreas Schwab wrote:
> Commit bf0102a0fdd9 ("riscv: call pm_power_off from machine_halt /
> machine_power_off") removed the export of pm_power_off, but it is used by
> several modules:
> 
>     ERROR: "pm_power_off" [drivers/mfd/rk808.ko] undefined!
>     ERROR: "pm_power_off" [drivers/mfd/max8907.ko] undefined!
>     ERROR: "pm_power_off" [drivers/mfd/axp20x.ko] undefined!
>     ERROR: "pm_power_off" [drivers/char/ipmi/ipmi_poweroff.ko] undefined!
> 
> Signed-off-by: Andreas Schwab <schwab@suse.de>

None of these drivers should be buildable on RISC-V.  Please work with
the maintainers to fix this up.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
