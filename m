Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7585011A
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 07:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DJgZLhmrZE3QgjDd2ZHvL2MktjKMquwVY+cwK6f4Zoo=; b=uf3YEYTdIlJlnH
	EJ9zConXwiop6HJNE+Za6E0+aWgMw9XFfHzesr3MZQUl7ErVbVteZyQW9TFb3G//PvDjorZh0/LMl
	TrPHtvNRRzRUks3mlMGVpOYgLUiNKk3hngjrZaWK95qMG5zCcm3ulWF1nD3VFYJ5fImLhLA/slvnQ
	0TUAuDqPcEUbPBohkUyFIHHqtxo/qe8iG30BToenOKBDXjffqrkP/HznY0t8eQAGhyDq12WAhCLt9
	I+GHQuqhqvjd3QJD+W8w5PIrcdERZ9SpzfdhDx12n4pVOGplRjn6mG4kYTo+wxaKu75Dw9fKYeFaa
	Rs+KvaF3iQTg62l0uI9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHlA-00064X-Pm; Mon, 24 Jun 2019 05:43:20 +0000
Received: from 213-225-6-159.nat.highway.a1.net ([213.225.6.159]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHl5-00063u-7r; Mon, 24 Jun 2019 05:43:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: RISC-V nommu support v2
Date: Mon, 24 Jun 2019 07:42:54 +0200
Message-Id: <20190624054311.30256-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

below is a series to support nommu mode on RISC-V.  For now this series
just works under qemu with the qemu-virt platform, but Damien has also
been able to get kernel based on this tree with additional driver hacks
to work on the Kendryte KD210, but that will take a while to cleanup
an upstream.

To be useful this series also require the RISC-V binfmt_flat support,
which I've sent out separately.

A branch that includes this series and the binfmt_flat support is
available here:

    git://git.infradead.org/users/hch/riscv.git riscv-nommu.2

Gitweb:

    http://git.infradead.org/users/hch/riscv.git/shortlog/refs/heads/riscv-nommu.2

I've also pushed out a builtroot branch that can build a RISC-V nommu
root filesystem here:

   git://git.infradead.org/users/hch/buildroot.git riscv-nommu.2

Gitweb:

   http://git.infradead.org/users/hch/buildroot.git/shortlog/refs/heads/riscv-nommu.2

Changes since v1:
 - fixes so that a kernel with this series still work on builds with an
   IOMMU
 - small clint cleanups
 - the binfmt_flat base and buildroot now don't put arguments on the stack

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
