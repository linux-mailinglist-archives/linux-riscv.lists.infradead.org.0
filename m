Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45877C0E06
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thHPCBCyMfBKR7tWG7FjOpouR+VaodTh0kvoDzQR/04=; b=RQajHWzUCEPVkO
	nXny8hirLcr1CuEbmeyVBDpxfQKG4eL0DkXgIGd25wsFP2Ij/lHdDcDlKXArqy2uZCEJwyxO5Onsp
	w81PelPi3zYSGEC4tXP9zy6fnMfsxisbckR0RYJlnHFb+wjhbThVvvA8OQNSSSZuDOJj6CJ2+K+cJ
	PJluCOX0NjjMZ/zw9PHOr/NH/bI6uWMubFu54/wq0fkgZ7kRWbqoJ5D3dEDisyrJwVQdZ4Y3ZKnd0
	cj68K4trWf3/RkjfQjk5in4EXeV50N3wyjsrgzKFyNlBitBGoNKAggZterPgSfUc4fhfnURTN2t15
	0ZeCTzOQwhkfVtdzwp0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyi0-0004SJ-7j; Fri, 27 Sep 2019 22:27:28 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDyhu-0004O8-1H; Fri, 27 Sep 2019 22:27:22 +0000
Date: Fri, 27 Sep 2019 15:27:22 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 2/4] rsicv: avoid sending a SIGTRAP to a user thread
 trapped in WARN()
Message-ID: <20190927222722.GG4700@infradead.org>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 08:45:15AM +0800, Vincent Chen wrote:
> On RISC-V, when the kernel runs code on behalf of a user thread, and the
> kernel executes a WARN() or WARN_ON(), the user thread will be sent
> a bogus SIGTRAP.  Fix the RISC-V kernel code to not send a SIGTRAP when
> a WARN()/WARN_ON() is executed.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
