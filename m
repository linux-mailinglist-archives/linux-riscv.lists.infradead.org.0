Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CDA1CC7F2
	for <lists+linux-riscv@lfdr.de>; Sun, 10 May 2020 09:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7/gXVwxfQCALl/htOL9nGBBdk9CR2DqbWyS3c9DzJzg=; b=mpjafNwjsuLwHQ
	kYnNKGlBZ2c/p7S2Shvfxc8G3Vky3iX+K9st+QXbbB2kZ2FM+d5x+F6rtOzPU4Y3jOwD0H2tw0C0b
	21g2XA55Kefmh7igc5WqA6tkgSXNa4W6zCVb29HwMGCKAVYKpXZ1OdGBkCVhnO+g3j+D/lCsRhJG1
	ZaYe2XWZ6hEvV4nm/x0N6VmVDg4r8aJfvt+JONND/ew9RCT1X2uZoNqLbfYIN0bO+KBK+zHxGItGJ
	Ff6M5pHeSvl7SlQkScoj8PThLuwie+BhaRfr5jA3ymmb9F3mdK4+qrFEz0nh15i4tZOx12FznVGvk
	7Jboyx9AgF3CdBA0C/2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgoi-0000Jg-F6; Sun, 10 May 2020 07:56:08 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgno-0007lE-9T; Sun, 10 May 2020 07:55:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: sort out the flush_icache_range mess
Date: Sun, 10 May 2020 09:54:39 +0200
Message-Id: <20200510075510.987823-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

flush_icache_range is mostly used for kernel address, except for the following
cases:

 - the nommu brk and mmap implementations,
 - the read_code helper that is only used for binfmt_flat, binfmt_elf_fdpic,
   and binfmt_aout including the broken ia32 compat version
 - binfmt_flat itself,

none of which really are used by a typical MMU enabled kernel, as a.out can
only be build for alpha and m68k to start with.

But strangely enough commit ae92ef8a4424 ("PATCH] flush icache in correct
context") added a "set_fs(KERNEL_DS)" around the flush_icache_range call
in the module loader, because apparently m68k assumed user pointers.

This series first cleans up the cacheflush implementations, largely by
switching as much as possible to the asm-generic version after a few
preparations, then moves the misnamed current flush_icache_user_range to
a new name, to finally introduce a real flush_icache_user_range to be used
for the above use cases to flush the instruction cache for a userspace
address range.  The last patch then drops the set_fs in the module code
and moves it into the m68k implementation.

A git tree is available here:

    git://git.infradead.org/users/hch/misc.git flush_icache_range

Gitweb:

    http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/flush_icache_range

