Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CDBC0DF8
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuAhiGNeEUr9nKXmifWAlpeHsyCkAmFbM2nyCdKvgLU=; b=YaEny90Ca44I2J
	f+3wbudn7FD6ckXpgbbrEc8xo+PybE4OYy8TTsglp5z2hF4/1Iw2azTGSRvIZNuOdhE3y7ParROZU
	c9zUt++0C++kd6QjCbTkT/VY5NplbdQ9K891byfQDGLlrMdMUrH8CbNcly6b+lz3tcKLtohQ8KSIH
	RZHSu7GpHYd8ecvvbXtwhO4F8USK7Y0zE6033KPJxKoDfU6NosnGHhxe9RjUBCfWKx0uDpjaab090
	EnyFsf2pEoNC7d0H+zMwQDogmlt3wZ2i7VLmmtcSMPcb5ndbM0OBMHukh14JOTdMqp0l9ezrnEO2M
	zSdszCxmr/yxXCTO3QGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDycj-0002oq-Ee; Fri, 27 Sep 2019 22:22:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDych-0002of-9D; Fri, 27 Sep 2019 22:21:59 +0000
Date: Fri, 27 Sep 2019 15:21:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [GIT PULL] RISC-V additional updates for v5.4-rc1
Message-ID: <20190927222159.GD4700@infradead.org>
References: <alpine.DEB.2.21.9999.1909271123370.17782@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1909271123370.17782@viisi.sifive.com>
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
Cc: linux-riscv@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 11:25:13AM -0700, Paul Walmsley wrote:
> Atish Patra (1):
>       RISC-V: Export kernel symbols for kvm

None of these have any current users, they should go in with the kvm
series once the virtualization spec has been finalized.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
