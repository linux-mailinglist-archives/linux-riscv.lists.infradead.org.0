Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9289E12009B
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QLmugLg69uwoq+Jwozb0oyKbaFcKUgep+k5spKK228=; b=Icjz+GxH88oWe1
	b7P5Hst/bbBXFh9o3Cf1gIDldvSJ5qHu13zH7Hk+glvscvXvwS3gcriDc51/odep6t+AdpiDc+6R5
	RkpNUtu+Mj8InPU6r/L1zq4dV05VtLBS9OxiHt7YyOEZ/EatqENWf0w5y1PjH5aFhGJideGXuS2mL
	hdwbYP39Wtk3hbajVI4KSk6umAtDES4bioDQRMS9U/oue6EvKFL+ytdlgf0mq14oqYvl8Upa/ZCHt
	fFNbiwXu1mbpxesQYdMnkonCHhjwnHCqe+jjSWvWjl03TqvDS0Az7HVFEmJl3j8H/Rq6rOY7U1TQb
	iN2VEXqWbKH7Y3oBuFew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmSI-0003cf-Gt; Mon, 16 Dec 2019 09:14:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmS6-0003ST-I0
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:14:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so5254541pfo.2
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+QLmugLg69uwoq+Jwozb0oyKbaFcKUgep+k5spKK228=;
 b=vgYlauhSVRfk3SG2Bd3rFWaU/N5IO+0XFjRzwLL4Nj2mEqZngDETSaWN91nNeMPO3C
 msXmmWZHLDuxE48AHdWqXT6qEl9CAAhWHMyiM1n7Nlruv3uqa7ZAcrKoQjZ9ZSPtCV40
 1yGYGdpgJ2xFvUFfoQwM+ExMaNHpxQ07VJg3pCVLHTpgjsEME9vSonPXVDaGDeoHBbka
 vTqTq2ktbA86v0VieraSm+XBruaQNdvt91/NGAYuYphJzCbvmHl730QiqLx/6Hwu8muD
 OhyyU0s+3mjUYLfi0bwMKNe5LRBQQF5hki2gJMFFsVw3zPGyWvAmXNGTcL1mDAeHHf3F
 /2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+QLmugLg69uwoq+Jwozb0oyKbaFcKUgep+k5spKK228=;
 b=LmLy5H7ehEJ220znRXhq6Lb5RmDSBpHsQx7FMQ9qR7nppp4icQkzgQLncqcIfkNpE3
 GS7pZ5nrAiK+MzhRbbZZ8ArD6EHk83Neja35Rtx8QNCbca2Qu7+IQuxN9bTiZzNTJ6gr
 vQGnquIa/mkjgKPK939dEnqUAaFHvXNoYqba/g6/nJ/nsmerKgweoNxkhVEBtZqyzJcA
 E2erHOXLGc3lHnMq5YPcI2h4FBzJGBY9mgR6j3R/dokJH7xrmx7upQHKEYmH892oK+/c
 W0HMHxEsmKYuz5d5+chncFU0vvWQQnngt+jUrAB5DUJ6Cuda/4GBAq8eEoBTnCQFmaCV
 1FoQ==
X-Gm-Message-State: APjAAAW7OI3oNhdX1Cux7AyR+WnduPgtz7ZX8+tS6aEFyezNK3ulnOAz
 j2eeGVt2q4FFANZIgHVONoo=
X-Google-Smtp-Source: APXvYqwNqrSXeV+vfLV2wS5LMUNUPbO2epEFOMwSUXehrzv1nnOdTQ7R3mn/CNh1KLbocAfAIqkurg==
X-Received: by 2002:a63:590e:: with SMTP id n14mr16640396pgb.10.1576487645927; 
 Mon, 16 Dec 2019 01:14:05 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.14.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:14:05 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 5/9] riscv, bpf: optimize BPF tail calls
Date: Mon, 16 Dec 2019 10:13:39 +0100
Message-Id: <20191216091343.23260-6-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011406_634732_9B865EDE 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Remove one addi, and instead use the offset part of jalr.

Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 2fc0f24ad30f..8aa19c846881 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -552,7 +552,7 @@ static int epilogue_offset(struct rv_jit_context *ctx)
 	return (to - from) << 2;
 }
 
-static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
+static void __build_epilogue(bool is_tail_call, struct rv_jit_context *ctx)
 {
 	int stack_adjust = ctx->stack_size, store_offset = stack_adjust - 8;
 
@@ -589,9 +589,11 @@ static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
 
 	emit(rv_addi(RV_REG_SP, RV_REG_SP, stack_adjust), ctx);
 	/* Set return value. */
-	if (reg == RV_REG_RA)
+	if (!is_tail_call)
 		emit(rv_addi(RV_REG_A0, RV_REG_A5, 0), ctx);
-	emit(rv_jalr(RV_REG_ZERO, reg, 0), ctx);
+	emit(rv_jalr(RV_REG_ZERO, is_tail_call ? RV_REG_T3 : RV_REG_RA,
+		     is_tail_call ? 4 : 0), /* skip TCC init */
+	     ctx);
 }
 
 /* return -1 or inverted cond */
@@ -751,9 +753,8 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
 	if (is_12b_check(off, insn))
 		return -1;
 	emit(rv_ld(RV_REG_T3, off, RV_REG_T2), ctx);
-	emit(rv_addi(RV_REG_T3, RV_REG_T3, 4), ctx);
 	emit(rv_addi(RV_REG_TCC, RV_REG_T1, 0), ctx);
-	__build_epilogue(RV_REG_T3, ctx);
+	__build_epilogue(true, ctx);
 	return 0;
 }
 
@@ -1504,7 +1505,7 @@ static void build_prologue(struct rv_jit_context *ctx)
 
 static void build_epilogue(struct rv_jit_context *ctx)
 {
-	__build_epilogue(RV_REG_RA, ctx);
+	__build_epilogue(false, ctx);
 }
 
 static int build_body(struct rv_jit_context *ctx, bool extra_pass)
-- 
2.20.1


