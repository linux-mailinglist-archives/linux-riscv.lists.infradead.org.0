Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C13F1A00ED
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 00:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I8Ag8RJmxCZk7aftpHG1/aOT8pIgsaZRRBMA74l4szs=; b=gHJMMEsD1FM1fM6dQJzpqpXJGI
	E4SkjXupRo7EzD2PYMkX6iGnGyNnuO2h707pVrN3nt/G1dGRWJRndxCeiAALOqJ6Q3YmRfqfwtMBf
	xoH8QSWHd6g45In6iACsK0iG3/kD5edqmvDsC9PWGhVjpbxI8+oJxKRy3WbQ++cJUuFqzspVgYRDU
	v5xK/ypRRn7U0NCniISq/8rkF/cl639EWTFWtgzUcTlNBjjyV/2sCk1vvNVY9O7PZVq4Nj21/AwHM
	UB1WyiH+WTnKncamnaGIztsTj9yJV7KV74BOv+xnPo+MpKqr+f7wk/6wzjqGMFat9rLv3svjWSisl
	hNMVQ10g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLa2n-0002z2-C7; Mon, 06 Apr 2020 22:16:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLa2j-0002xt-MH
 for linux-riscv@lists.infradead.org; Mon, 06 Apr 2020 22:16:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id g32so717146pgb.6
 for <linux-riscv@lists.infradead.org>; Mon, 06 Apr 2020 15:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=I8Ag8RJmxCZk7aftpHG1/aOT8pIgsaZRRBMA74l4szs=;
 b=M8J8NhOnd6VsGu2mROnqMiucZGBJHkCFpdPuRUXTHrWBoiRpSX/zdOAAme47f8IpmO
 LbxP9RDtmYBA4sFMzviQSaX6l/c2ApCo5J9ZISFFgE3ic036efVrwB2nD7wkS1aBm/gE
 pEWLs6KKpMP1482IJ5rRxQ3ubJH7OiJ35zFuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=I8Ag8RJmxCZk7aftpHG1/aOT8pIgsaZRRBMA74l4szs=;
 b=pEZEehhp18LFeN+3VQsTNru0rpFPAGURdvfcA5blKwY1QpSHYUcBIeIn4Npv6uimQg
 fwQOHhcLjjnWuM7lZD88PpyVILlBSpyMrw40UKXuhbNmXVKpmUH6GjRxTliXif7lxlBC
 1H4TY6FghX6QHPS2IVdN1ZV7jdMyGJkrWRm9f0P7VKIL16BE9HUWIbb2fzdq21/rJ35L
 l/eMAgEr1s2UHDtRVIdnXJi2bw8L0TTXtiy6kIOOIuJH7YW+6V6jK8Dbrc1Qn3YzEMLS
 8Yfv0tVMx5mOxdhC2jvvMOugynBi5OLp/D4bQlaNc5RmVpq67aG+IunM7ecKPFFoocnW
 FHLA==
X-Gm-Message-State: AGi0PuaHPJifzvYDGq4hhbJfytz7Qsvy9uXFQqPQLB60UTH6RN/jrPgK
 gKRReBI8WZPS2mA5fAVBEeOGlw==
X-Google-Smtp-Source: APiQypLGxqHjlTUmIKxBeT61WxtzGWT1x2WVVzwD4uK2qvte99BMAMa7HumrAI/VX29+HNxtKillxg==
X-Received: by 2002:a63:dd09:: with SMTP id t9mr1182732pgg.432.1586211388598; 
 Mon, 06 Apr 2020 15:16:28 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id s12sm11714998pgi.38.2020.04.06.15.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 15:16:28 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf] riscv,
 bpf: Fix offset range checking for auipc+jalr on RV64
Date: Mon,  6 Apr 2020 22:16:04 +0000
Message-Id: <20200406221604.18547-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_151633_748884_6AD19C26 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The existing code in emit_call on RV64 checks that the PC-relative offset
to the function fits in 32 bits before calling emit_jump_and_link to emit
an auipc+jalr pair. However, this check is incorrect because offsets in
the range [2^31 - 2^11, 2^31 - 1] cannot be encoded using auipc+jalr on
RV64 (see discussion [1]). The RISC-V spec has recently been updated
to reflect this fact [2, 3].

This patch fixes the problem by moving the check on the offset into
emit_jump_and_link and modifying it to the correct range of encodable
offsets, which is [-2^31 - 2^11, 2^31 - 2^11). This also enforces the
check on the offset to other uses of emit_jump_and_link (e.g., BPF_JA)
as well.

Currently, this bug is unlikely to be triggered, because the memory
region from which JITed images are allocated is close enough to kernel
text for the offsets to not become too large; and because the bounds on
BPF program size are small enough. This patch prevents this problem from
becoming an issue if either of these change.

