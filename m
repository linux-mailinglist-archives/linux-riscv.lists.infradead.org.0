Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350EF43311
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFZ+5MIAL5asBJ0byC/fTAQaBo/57qGoM95QGMZuAgI=; b=VffekiO3565gQx
	1VOBUmjI9+8a4olVzj0N9K0X4CfakFUbz6TZe7wHt60P94rfVbzYbpaDg5/tDH+2+rzxO+HgMVTHd
	dp83NFf5XLVRiUbwq26DNgWRFpI+Dxk5ekrCYRKFaRzDUAmLWEqUgwTCTXyGBGSQhbUDktciH0DD2
	yR2c4n27xTBAACOUDiiHYVBM0KU8SzwaR1NTGyLlGVXtY9eiI/pt+z6b/3gop8SUP7qnxh4UvmNjG
	pcyrQ/u3tegndP8GDySt0jAeoleiALUXJlJoq84UsSuXeIxZGJIGG0k4iERwhrB0FOrIexSGqePXj
	fUmUrHM5j/wbIFH5lh9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJrr-0004Op-4o; Thu, 13 Jun 2019 07:09:51 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJr8-000494-05; Thu, 13 Jun 2019 07:09:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: binfmt_flat cleanups and RISC-V support v2
Date: Thu, 13 Jun 2019 09:08:46 +0200
Message-Id: <20190613070903.17214-1-hch@lst.de>
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greg,

below is a larger stash of cleanups for the binfmt_misc code,
preparing for the last patch that now trivially adds RISC-V
support, which will be used for the RISC-V nommu series I am
about to post.

Changes since v2:
 - fix the handling of old format flags
 - don't pass arguments on stack for RISC-V
 - small cleanups for flat_v2_reloc_t

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
