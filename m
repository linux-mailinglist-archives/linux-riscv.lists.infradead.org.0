Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BE097333
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 09:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wyoqPwIVNBrcl+9m0cENZ3S0XxblgtDUg3oALCzjkE=; b=k1X3gUEM87cF0+
	5jMLwZiEDhmhzHnbortWchYzNyROHi3vTNmf98ZciRYw4elNxlpDeCDqgGDjwKVR3SZooq1zk/Gwo
	TKoSxdJObQKoAFtlcM+CQY/z11v1/ZT51Ke5FuLF2ECuOL3sk5vVQ5HvHcJPBbI+5aeilajt+UPdz
	VkGZXO6mKnyztjO2KrpCZqeKUJvTShnH/NM/I3v21YQHjmSBrTLU3kb1d4N5pnCvzrVhQBlJjAc1y
	7No/piMrfU/kDQEQE+lrptob2lq9PpEama1p+qfJDAT1EzXN5fVcJZCVF9tYHWqI37GFRADA5tyiR
	o9dTIdX8FkxZ0yrfjUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KtW-0008Ou-HX; Wed, 21 Aug 2019 07:18:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0KtT-0008Oa-8j; Wed, 21 Aug 2019 07:18:55 +0000
Date: Wed, 21 Aug 2019 00:18:55 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190821071855.GA32145@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
 <20190820092207.GA26271@infradead.org>
 <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
 <20190821012921.GA30187@andestech.com>
 <20190821014052.GA25550@infradead.org>
 <CAAhSdy0GX9BbayYScsm2_Mvi0hDH-y0UVvTWFGLbKY-rE8TfZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy0GX9BbayYScsm2_Mvi0hDH-y0UVvTWFGLbKY-rE8TfZQ@mail.gmail.com>
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
 Alan Kao <alankao@andestech.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:22:48AM +0530, Anup Patel wrote:
> I agree that IPI mechanism should be standardized for RISC-V but I
> don't support the idea of mandating CLINT as part of the UNIX
> platform spec. For example, the AndesTech SOC does not use CLINT
> instead they have PLMT for per-HART timer and PLICSW for per-HART
> IPIs.

The point is not really mandating a CLINT as know right now.  The
point is to mandate one way to issue IPIs from S-mode to S-mode,
one way to read the time counter and one way to write the timer
threshold.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
