Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA21380F8F
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 02:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1D5saLmCApZmAjklymTxa/LFKuUH1X5MY3EBLgzKvXA=; b=YuKLMAaYA9uxJQ
	fQq0McfhWPU73Pze8teTnaVtP4cERDa5rb3p+UXX3VCH4BNorxmdhlEvtFRH+IU3rgy/ezUKukX+m
	IrGsd8gxQ6V+IEYoclbWLqpWykXFsLx8OCdcr1u/I+ovwkjffcF9NaSvnyYHH/i37cLvAKt15g1ij
	Zy19Fk1qtr1X0gjUt337sr+SeHQtRuVJEO1tbuAez03Bpjkqguw7lZHn71iz3Rzh13STkn55GtZdv
	OBFfnM4E3Rh4jSDVqL0HsB85S8tAvReS98kwXdTc1axxjYK+3lrrhpOPFt3D4NG2PTdh/tJBuqsP9
	6brJJMKbatYTl/1OQ6uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huQZj-0005dR-Ra; Mon, 05 Aug 2019 00:10:08 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1huQZf-00055K-CZ; Mon, 05 Aug 2019 00:10:03 +0000
Date: Sun, 4 Aug 2019 17:10:03 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Sheriff Esseson <sheriffesseson@gmail.com>
Subject: Re: [PATCH] Documentation: virt: Fix broken reference to virt tree's
 index
Message-ID: <20190805001003.GA30179@bombadil.infradead.org>
References: <20190804154635.GA18475@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804154635.GA18475@localhost>
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "open list:BPF \(Safe dynamic programs and tools\)" <bpf@vger.kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 "open list:BPF \(Safe dynamic programs and tools\)" <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 "open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Yonghong Song <yhs@fb.com>,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Aug 04, 2019 at 04:46:35PM +0100, Sheriff Esseson wrote:
> Fix broken reference to virt/index.rst.
> 
> Sequel to: 2f5947dfcaec ("Documentation: move Documentation/virtual to
> Documentation/virt")

'Sequel to'?  Do you mean 'Fixes'?

> Reported-by: Sphinx

Reported-by is used for people.  See
Documentation/process/submitting-patches.rst section 13.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
