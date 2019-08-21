Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA9796E7A
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 02:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmR9WqZnMIJukTY9YfubS5ZZkSygRtcmwxWI0fYLsdM=; b=Xfyxew8N/cberv
	7kfloDTqm/GXrG6v9NKV64RjksWzH9j9nziJH7rvbLAEyxLR0SygcN7Qtj6FLJeVqRAZhm7If0Lsd
	jQAN1LM2SOKFGBbLiGqFm/8Hi7X2uv+geUal8bnMuQJ69M4Eao/cnbIiWvFkk0qrYvylbaS9RVrzZ
	TPIgTMPi3zCJUbtAm7IHOI/uWtDT38TQPjLzAbmo41dHFxHOUIZLlsChstdXS1TGxP9TmqcPiq5Fa
	DHK6+R7CyxxWJf8tPtKj0dOYNRN+FwHVEQyiK6qXt/CwmHrfUb/+GWB0F/e4DWvdganUMBrgNeTuR
	aocsCQFO6zKtFUhVdK0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0EiB-00080Y-7z; Wed, 21 Aug 2019 00:42:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ei7-0007z7-Nl
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 00:42:49 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7B5F168B20; Wed, 21 Aug 2019 02:42:41 +0200 (CEST)
Date: Wed, 21 Aug 2019 02:42:41 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
Message-ID: <20190821004241.GA20250@lst.de>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-9-hch@lst.de>
 <fa0570285684e03587ee8f09b86f0d058d757c55.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa0570285684e03587ee8f09b86f0d058d757c55.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_174247_925254_8A175598 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:24:31AM +0000, Atish Patra wrote:
> > +static inline void clint_set_timer(unsigned long delta)
> > +{
> > +	writeq_relaxed(clint_read_timer() + delta,
> > +		clint_time_cmp +
> > cpuid_to_hartid_map(smp_processor_id()));'
> 
> This is not compatible with 32 bit mode. IIRC, timecmp is a 64 bit on
> RV32 as well. Here is the implementation in OpenSBI.

writeq alwasy writes 64-bit anyway, but the deltas is just 32-bit
per the Linux clocksource API.

> > +static inline cycles_t get_cycles(void)
> > +{
> > +#ifdef CONFIG_64BIT
> > +	return readq_relaxed(clint_time_val);
> > +#else
> > +	return readl_relaxed(clint_time_val);
> > +#endif
> 
> Same comment as above. Both RV32 & RV64 bit have 64 bit have 64 bit
> precission for timer val. You have to read 32 bits at a time and "or"
> them to get 64 bit value. Here is the implementation from OpenSBI

But the Linux API is only going to read 32-bits of that, same as
for the rdtime pseudo-instruction used by the current SBI-based code.

Note that I've reworked this area a bit for v4, which I'm going to
send out soon, including cleanups to the existing code to make a few
of these things more obvious:

http://git.infradead.org/users/hch/riscv.git/shortlog/refs/heads/riscv-nommu.4

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
