Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE4B9CE1E
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 13:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdPsca/hzoUeJohmG2h5BWzyP6Ts0GjGQEJrl4oBMf0=; b=VeSErN2AUycYM4
	Vx1HvxgU8YU3rOJ8nRPoZC6PGj/DJ/30jPlZWVAHLR4K8x//5AMOgjR79NgC5YY58SYq7dqmpZov5
	/CubgFmvWUb6sXdKOBBzy0OGusez0sIhaWz1vJSGOmgxlA5zAcsR7ejq3pJeIE8CEwjgrqyo+iVQC
	lRDWKbotJr4BOpfxY5+DxnPL2Ew+nGDDjqlQOXJpWDSekREUsER6kzn21gITrKaIHSS05iy0nasci
	oeLTDlqEWVJ9kz1AyQBO4NNn0HxDMfDMsJ2R3TweuBAHHn3DR/gTDmmpbYouB1BlxFn47qNNIR1np
	0ZYqBwkgUL9/ggDnwo8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DBw-0005RO-E2; Mon, 26 Aug 2019 11:29:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DBs-0005R0-S4
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 11:29:42 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0EAB468AFE; Mon, 26 Aug 2019 13:29:38 +0200 (CEST)
Date: Mon, 26 Aug 2019 13:29:37 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH 3/6] riscv: optimize send_ipi_single
Message-ID: <20190826112937.GB15002@lst.de>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-4-hch@lst.de>
 <570f358ed76092a4072b5acedd4ddb34c318ff9b.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <570f358ed76092a4072b5acedd4ddb34c318ff9b.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_042941_061414_79AD8C08 
X-CRM114-Status: UNSURE (   9.26  )
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "hch@lst.de" <hch@lst.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 12:26:26AM +0000, Atish Patra wrote:
> >  static void send_ipi_single(int cpu, enum ipi_message_type op)
> >  {
> > -	send_ipi_mask(cpumask_of(cpu), op);
> > +	int hartid = cpuid_to_hartid_map(cpu);
> > +
> > +	smp_mb__before_atomic();
> > +	set_bit(op, &ipi_data[cpu].bits);
> > +	smp_mb__after_atomic();
> > +
> > +	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
> 
> The only cost save I see is you don't have to cpumask_clear anymore.
> Is there any other cost save ? If not is it worth duplicating the code
> ?
> 
> May be I am being too pedantic here.. :) :)

It avoids the additional potentially huge cpumask, and generally makes
the code a lot more obvious.  This might not really be needed, but
helps with sharing the code nicely with the native IPI path.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
