Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8034BAE38A
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 08:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbBKE4GxfwUcmYDuSshVNt51D260M57GzuaBwC7ZUh8=; b=l0IisdbQQ9PEIF
	PYSoz7xt2UMLRvBHtGQsWd1tbKXP5gke6+fdflFKBKjGf8Xs2PeexRN+3Clcc/q1PYROfq3o/JkWx
	72xOx8rhaiTNL+eY/oMi5YW1i9Zr68mbqcmAy9B1t/a0JZ7x0R1ZhfsBFbf9oCW932YolE7ldVfo8
	aWOxltLNu9ehhRts+b0Zj1eC25CKr5Qad79G9f/IWdnkn4ZgsdxvDSlBR9VQqeY4LQ0RxjSbRhpAM
	USMwF6O/gYTGa7T8GsuGVFe8YvEwaiJH3+3ta1CcX1wlw7/LCPYay4lBZP1AxZ6LFabNaMfjoXakw
	qFFmcWYSVhhiXWCK/iYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZQS-0005wV-Gv; Tue, 10 Sep 2019 06:14:52 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i7ZQP-0005wJ-51; Tue, 10 Sep 2019 06:14:49 +0000
Date: Mon, 9 Sep 2019 23:14:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] riscv: dts: sifive: Add ethernet0 to the aliases node
Message-ID: <20190910061449.GC10968@infradead.org>
References: <1567687574-22436-1-git-send-email-bmeng.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567687574-22436-1-git-send-email-bmeng.cn@gmail.com>
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 05:46:14AM -0700, Bin Meng wrote:
> U-Boot expects this alias to be in place in order to fix up the mac
> address of the ethernet node.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
