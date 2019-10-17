Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F4EDB364
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WiTeRiyruEK6QmI1MUi2Zc8ja5N1G0dRlA9QvPda+lw=; b=J8BxxDzc1qZ3j6
	DPDpMVuthGy4V8W76Fq08U97kFY8/4wG+LnPLkgUz9IYFeUIbtX33dpTcVpuzNSHPP73BzKu1lLFp
	DoiOVRwzN6nP9JFdaHpwgZp+42t9dHE5k4FDpy7BKf9UfTn9mndkpswmOcJC/JKYChZYLhzYQPaav
	LE/ssLIacAEFOzvFSLFF1yw5Leijy0kl7b8AAN2M62mryX/KsaxiGmdDX3li7qai2eqvJnb5xoQn7
	iaFRuP/bW3aYvBWa9sSqOJ5hdh9hYd+PH0fH0SGOXVrAfBTRAE2Y9k7mufmfp/N3T+3PkCdalDenA
	QCa7FTYXk6jjr+Nl/LAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9id-0007FW-T6; Thu, 17 Oct 2019 17:37:47 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9ib-0007FG-Do; Thu, 17 Oct 2019 17:37:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: RISC-V nommu support v5
Date: Thu, 17 Oct 2019 19:37:28 +0200
Message-Id: <20191017173743.5430-1-hch@lst.de>
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
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

A git tree is available here:

    git://git.infradead.org/users/hch/riscv.git riscv-nommu.5

Gitweb:

    http://git.infradead.org/users/hch/riscv.git/shortlog/refs/heads/riscv-nommu.5

I've also pushed out a builtroot branch that can build a RISC-V nommu
root filesystem here:

   git://git.infradead.org/users/hch/buildroot.git riscv-nommu.2

Gitweb:

   http://git.infradead.org/users/hch/buildroot.git/shortlog/refs/heads/riscv-nommu.2


Changes since v4:
 - rebased to 5.4-rc + latest riscv fixes
 - clean up do_trap_break
 - fix an SR_XPIE issue (Paul Walmsley)
 - use the symbolic PAGE_OFFSET value in the flat loader
   (Aurabindo Jayamohanan)

Changes since v3:
 - improve a few commit message
 - cleanup riscv_cpuid_to_hartid_mask
 - cleanup the timer handling
 - cleanup the IPI handling a little more
 - renamed CONFIG_M_MODE to CONFIG_RISCV_M_MODE
 - split out CONFIG_RISCV_SBI to make some of the ifdefs more obbious
 - use IS_ENABLED wherever possible instead of if ifdefs to make the
   code more readable

Changes since v2:
 - rebased to 5.3-rc
 - remove the EFI image header for nommu builds
 - set ARCH_SLAB_MINALIGN to ensure stack alignment in the flat binary
   loader
 - minor comment improvement
 - use #defines for more CSRs

Changes since v1:
 - fixes so that a kernel with this series still work on builds with an
   IOMMU
 - small clint cleanups
 - the binfmt_flat base and buildroot now don't put arguments on the stack

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
