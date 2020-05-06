Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19E91C64C6
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FX6e20EgkCKDRplcbN8VIX8Q54OU7fQsuv0YDgw22to=; b=dwvorTvRT6P0Qt
	0POu6b9deLZNbyIKAOup0uhSSlxZgBeMjPHWUyjAeltCiIsCknGeoYKM7NVnE6GcFrkegRJyUvDDF
	Qz/ZCn2sUeHRrNEEVJSZUcDKq1W10y8VflNzbQ4HnsHIOsvhQeVZbDF1E5MhxQb1lUXAoBq0aSC+4
	gpYctaaqZYtTB+pN6w6pkLt/UTnhoeT2ulsFN8C4R193hlkpcRkrGjue9fd+/cqsUYGCSNPlWKoA0
	gosGzX3VwJBMaF0h+p4ISgCPuywpVZvwoLHjX95xsqPs2f4NLqbQC0bWwusSAaHRXjzHoANwD9Eii
	HNMBIoJjVyE3tOYP91wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7XO-0007vG-WE; Wed, 06 May 2020 00:03:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7XE-0007go-F3
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:03:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id u22so1509080plq.12
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FX6e20EgkCKDRplcbN8VIX8Q54OU7fQsuv0YDgw22to=;
 b=DGRBrU5lGGOAfmrpZkIzPhRETbzDiQU82spA1HQTJz0PJGRxx2nnsDinlYJB08t5Gs
 N9qJ+YxSQDx6R8jEiQy/+pinOvUHPL0UQsiyoQHMaWua1KOwacCH4h3fA7qjmKdgQx60
 egKbXI77B4sIMlPNVqIq+HeFM8XxaWfSoTxPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FX6e20EgkCKDRplcbN8VIX8Q54OU7fQsuv0YDgw22to=;
 b=GuzxziGtLrshQ4hvzLrlqurXfUwlKFuSYfH4nzciqVvZSwJoO53bGjyTW2B5V8mnsE
 x8QdhT7bIQ2yrOFGui8SAHDlfrGIK8sI75OjBEJuTyfu5nJFChvG+Mh/gNakojqZVia2
 bIo4euPjgqvtrsrInjLo/UNYW0zhchp9GrBIUan5LJZU6NUnTPWakb1GSFmHtugNOEsZ
 6Q8PA8oqpf3dcD5kGwrpEJe2twvqcbqnwA3jgS7gK4S4WcQbgzAFBg5MXv1bThsT7sbE
 8XGyOXDYMLU2RSc+3Wsr5JIORiJJjeRY4DtuL1TsTLSKsTdnlYQt27X0DGMgEIDSjd6x
 HIgA==
X-Gm-Message-State: AGi0PuaNHUGUER9hsotZ3nMzRTb++Pp6vWrtXZeqkI82V6Sl45wdGdZB
 9Q4PErMfAXTDDbfGXk/+mJHMjw==
X-Google-Smtp-Source: APiQypLNx/JIySQJ9tf33R7EMx5nSMIBF/Nl3MLH+ZUPJbxEIkPuPEABvWRA4nvRflSAMZlcjS6SUw==
X-Received: by 2002:a17:90a:7065:: with SMTP id
 f92mr3527567pjk.160.1588723414979; 
 Tue, 05 May 2020 17:03:34 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id u3sm133912pfn.217.2020.05.05.17.03.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 17:03:34 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 4/4] bpf,
 riscv: Optimize BPF_JSET BPF_K using andi on RV64
Date: Tue,  5 May 2020 17:03:20 -0700
Message-Id: <20200506000320.28965-5-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506000320.28965-1-luke.r.nels@gmail.com>
References: <20200506000320.28965-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170336_518612_CF977D11 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch optimizes BPF_JSET BPF_K by using a RISC-V andi instruction
when the BPF immediate fits in 12 bits, instead of first loading the
immediate to a temporary register.

Examples of generated code with and without this optimization:

BPF_JMP_IMM(BPF_JSET, R1, 2, 1) without optimization:

  20: li    t1,2
  24: and   t1,a0,t1
  28: bnez  t1,0x30

BPF_JMP_IMM(BPF_JSET, R1, 2, 1) with optimization:

  20: andi  t1,a0,2
  24: bnez  t1,0x2c

BPF_JMP32_IMM(BPF_JSET, R1, 2, 1) without optimization:

  20: li    t1,2
  24: mv    t2,a0
  28: slli  t2,t2,0x20
  2c: srli  t2,t2,0x20
  30: slli  t1,t1,0x20
  34: srli  t1,t1,0x20
  38: and   t1,t2,t1
  3c: bnez  t1,0x44

BPF_JMP32_IMM(BPF_JSET, R1, 2, 1) with optimization:

  20: andi  t1,a0,2
  24: bnez  t1,0x2c

In these examples, because the upper 32 bits of the sign-extended
immediate are 0, BPF_JMP BPF_JSET and BPF_JMP32 BPF_JSET are equivalent
and therefore the JIT produces identical code for them.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp64.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp64.c b/arch/riscv/net/bpf_jit_comp64.c
index b07cef952019..6cfd164cbe88 100644
--- a/arch/riscv/net/bpf_jit_comp64.c
+++ b/arch/riscv/net/bpf_jit_comp64.c
@@ -792,8 +792,6 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_JMP32 | BPF_JSGE | BPF_K:
 	case BPF_JMP | BPF_JSLE | BPF_K:
 	case BPF_JMP32 | BPF_JSLE | BPF_K:
-	case BPF_JMP | BPF_JSET | BPF_K:
-	case BPF_JMP32 | BPF_JSET | BPF_K:
 		rvoff = rv_offset(i, off, ctx);
 		s = ctx->ninsns;
 		if (imm) {
@@ -813,15 +811,28 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 
 		/* Adjust for extra insns */
 		rvoff -= (e - s) << 2;
+		emit_branch(BPF_OP(code), rd, rs, rvoff, ctx);
+		break;
 
-		if (BPF_OP(code) == BPF_JSET) {
-			/* Adjust for and */
-			rvoff -= 4;
-			emit(rv_and(rs, rd, rs), ctx);
-			emit_branch(BPF_JNE, rs, RV_REG_ZERO, rvoff, ctx);
+	case BPF_JMP | BPF_JSET | BPF_K:
+	case BPF_JMP32 | BPF_JSET | BPF_K:
+		rvoff = rv_offset(i, off, ctx);
+		s = ctx->ninsns;
+		if (is_12b_int(imm)) {
+			emit(rv_andi(RV_REG_T1, rd, imm), ctx);
 		} else {
-			emit_branch(BPF_OP(code), rd, rs, rvoff, ctx);
+			emit_imm(RV_REG_T1, imm, ctx);
+			emit(rv_and(RV_REG_T1, rd, RV_REG_T1), ctx);
 		}
+		/* For jset32, we should clear the upper 32 bits of t1, but
+		 * sign-extension is sufficient here and saves one instruction,
+		 * as t1 is used only in comparison against zero.
+		 */
+		if (!is64 && imm < 0)
+			emit(rv_addiw(RV_REG_T1, RV_REG_T1, 0), ctx);
+		e = ctx->ninsns;
+		rvoff -= (e - s) << 2;
+		emit_branch(BPF_JNE, RV_REG_T1, RV_REG_ZERO, rvoff, ctx);
 		break;
 
 	/* function call */
-- 
2.17.1


