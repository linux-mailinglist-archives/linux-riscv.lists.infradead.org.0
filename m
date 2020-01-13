Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0736D139BF1
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Jan 2020 22:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M7Io58ZEhGxjHo17Y8hWVxamttEiEdJZDl3O+0g+FXo=; b=TiIXfu/6AghnWe
	aJVo9z6xH4Tmd6QvGHfl1AZR3x2CDwvnHPSyLKKWCEk8M2kWLUkgGYLDBfv6esT6r4bWpAazTz4E2
	h8Wn8d+WlugVZIV7JrYbmjrDECmoVRNBBETKJy0yFfM/PPPyDQQS0u2uysgPguEasfzpXIctXfTDZ
	x+dwVaRkV2Rj1kdNqT1ke9avayySpTUL7ERcwpMOnKp7h/UwKo6GC/MAtmZTyBgt4mLGnZTQ7rf9C
	hMhXbNHayCx6Sr5YGKMMX2xDGCZdeVJvWTu6YOlpQ3bq30yNpowRCp8mCKvh9TU23N7/wFpsFrkRs
	UOycW9aPYAgUaU1WPVNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7fQ-0008GF-D4; Mon, 13 Jan 2020 21:54:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7fH-000891-O0
 for linux-riscv@lists.infradead.org; Mon, 13 Jan 2020 21:54:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C01E62072B;
 Mon, 13 Jan 2020 21:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578952467;
 bh=uLxaFh3dKd798IEOWwkeImIOAv8m+gsYi3CSsxL7TN0=;
 h=Subject:To:Cc:From:Date:From;
 b=UY2Q54mYFFgM+WxGt+OgWeew7qOEjOpLhZHBlVn8RjMya15THVuMwdQSVAP8aRvhv
 ndqYh8wdCzNn/lxYlxdV8W2Aad+C9+lUdd4bQaGm7LAxGJhg9Jyx7i3wjWSz9OFv7p
 hU57WbjdAX1kL8SRUMtmwGITmGUSseD1bJP1K8jI=
Subject: Patch "riscv: Implement copy_thread_tls" has been added to the
 5.4-stable tree
To: 20200102172413.654385-6-amanieu@gmail.com, amanieu@gmail.com,
 christian.brauner@ubuntu.com, gregkh@linuxfoundation.org,
 linux-riscv@lists.infradead.org
From: <gregkh@linuxfoundation.org>
Date: Mon, 13 Jan 2020 22:53:38 +0100
Message-ID: <1578952418162164@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_135427_874239_709F4175 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    riscv: Implement copy_thread_tls

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     riscv-implement-copy_thread_tls.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 20bda4ed62f507ed72e30e817b43c65fdba60be7 Mon Sep 17 00:00:00 2001
From: Amanieu d'Antras <amanieu@gmail.com>
Date: Thu, 2 Jan 2020 18:24:11 +0100
Subject: riscv: Implement copy_thread_tls

From: Amanieu d'Antras <amanieu@gmail.com>

commit 20bda4ed62f507ed72e30e817b43c65fdba60be7 upstream.

This is required for clone3 which passes the TLS value through a
struct rather than a register.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-riscv@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
Link: https://lore.kernel.org/r/20200102172413.654385-6-amanieu@gmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/riscv/Kconfig          |    1 +
 arch/riscv/kernel/process.c |    6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -61,6 +61,7 @@ config RISCV
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select HAVE_ARCH_MMAP_RND_BITS
+	select HAVE_COPY_THREAD_TLS
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -99,8 +99,8 @@ int arch_dup_task_struct(struct task_str
 	return 0;
 }
 
-int copy_thread(unsigned long clone_flags, unsigned long usp,
-	unsigned long arg, struct task_struct *p)
+int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
+	unsigned long arg, struct task_struct *p, unsigned long tls)
 {
 	struct pt_regs *childregs = task_pt_regs(p);
 
@@ -120,7 +120,7 @@ int copy_thread(unsigned long clone_flag
 		if (usp) /* User fork */
 			childregs->sp = usp;
 		if (clone_flags & CLONE_SETTLS)
-			childregs->tp = childregs->a5;
+			childregs->tp = tls;
 		childregs->a0 = 0; /* Return value of fork() */
 		p->thread.ra = (unsigned long)ret_from_fork;
 	}


Patches currently in stable-queue which might be from amanieu@gmail.com are

queue-5.4/arm-implement-copy_thread_tls.patch
queue-5.4/arm64-implement-copy_thread_tls.patch
queue-5.4/xtensa-implement-copy_thread_tls.patch
queue-5.4/arm64-move-__arch_want_sys_clone3-definition-to-uapi-headers.patch
queue-5.4/parisc-implement-copy_thread_tls.patch
queue-5.4/clone3-ensure-copy_thread_tls-is-implemented.patch
queue-5.4/riscv-implement-copy_thread_tls.patch
queue-5.4/um-implement-copy_thread_tls.patch

