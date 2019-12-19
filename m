Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520E0125B8A
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 07:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dACTxZlWuE14iZ0X/C5ALaIg2Vn5nm1BwBkFWMDEuQI=; b=dTk25MC8KZyezyVgf9pFCymO8m
	ALtsuGAvQfO222LLlcWdvIoykaWi4ihf4QnCt4uj/XPFGiz3S0amKLPtBzDhZYPMBodUs7lPYXxTU
	UaBtjVOhg/zYEUxsxqpUrcTdWDhvrLOafKON67675sL7HBufCOMRknq9zCwyfDuy2Pm7CjZUun4Sk
	TEUfshQVQwmhg/fL08tlmLd5bofbBcl5nicVYTT9TpqO2Vrcki8FvUF9vIxePlNCdnJil8WoG7JWL
	n+TejAYF24eG+DGrD1ZLOIRfwXgmVEe66VV2uA8VBN63RmFNhfM8iI4YVVpTY64v6t3HolJlkW18n
	IkPuPw3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpYm-00022f-Jh; Thu, 19 Dec 2019 06:45:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpYj-00022J-Jb
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 06:45:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id x184so2640699pfb.3
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 22:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dACTxZlWuE14iZ0X/C5ALaIg2Vn5nm1BwBkFWMDEuQI=;
 b=bdarQnAkGejJcPalNHZddG1sJ2YO99hf7u+QNYCUy62dTvjLy371YTTipyk1OzN2B4
 Sw4KXM/LrfrvAND4qeNCHKijWNotjYucUoNOYMjhz93rtmemLj7lRU3rKarNhEoBOpXt
 ynLsec/dk/ejx701CF86zwf14xfSkKjVRS1dk6fV0Pjgfj3fP4jzPnVCZolHaSuXqjme
 a0ctWvSr/hSi8r11FSIjYdPhlaAmg3HVrQXlxGrJRGpcwzSF/wky36/2nrx706u7RvRS
 6VAW7htLPrJGA0h5dS2uVhsOhqGNT4mr1ld1EgauZOkR0617DYwTKD4/8aEHBjb0lYr4
 S0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dACTxZlWuE14iZ0X/C5ALaIg2Vn5nm1BwBkFWMDEuQI=;
 b=fw7fipssO4ckLsVs3EOO+q2+HnRmWdPtgJ2w2s8CBJngpisrUVcVrB43fIreBmh32T
 tYmxf2gpRirtWARXsE2Xu7RTdQBQeDZEA1A91w4dXi1alQ1zsNDBKI9Tt94YPbwVtIfN
 RgHd17oe/H3KE+wN1KIwItDLRj/O51p8ytLh2g1BNzfGLa/Z3deQNr8DI/qfXVpzhzGg
 IBW9j8ropzoDXHi5D2ZgnQKftn0wgr5g89xd7odj1ck6PLbdC9i4/+zIhrmru1M07R9J
 lSljguCXAz7tzILM7e9ND3eBDFBp1MNOBYxWU+qxB1QHWgr2bU4+wzNUotbLIibuhU3f
 403g==
X-Gm-Message-State: APjAAAUfhgBPT1ht8U7mvAyEo6o9YftQIwnj2P8seY9b13L0ws+sfagb
 xo9Ass5lOPpN4FD0MgJVIsg6eA==
X-Google-Smtp-Source: APXvYqytLpKObbCqrVTm4p8Xo2BjhK6hfjUDZWWYMc76tJygXlJcPFqGUndDmfcum6UqM9WB9ymL/w==
X-Received: by 2002:a63:b50a:: with SMTP id y10mr7536229pge.104.1576737916334; 
 Wed, 18 Dec 2019 22:45:16 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id t187sm6199566pfd.21.2019.12.18.22.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 22:45:15 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, hch@lst.de,
 paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: fix scratch register clearing in M-mode.
Date: Thu, 19 Dec 2019 14:44:59 +0800
Message-Id: <20191219064459.20790-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_224517_749902_0A7A96AD 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch fixes that the sscratch register clearing in M-mode. It cleared
sscratch register in M-mode, but it should clear mscratch register. That will
cause kernel trap if the CPU core doesn't support S-mode when trying to access
sscratch.

Fixes: 9e80635619b5 ("riscv: clear the instruction cache and all registers when booting")
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/kernel/head.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 84a6f0a4b120..797802c73dee 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -246,7 +246,7 @@ ENTRY(reset_regs)
 	li	t4, 0
 	li	t5, 0
 	li	t6, 0
-	csrw	sscratch, 0
+	csrw	CSR_SCRATCH, 0
 
 #ifdef CONFIG_FPU
 	csrr	t0, CSR_MISA
-- 
2.17.1


