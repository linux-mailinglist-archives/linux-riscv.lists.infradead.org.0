Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112691172D9
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 18:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+poYiv+8PtDbY0kklYLAZ46MuOoXr5bUTyoS0TPIaGc=; b=fIq12OR8rI1qEs
	55MmRBhOCg6udj4wuGjTBQyA04K4o04JpTc/h76kkm/3YSF9dUv0u+8V/ETmBlpucjDZg8nKOLNIz
	9lRyj+Y2YuxXDEodKHF686OnCw4ezuuSMZE0zPuRWfJ9DnV6j25dyAwmlCh1HoDjHO1MZ4FAIj3aP
	PqJTYdTCDF6TWzkUDd0qoZ/y7hg0AS9j1zA5Yf6zUlGxJReJZTYnoOxpsoXA8kOTwabP+Twhbschw
	XOeOsCjI1s3d2Bs9HBsvKyLd837rfX6V0pbfLu6x+sjExIZbgflPyuG2Sqn/3mMxuAkVk2GUy8p84
	TQHljnX0ZD+LSjFjxaqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMtK-0004YB-SP; Mon, 09 Dec 2019 17:32:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMtB-0004RF-UN
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 17:32:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id q8so7573268pfh.7
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 09:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+poYiv+8PtDbY0kklYLAZ46MuOoXr5bUTyoS0TPIaGc=;
 b=dHqonQVZ3ujeSFRJMFtSGpE2eEwMEk45rbKxlpuuJmALXtzb+jILOwh6xuPC+D5KyN
 NZzpDTQIapqhXwCycBNG1+J5rVbbXoKHAdduigDRySfVkNxyFuVqN1xb7TIc2AzOrdKl
 aiorNkA4ycTHePbaALmZ+GE6KiAQHoTwCgB2KE+BFWdAXn3BtFQJkRqzkVo/NoBFIO8S
 2FOnSdPLojp1MIarTbxJInL5vb3w/JWZIiBL9xmHuXjGACR1qRmK6oaSDPH2jnWns4XQ
 36h5HQ0H/5wL3qwfjyOgJvAMoswfbDmWAUTueNFLXcQ37OkygjwjgVIN13djZeKbo8r9
 chXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+poYiv+8PtDbY0kklYLAZ46MuOoXr5bUTyoS0TPIaGc=;
 b=AYlO6CelUCdIYRycNx2hIUm6YJ/B0oxEbONubVHk1S86CWx1v6brskpxIsYWSNUJ3t
 BsbYO4xHR977ccK2iIZ0IOOxOZZa9qYW/zDz5BGlliV/81F9aE9lxu8a6H15kBGrp48W
 xOJ3nNxa4NroccdT0+tIPDn1uzlSUXZ+jD6V/LnI7O4PfptibPoZkI6ymluga11kz9iD
 0AcOPSXKHL5AH533MzlJB4sCfJ+8jCwHMPH8N8bEgACCXO7QRI73VW82PWVhlfS+FVGB
 MvOBMxp0HZX51vB1sHz72BgxiNVdHlClOt6U5XRrXVsmWTA0xcnQo/+wZUhjng3CWEqg
 5nRQ==
X-Gm-Message-State: APjAAAVf+9zCYKdxJLVSnhMGz/1a40nf6VHP6dRdfLRSy7NO42jSr/VM
 GaABYNVxIyuiRlv7lmYJP18=
X-Google-Smtp-Source: APXvYqyGewL1ziYSiaxyGVrbvZGP4Pfkl6VVi14TKt9OHRmgsGBv1ENpkokaLMh/72xQ5D162f9Gqw==
X-Received: by 2002:aa7:9af1:: with SMTP id y17mr30579052pfp.21.1575912724538; 
 Mon, 09 Dec 2019 09:32:04 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id d23sm54943pfo.176.2019.12.09.09.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 09:32:04 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next 6/8] riscv, bpf: optimize calls
Date: Mon,  9 Dec 2019 18:31:34 +0100
Message-Id: <20191209173136.29615-7-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209173136.29615-1-bjorn.topel@gmail.com>
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_093206_016882_4491BD26 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Instead of using emit_imm() and emit_jalr() which can expand to six
instructions, start using jal or auipc+jalr.

Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 101 +++++++++++++++++++++-------------
 1 file changed, 64 insertions(+), 37 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index f7b1ae3a968f..260df0a87fd3 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -724,11 +724,12 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
 	*rd = RV_REG_T2;
 }
 
