Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA74304CB
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 00:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YqAmLb9sseJMGLaZFysZeRzBFqIDAYtOuy/SgewsgNg=; b=KMQzTGrRQYbquq
	esIxXPRAZ72wRzqr/uAQt/LnOHO99ngMLlzyTrHwb0XHMnsnH0lCoq7kPmaKm/cxLlVmzQf0FxmUL
	kuOuPqu56UV2/Wsohlg0cLO+we3Dm9LMTMaq239EDKO4dG2HW77gDMRIjIZOD/7/pviyIGqNxtG4C
	g89xlVxFgHvzbxwhRJ9DnGaOBCApm/cjOU5njreuUeRvKGh/TrZx3hb/EjV6xXY2BUQmOCH54ofpq
	LFwvHGRBIAu0yYCNqCa/MWzF1d+BmDQIERTXtYFiRLKgXwE4fKPEnTr/DPZ44X1QzrIz1UBGrfm3/
	je5tQRNZLrjQ0hC3y2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTYL-0006KS-Co; Thu, 30 May 2019 22:29:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTYH-0006Jq-9i
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 22:29:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so4848593pfe.6
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 15:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XFIS/ATJWf8i+rx5RZgt8pFQOptsz9ozO1zSHeC1TwM=;
 b=jrtHBOj3ok1f/xowAmtE0Z0q/wl92RhCPkKm0zNzy3xyEh9KoBDXCQwtq+ffNwM/k0
 xoJfQDV6ndJ/UBTJuyqMXa+z0K6MM5T3+N/+z1g+DGaU46uWvI1oiRcDvOEOMVgVc4KM
 gg7XKnvGxbS9Gn8P9wYQeQnQ/t7kgrMlHgKyeFze4N91ZU5k8y2eLRCuvzHVSE5uqcqa
 o/i2fe+DLMrj7Z7iCtjRRi/q3L9YCgPNXe+necSyZ3DHkoo7NXRPgzpzit3YBFbzPmxD
 fB4WvBLELDFtrpCjuv08DBKQoJNaqjAYVwuH1DD0atxRgZlM1ze5Wq/3HKJ1blmcTpOx
 H40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XFIS/ATJWf8i+rx5RZgt8pFQOptsz9ozO1zSHeC1TwM=;
 b=MSmLziZLnLGa2Kzjp8ok/h8Id2jFpM4hUYevkIv/+7e3oao4mMOVzQjH3OI26anxWz
 5p3NHliSx6CcuZuuTIbEvoCCoQWjqOqKIlBx5dY8Gyt55FrOI7KqQQSY4Zdr3yR66zmO
 ISWQBj3zfsqYh5p50SFFDWiRgPjxWmNtHYpT++P3FHNr6smEn3tW37Vs+2wlwdLS3AA6
 RCMyqsl4OIngJAecJwJJHY17Ku9jsku2n5epLLPiRRBGDhp0JoIBOvVccvdmXd+aElo6
 c19+lMYiDtyGmcx8u9/oY+4zjFnXJYWSnI2wQStaPrlQkpkxRl9EYPDtUy+jE17bOxkl
 1wcA==
X-Gm-Message-State: APjAAAUFFh/G63YeGhj7GbiNehzLPvNgte2zPMWroEEPviyUmN5L1u0i
 TL6h0pPprd2qbRYKVIIUW2Eqa5qP
X-Google-Smtp-Source: APXvYqw2EYd2FcvKbUNMNOciWItMzYs8P3TF+IEhZUZ3ULjwC7KuQfnSofumg0Xp/zG+s8Wy4IAb2g==
X-Received: by 2002:a62:7a8e:: with SMTP id v136mr5940404pfc.208.1559255375149; 
 Thu, 30 May 2019 15:29:35 -0700 (PDT)
Received: from kaby.cs.washington.edu ([2607:4000:200:15:61cb:56f1:2c08:844e])
 by smtp.gmail.com with ESMTPSA id
 a5sm2310568pjo.29.2019.05.30.15.29.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 15:29:34 -0700 (PDT)
From: Luke Nelson <luke.r.nels@gmail.com>
To: 
Subject: [PATCH bpf v2] bpf,
 riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh
Date: Thu, 30 May 2019 15:29:22 -0700
Message-Id: <20190530222922.4269-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_152937_364984_2907D84D 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luke.r.nels[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In BPF, 32-bit ALU operations should zero-extend their results into
the 64-bit registers.

The current BPF JIT on RISC-V emits incorrect instructions that perform
sign extension only (e.g., addw, subw) on 32-bit add, sub, lsh, rsh,
arsh, and neg. This behavior diverges from the interpreter and JITs
for other architectures.

This patch fixes the bugs by performing zero extension on the destination
register of 32-bit ALU operations.

Fixes: 2353ecc6f91f ("bpf, riscv: add BPF JIT for RV64G")
Cc: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
The original patch is
https://lkml.org/lkml/2019/5/30/1370

This version is rebased against the bpf tree.
---
 arch/riscv/net/bpf_jit_comp.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index e5c8d675bd6e..426d5c33ea90 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -751,10 +751,14 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_ADD | BPF_X:
 	case BPF_ALU64 | BPF_ADD | BPF_X:
 		emit(is64 ? rv_add(rd, rd, rs) : rv_addw(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_SUB | BPF_X:
 	case BPF_ALU64 | BPF_SUB | BPF_X:
 		emit(is64 ? rv_sub(rd, rd, rs) : rv_subw(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_AND | BPF_X:
 	case BPF_ALU64 | BPF_AND | BPF_X:
@@ -795,14 +799,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_LSH | BPF_X:
 	case BPF_ALU64 | BPF_LSH | BPF_X:
 		emit(is64 ? rv_sll(rd, rd, rs) : rv_sllw(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_X:
 	case BPF_ALU64 | BPF_RSH | BPF_X:
 		emit(is64 ? rv_srl(rd, rd, rs) : rv_srlw(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_X:
 	case BPF_ALU64 | BPF_ARSH | BPF_X:
 		emit(is64 ? rv_sra(rd, rd, rs) : rv_sraw(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 
 	/* dst = -dst */
@@ -810,6 +820,8 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU64 | BPF_NEG:
 		emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
 		     rv_subw(rd, RV_REG_ZERO, rd), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 
 	/* dst = BSWAP##imm(dst) */
@@ -964,14 +976,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_LSH | BPF_K:
 	case BPF_ALU64 | BPF_LSH | BPF_K:
 		emit(is64 ? rv_slli(rd, rd, imm) : rv_slliw(rd, rd, imm), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_K:
 	case BPF_ALU64 | BPF_RSH | BPF_K:
 		emit(is64 ? rv_srli(rd, rd, imm) : rv_srliw(rd, rd, imm), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_K:
 	case BPF_ALU64 | BPF_ARSH | BPF_K:
 		emit(is64 ? rv_srai(rd, rd, imm) : rv_sraiw(rd, rd, imm), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 
 	/* JUMP off */
-- 
2.19.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
