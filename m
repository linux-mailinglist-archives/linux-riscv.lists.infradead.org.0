Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4167F120097
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYazlit0M4yBFQMfwCbOmC5g6AIzkoA/91yiEDZt7b0=; b=Qo1XnQm/pew8O8
	3UgTtHFr5KP7ygifNSJAzYAqV7/yS3iNMxBgiKhjY0SN25HYILFlr9KuM5CBXaJgEm3wikhf7EKhM
	rxxIz/29HUEDIyKAnNhY/N9003gDRRdDGixLkXwlE8lPvVbP6LP9k+mtreBWF0gTQnxTxxs02/EZC
	lF1i+OJ33vz6rdyNdjdcUlIqA0PzkHm0gTU7s4Z4uIR49SpQrJJlZTWAhQN0kWgWw+OB+KMskmu6J
	ZK+Mb+Rd7EOe0IXLwozDxFpAPbyduGu7g+0lEFkf8tMDfHeC4rp3fasN29OkUqwVSYLASql6SyY/h
	bEd7etNUUlvJnF6zVT0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmS4-0003PI-VK; Mon, 16 Dec 2019 09:14:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmRv-0003Ip-Gh
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:14:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id s64so3314310pgb.9
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bYazlit0M4yBFQMfwCbOmC5g6AIzkoA/91yiEDZt7b0=;
 b=RwRGeVm1aeN2qkJLadfLujw+Gg4mmYcLdCef5IRe1XA0xhjwByucNBCckRiVYY6fLO
 4296nh+AjY2dK6wlGr86OM9pf7cguH6tlpQf7mVCmE9ZJhFyMvWHH1X5jR8DAxXPdrzK
 Pq2mcImd24XixdeDeiReoUuU4bH2acto7KmAoYFdMkqUMLAKgT2mJIi3syGlZU4BFC3P
 TSSxkz5RTMxufDP3glc76F5k57NP/Cxj5MleehiJXmq63EI0qxK7T7GEVKH6gXaZmUFM
 qbH4Z0myz4VWg3u95JgmzKBXo23KfOmUgkcIZRXNLngGdkYKAf8Vguh9We/lv8iqrVqW
 D2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bYazlit0M4yBFQMfwCbOmC5g6AIzkoA/91yiEDZt7b0=;
 b=m1zdXk/FoCkHEillGzui0a2bQ87yltkSRQODxW1MSiHPPcJqPXc+zsjEvz7kIfv3wa
 TQi0z6M2utp4oCL0SFY0k1z+0a1xECrDhLIG/5zyzOroqbHy7ALjTBas6wbH/gWIeCWX
 rNQ2BS1Wx9g8xd6JvZt6KNW52+F3ldpK5nbmNEhixdCUfqXr2iN0ZWnl+guNs7/FJgxx
 39O14KFmsuSxIINCAfP2c2VXEQXd0OoTUIUxv9mlK/HjRCznq7Y6uboYMcnon9XJkSR5
 EbM5btpOl4WHW7RP5bJ5FqRViZ1MDptL7aHsrVw8AnnzDLe2SvxhgxXqXClYcLQjlCmx
 3iSw==
X-Gm-Message-State: APjAAAUE2b5GsbWMtI7kddV2lE6iIFKjx+S0Iod2SzY0CE7Z9PXOscBK
 ATi+pExw1J0o9yjUJEY1loQ=
X-Google-Smtp-Source: APXvYqya/ZK/sigSlCk224VfrvfZoRMNqXimX/XMn+BCFUGM3rt7mHAstLVa1xEVZ3DJ9X5w/O85hA==
X-Received: by 2002:a63:5807:: with SMTP id m7mr15787129pgb.83.1576487634904; 
 Mon, 16 Dec 2019 01:13:54 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:13:54 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 1/9] riscv, bpf: fix broken BPF tail calls
Date: Mon, 16 Dec 2019 10:13:35 +0100
Message-Id: <20191216091343.23260-2-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011355_614794_DBD17461 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

The BPF JIT incorrectly clobbered the a0 register, and did not flag
usage of s5 register when BPF stack was being used.

Fixes: 2353ecc6f91f ("bpf, riscv: add BPF JIT for RV64G")
Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 5451ef3845f2..1606ebd49666 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -120,6 +120,11 @@ static bool seen_reg(int reg, struct rv_jit_context *ctx)
 	return false;
 }
 
+static void mark_fp(struct rv_jit_context *ctx)
+{
+	__set_bit(RV_CTX_F_SEEN_S5, &ctx->flags);
+}
+
 static void mark_call(struct rv_jit_context *ctx)
 {
 	__set_bit(RV_CTX_F_SEEN_CALL, &ctx->flags);
@@ -596,7 +601,8 @@ static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
 
 	emit(rv_addi(RV_REG_SP, RV_REG_SP, stack_adjust), ctx);
 	/* Set return value. */
-	emit(rv_addi(RV_REG_A0, RV_REG_A5, 0), ctx);
+	if (reg == RV_REG_RA)
+		emit(rv_addi(RV_REG_A0, RV_REG_A5, 0), ctx);
 	emit(rv_jalr(RV_REG_ZERO, reg, 0), ctx);
 }
 
@@ -1426,6 +1432,10 @@ static void build_prologue(struct rv_jit_context *ctx)
 {
 	int stack_adjust = 0, store_offset, bpf_stack_adjust;
 
+	bpf_stack_adjust = round_up(ctx->prog->aux->stack_depth, 16);
+	if (bpf_stack_adjust)
+		mark_fp(ctx);
+
 	if (seen_reg(RV_REG_RA, ctx))
 		stack_adjust += 8;
 	stack_adjust += 8; /* RV_REG_FP */
@@ -1443,7 +1453,6 @@ static void build_prologue(struct rv_jit_context *ctx)
 		stack_adjust += 8;
 
 	stack_adjust = round_up(stack_adjust, 16);
-	bpf_stack_adjust = round_up(ctx->prog->aux->stack_depth, 16);
 	stack_adjust += bpf_stack_adjust;
 
 	store_offset = stack_adjust - 8;
-- 
2.20.1


