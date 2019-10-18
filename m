Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FF2DBF80
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeDcrUBXCnacWulnoqp4NgDlD3cyzuazqLB0F+KXtBc=; b=ao/FeLC6bO80Sv
	e5xxt413QpX/W5FUr3Vv2eg1DowP85BgEAOGpDU1cRuG4VDiG7M0PS3aTWcl/SwP49Rd2u5F8lC7o
	phZ56Vuh4enX/66sGkJwyj5MVMn0dNUAwk2rof7o3hnmHQcRDeazw1DkE2lHrw94a3au1mUZ2cLBt
	Y6Op9uEExTEk/oFX5YcqkZI/bvvCP+ODeE5nWkac4KnsxWvrroixkGXJ1S/ZndvjIMl7gDwzAQGNA
	Zaxqe3qwGv841+hwuOdV/Ieo19z0keYHSw/s+Nrucq5KAkT/P0Szkn1OZLP6NSn13Mu1MxmKbPWVN
	GVOyI0z1dIwqC0Gq5l/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNJw-000846-Fd; Fri, 18 Oct 2019 08:09:12 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNJk-0007p7-Ez
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:09:02 +0000
Received: by mail-io1-xd42.google.com with SMTP id v2so6351509iob.10
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BDNARAWoiAFizEyliYmITz0WDECsamFFfEfTjTwse14=;
 b=BH2SZAJI7pzAjQaIWJl0yJG8OFbAURLSsSN2T7bCaujThYLoFQwOn6z4+Yy2Nr2i+7
 VeOFWtmiAtkfd1NjwrjrebM0WUBRv8nJcBFQxeh82F+KKEUrePTE8zrGHu7G7QQ+nCiB
 Qcb/YSUdh+FN2Z/WjhYa/giocNRxKLilLM3aGMBc16ZftLviykl0epsG5X3Pai//FG4P
 68XGtwnDzgtJ1EdabbhJ81T05HwEeiiQJh33FBXeMxf6lj9j9sFxkz1t085zaU8WVa2n
 hvGfdEvhyCGvBxu4rYLb/g6wl5sOfaxorW7fhDuZPD19m3IimT3JiPejWTbVdryCqfiS
 bv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BDNARAWoiAFizEyliYmITz0WDECsamFFfEfTjTwse14=;
 b=J5VKQIPTYyuUcQJYzxpY+cyRw6pT/31owWSeDwtyT9L9u+rulgk6K8uc/PD9FCuD8s
 DOxBR7tMX044dsFvieVSTdIx2b+os7ZkfULb0CerTFSyqJXGzIhlKC6oCPLS4rPn0Q22
 dhmnSoC9YJyfBHEB2oeMJzg1fi/B0htaR72KDPjOY8WvC+GuZj1u+4WlgHuAYH4Qk36p
 Nsba37cjwcFQzJJfGCXy5NYB4GASoiNcRYGO+O0tOj3M1raFLOT4yJFKW++90Psjm1VP
 4y7Ne0qL+XH5rvKTq99sJ8/rmZ4f97qqH6+9A0d3tODFXZFIkuRn03D6niCELpBQKnAi
 NmaA==
X-Gm-Message-State: APjAAAX94DxRyUDApyUTXb+ovvlqYDl8S1etjWETKjQTHlk8QLdRHcbk
 SLcvpp/y0ZVH+m/vJlvWkzqIGEQfwYM=
X-Google-Smtp-Source: APXvYqy6AwVkDkkhxvbEhidluVWq8r5Xas/hfQEFm/idpPNWew4L2BI8RKV4B8QWgFUYKl9y9I+90Q==
X-Received: by 2002:a02:6508:: with SMTP id u8mr7939505jab.28.1571386139226;
 Fri, 18 Oct 2019 01:08:59 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z86sm2121026ilf.73.2019.10.18.01.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:08:58 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v3 7/8] riscv: fp: add missing __user pointer annotations
Date: Fri, 18 Oct 2019 01:08:40 -0700
Message-Id: <20191018080841.26712-8-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018080841.26712-1-paul.walmsley@sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010900_540587_57244B5E 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
