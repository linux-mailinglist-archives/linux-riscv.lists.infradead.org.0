Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2151D1C64C5
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz68WQXWqBJ9Ra70jP1k6TPdklvjro5he/Cgs5XKfJQ=; b=W5+YX+yG12mNKq
	RI4hKDs6zloLm9ODQ/U3wuHQR0VaUIIS6BBfAe6x+OIRRmbTDempOhrhZaOIBB2os0KR0VbrTM196
	PuYct7LUwzcioIJCjs875m0QOvf37hV1OIaHCjQeN5XYLrdwPcyIrWBpiDq5qdbddye4LVICf4s5l
	mlrWmgLLrq0d75mP7dxIocqrUA6NofIbyfJBC/XnxKWT2VsPmhs2QC2WYY9/abibeQ/NL3UkZUxgZ
	rinlWelvQeC4bcoclqGPwA0xy2w9DMKZXqtcqLt/3eIO8kg8Uh3w5IZHTbSjMwNPPCZdlxqs1UgQe
	V6f1D1+hcAuDAgDJpeiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7XL-0007ps-TZ; Wed, 06 May 2020 00:03:43 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7XC-0007fl-CO
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:03:35 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 7so1764033pjo.0
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lz68WQXWqBJ9Ra70jP1k6TPdklvjro5he/Cgs5XKfJQ=;
 b=I6cMHC4+vQAr4egLJrgK3OkC44xCth/N7aOfzAvQ88GNlC28skwjZIiOcQKwNKba/m
 FVZ8YHUtKiebf9iWuSRXzYTau4g4wEt2ut7eFApIaIPTmqwz9OgkAAmccDhLYdh7GSgL
 udtSxu3Cbv9CJiLBN6cTo0VwR1ottraN5dnR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lz68WQXWqBJ9Ra70jP1k6TPdklvjro5he/Cgs5XKfJQ=;
 b=jr3wXThg4MSH/Tf6at6AF/hqfwoGbnKDBQIJymfPusqsdCqj1OU/ru5CNNlAMqNV5T
 FaqZAlPcV5i1szRryFmTUV1YKyf4npQweiDreEjM3VdRp/JKMwtY4np7kMZqbIa2SZOO
 p22Ra5YHmDV5Cj72y7zRxGS/3Vs+U6Gb0FrZ3ZJj0CyPyYdcHKFqL3inqPO60kKYU/lS
 d9ACKEtbgW+hy2ox0LUQmWDLDLuyQsloXFFLfsRXi5uprtzPWpIpqVTuGtwDp4hPbrCM
 yxkWEbmES5NDD9gcHVKU57+p+nDi7G9ZBDDOL2RWHuD4eaq+Y7MevHY/YJyFHo//jIms
 GPXA==
X-Gm-Message-State: AGi0PuaJThLl1MWe6f4idwx1lxLGEHewGR6hIuw+JYe/GVDbUZMQUGPq
 DNnbJqV64oaBG7JKDgPSiMmh9w==
X-Google-Smtp-Source: APiQypLac7W0AQ0zsoyEUeh+HLIH71Pw99XQTxx+zpjnRrIO/fJRi7MugYIYZ/bW+GZIBXfAD086Qw==
X-Received: by 2002:a17:902:854c:: with SMTP id
 d12mr3949168plo.131.1588723413811; 
 Tue, 05 May 2020 17:03:33 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id u3sm133912pfn.217.2020.05.05.17.03.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 17:03:33 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 3/4] bpf,
 riscv: Optimize BPF_JMP BPF_K when imm == 0 on RV64
Date: Tue,  5 May 2020 17:03:19 -0700
Message-Id: <20200506000320.28965-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506000320.28965-1-luke.r.nels@gmail.com>
References: <20200506000320.28965-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170334_420198_3F74C976 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch adds an optimization to BPF_JMP (32- and 64-bit) BPF_K for
when the BPF immediate is zero.

When the immediate is zero, the code can directly use the RISC-V zero
register instead of loading a zero immediate to a temporary register
first.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp64.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp64.c b/arch/riscv/net/bpf_jit_comp64.c
index c3ce9a911b66..b07cef952019 100644
--- a/arch/riscv/net/bpf_jit_comp64.c
+++ b/arch/riscv/net/bpf_jit_comp64.c
@@ -796,7 +796,13 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_JMP32 | BPF_JSET | BPF_K:
 		rvoff = rv_offset(i, off, ctx);
 		s = ctx->ninsns;
-		emit_imm(RV_REG_T1, imm, ctx);
+		if (imm) {
+			emit_imm(RV_REG_T1, imm, ctx);
+			rs = RV_REG_T1;
+		} else {
+			/* If imm is 0, simply use zero register. */
+			rs = RV_REG_ZERO;
+		}
 		if (!is64) {
 			if (is_signed_bpf_cond(BPF_OP(code)))
 				emit_sext_32_rd(&rd, ctx);
@@ -811,11 +817,10 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 		if (BPF_OP(code) == BPF_JSET) {
 			/* Adjust for and */
 			rvoff -= 4;
-			emit(rv_and(RV_REG_T1, rd, RV_REG_T1), ctx);
-			emit_branch(BPF_JNE, RV_REG_T1, RV_REG_ZERO, rvoff,
-				    ctx);
+			emit(rv_and(rs, rd, rs), ctx);
+			emit_branch(BPF_JNE, rs, RV_REG_ZERO, rvoff, ctx);
 		} else {
-			emit_branch(BPF_OP(code), rd, RV_REG_T1, rvoff, ctx);
+			emit_branch(BPF_OP(code), rd, rs, rvoff, ctx);
 		}
 		break;
 
-- 
2.17.1


