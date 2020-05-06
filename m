Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DF61C64C4
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu4wfIJHIQQHHdr2oULlj2uQlQex1349SVlpEUwQDaA=; b=kINVCE5qS08++f
	dVjCw4Lsktov16xe025pUdeodAqPMab9zf4+nLgvtEY2oSEBIwmDfAhJfwFKafLHd7cUeDw4FEc3h
	cWGpxMJqzLm6HtIEV7X5nOTNodrHe8gxHBFClDEbWikq7WfUeRfRH+00TeCU6CRyhPH8s38Vu+nXj
	3LMIYfvf2ogpZd0Jo49biulmgLixag8HDr6k7HpJGC+5g/9IMXnbQdqPkmnazOPQzr+TL1JO00lm8
	/ugkFXQOlTvd0kSMyK7IdFA3VuFlmQ2d5q4PdNHjVEx3f07MJLHA9QY0z/+5M4YF72DpBvNOzAuKA
	ac/5hnmGKa2ODf3LPt4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7XI-0007mE-Pm; Wed, 06 May 2020 00:03:40 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7XB-0007f5-Km
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:03:35 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e6so4335pjt.4
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tu4wfIJHIQQHHdr2oULlj2uQlQex1349SVlpEUwQDaA=;
 b=YYYhuVfwies2v08OAprLyffNxDwOzCKJiip46cwKDTes0snI5kI1fVXAt1v/DbyQbq
 qqyIuITgLNQFp7znZJSNTLBz31BDZ2NDzwY487Q4RBlX5Avypqf06V/om1/Cwl6WM9/f
 RqZY+PdRhztp2kb1+kPiL5NQXx0HtDwlCc7LQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tu4wfIJHIQQHHdr2oULlj2uQlQex1349SVlpEUwQDaA=;
 b=i5l8L1/KtgeNDKmHhpB5gJ7HWwOiahhsiJgCATiULTFs8CMQcifhpyz7dzAMqzbMXo
 pwba8m3XPqOVzw40Fn8q2IULrT6JaePjChE2hb6qtNtN79lTNo2WEvl32OEPUMxUV2c9
 1BuqoN6NmMIAgCOzhWGOfU4qIwtcKhLTAlk1s1Rer2dvf4m2QC4Gm6mfzxu/Ya6JhuYW
 opXRkdZ24VRsfE++QB7/p7QDQsCnNlP7FFvJRI+Rx2XdHjdSTjqFWYBNvVvje5f/ShYm
 b8BfnnWyjHmtVKcc96WwP5E4h8h6qybCqkWc+87BThCyiHsjrB6E3AAXErJjpjsaS/hx
 9biQ==
X-Gm-Message-State: AGi0PuYWWrIe0uKYA/8PXHWR2WnuY2dVtU2yyqo7D87Y8xQKbuGquMXZ
 z+Go7LQNqNiA9jzJ7DN5tzwKyg==
X-Google-Smtp-Source: APiQypIwBdTOVciQ6JxnzjjE9tj9R8b2rWOeA29u6dvkgY6D7Tjhk6Ie+E/Rg01PCw6tols8N/uxIA==
X-Received: by 2002:a17:902:b711:: with SMTP id
 d17mr5341360pls.333.1588723412695; 
 Tue, 05 May 2020 17:03:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id u3sm133912pfn.217.2020.05.05.17.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 17:03:32 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 2/4] bpf,
 riscv: Optimize FROM_LE using verifier_zext on RV64
Date: Tue,  5 May 2020 17:03:18 -0700
Message-Id: <20200506000320.28965-3-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506000320.28965-1-luke.r.nels@gmail.com>
References: <20200506000320.28965-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170333_679632_731385A4 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

This patch adds two optimizations for BPF_ALU BPF_END BPF_FROM_LE in
the RV64 BPF JIT.

First, it enables the verifier zero-extension optimization to avoid zero
extension when imm == 32. Second, it avoids generating code for imm ==
64, since it is equivalent to a no-op.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp64.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp64.c b/arch/riscv/net/bpf_jit_comp64.c
index e2636902a74e..c3ce9a911b66 100644
--- a/arch/riscv/net/bpf_jit_comp64.c
+++ b/arch/riscv/net/bpf_jit_comp64.c
@@ -542,13 +542,21 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 
 	/* dst = BSWAP##imm(dst) */
 	case BPF_ALU | BPF_END | BPF_FROM_LE:
-	{
-		int shift = 64 - imm;
-
-		emit(rv_slli(rd, rd, shift), ctx);
-		emit(rv_srli(rd, rd, shift), ctx);
+		switch (imm) {
+		case 16:
+			emit(rv_slli(rd, rd, 48), ctx);
+			emit(rv_srli(rd, rd, 48), ctx);
+			break;
+		case 32:
+			if (!aux->verifier_zext)
+				emit_zext_32(rd, ctx);
+			break;
+		case 64:
+			/* Do nothing */
+			break;
+		}
 		break;
-	}
+
 	case BPF_ALU | BPF_END | BPF_FROM_BE:
 		emit(rv_addi(RV_REG_T2, RV_REG_ZERO, 0), ctx);
 
-- 
2.17.1