-static void emit_jump_and_link(u8 rd, int rvoff, struct rv_jit_context *ctx)
+static void emit_jump_and_link(u8 rd, s64 rvoff, bool force_jalr,
+			       struct rv_jit_context *ctx)
 {
 	s64 upper, lower;
 
-	if (is_21b_int(rvoff)) {
+	if (rvoff && is_21b_int(rvoff) && !force_jalr) {
 		emit(rv_jal(rd, rvoff >> 1), ctx);
 		return;
 	}
@@ -848,6 +849,28 @@ static bool is_signed_bpf_cond(u8 cond)
 		cond == BPF_JSGE || cond == BPF_JSLE;
 }
 
+static int emit_call(bool fixed, u64 addr, struct rv_jit_context *ctx)
+{
+	s64 off = 0;
+	u64 ip;
+	u8 rd;
+
+	if (addr && ctx->insns) {
+		ip = (u64)(long)(ctx->insns + ctx->ninsns);
+		off = addr - ip;
+		if (!is_32b_int(off)) {
+			pr_err("bpf-jit: target call addr %pK is out of range\n",
+			       (void *)addr);
+			return -ERANGE;
+		}
+	}
+
+	emit_jump_and_link(RV_REG_RA, off, !fixed, ctx);
+	rd = bpf_to_rv_reg(BPF_REG_0, ctx);
+	emit(rv_addi(rd, RV_REG_A0, 0), ctx);
+	return 0;
+}
+
 static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 		     bool extra_pass)
 {
@@ -1123,7 +1146,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	/* JUMP off */
 	case BPF_JMP | BPF_JA:
 		rvoff = rv_offset(i, off, ctx);
-		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
+		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
 		break;
 
 	/* IF (dst COND src) JUMP off */
@@ -1225,7 +1248,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_JMP | BPF_CALL:
 	{
 		bool fixed;
-		int i, ret;
+		int ret;
 		u64 addr;
 
 		mark_call(ctx);
@@ -1233,20 +1256,9 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 					    &fixed);
 		if (ret < 0)
 			return ret;
-		if (fixed) {
-			emit_imm(RV_REG_T1, addr, ctx);
-		} else {
-			i = ctx->ninsns;
-			emit_imm(RV_REG_T1, addr, ctx);
-			for (i = ctx->ninsns - i; i < 8; i++) {
-				/* nop */
-				emit(rv_addi(RV_REG_ZERO, RV_REG_ZERO, 0),
-				     ctx);
-			}
-		}
-		emit(rv_jalr(RV_REG_RA, RV_REG_T1, 0), ctx);
-		rd = bpf_to_rv_reg(BPF_REG_0, ctx);
-		emit(rv_addi(rd, RV_REG_A0, 0), ctx);
+		ret = emit_call(fixed, addr, ctx);
+		if (ret)
+			return ret;
 		break;
 	}
 	/* tail call */
@@ -1261,7 +1273,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 			break;
 
 		rvoff = epilogue_offset(ctx);
-		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
+		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
 		break;
 
 	/* dst = imm64 */
@@ -1524,7 +1536,7 @@ static void build_epilogue(struct rv_jit_context *ctx)
 	__build_epilogue(false, ctx);
 }
 
-static int build_body(struct rv_jit_context *ctx, bool extra_pass)
+static int build_body(struct rv_jit_context *ctx, bool extra_pass, int *offset)
 {
 	const struct bpf_prog *prog = ctx->prog;
 	int i;
@@ -1536,12 +1548,12 @@ static int build_body(struct rv_jit_context *ctx, bool extra_pass)
 		ret = emit_insn(insn, ctx, extra_pass);
 		if (ret > 0) {
 			i++;
-			if (ctx->insns == NULL)
-				ctx->offset[i] = ctx->ninsns;
+			if (offset)
+				offset[i] = ctx->ninsns;
 			continue;
 		}
-		if (ctx->insns == NULL)
-			ctx->offset[i] = ctx->ninsns;
+		if (offset)
+			offset[i] = ctx->ninsns;
 		if (ret)
 			return ret;
 	}
@@ -1569,8 +1581,8 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
 	struct bpf_prog *tmp, *orig_prog = prog;
 	int pass = 0, prev_ninsns = 0, i;
 	struct rv_jit_data *jit_data;
+	unsigned int image_size = 0;
 	struct rv_jit_context *ctx;
-	unsigned int image_size;
 
 	if (!prog->jit_requested)
 		return orig_prog;
@@ -1615,36 +1627,51 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
 	for (i = 0; i < 16; i++) {
 		pass++;
 		ctx->ninsns = 0;
-		if (build_body(ctx, extra_pass)) {
+		if (build_body(ctx, extra_pass, ctx->offset)) {
 			prog = orig_prog;
 			goto out_offset;
 		}
 		build_prologue(ctx);
 		ctx->epilogue_offset = ctx->ninsns;
 		build_epilogue(ctx);
-		if (ctx->ninsns == prev_ninsns)
-			break;
+
+		if (ctx->ninsns == prev_ninsns) {
+			if (jit_data->header)
+				break;
+
+			image_size = sizeof(u32) * ctx->ninsns;
+			jit_data->header =
+				bpf_jit_binary_alloc(image_size,
+						     &jit_data->image,
+						     sizeof(u32),
+						     bpf_fill_ill_insns);
+			if (!jit_data->header) {
+				prog = orig_prog;
+				goto out_offset;
+			}
+
+			ctx->insns = (u32 *)jit_data->image;
+			/* Now, when the image is allocated, the image
+			 * can potentially shrink more (auipc/jalr ->
+			 * jal).
+			 */
+		}
 		prev_ninsns = ctx->ninsns;
 	}
 
-	/* Allocate image, now that we know the size. */
-	image_size = sizeof(u32) * ctx->ninsns;
-	jit_data->header = bpf_jit_binary_alloc(image_size, &jit_data->image,
-						sizeof(u32),
-						bpf_fill_ill_insns);
-	if (!jit_data->header) {
+	if (i == 16) {
+		pr_err("bpf-jit: image did not converge in <%d passes!\n", i);
+		bpf_jit_binary_free(jit_data->header);
 		prog = orig_prog;
 		goto out_offset;
 	}
 
-	/* Second, real pass, that acutally emits the image. */
-	ctx->insns = (u32 *)jit_data->image;
 skip_init_ctx:
 	pass++;
 	ctx->ninsns = 0;
 
 	build_prologue(ctx);
-	if (build_body(ctx, extra_pass)) {
+	if (build_body(ctx, extra_pass, NULL)) {
 		bpf_jit_binary_free(jit_data->header);
 		prog = orig_prog;
 		goto out_offset;
-- 
2.20.1


