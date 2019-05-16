Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579AB206B2
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 14:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KY2cLaGRa02Db7/UNNdZnRSSrf1amO98ufX87zlu1rI=; b=lLeU1etHo85Zq0
	AKg1tW99NpVxLvOn2y5BiyEPx3up9AMqhxw5KT47Xd/rQAnwIgViJZesyQkYXseiyKmHxlsCa9SXB
	4mGiq5seho908gSt9J1TL+8S0Lkm/vWKW5GcXGCMIp7AavyWet8mTP+Kw02dBqlU8BtQMYLm8hcl+
	rURWQnIqedKEbm6YdQcfi1JMFKKAiRcIJP3ndD4B0fCe+v/truSNTmo62XOECcCnmd7I9L3l+xqW6
	YFQ8tENFc5nR0Gsnesy1QmEUWu+/rXDB+19Y4L0N4Adc0d1BrEPeSfDI1r1gjwu64DMcqxQ3dR9aP
	d0zGm7ACnXzXiASDD5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFCU-0005GP-B3; Thu, 16 May 2019 12:09:30 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFCQ-0005FS-Pm
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 12:09:28 +0000
Received: by mail-qt1-f196.google.com with SMTP id k24so3513351qtq.7
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 05:09:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=sbCp/GCfPLOrsqUDUZupXIkiqQehtjofpHZjd/C2f6o=;
 b=M3eFjakjAZBkfmxj4x1iWTIPH03hRcvP1PXPc2+HNVmC9HjOaFOP/yTzweE2shTDr3
 zJFdp38jfeWtZZtOHY5Km3WfPPlOs2rgULePRLRsCEFHAvSCWvm44D01X9xmR6BPnb66
 RNR3vrgQn1GhdrCQKJeNVofLoaBjZzqxt9y8cMywBL9aiJW4+w8IRkoPgpUoq4JlG/Qb
 iuMRMGv6tGur9uLSCa8sCsq0CyaXBWm4YN/yDJfzpG7RINHRvmX0Hl71WOlRYyeZvhUS
 8/xfru3fvaW3OuxouFZtNwoaAVu9FM97bfQQGGZGt0IBVEzmE5a5N4GqHC3PDFI4xjXk
 q/Rg==
X-Gm-Message-State: APjAAAWIao5eCG7Qexx5QlOjC/fpgyH/n7ULmutozEc6nJBFzOZ0TBKa
 qp+TPXMD8gO3OnoHTsWkFYu/0knGIVRwX0QC4Y0=
X-Google-Smtp-Source: APXvYqzpzoVn5D71fCLV7vftzgJjrpvGFK62g44SGJIS0A8jQiFvVPdcRTVpTxMHZpVzhMI2xYLwhWxRYcibR4GNA+Q=
X-Received: by 2002:ac8:1c53:: with SMTP id j19mr41777461qtk.152.1558008564993; 
 Thu, 16 May 2019 05:09:24 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 May 2019 14:09:08 +0200
Message-ID: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
Subject: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_050926_837573_DB1327A9 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

[back from vacation now, sorry for the late pull request for this merge window]

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git
tags/asm-generic-nommu

for you to fetch changes up to 6edd1dbace0e8529ed167e8a5f9da63c0cc763cc:

  asm-generic: optimize generic uaccess for 8-byte loads and stores
(2019-04-23 21:51:41 +0200)

----------------------------------------------------------------
asm-generic: kill <asm/segment.h> and improve nommu generic uaccess helpers

Christoph Hellwig writes:

  This is a series doing two somewhat interwinded things.  It improves
  the asm-generic nommu uaccess helper to optionally be entirely generic
  and not require any arch helpers for the actual uaccess.  For the
  generic uaccess.h to actually be generically useful I also had to kill
  off the mess we made of <asm/segment.h>, which really shouldn't exist
  on most architectures.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Christoph Hellwig (4):
      asm-generic: don't include <asm/segment.h> from <asm/uaccess.h>
      arch: mostly remove <asm/segment.h>
      asm-generic: provide entirely generic nommu uaccess
      asm-generic: optimize generic uaccess for 8-byte loads and stores

 arch/alpha/include/asm/segment.h   |  6 ----
 arch/alpha/kernel/smc37c669.c      |  1 -
 arch/alpha/kernel/smc37c93x.c      |  1 -
 arch/arc/include/asm/uaccess.h     |  1 +
 arch/arm/include/asm/Kbuild        |  1 -
 arch/arm64/include/asm/Kbuild      |  1 -
 arch/c6x/include/asm/Kbuild        |  1 -
 arch/h8300/Kconfig                 |  1 +
 arch/h8300/include/asm/Kbuild      |  1 +
 arch/h8300/include/asm/uaccess.h   | 55 ------------------------------------
 arch/hexagon/include/asm/Kbuild    |  1 -
 arch/hexagon/include/asm/uaccess.h |  1 -
 arch/ia64/include/asm/segment.h    |  6 ----
 arch/mips/include/asm/Kbuild       |  1 -
 arch/nds32/include/asm/Kbuild      |  1 -
 arch/nios2/include/asm/Kbuild      |  1 -
 arch/openrisc/include/asm/Kbuild   |  1 -
 arch/openrisc/kernel/ptrace.c      |  1 -
 arch/openrisc/kernel/setup.c       |  1 -
 arch/openrisc/kernel/traps.c       |  1 -
 arch/openrisc/mm/init.c            |  1 -
 arch/openrisc/mm/tlb.c             |  1 -
 arch/parisc/include/asm/Kbuild     |  1 -
 arch/s390/include/asm/segment.h    |  5 ----
 arch/s390/kernel/ptrace.c          |  1 -
 arch/unicore32/include/asm/Kbuild  |  1 -
 arch/xtensa/include/asm/segment.h  | 16 -----------
 include/asm-generic/segment.h      |  9 ------
 include/asm-generic/uaccess.h      | 58 +++++++++++++++++++++++++++++++++++++-
 lib/Kconfig                        |  4 +++
 30 files changed, 64 insertions(+), 117 deletions(-)
 delete mode 100644 arch/alpha/include/asm/segment.h
 delete mode 100644 arch/h8300/include/asm/uaccess.h
 delete mode 100644 arch/ia64/include/asm/segment.h
 delete mode 100644 arch/s390/include/asm/segment.h
 delete mode 100644 arch/xtensa/include/asm/segment.h
 delete mode 100644 include/asm-generic/segment.h

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
