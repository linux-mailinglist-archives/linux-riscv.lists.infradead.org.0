Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6341172D1
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 18:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldUAi30p4Fm9YFcB6XPp82qK2Gx4LpczH2It45srXeo=; b=kZVxgEkIYfLI/T
	40fXu/X/2YzUV6SOwzxQbddRfC1xNVvDX0zNiTf/4tOtHkQph+LECo9pUwXlqgN3kfH1vn7HmpWHx
	UQ1aw4xA/Uoxz3MMOx9iLrKBMmrSvDPQC/4DkH+4vswCg0o1JrtyQc7XlbDJVWsRkG3mVaL4sx5/+
	8d7B4bi0Z5vlkw89K0CU4tVi7xc9ve8CPewxy+9T2WWzeIitOBUFmz4c261gJseR8s39PeqZn2e6L
	X4SaFbNI1PfULf0YIe52tPn1iF+5zEC+jsadVIcxZAdMkAAhwKV6xmi6cmbd0AosDR7ejQJPHooq+
	0AuoS2QnH01cGV3NR/gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMt9-0004MC-GE; Mon, 09 Dec 2019 17:32:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMt3-0004Hg-HP
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 17:31:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id b19so7590114pfo.2
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 09:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ldUAi30p4Fm9YFcB6XPp82qK2Gx4LpczH2It45srXeo=;
 b=I2wCeTTo+LKa1bhU4VfmVyMc9Cd30NbyeEDRCtVDaC5dxtYFpo1WOKYY95ZDtYBt77
 iLg4li5iVJPHBpqiaviSog5MP82WrRWIN/U2NuUoXiE3R3G05In5bf47/BcNlaYuSw5r
 TY7FoFnUt8LsxJwW7Golo15Zr7pxD2JDCB/F7YFcStshkWcBbf14zYnOq9CyNkKkyUYL
 GQtBNYFSfB+mL85SqgoiKbPnOcD0xRd6re5WemLJ97anofCxlu2xl7NAKKtUT1ksbCmL
 TiLKe8bVYr+vQoalNaG2xu/HojCwUu3u1UYd2zktXNHybg6SAW1BJNBwyv8xjNIasv9G
 RMIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ldUAi30p4Fm9YFcB6XPp82qK2Gx4LpczH2It45srXeo=;
 b=ZymhZw2mKAStsuO+2xy7LZnP9/JYlZb1xLDJH8zMKKTNgQRBnNduXcomhL2fKuwKN9
 tnZJu5oDjEHoEsnUu+vFEBVH5uZIV6dViUyjR9UB807KjwHMTQkyxRHF8dag0PaEgIeQ
 h4ErZ6gCv3adVQTYfAksA5tH6GN/xY3FzlDH1EHsI38OirHG+3OlTbsWTlocuNIwFPZb
 co3ZhqG5ZoddbZ4m1yjJY3WSP4zlkWSslxZ6rjEMeu5VqmAa8ZJh3drBrKbgj1Lsv+6H
 myStUNvBTYLuEbSTXF0qNEVcsGuuldPdBYhyXTgFzlROVNjWOgE1ov7IvRyX4EyP9pwr
 ub2w==
X-Gm-Message-State: APjAAAXJUepl+8lwtllDEox5mH5A8bxnku83EfuTdGyxzuCHTU5VWPsX
 fH+aqeMuIOPsWrry8MUMBBg=
X-Google-Smtp-Source: APXvYqwXA7UudhebZ3PjOLU7xMSYDqHPA3gpUTrpfjHhuIm1CEOoB/cMYEqKSVi2rCrmP7SQU/ckUQ==
X-Received: by 2002:a63:e14b:: with SMTP id h11mr19248346pgk.297.1575912716328; 
 Mon, 09 Dec 2019 09:31:56 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id d23sm54943pfo.176.2019.12.09.09.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 09:31:55 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next 3/8] riscv, bpf: add support for far jumps and exits
Date: Mon,  9 Dec 2019 18:31:31 +0100
Message-Id: <20191209173136.29615-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209173136.29615-1-bjorn.topel@gmail.com>
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_093157_593708_5A6118A6 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

This commit add support for far (offset > 21b) jumps and exits.

Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 37 ++++++++++++++++-------------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index e2f6724b64f7..e9cc9832ac2c 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -506,16 +506,6 @@ static int is_13b_check(int off, int insn)
 	return 0;
 }
 
-static int is_21b_check(int off, int insn)
-{
-	if (!is_21b_int(off)) {
-		pr_err("bpf-jit: insn=%d 21b < offset=%d not supported yet!\n",
-		       insn, (int)off);
-		return -1;
-	}
-	return 0;
-}
-
 static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
 {
 	/* Note that the immediate from the add is sign-extended,
@@ -733,6 +723,21 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
 	*rd = RV_REG_T2;
 }
 
+static void emit_jump_and_link(u8 rd, int rvoff, struct rv_jit_context *ctx)
+{
+	s64 upper, lower;
+
+	if (is_21b_int(rvoff)) {
+		emit(rv_jal(rd, rvoff >> 1), ctx);
+		return;
+	}
+
+	upper = (rvoff + (1 << 11)) >> 12;
+	lower = rvoff & 0xfff;
+	emit(rv_auipc(RV_REG_T1, upper), ctx);
+	emit(rv_jalr(rd, RV_REG_T1, lower), ctx);
+}
+
 /* return -1 or inverted cond */
 static int invert_bpf_cond(u8 cond)
 {
@@ -1117,13 +1122,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	/* JUMP off */
 	case BPF_JMP | BPF_JA:
 		rvoff = rv_offset(i, off, ctx);
-		if (!is_21b_int(rvoff)) {
-			pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
-			       i, rvoff);
-			return -1;
-		}
-
-		emit(rv_jal(RV_REG_ZERO, rvoff >> 1), ctx);
+		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
 		break;
 
 	/* IF (dst COND src) JUMP off */
@@ -1261,9 +1260,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 			break;
 
 		rvoff = epilogue_offset(ctx);
-		if (is_21b_check(rvoff, i))
-			return -1;
-		emit(rv_jal(RV_REG_ZERO, rvoff >> 1), ctx);
+		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
 		break;
 
 	/* dst = imm64 */
-- 
2.20.1


