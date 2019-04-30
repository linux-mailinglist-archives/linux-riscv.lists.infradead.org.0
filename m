Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF2610319
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 01:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4bJEO2MeUmBZkjU6jFmbU6NkSvDlCdOIJByh/1OD7wQ=; b=BnqHMD0emTDPzR
	xrxsAL3rqss3xcXPILG2QMMdtHt8byqjZ5tob67F39wuk5+VpT5dnxJuTzMdSCDk0al7XYNx8zhzB
	fPy3L8vRMmbTghKpvq84TqNN/H5p84d3+GEs4palf0Usm8dSSopaH4SJVzbivzYjDOqgpTAEbuhBp
	rlWvWPjTNGLZzXZP9gb1k20qiNwbFOB+Ss2x7p5qzZQgLNrTdCFnPuJILAXMAuMbtFU3fgOf5HEQg
	p7O52oMMkRb8lxPYLB9TH+7feSGJ9mHM0S5EpKjqBtF1bgbVJYzVJmg5J7K8PDMpc8DWdDA4G6HAL
	wdtcvcwlGhm4e9ut2Khg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbrK-0003zD-Pc; Tue, 30 Apr 2019 23:08:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbrH-0003yq-7N
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 23:08:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id w25so7793455pfi.9
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 16:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=tkmzKPJ8v/O/itnNgoUTzaNNri0XyAwxiGBCEfYBcG0=;
 b=E0n2awhUN8C45adfDkzc4bWbaIm8RRkEeb+RZkP0bYPOsALwxdZfkbzHajrSjm6vmG
 8AA2TdRQkb3NgVht01Yh5OCzkllxZJ+NlPDiuisd1o7+UnjLviFPeo1WqRg9jWqY5LNX
 Cn3Tqhogqn92/hrSlXPI+kqNUO5mMuHqhd27UZTKnqjv7cYilBcxclZLKTChHfZUqpah
 Ll9AoH3DYDiVo1lQeCnqnn1IS3PE2/sYQs0VUvXfC3mRazsoVkNLpNKPn+Rd+tIZaXVP
 FS1cqm9xXbWpCaEKRF5d4zOqqbvZwnJgi3SWPbFYvozcK/cvLzdY0Nh6FRNoPoM7dpdU
 8dSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=tkmzKPJ8v/O/itnNgoUTzaNNri0XyAwxiGBCEfYBcG0=;
 b=F7AoP52qRNH16ykO7c1//EyFWnlvg5JpQFBdvEpuFJ2hBvgZIS8LLNv8Hh49IVAXsR
 qFTej2i2Lqzb+ZOgOIDnN9+QIvgLf0wmA2ephQ7IAsYVNceIS2X4OSSFmeB4SdQxPA5F
 QY0/oVSjQy4owig2iMdsc6MLoidR6rki5WwD4kJYs6HIzD++74a0ow5q2C0coQ2JC7dw
 jkh9Mvycn17J4nOU+Ojxmjh9FAkRIqqVrcap/5yLsCfZBBWkjJ410AqXuY031iFbarnx
 0ZjNM230P8DZ6EXNxo9/XvCcwF76xSNapReJ5nglTVR94sMeoIh0nk0QEDFE+AcNyuh0
 8/Ng==
X-Gm-Message-State: APjAAAUJiJzHMgGr4afKpvuk9MuNNZk2amFRMkYATCFyT3lYKcEiatoY
 Dj441ofCELNr9td3hYxhSPhbeg==
X-Google-Smtp-Source: APXvYqyf9rFv9vvcH42nQguHVugx95NsjS0DH2s05g7A8xSh4I5jXG2Wa6mUmUwt0sqMKSD3cmzBmA==
X-Received: by 2002:a62:f247:: with SMTP id y7mr10922422pfl.18.1556665697735; 
 Tue, 30 Apr 2019 16:08:17 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id d5sm24311334pgb.33.2019.04.30.16.08.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 16:08:16 -0700 (PDT)
Subject: [PATCH] RISC-V: Avoid using invalid intermediate translations
Date: Tue, 30 Apr 2019 16:07:29 -0700
Message-Id: <20190430230729.31625-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_160819_291953_2AC59CD6 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is almost entirely a comment.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
 arch/riscv/kernel/head.S | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index fe884cd69abd..fc5534e9cf4b 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -99,7 +99,9 @@ relocate:
 
 	/*
 	 * Load trampoline page directory, which will cause us to trap to
-	 * stvec if VA != PA, or simply fall through if VA == PA
+	 * stvec if VA != PA, or simply fall through if VA == PA.  We need a
+	 * full fence here because setup_vm() just wrote these PTEs and we need
+	 * to ensure the new translations are in use.
 	 */
 	la a0, trampoline_pg_dir
 	srl a0, a0, PAGE_SHIFT
@@ -118,8 +120,14 @@ relocate:
 	la gp, __global_pointer$
 .option pop
 
-	/* Switch to kernel page tables */
+	/*
+	 * Switch to kernel page tables.  A full fence is necessary in order to
+	 * avoid using the trampoline translations, which are only correct for
+	 * the first superpage.  Fetching the fence is guarnteed to work
+	 * because that first superpage is translated the same way.
+	 */
 	csrw sptbr, a2
+	sfence.vma
 
 	ret
 
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
