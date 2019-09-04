Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388A4A7AC9
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 07:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJ7qw09JtjU+NREUZsDDAd/sLI6RgNlRw1QDgBrGfOU=; b=aPmkLq1jOcT5VZ
	kz2KtIxpoDbwH15q3Jk4Zhjvz55fHIRAbouBJ1j1eWr4fSONdREq8JixQ9YlR6CX3Da8AoTm3718c
	9W68qDkt5PHx2PTr7IRDiadTH7irGy2VJv8dCt07qu5k/iPPc6w/2aWTkjL9yqE3UwaLG3F1Wmv6J
	NSqVoO3r+tjwEG8LDToQW4x7pVkWT0MNaIuJ4PHrQPjTsGs1U+SWR9CXJbPDe7ZJ8sw6g+Ye6d/cT
	rgyxC7IU6NniJr4106EGpWhm7nq7CuCHJMoJsjUZVSSl1Z2PAHo2WjI1yacYm5ht1r/sQPSp9w/0J
	1QTQDxolWOSxKHNVSYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5O0B-0003J4-Nc; Wed, 04 Sep 2019 05:38:43 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i5O0A-0003Ik-6W; Wed, 04 Sep 2019 05:38:42 +0000
Date: Tue, 3 Sep 2019 22:38:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: Add Plan 9 support to the defconfigs
Message-ID: <20190904053842.GA11670@infradead.org>
References: <20190903233510.9846-1-palmer@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903233510.9846-1-palmer@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 04:35:10PM -0700, Palmer Dabbelt wrote:
> QEMU contains facilities for sharing directory trees between a guest and
> host that are based on plan 9's network filesystem.  This patch adds the
> relevant entries to our defconfigs to enable these, the most interesting
> of which is probably CONFIG_VIRTIO_PCI.

The subject line feels odd - it adds 9p support, which is the Plan 9
file system protocol (plus a lot of weird Linux extensions..)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
