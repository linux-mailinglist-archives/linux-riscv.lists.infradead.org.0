Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F38F96EEB
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 03:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVjRpURri37C5IXyQjIw61zji96wB0Xt43o/cgCDGlE=; b=dENYczp4kU/BIh
	Ub415EgmUDM2ztk76shWAJfOGsln2pEKciew3ENgxQ3jM7OrMWrcJLQJvnukmmZKE+Zaps9UneIC+
	3kWNvXURZxbIDhERCNqcBOi5mVXuPdIWG3VdsBZUMOFuAjk9hXBMT7t468ZHjzOwXMUHN1+VhYf8l
	6yp3LotyG5hZSxJ4IUd1Q/NtFctoYojGP1fQ9bf7enKLpBQR9ZNe1XZyLgh0Kw82p+M4aKpZ4RU1f
	SHuAHEawkbem7JMvtO/H4iSb3+YP/CgvUDP69zSyq7jCQH16ZAE4YYU5tGDhFMM89HvIFoicCYT1e
	6Pqc95AgUJhUH6pVdmEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FSL-0004W8-8J; Wed, 21 Aug 2019 01:30:33 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FSB-0004Nf-Gt
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 01:30:25 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7L1HIrU040654;
 Wed, 21 Aug 2019 09:17:18 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 21 Aug 2019
 09:29:22 +0800
Date: Wed, 21 Aug 2019 09:29:22 +0800
From: Alan Kao <alankao@andestech.com>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190821012921.GA30187@andestech.com>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
 <20190820092207.GA26271@infradead.org>
 <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7L1HIrU040654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_183023_813823_F4AF528E 
X-CRM114-Status: GOOD (  15.76  )
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 08:28:36PM +0000, Atish Patra wrote:
> On Tue, 2019-08-20 at 02:22 -0700, hch@infradead.org wrote:
> > On Tue, Aug 20, 2019 at 08:42:19AM +0000, Atish Patra wrote:
> > > cmask NULL is pretty common case and we would  be unnecessarily
> > > executing bunch of instructions everytime while not saving much.
> > > Kernel
> > > still have to make an SBI call and OpenSBI is doing a local flush
> > > anyways.
> > > 
> > > Looking at the code again, I think we can just use cpumask_weight
> > > and
> > > do local tlb flush only if local cpu is the only cpu present. 
> > > 
> > > Otherwise, it will just fall through and call
> > > sbi_remote_sfence_vma().
> > 
> > Maybe it is just time to split the different cases at a higher level.
> > The idea to multiple everything onto a single function always seemed
> > odd to me.
> > 
> > FYI, here is what I do for the IPI based tlbflush for the native S-
> > mode
> > clint prototype, which seems much easier to understand:
> > 
> > http://git.infradead.org/users/hch/riscv.git/commitdiff/ea4067ae61e20fcfcf46a6f6bd1cc25710ce3afe
> 
> This does seem a lot cleaner to me. We can reuse some of the code for
> this patch as well. Based on NATIVE_CLINT configuration, it will send
> an IPI or SBI call.

IMHO, this approach should be avoided because CLINT is compatible to but
 not mandatory in the privileged spec.  In other words, it is possible that
a Linux-capable RISC-V platform does not contain a CLINT component but
rely on some other mechanism to deal with SW/timer interrupts.

> 
> I can rebase my patch on top of yours and I can send it together or you
> can include in your series.
> 
> Let me know your preference.
> 
> -- 
> Regards,
> Atish

Best,
Alan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
