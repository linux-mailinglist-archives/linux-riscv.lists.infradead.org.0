Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569B3E2B1A
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 09:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iI/qaHouqJlHa6Sy3V+2j/NcCYys1kj3UgeDpQWFDT4=; b=SvWrQBAXcs4lJx9BkvsJMR2wa
	wmCBBK/+qeeMdKsV4AclmV8hOXfS/ME8eoktl3sxcRpqLG8GOt7ga9dn5RihfuZNPxIgC+EgZlycP
	oAas27/02YhYDze1l/eVVRoyAmQ928y5thojEyaLMYlG/nWhWR2N/oFzFbVY4DLwWC5b7b5K0NT2R
	9lkmXGzEPVhzPCxS+xR9Ic6rWivqP1HralQSpMjv+YacOV70hIsuYzI7rZQwzyymGnWFSSCLpo4+5
	ijsP22Ajrh/oMDpFjmMdjF1QpYAt0C4ahvtrCYpwt20iQPzdiT1o7unMn1wjnrjoQOqIXhPtT00PY
	tB+Ij2Mkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXXM-0008WT-9E; Thu, 24 Oct 2019 07:28:00 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXXI-0008VV-Ri
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 07:27:58 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNXXE-0002IH-M6; Thu, 24 Oct 2019 09:27:52 +0200
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in
 =?UTF-8?Q?plic=5Finit=28=29?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 08:27:52 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191024070311.GA16652@infradead.org>
References: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
 <mhng-aefb3209-29c4-46db-8cf2-e12db46d9a6e@palmer-si-x1c4>
 <20191024013019.GA675@infradead.org> <20191024075116.48055961@why>
 <20191024070311.GA16652@infradead.org>
Message-ID: <67fff4d811c27017e7b34267365c8c0f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: hch@infradead.org, palmer@sifive.com,
 paul.walmsley@sifive.com, alan.mikhak@sifive.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_002757_042586_699AED5E 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: jason@lakedaemon.net, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, alan.mikhak@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-10-24 08:03, Christoph Hellwig wrote:
> On Thu, Oct 24, 2019 at 07:51:16AM +0100, Marc Zyngier wrote:
>> > > > Will this need to change for RISC-V M-mode Linux support?
>> > > >
>> > > > 
>> https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/
>> > >
>> > > Yes.
>> >
>> > For M-mode we'll want to check IRQ_M_EXT above.  So we should just
>> > merge this patch ASAP and then for my rebased M-mode series I'll
>> > fix the check to do that for the M-Mode case, which is much 
>> cleaner
>> > than my hack.
>>
>> Does this need to be taken as a fix, potentially Cc to stable? Or is
>> that 5.5 material?
>
> So I though that the S-mode context were kinda aways to be sorted 
> before
> M-mode, but I can't find anything guranteeing it.  So I think this
> actually is a fix, and getting this queued up in the next -rc would
> really help me with the nommu stuff - otherwise we'd need to take it
> through the riscv tree for 5.5 to avoid conflicts.
>
> Btw, here is my:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
>
> for the patch.

Thanks for that.

Alan, if you can respin this patch with an updated commit message, I'll 
queue
it with a couple of other nits I have lying around, and send it to 
Thomas by
the end of the week.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
