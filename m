Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C75E3FD2
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 00:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwFfCiluGC5EHoPd6BiP1cmXu+xyBMNDgYijOKsrlPI=; b=CoSDiMDRVHlVcT
	/hPAIeto3c84VRYHNajDApYKvN+c/f8WKXB7suCFdvUAii5aNqR/xychgrJo7uZ1CnzvC0Uwfvo/f
	3ZwZWkowlTJNlvPLZfs1iBKuKP8xsMJ/P68ZIT8BIrfa5KP3GPMpr49thPAqQ4Bmoj8qJ6lidDnES
	YMKAUuRqugzjZyjPULk2kNqLk1EcRfJ3IHFSernXL07xf531wAtrlEzr4SBPPN+m0rNgFmj2hQVmq
	WTrgt+ml0JHOc4WbpbdndFisSm+nR5x5WR8/GMvwfnLjh4CXWVXWh2XiCY3wJSB/0CPlDvt9Gg904
	yKfhhwX6gwcInIC0us9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4T-0000Ir-BX; Thu, 24 Oct 2019 22:59:09 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm4K-0000BH-P6
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 22:59:02 +0000
Received: by mail-il1-x144.google.com with SMTP id i12so155935ils.6
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 15:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J5KV2n29ZA7BXjN3Y21njjBxjV2pNglFMNBgoB7YcYc=;
 b=AwQ/GBlVPgcIlLC4Sz/TLy68Iu5WlrEziKexLo20EOOhnOJCLLC7tK4d9senB7m7Yx
 F31VlYhaKSRm2QeYIefbveHAgiZa9TrM+k2RltL5z/xyL+5UX+yISBZBRL//ng104mXv
 A6R2+QiwlBQjOWYXI5eaeoAvNhtkY4L88va7tSPfPh8J/M7zOo02GvWCE4YigmSylWpI
 8qs3so4altTKneB1SGpHUUP7n8QMWNYB3ZXZQ/0aD78eLG6Rvar9OiGpul2o6DQzi+pi
 Lr4ll73jrjmh6lyLkOvhUbzLyUx4iqxXF3U3RvPuIIrKReqWIQ3TriyvXIxE9EGZ7yeu
 j8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J5KV2n29ZA7BXjN3Y21njjBxjV2pNglFMNBgoB7YcYc=;
 b=o8jYLwTWd2TMSZocxqKmZ1KuUxa61BkqVcJWehFva2KEe1dR9r7A1hTnb8FYg8ia9s
 2AXk26zqWAivjj5gF36k2Z8CsA/Xz9WQxb57m1gGNE1/Kaf9b5N6vDVoW3kcHJggY0ZS
 iIQoY3dzaZZeLhgO77tAYVj7Yzmh+ZccEQCVcf6ChkH6hXrIvXZoWufPYFd0jv7gCi3L
 VOIi8URdxPAs7iza2jIsqKzwa7rEFIJF8BTWaYPRq2kCZ6w9E2PBmS7soPAEtG/PMF1Z
 qeyAc/6MCse5XWgiSaf8uVww9Gvx7RX0JODIyhGjTtSKRjev4s9OGyttcdr8Z0sp337c
 pjAg==
X-Gm-Message-State: APjAAAVsB2fwSkeKd0p9PfIfLuWLPm+AMMeSKiCuey4ns1cEUeNzhLgB
 QrhhwlsQl7tlvNlmPuvpLN6ExRsZhZI=
X-Google-Smtp-Source: APXvYqyuaLpurKP3sYFT1l56Mh0m3g+O8f4mbnU9sC69yPy8H58pn6tcUvY8iUsSnGMwiU617okvKQ==
X-Received: by 2002:a92:d601:: with SMTP id w1mr522719ilm.281.1571957939415;
 Thu, 24 Oct 2019 15:58:59 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm58112ilo.70.2019.10.24.15.58.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:58:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v4 5/6] riscv: fp: add missing __user pointer annotations
Date: Thu, 24 Oct 2019 15:58:37 -0700
Message-Id: <20191024225838.27743-6-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024225838.27743-1-paul.walmsley@sifive.com>
References: <20191024225838.27743-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155900_831702_976DD9CE 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alan Kao <alankao@andestech.com>, linux-kernel@vger.kernel.org, hch@lst.dev,
 greentime.hu@sifive.com, Christoph Hellwig <hch@lst.de>,
 luc.vanoostenryck@gmail.com
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
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/kernel/signal.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index b14d7647d800..64bc914ce9ff 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -26,7 +26,7 @@ struct rt_sigframe {
 
 #ifdef CONFIG_FPU
 static long restore_fp_state(struct pt_regs *regs,
-			     union __riscv_fp_state *sc_fpregs)
+			     union __riscv_fp_state __user *sc_fpregs)
 {
 	long err;
 	struct __riscv_d_ext_state __user *state = &sc_fpregs->d;
@@ -53,7 +53,7 @@ static long restore_fp_state(struct pt_regs *regs,
 }
 
 static long save_fp_state(struct pt_regs *regs,
-			  union __riscv_fp_state *sc_fpregs)
+			  union __riscv_fp_state __user *sc_fpregs)
 {
 	long err;
 	struct __riscv_d_ext_state __user *state = &sc_fpregs->d;
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