[1]: https://groups.google.com/a/groups.riscv.org/forum/#!topic/isa-dev/bwWFhBnnZFQ
[2]: https://github.com/riscv/riscv-isa-manual/commit/b1e42e09ac55116dbf9de5e4fb326a5a90e4a993
[3]: https://github.com/riscv/riscv-isa-manual/commit/4c1b2066ebd2965a422e41eb262d0a208a7fea07

Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp64.c | 49 +++++++++++++++++++++------------
 1 file changed, 32 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp64.c b/arch/riscv/net/bpf_jit_comp64.c
index cc1985d8750a..d208a9fd6c52 100644
--- a/arch/riscv/net/bpf_jit_comp64.c
+++ b/arch/riscv/net/bpf_jit_comp64.c
@@ -110,6 +110,16 @@ static bool is_32b_int(s64 val)
 	return -(1L << 31) <= val && val < (1L << 31);
 }
 
+static bool in_auipc_jalr_range(s64 val)
+{
+	/*
+	 * auipc+jalr can reach any signed PC-relative offset in the range
+	 * [-2^31 - 2^11, 2^31 - 2^11).
+	 */
+	return (-(1L << 31) - (1L << 11)) <= val &&
+		val < ((1L << 31) - (1L << 11));
+}
+
 static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
 {
 	/* Note that the immediate from the add is sign-extended,
@@ -380,20 +390,24 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
 	*rd = RV_REG_T2;
 }
 
-static void emit_jump_and_link(u8 rd, s64 rvoff, bool force_jalr,
-			       struct rv_jit_context *ctx)
+static int emit_jump_and_link(u8 rd, s64 rvoff, bool force_jalr,
+			      struct rv_jit_context *ctx)
 {
 	s64 upper, lower;
 
 	if (rvoff && is_21b_int(rvoff) && !force_jalr) {
 		emit(rv_jal(rd, rvoff >> 1), ctx);
-		return;
+		return 0;
+	} else if (in_auipc_jalr_range(rvoff)) {
+		upper = (rvoff + (1 << 11)) >> 12;
+		lower = rvoff & 0xfff;
+		emit(rv_auipc(RV_REG_T1, upper), ctx);
+		emit(rv_jalr(rd, RV_REG_T1, lower), ctx);
+		return 0;
 	}
 
-	upper = (rvoff + (1 << 11)) >> 12;
-	lower = rvoff & 0xfff;
-	emit(rv_auipc(RV_REG_T1, upper), ctx);
-	emit(rv_jalr(rd, RV_REG_T1, lower), ctx);
+	pr_err("bpf-jit: target offset 0x%llx is out of range\n", rvoff);
+	return -ERANGE;
 }
 
 static bool is_signed_bpf_cond(u8 cond)
@@ -407,18 +421,16 @@ static int emit_call(bool fixed, u64 addr, struct rv_jit_context *ctx)
 	s64 off = 0;
 	u64 ip;
 	u8 rd;
+	int ret;
 
 	if (addr && ctx->insns) {
 		ip = (u64)(long)(ctx->insns + ctx->ninsns);
 		off = addr - ip;
-		if (!is_32b_int(off)) {
-			pr_err("bpf-jit: target call addr %pK is out of range\n",
-			       (void *)addr);
-			return -ERANGE;
-		}
 	}
 
-	emit_jump_and_link(RV_REG_RA, off, !fixed, ctx);
+	ret = emit_jump_and_link(RV_REG_RA, off, !fixed, ctx);
+	if (ret)
+		return ret;
 	rd = bpf_to_rv_reg(BPF_REG_0, ctx);
 	emit(rv_addi(rd, RV_REG_A0, 0), ctx);
 	return 0;
@@ -429,7 +441,7 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 {
 	bool is64 = BPF_CLASS(insn->code) == BPF_ALU64 ||
 		    BPF_CLASS(insn->code) == BPF_JMP;
-	int s, e, rvoff, i = insn - ctx->prog->insnsi;
+	int s, e, rvoff, ret, i = insn - ctx->prog->insnsi;
 	struct bpf_prog_aux *aux = ctx->prog->aux;
 	u8 rd = -1, rs = -1, code = insn->code;
 	s16 off = insn->off;
@@ -699,7 +711,9 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	/* JUMP off */
 	case BPF_JMP | BPF_JA:
 		rvoff = rv_offset(i, off, ctx);
-		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
+		ret = emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
+		if (ret)
+			return ret;
 		break;
 
 	/* IF (dst COND src) JUMP off */
@@ -801,7 +815,6 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_JMP | BPF_CALL:
 	{
 		bool fixed;
-		int ret;
 		u64 addr;
 
 		mark_call(ctx);
@@ -826,7 +839,9 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 			break;
 
 		rvoff = epilogue_offset(ctx);
-		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
+		ret = emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
+		if (ret)
+			return ret;
 		break;
 
 	/* dst = imm64 */
-- 
2.17.1


