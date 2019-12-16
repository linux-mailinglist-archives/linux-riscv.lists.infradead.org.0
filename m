Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC04C12009D
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDxKy5+xWcbxsQCLEwvK2/ipDbDNasXEESlHOrWAL4M=; b=doe1X527R3tbpR
	4CbyzuR0kL77Rkcc53EJUWw3rxKkhM3HYHixSgwPuIZtEXqnSgn/v2VSKvp64LJr+IqE8Wc0WR4IM
	r2lMq+7/2Wv21I4U8q0EI/HRxOBFV37Ibz32acgJA2Ftl/8MnB95TWsn4bSF3KH4OurP+1iLRT6L5
	2jv7RHGDHG/vMsdbB7uDGRlW7lfFF6tHITNa/XAjxobxfofXflt4jaSW6Hh7m/WigFKFx+66XcX26
	f7TB9t9Y6gHCh15YYpBOh1fNiA7AYMI3HXkL4Q5JkGdqP61NMWcZAm+SKyG8rTlLVbKaomQoNWUfk
	BSNmqIXzGiTWbHumu0Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmSP-0003l7-3Z; Mon, 16 Dec 2019 09:14:25 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmSB-0003Xc-Gi
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:14:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id x17so4207274pln.1
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fDxKy5+xWcbxsQCLEwvK2/ipDbDNasXEESlHOrWAL4M=;
 b=u8C9Hkmch6zgJB9Mga36IoCRDeJvXzqUoHzx8LOnbISGd4W3Gng24bK1CIkKkx+ayZ
 teMbIbjJweClsHJas6IsDCQOuwHJ5oGZc/CjgfjXKv7f4kZNWjxG1hkhMBykkrD8+E8t
 vbl/8Inmanaijpu1v4oV+wXyZDlxGXlfckw7ejvlDy6S/IC/qyRWtawsWXC0KJ42I3Uu
 xga7OBta8KWUrFq3SVbB5GkYfxv9vA07371d9//AcXY/dePrW+bSOea6dCQka64gXOlg
 DVWAKmK3TBMbh6dCDADKfW9CQUJjepEJSOy/CmO7FhXtJjq9qlh4r0J4+755LxHg3aIZ
 OGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fDxKy5+xWcbxsQCLEwvK2/ipDbDNasXEESlHOrWAL4M=;
 b=aOZvozucXnwlci2EDguO/0stR8vNX58WTrTJqvC/rC7NPplEs+DUAD/Ty1oj5LGBmn
 JeCh5dJ8JQiX6hiGdATR4ADL+26uqzCo0zCMpUR7BbeOhDhqJjC7fOpod7Fgk8FG8Rve
 YkOOUDTwvWX/Sv+1AkLCDR69EN+YyTJqDW0ozhXmhRDeGXUR6tCAyniCQEikJcAdPE1H
 rDKO22KppFfAvuqPNCYE3WF11TnqMUHKb7lxA6CMzRVZ3bpRHU1ywYUpcyzbrUuEjEyz
 O23HpE2e/dgYT9tUl5MHDlZpqx1xdygg0If8QT73t18fjdkFf0bFLd4jwBgj1MIvy492
 LsGw==
X-Gm-Message-State: APjAAAWXkIhnkDRDdZpR0xp+0tRXmvT/7cS+h4I4rmlOUbmTvW3LaNBQ
 KS1/VKvmgjhKNveruYYpab7TZfJyUB4=
X-Google-Smtp-Source: APXvYqy4RRBfPnji3ZSdrSQ8+HXCy69F7PXRhowUO8OlRP12zL9gdt20Ak0hfOVAkVh+ql/ziFcfOw==
X-Received: by 2002:a17:90a:bc05:: with SMTP id
 w5mr16386171pjr.64.1576487650999; 
 Mon, 16 Dec 2019 01:14:10 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:14:10 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 7/9] riscv, bpf: optimize calls
Date: Mon, 16 Dec 2019 10:13:41 +0100
Message-Id: <20191216091343.23260-8-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011411_582428_7FE91DA0 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Instead of using emit_imm() and emit_jalr() which can expand to six
instructions, start using jal or auipc+jalr.

Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 101 +++++++++++++++++++++-------------
 1 file changed, 64 insertions(+), 37 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 46cff093f526..8d7e3343a08c 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -811,11 +811,12 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
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
@@ -832,6 +833,28 @@ static bool is_signed_bpf_cond(u8 cond)
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
@@ -1107,7 +1130,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	/* JUMP off */
 	case BPF_JMP | BPF_JA:
 		rvoff = rv_offset(i, off, ctx);
-		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
+		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
 		break;
 
 	/* IF (dst COND src) JUMP off */
@@ -1209,7 +1232,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_JMP | BPF_CALL:
 	{
 		bool fixed;
-		int i, ret;
+		int ret;
 		u64 addr;
 
 		mark_call(ctx);
@@ -1217,20 +1240,9 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
@@ -1245,7 +1257,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 			break;
 
 		rvoff = epilogue_offset(ctx);
-		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
+		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
 		break;
 
 	/* dst = imm64 */
@@ -1508,7 +1520,7 @@ static void build_epilogue(struct rv_jit_context *ctx)
 	__build_epilogue(false, ctx);
 }
 
-static int build_body(struct rv_jit_context *ctx, bool extra_pass)
+static int build_body(struct rv_jit_context *ctx, bool extra_pass, int *offset)
 {
 	const struct bpf_prog *prog = ctx->prog;
 	int i;
@@ -1520,12 +1532,12 @@ static int build_body(struct rv_jit_context *ctx, bool extra_pass)
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
@@ -1553,8 +1565,8 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
 	struct bpf_prog *tmp, *orig_prog = prog;
 	int pass = 0, prev_ninsns = 0, i;
 	struct rv_jit_data *jit_data;
+	unsigned int image_size = 0;
 	struct rv_jit_context *ctx;
-	unsigned int image_size;
 
 	if (!prog->jit_requested)
 		return orig_prog;
@@ -1599,36 +1611,51 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
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


