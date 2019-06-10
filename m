Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4EC3BF41
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 00:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g7j5GQFcm3W6fBpOMZWvGMKmXjgKtIb5NJbcMmmdnoc=; b=alqGs7TWWz+CWZ
	VZ72BjrindOq8hStTgFyLKikVsSfLYon8nXW7j8XqZ5Z0hG63T2MyYkmi+Nx8pWUwjOXGj6GV+21t
	sZNpX/Gu4ZTwNZ2W89wNHWJeHJMkoROGJbaxvVGkHrW44KhcwMWfeQsxz/C6dJxAV4/UmyME0yMEA
	Pv4Dx/dzLClnS3sDTsGuS99Q9R6o90yJUt7ZilJKUuPcC/0DYXoRZOzYpV0BIaQWCdAXZM4XbX+n9
	t/PypJXFtLwcnE3OOUG7VWgA9inUstZZX1HpoZDPWLljgHaAZtN1DLM1hajQQILrsOIxhLZlc3XF5
	dXpSxsxsAk44RvJMj+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSaY-0002kf-N0; Mon, 10 Jun 2019 22:16:26 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSaV-0002kS-NG; Mon, 10 Jun 2019 22:16:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: RISC-V nommu support
Date: Tue, 11 Jun 2019 00:16:04 +0200
Message-Id: <20190610221621.10938-1-hch@lst.de>
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
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 uclinux-dev@uclinux.org
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

    git://git.infradead.org/users/hch/riscv.git riscv-nommu

Gitweb:

    http://git.infradead.org/users/hch/riscv.git/shortlog/refs/heads/riscv-nommu

I've also pushed out a builtroot branch that can build a RISC-V nommu
root filesystem here:

   git://git.infradead.org/users/hch/buildroot.git riscv-nommu

Gitweb:

   http://git.infradead.org/users/hch/buildroot.git/shortlog/refs/heads/riscv-nommu


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
