Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37CCCFDCC
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 17:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKnPFlKV9ni1gXrqbIys/Lwum8qfOVQrgXNQOBioFHc=; b=dQgBKWiu5Mk1K1
	8R2epYS0BtV5xIWjJiwFILLVwHt8SW5dZTYaRiP9TxVQD6OQsiYrMBHBtasZvKfY/C2sK13bXsbZQ
	Nm4Ra7Bd4C4EZa01BwlFT1cAbd0SF9Wj7QC0M4n4H1Z3I7c0OLA3zeXtX5P8tC4tK+VsZQNGlNU03
	xVHGJzjvS1utMX/WO7VRUdO7ApPGGQYqg7k5B/riweaZaogKwsIgt0mEXn/juEpx9zXCgvDm+0S72
	M0mv7uAleSXuKGep4YFG/wsd1MnNskbA6RA4pkCeWtUt36KLP46+GkkdnTHX781nVLj/9aJfrZIz3
	HwpxJ6GKkCOk9jxIrTdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrai-0005VV-PZ; Tue, 08 Oct 2019 15:40:00 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iHrag-0005VI-Su; Tue, 08 Oct 2019 15:39:58 +0000
Date: Tue, 8 Oct 2019 08:39:58 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v1 PATCH  1/2] RISC-V: Remove unsupported isa string info print
Message-ID: <20191008153958.GB20318@infradead.org>
References: <20191004012000.2661-1-atish.patra@wdc.com>
 <20191004012000.2661-2-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004012000.2661-2-atish.patra@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Johan Hovold <johan@kernel.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Alexandre Ghiti <aghiti@upmem.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
