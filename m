Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A9ADBB0C
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeDcrUBXCnacWulnoqp4NgDlD3cyzuazqLB0F+KXtBc=; b=keH05xMU15Dn/D
	Uws9phjwb7biYirEZfOI4jw8YeJbf2KUIV7km4Mfly7ML8OOxddTwgdVpunHqFi4I5Nt3HDiE5WoQ
	nDwukRkvy36zq910MElEtZc1dZw93u/1EwmA3FHCm29vWC2TqFJoW5D21iaM8Fcp96qWKO1e1vbuJ
	d1Dtqv2A0ocxkxKPoYP5P94TKYUQsmaD5yKYLdJAvYn+sRu7vSXWBzxdFj0TsQU+Y9jOVsrz/tCBa
	Uq7CsrpUZxzZrSa83YY+GpwKGxWoU3sOwhZp7DFsdqxWn62zEhyKore6uXLeyz4XVTh/1GhM6c+sJ
	7QhGh+KFOalpxhSheOsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGTB-0004Zi-Qn; Fri, 18 Oct 2019 00:50:17 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSv-00037e-5W
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:50:03 +0000
Received: by mail-il1-x142.google.com with SMTP id z10so3932165ilo.8
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BDNARAWoiAFizEyliYmITz0WDECsamFFfEfTjTwse14=;
 b=ZxKJbb75JUb8XtdmyH6ELjVl2TxKr+2knfv6zeJLtjAEUY6blYfLbV5wIOiq5g1CJf
 qAm4Xy0ZpmQ4dUJXLg3NJ5XiOzOGpaZFsChkS+2oZxuR0aiBeCYVk/q+rwVTGjsdktpd
 3tXdvHYaEM6JwRgXysZe7f/u7TBtDC38uEEpA4QGBXtUYqCraU2/mCey9hW93unnycaY
 rnWIVszNZcwyXk2NQsUP3zRNqNthv4y3wgNgvavnmiFryMA2SRsFocr38S+W6naLIWn4
 cmwq9gUuIcIYuKutu2aUOk7ZArHCf6J/7MC0nNg1HyYXzPatkxiSdOBS/jfm+47+SH/t
 QWIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BDNARAWoiAFizEyliYmITz0WDECsamFFfEfTjTwse14=;
 b=re0AFjOn1kkQyGGFy8RYT/JpKhdMkfT9QLypO7vnu//hMhRgc46taQdUtJgzHbWYw2
 kdSIqtJKZggwWmcsHk8kXjrNc+CVQxc+5kNwY/N8+SZwDBOKj2DS2GEI7HDRV1KaZ7QY
 n7UtScyg4NAmUIHQxW8Gw0zGHLAwyjHFAqcUvNjxvAWGzYMXviN/1/z9rWHHlIAgqQlY
 8HnXSWAf9Z4tyDlFHkshcFg88Y94CXxzxiTkwN1eZbryL+Av/gJDAkWFCM5m/5sw76jJ
 ZGFgMfb28xMjKhB+zvZ2whNrp+6MtGxARAQh/0oH6wR+6cMy5KFWZErkvHglb1YCNaHG
 jL4A==
X-Gm-Message-State: APjAAAW7iL3pD7FmW4kMHlqPbiX47nP3Xc1f+p9zJ/pdLE4F26JzDdQF
 wRBnopYcQR+6aisQnnlY6fFiMZriSnE=
X-Google-Smtp-Source: APXvYqz89Az5yviOLCd30UK04C1xP1O6eNU91MfQje3M5l58kOclitK04wId42uS1RkuH8Tus8v5MQ==
X-Received: by 2002:a92:7f0f:: with SMTP id a15mr6918766ild.116.1571359800009; 
 Thu, 17 Oct 2019 17:50:00 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 8/8] riscv: fp: add missing __user pointer annotations
Date: Thu, 17 Oct 2019 17:49:29 -0700
Message-Id: <20191018004929.3445-9-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_175001_387060_19B04C3E 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Alan Kao <alankao@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The __user annotations were removed from the {save,restore}_fp_state()
function signatures by commit 007f5c358957 ("Refactor FPU code in
signal setup/return procedures"), but should be present, and sparse
warns when they are not applied.  Add them back in.

This change should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Fixes: 007f5c358957 ("Refactor FPU code in signal setup/return procedures")
Cc: Alan Kao <alankao@andestech.com>
---
 arch/riscv/kernel/signal.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index 85c700ad47e9..9437167f463e 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -28,7 +28,7 @@ struct rt_sigframe {
 
 #ifdef CONFIG_FPU
 static long restore_fp_state(struct pt_regs *regs,
-			     union __riscv_fp_state *sc_fpregs)
+			     union __riscv_fp_state __user *sc_fpregs)
 {
 	long err;
 	struct __riscv_d_ext_state __user *state = &sc_fpregs->d;
@@ -55,7 +55,7 @@ static long restore_fp_state(struct pt_regs *regs,
 }
 
 static long save_fp_state(struct pt_regs *regs,
-			  union __riscv_fp_state *sc_fpregs)
+			  union __riscv_fp_state __user *sc_fpregs)
 {
 	long err;
 	struct __riscv_d_ext_state __user *state = &sc_fpregs->d;
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
