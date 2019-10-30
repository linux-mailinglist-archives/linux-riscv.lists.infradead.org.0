Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE39E95D5
	for <lists+linux-riscv@lfdr.de>; Wed, 30 Oct 2019 05:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u8VS4m/DLC7Wq21VMF/y6hkAoz7nVxzpYFA8M+dkTp8=; b=ZZomcET9lipkS3
	wTywNvpZ3fT5q/PKS987GAslMumuKGJdiuPn+nerNQsFvpv+r4GD1sjnsMJ5ZJUascNnkO4Gdvbb2
	GqNz0m3ud6aTZQQY9XWQu/GPzl2x3W7cv+2FVovOeQYTsuL5DsTgp6gff6/GrmmjgudP9rzUcbpmR
	e1iIANYqroRqQ+aQtgFbVTPt3E4/RQRHamqr/v1gp9R1NXaVe7BTMxnxZ15MFj230xJ1QVvIp82Cq
	xwk15prvXpi32RwoboVx4ZS9JfLGt66dHD6thTYpfw1iN5nGRgH+RQlpr5Dl2x40CFnw6Gz9uF5Ne
	jh6x0Vzbi8h7WW7uX9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPg2v-0001Ir-6l; Wed, 30 Oct 2019 04:57:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPg2s-0001I4-It
 for linux-riscv@lists.infradead.org; Wed, 30 Oct 2019 04:57:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id c184so696961pfb.0
 for <linux-riscv@lists.infradead.org>; Tue, 29 Oct 2019 21:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=ArmnP9i5XUZSJnnbGyOZyJsBaDqLnDSozm6eXsqgimA=;
 b=l9HkwaEvXz8u8EmhPFl5YLtBxINCKCME7sVU3t6ruBwHN9gCnFu/rm9sqg5kGWmtVR
 EnLYO2NMK3l+u1D676TGbmt0iM5uevSyjFltxuuAxxgs49nwQaUsTkAsRwVyyhj/uHLf
 NQEnuxKvDe+rtYdn3IsLMALYh0VaZImAgRyopX6Kc1SuTa9KefVppUhyiOKvqL1jBYch
 CkWYVUL4una2QyKzXE2jSP/kaqSGBWw3Z60qwH6eJm+PLfA3dqJtMFxqBtbKCgwkmxac
 J71seIedxe46uJfGWu7wi0iArRZi6Hozsi86rwkiEP259JPou7rSwAuEQL/gK6zPT3eb
 MEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=ArmnP9i5XUZSJnnbGyOZyJsBaDqLnDSozm6eXsqgimA=;
 b=gbUPsL3wq3+8vNAJcaChNM3irCURrBcpDYgdvBygKfy22qRLQ5QeIlvgJeba9ivflt
 Nw0mFUb7lkcoI6GAKsgYuWm2UXG6hJ0JmR7++8R0o0OYeY6Udkv29dnGofiLA4/IVKEx
 uQUkjQK+0Auk5gS9BhftrrY0iaQ9KW3P4mFDHh7dSN4ZrxEaKj2IvaB8CkGHTsbXFbP5
 BdsimyD1T7v+xIsqkmeH/U9IR68e7XgSnRSdWHp8QlPqXTWtUGZu9wp0lQ4yiIvh8hqO
 ybtnHQXYGEvFwSMSSeY/DvAoNxJIYE0hQTs08ILBPtYax1h3FsaJgQ2MZGYTeAicuIHR
 SSNQ==
X-Gm-Message-State: APjAAAX4z7unYDxdIih1M9zUCNWtwnqe63bDtBo1D0ATLPnG0LAbeG4J
 fIl4Fs8Z/sCMZqtABvZVh33LsQ==
X-Google-Smtp-Source: APXvYqzXo64sWdqbeOvgGSzZtJ1cBl27GXfDUBb5pBCfDsvjADWjIOOirknn7oBzixnz697YIrqRtQ==
X-Received: by 2002:a17:90a:6508:: with SMTP id
 i8mr11601510pjj.44.1572411440500; 
 Tue, 29 Oct 2019 21:57:20 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id c26sm759148pfo.173.2019.10.29.21.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 21:57:19 -0700 (PDT)
Subject: [PATCH] MAINTAINERS: Change to my personal email address
Date: Tue, 29 Oct 2019 21:39:16 -0700
Message-Id: <20191030043916.27916-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_215722_649511_8285A12E 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmer@sifive.com>

I'm leaving SiFive in a bit less than two weeks, which means I'll be
losing my @sifive email address.  I don't have my new email address yet,
so I'm switching over to my personal address instead.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
---
 MAINTAINERS | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c6c34d04ce95..f97f35163033 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13906,7 +13906,7 @@ F:	drivers/mtd/nand/raw/r852.h
 
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
-M:	Palmer Dabbelt <palmer@sifive.com>
+M:	Palmer Dabbelt <palmer@dabbelt.com>
 M:	Albert Ou <aou@eecs.berkeley.edu>
 L:	linux-riscv@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
@@ -14783,7 +14783,7 @@ F:	drivers/media/usb/siano/
 F:	drivers/media/mmc/siano/
 
 SIFIVE DRIVERS
-M:	Palmer Dabbelt <palmer@sifive.com>
+M:	Palmer Dabbelt <palmer@dabbelt.com>
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 L:	linux-riscv@lists.infradead.org
 T:	git git://github.com/sifive/riscv-linux.git
@@ -14793,7 +14793,7 @@ N:	sifive
 
 SIFIVE FU540 SYSTEM-ON-CHIP
 M:	Paul Walmsley <paul.walmsley@sifive.com>
-M:	Palmer Dabbelt <palmer@sifive.com>
+M:	Palmer Dabbelt <palmer@dabbelt.com>
 L:	linux-riscv@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pjw/sifive.git
 S:	Supported
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
