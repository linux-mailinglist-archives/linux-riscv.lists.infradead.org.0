Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE29C30F0
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 12:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3W6Z7e0cqFWtf8EodQbhD0BdRs8KhdBHB9kAUXjC1c=; b=NqG5vEOevPF3xa
	9DEIk60rTom9xu+saG15ar+bXmPq9vlfnHCM4/YKz/h8h6MF61m1KJTnApaTgCrUmosip3cykr/c2
	psuCUwacwhwEBCZyAFtqUh9Xqdzi0AgiFRr4tt9mYlppMsDPcmf5G7wLprPGKKDP+Z5qhCOGuko7F
	QV/wzWqsUzNXrburWGurzpV6gw211AB8GCg2D2h04NKj5Qd7McYcMnazz8Mp3QnsFCF4Hvou7uT6z
	EB+DV5gvSyNzEWYlJGGA1dZwe276Rlo6SVWrxPwMbZrQAx5MAC+Wc3ytYqPv8hiXbi9UgOhcw1K2O
	oUPuaqRqdFJjGP9tPlXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFF6p-0007Q3-TK; Tue, 01 Oct 2019 10:10:19 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iFF6m-0007Pg-Fv; Tue, 01 Oct 2019 10:10:16 +0000
Date: Tue, 1 Oct 2019 03:10:16 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Message-ID: <20191001101016.GB23507@infradead.org>
References: <20191001002318.7515-1-atish.patra@wdc.com>
 <20191001070236.GA7622@infradead.org>
 <b0c39a9895698d74e2f44eb1f2faed46eee54bc3.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0c39a9895698d74e2f44eb1f2faed46eee54bc3.camel@wdc.com>
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, "hch@infradead.org" <hch@infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 08:22:37AM +0000, Atish Patra wrote:
> riscv_of_processor_hartid() or seems to be a better candidate. We
> already check if "rv" is present in isa string or not. I will extend
> that to check for rv64i or rv32i. Is that okay ?

I'd rather lift the checks out of that into a function that is called
exactly once per hart on boot (and future cpu hotplug).

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
