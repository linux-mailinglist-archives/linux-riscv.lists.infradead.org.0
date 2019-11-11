Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315CBF7139
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 10:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOxkxEXuoevQ1i01aOMp9TH5uTKKg4mYIPfM4bYdKpA=; b=olpA1XZd4OqkYQ
	yWRf2mY/SJSZxgoyyCTUWy9yAnmVblXEfGV8QiUV6Y73WwqQyRLcWJu6NKdO7fh3u+FLWEGSeOSLc
	T+vVc0yAUqRP70t9gQwR6awRx5EVjFsDuaF4a6yb0H6ZOOpMFFQmZwqrwrXNYR8ESqc454KTVQ9oP
	Pd/6ENnrybQQTnjedS10pMo1gq6gCMlvrqlymjdjHiw5fXZOsTdZXTgJ6LRVw6YiexaRpUOEy1AGJ
	JNodeIfeosXFkO/MmGsvAuGK7ldhoj5ZcepmIlc8Y+MrPZfp920OMaKNrMYseGPIC+Alwn4jlTbXl
	HDdLF6t2ceMcXt4W5Ydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6QH-0007Za-Pk; Mon, 11 Nov 2019 09:55:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iU6QE-0007ZE-93; Mon, 11 Nov 2019 09:55:46 +0000
Date: Mon, 11 Nov 2019 01:55:46 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v3] riscv: Use PMD_SIZE to repalce PTE_PARENT_SIZE
Message-ID: <20191111095546.GA23301@infradead.org>
References: <1573203640-6173-1-git-send-email-zong.li@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573203640-6173-1-git-send-email-zong.li@sifive.com>
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
Cc: anup@brainfault.org, linux-kernel@vger.kernel.org, hch@infradead.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 01:00:40AM -0800, Zong Li wrote:
> The PMD_SIZE is equal to PGDIR_SIZE when __PAGETABLE_PMD_FOLDED is
> defined.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
