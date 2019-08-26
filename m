Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C8A9C999
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 08:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2YRNKBbqzG7KUzvVU8w4G6LmpyCa2N/FCDVPhSa68Y=; b=GDw+himno/WRss
	ZUb/SerH9gBo7pcubbpDysvYOlCFvjRIe/1hXJhBWV2wFqY2wb/XkQ02Dlwi38879qvD9yW9AUZaG
	qVCy7ZbHYxrxof24RVi28zF09d1yJEidehCfwXOeG8nndIsIBfq2Bs5U7e+8UUctod1cSpm+mL2PW
	rc2QXWByW1Q/FCBRUevjSfhEpwKVQec7XvV7LoHlT7pjQs35fnRGQZc4udORc08QPbiOgBJjhJO8A
	He2+IKNiPF6AOifCJoPkk4YuYq3mu/hzOnOnI7OfNvHk77AdnqBzbAY/TcBHZfzSa62JQQ4XggI6o
	Y5Cq3oujffGitWJFYiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i28k1-0001J5-WF; Mon, 26 Aug 2019 06:44:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i28ju-0001Il-6l; Mon, 26 Aug 2019 06:44:30 +0000
Date: Sun, 25 Aug 2019 23:44:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v2] RISC-V: Fix FIXMAP area corruption on RV32 systems
Message-ID: <20190826064430.GD29871@infradead.org>
References: <20190819051345.81097-1-anup.patel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819051345.81097-1-anup.patel@wdc.com>
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
Cc: Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer, Paul - are you going to pick this up?  Seems like we've just
missed -rc6.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
