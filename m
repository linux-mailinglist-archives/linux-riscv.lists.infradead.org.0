Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5485A1172D5
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 18:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q72cQM+3SI70k7ctcpb9LKDM8a7LAen8E8Vv2d4hTLo=; b=WuzMQxfUzXKsGW
	E2RnMQx8Sog0LpaWZSZLrfGmT6xWG008zU7sLvR0u5CCuW18/omfEKoKmlh5EVTcMGVZp41g/r6UD
	w/iD6JAssfF8zIru3QwM/ZmqKe4emvE5MkrZdeTW3lSH5Kb+SEJvg7XEUVFWS2v/LK/xD29WmMg7w
	46+/IG8OUfGhvEa27sXORMXhnkL/zU1Gi6pAHLz4zZ915aEm6P5Rt/Ndbl2Oi3WfIxA1KSh1yCC3U
	US4uIORrePpWGVbA+N9FZb/dto107gESWOi76GFqb/hJf8nz3ZlJl06G/RIazTGO78aJjYmA9IyBQ
	7a6438C0k8fS91j7g8qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMtD-0004Om-KL; Mon, 09 Dec 2019 17:32:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMt5-0004Jf-Us
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 17:32:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id h14so7570464pfe.10
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 09:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q72cQM+3SI70k7ctcpb9LKDM8a7LAen8E8Vv2d4hTLo=;
 b=sRk23x/JpxVKbzZj54qVRUi2aIExQ0SRE7GqFLD/hMDxEVsFavaeMfS44RU6oiuXfb
 H0xi5LdEkduZ2iYCJYodCJF6Ing7Rv1IW8FMsyWVB2+sCdRzMHiUhKXmMg3xSMH6nHsX
 ayoDJZab2LVWXwXub2wg/AlQtXMlEvPjhk8JTyMAKviCRlRECgURo0yOcgepZ2IDOykr
 W3UsS2Gn8bgOe6SddLX7KSOBEYFK9IYdxMuaWv45tRXpfXQSmLLWywYTazar2mRObXn5
 1loXAYvQ7kzXfJ7qWWqSuEMjX6mcN+A83MnD5l6sHk/M+WOUax9WPdqqaHvnilPlsfcj
 gSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q72cQM+3SI70k7ctcpb9LKDM8a7LAen8E8Vv2d4hTLo=;
 b=bCi+vUSOaFDC5inZaJsVAuqQ1T/wTlgLtRK2Z9l15oOUmXKYjnJTLB4vnHD1FiWAiu
 91FlMt5n5AIjspDC8KxbvhS0euMxDsWRK8PjqlOXL9CdbotPKr/idMYznjojkBfoLmNy
 rMZlSl5Ku8UgA1waxAduJX/XP8ltL8W0kue0NtWL742gSbEwBswnqVGE3n5MVAOahdpv
 9Q5JV8stjDOsLa5sSQGzMjkzBc+DhfAJ7aPnOKbZeLPyDabydkvs0mSvegEvz5hV3WWj
 RA+aQEbGM3Zxs8lXW07EuVxMcI7rMRySy24IBeupNyI1vicuYyabplTW4WbVzZnd3XWd
 oOcQ==
X-Gm-Message-State: APjAAAVKJomFIw6bTxxLODBRgM9TlTBKbhJUigkxYFVnYXPfbonIyvq+
 DxD1iTTZCQl2w7YsojnhSMI=
X-Google-Smtp-Source: APXvYqxlMvkVuCdFoizkUk0kiP7e9NabguDeK3+5YeBoqX6bG5u2+aRmcgQwBwQtLnS2H8IY30slww==
X-Received: by 2002:a63:d501:: with SMTP id c1mr19227970pgg.356.1575912719116; 
 Mon, 09 Dec 2019 09:31:59 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id d23sm54943pfo.176.2019.12.09.09.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 09:31:58 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next 4/8] riscv, bpf: optimize BPF tail calls
Date: Mon,  9 Dec 2019 18:31:32 +0100
Message-Id: <20191209173136.29615-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209173136.29615-1-bjorn.topel@gmail.com>
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_093200_037154_32676E6E 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index e9cc9832ac2c..cbcb33613d1d 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -562,7 +562,7 @@ static int epilogue_offset(struct rv_jit_context *ctx)
 	return (to - from) << 2;
 }
 
-static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
+static void __build_epilogue(bool is_tail_call, struct rv_jit_context *ctx)
 {
 	int stack_adjust = ctx->stack_size, store_offset = stack_adjust - 8;
 
@@ -599,9 +599,11 @@ static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
 
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
 
 static void emit_zext_32(u8 reg, struct rv_jit_context *ctx)
@@ -664,9 +666,8 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
 	if (is_12b_check(off, insn))
 		return -1;
 	emit(rv_ld(RV_REG_T3, off, RV_REG_T2), ctx);
-	emit(rv_addi(RV_REG_T3, RV_REG_T3, 4), ctx);
 	emit(rv_addi(RV_REG_TCC, RV_REG_T1, 0), ctx);
-	__build_epilogue(RV_REG_T3, ctx);
+	__build_epilogue(true, ctx);
 	return 0;
 }
 
@@ -1520,7 +1521,7 @@ static void build_prologue(struct rv_jit_context *ctx)
 
 static void build_epilogue(struct rv_jit_context *ctx)
 {
-	__build_epilogue(RV_REG_RA, ctx);
+	__build_epilogue(false, ctx);
 }
 
 static int build_body(struct rv_jit_context *ctx, bool extra_pass)
-- 
2.20.1


