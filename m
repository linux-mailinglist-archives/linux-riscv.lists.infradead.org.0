Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3431EB2D2
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jun 2020 02:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k/AiPE+S5wFgcMTOQ2KkE1RuinEAHUoU1mDdPOJHfKs=; b=FAq8RkWyLJ3pjV
	T2NFsOTxfRRAa1wT2Vak1Tu8Btp31NUB2qpIxUfqYnf5s/dQnaxOy2gfqTfwDaiwg/aEut0lGJQ6t
	cBvfbR+ITweNVNe1YK2p+kUNCytZnVX3JA0UA4QJ6cq0WoyA0Rib464dFyXGLr00KUDaeONrRPFtJ
	PsHuPjxCrDlUyKOgMUUvLc0ncZ3b4evwpOmZHrTA0YBkzXQtyhc9ywPiqmFeTm5ojwXjy6Z/f8qcc
	iJJbUvFwDx/yQqeaa0HDNpzT4N+28bVdJMGgmLouSyhp8CMnUaCvSJ05HO2IZKivomErDkpjkjw7d
	OPrBtHpNMvzQM9fTgYDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfvCa-00080I-UL; Tue, 02 Jun 2020 00:54:48 +0000
Received: from out28-100.mail.aliyun.com ([115.124.28.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfvCW-0007yb-UX
 for linux-riscv@lists.infradead.org; Tue, 02 Jun 2020 00:54:47 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.4580702|-1; CH=green; DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.0143612-0.00041111-0.985228;
 FP=12664043516937949436|1|1|1|0|-1|-1|-1; HT=e02c03302; MF=maochenxi@eswin.com;
 NM=1; PH=DS; RN=6; RT=6; SR=0; TI=SMTPD_---.HguMbpK_1591059270; 
Received: from localhost.localdomain(mailfrom:maochenxi@eswin.com
 fp:SMTPD_---.HguMbpK_1591059270)
 by smtp.aliyun-inc.com(10.194.97.246);
 Tue, 02 Jun 2020 08:54:36 +0800
From: Chenxi Mao <maochenxi@eswin.com>
To: paul.walmsley@sifive.com
Subject: [PATCH 1/1] riscv: Select ARCH_SUPPORTS_ATOMIC_RMW by default
Date: Tue,  2 Jun 2020 08:54:28 +0800
Message-Id: <20200602005428.18087-1-maochenxi@eswin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_175445_163039_B5F2B4B0 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.28.100 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [115.124.28.100 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: maochenxi@eswin.com, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 palmer@dabbelt.com, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Enable ARCH_SUPPORTS_ATOMIC_RMW by default to support
osq_lock in mutex/rwsem locks.
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a31e1a41913a..cbdc605d20d9 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -68,6 +68,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select ARCH_SUPPORTS_ATOMIC_RMW
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
-- 
2.25.1


