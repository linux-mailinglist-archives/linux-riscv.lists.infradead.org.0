Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C46D1EEFFD
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jun 2020 05:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UZ/9MU32j84dkDwAJ0kpI/1OK7iKb6ILv4tynni/7lc=; b=VjIpPRWGO8X2HG
	zliRzpo5XJUvhlNcCjRA9C+Eu973+oumUZ0c9XSG0xUzLCj6W1ElWLAWNbCx0i1SM3t5t+V0fxUfv
	yRh6/Q6wmuh3jFhwOTz4TvwABMQvT1Tk/A6W4nZT7H+hXx6drEVgkDJ4h+gCjNuXb3h3SefYDau6e
	AATnCIIXeNQlfLtQG2+pGvdIodE/v7mFFbleVUiQ80O3q2Z8mnxgZ2goO7hatfDpWzf7E+kz6qA+O
	WUf7YXLuKv1lfaoV/lOXLStM7o4pRrZJd5eugCS440xUnnygUsYuezcv7Nm1XgAKqCl0DEoBBUlz1
	T6aw0FcmU1asMmYcZaTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh37m-0007hS-Nx; Fri, 05 Jun 2020 03:34:30 +0000
Received: from out28-219.mail.aliyun.com ([115.124.28.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh37i-0007eE-ER
 for linux-riscv@lists.infradead.org; Fri, 05 Jun 2020 03:34:28 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.4069149|-1; CH=green; DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.0499898-0.00367699-0.946333;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03294; MF=maochenxi@eswin.com; NM=1; PH=DS; RN=6;
 RT=6; SR=0; TI=SMTPD_---.HiN1LfG_1591328056; 
Received: from localhost.localdomain(mailfrom:maochenxi@eswin.com
 fp:SMTPD_---.HiN1LfG_1591328056)
 by smtp.aliyun-inc.com(10.194.98.253);
 Fri, 05 Jun 2020 11:34:21 +0800
From: Chenxi Mao <maochenxi@eswin.com>
To: paul.walmsley@sifive.com
Subject: [PATCH 1/1] riscv: Select ARCH_SUPPORTS_ATOMIC_RMW by default
Date: Fri,  5 Jun 2020 11:34:14 +0800
Message-Id: <20200605033414.10383-1-maochenxi@eswin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203426_639946_CC3AAAA0 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.28.219 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [115.124.28.219 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

Select ARCH_SUPPORTS_ATOMIC_RMW by default to enabel osqlocks.

PS2: Add signed off info.

Signed-off-by: Chenxi Mao <maochenxi@eswin.com>
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


