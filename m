Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43A61DD8D8
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 22:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kczfaJyChMu6EIoy646172ExIAqf1Ynz8kb/dN7rijo=; b=Q2gstPIPMDNT7B
	2vYEQOh3PFsRV5HJ3cH0pjIu1b0lIAireUDhnoBvAckrjYEoVlUYV1kU6pm+EJ5y10Ckh2+RWOm5Y
	x7dU9zLyzLPDdGznFTx3fZ9iP5F4jgR2d9Cazn5ormLR+bPekXxEHIuFdhF4U23l5kIe6SCRyd76Z
	nvbO0fe+crKEg+RZD4lAwe/3lQpiREXbjTvXW8LXAau+3sBtBF9ds4zo65wVRiBcY5ksGXFXGQRfR
	JBThTUMm2hzp3Z1R3K7mfgaceg3I6Nt8EXcxt2RhGIn2OK0mrEfC3NgXDr9HBsbw5xRlzclMUPOGh
	J/TJ6iwY9i0zGffhOB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbs8b-0002CQ-1F; Thu, 21 May 2020 20:49:57 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbs8X-0002Bk-4m
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 20:49:55 +0000
Received: by mail-pj1-x1041.google.com with SMTP id cx22so3850326pjb.1
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 13:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=kczfaJyChMu6EIoy646172ExIAqf1Ynz8kb/dN7rijo=;
 b=ntmr+ImztJwuT7wQnxWYxvTyurLHL2SZycYa/AXy/pzjihFxIGlFkY9rHywPMrvrW+
 zbQ65ciYTtTZEgsuHIT0I6OQLvMhRffAzofL2fuqksMZqztPtuBpQMq1OYZORfXWKTzr
 wb6AQsJ0oT+bb06jB/lbSKH3toNMSh6lLE9i/iwUH9EhpChit8OzVfm3mLdvt8NS5uTc
 Kut3Eg17vZN1HqTYWuU/jcsqEBLab88cNv949utEH/93HBDKnIuy8YaXEaWVtJkuulk1
 oiJQRjBqOoI/ONrwNibJ14w287r4s4Q9qt5mRVswdW96lAnDgyaZQp+N9fopNPk+zm7D
 BKCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=kczfaJyChMu6EIoy646172ExIAqf1Ynz8kb/dN7rijo=;
 b=U5+Z5xA7b19ZLiX0u19TIeX1AUgHBHW8J18tJHQNwAZr6QJ06DZB/pf3sf4edY3D5d
 H//XK+gSoFazji2qrYmLQ+sIlgffqSmeG3YSD8XyAy4BmomXTbZzj4jlIKMQBTfVLRTN
 peAdkS2TXodGO/qSrI8gwunvNx4JmkPvN1sg5mQ7nXbGypfEcEcoLA7bPY9Tme8rD2+z
 aKJ/Uo+DJltrL7QwzP4Bn+rZCDSbtrKN4Xhla0bpjJM3Lchb9wBt75+YqsSUvROnIwcK
 0V5PfAn2AdN8GzaSnh56oY/Zc0M0qLANiqUsPc8ruYBhlGLYFpbIiGGdnmBl1azbB2Pz
 2sKg==
X-Gm-Message-State: AOAM533YhR7PEZ2escJPXHQysX4G9tkTJSQ1SxsRNFW1ur6hyuOOQ48p
 2pxgThvvyjL4wYKU9IWdJ3weESofD4GygA==
X-Google-Smtp-Source: ABdhPJxXVGSzGGubZKPQq0lhvSkqlKTR3lTemw3x6XIheobgq+81s/lFL5nqEG3FolUCRwuuJ2LeJg==
X-Received: by 2002:a17:902:7c16:: with SMTP id
 x22mr11272561pll.244.1590094189831; 
 Thu, 21 May 2020 13:49:49 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id p8sm4792825pgm.73.2020.05.21.13.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 13:49:49 -0700 (PDT)
Subject: [PATCH] RISC-V: gp_in_global needs register keyword
Date: Thu, 21 May 2020 13:49:14 -0700
Message-Id: <20200521204914.210447-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_134954_618373_C7614E1F 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Intel kernel build robot recently pointed out that I missed the
register keyword on this one when I refactored the code to remove local
register variables (which aren't supported by LLVM).  GCC's manual
indicates that global register variables must have the register keyword,
As far as I can tell lacking the register keyword causes GCC to ignore
the __asm__ and treat this as a regular variable, but I'm not sure how
that didn't show up as some sort of failure.

Fixes: 52e7c52d2ded ("RISC-V: Stop relying on GCC's register allocator's hueristics")
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/process.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 610c11e91606..824d117cf202 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -22,7 +22,7 @@
 #include <asm/switch_to.h>
 #include <asm/thread_info.h>
 
-unsigned long gp_in_global __asm__("gp");
+register unsigned long gp_in_global __asm__("gp");
 
 extern asmlinkage void ret_from_fork(void);
 extern asmlinkage void ret_from_kernel_thread(void);
-- 
2.27.0.rc0.183.gde8f92d652-goog


