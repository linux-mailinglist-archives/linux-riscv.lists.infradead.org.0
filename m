Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850BF13A4F7
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Jan 2020 11:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDyiE4803p9t14UxckAskkpvk1P2YRdD7L3zhErq04E=; b=qlg946EmnbYWqe
	bavqO8mzNrG9owtbgcu2LAkFu0eUtxK1tSo+5Bl/aomQUBVNHj+aAkQCgt/ElkGOJlJvA/H2QV5yQ
	BCHbR2sRhgEqm+1GzgF6NuveC52CodMk7TF/LImSNUOq8JGj2s4nNMgx8urBKwIya6//6kWr5Z1Rh
	l2Er1m05PxSkUDFSs1lgDHhSmMXhCv7AQk2AGFMi6ZrlxkAsqsgMyeOIeigLzcMTKAd+r/1ZEjmGV
	3QVOO4NzcRHdg0bv03AbLnoR4in45mXfW5I35ogIHP8hyBgmShTkoCXJKR/QIAeDGGBXCVOGUTwup
	tTbJZmmO+BY7fFJZKAng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJ5f-0005sh-6t; Tue, 14 Jan 2020 10:06:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJ4s-0005EE-E1
 for linux-riscv@lists.infradead.org; Tue, 14 Jan 2020 10:05:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91BA52467D;
 Tue, 14 Jan 2020 10:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578996338;
 bh=jMKI6v65FTBsSYZvJUeHNjo+HJGBAmYqD6BdTqDO74M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rXWK6rTaQm1Lx1OyZOwu1Mvdsig3DkqhYxkVhoGZsgyr7Kcg9tiqQeXTKgss1tgrC
 mpTP/j3gbV1Gpx2m8uQM6nI0ohRW+vrLEOTodSZwZr7rnFZThiXMr/SiGzSHf91hAq
 3HezGaDPuSSIvD8hufEt0iWfYcO9V3+WNE0I7TII=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.4 61/78] riscv: Implement copy_thread_tls
Date: Tue, 14 Jan 2020 11:01:35 +0100
Message-Id: <20200114094401.622410384@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114094352.428808181@linuxfoundation.org>
References: <20200114094352.428808181@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_020538_512513_17DEAA63 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Amanieu dAntras <amanieu@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

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



