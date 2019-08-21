Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1344497D55
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 16:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19y6LI9VNPU6Rp3k3BZs+q0diP0ppdAcH7IwePaZEiU=; b=CmSK3yqtj0KVeJ
	yxOTNSxlZ6zIL9T01AhOvV7yJ7qO3Epd9UilbsiSmlyTsSZmqqGJHWE+K81X5iLTFRB07EA2XTP59
	ND6Irbyk8skxOECVuD7fgvaV2GxufE9Lu8xWorFD1EFXce/JI9huiGYzQjuUkrI8yhl2LIRwlQ2H0
	jAcABacqC58CcWEJzmkJOVoRP9lBPvSHABY4CxCGcie1f+bTbAodFJVHx+ChZMa4YaziGsI6JHrsN
	bDFDOKsJkQt/JIhSZqUVvFQBSjHVdwjwIs4qwmP9TuBYC4WJCJ3f9SIzGjGi0WybjcjYUNrwPB1Jm
	B2GWbwZRlQzDeB78p2LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RoG-00045G-Nb; Wed, 21 Aug 2019 14:42:00 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0RoA-00044n-UA; Wed, 21 Aug 2019 14:41:54 +0000
Date: Wed, 21 Aug 2019 07:41:54 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190821144154.GA4925@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <CAAhSdy3uQ=CSg4pHb_BYCEOh_MMTyLf8SW2o9SCn0UZDYwgGpg@mail.gmail.com>
 <171bb233718ba2897fa5fd48853721108825d22c.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <171bb233718ba2897fa5fd48853721108825d22c.camel@wdc.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

On Tue, Aug 20, 2019 at 08:29:47PM +0000, Atish Patra wrote:
> Sounds good to me. Christoph has already mm/tlbflush.c in his mmu
> series. I will rebase on top of it.

It was't really intended for the nommu series but for the native
clint prototype.  But the nommu series grew so many cleanups and
micro-optimizations by now that I think I'll split those into
another prep series and will include a version of this.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
