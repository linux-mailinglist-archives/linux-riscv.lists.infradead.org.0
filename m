Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF9A5FF02
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jul 2019 02:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yq9ulV1F6dA55hENs/VMxsP9jSF8DTpkvm28K/dgKOA=; b=Ub0+UiOSwohK9j
	zwLo1mNxp9awbR/7+cMqreUsTq+VIfeQ+pA6rGKmRXOwqRPZ0jO7UWWrJjflT8CCUFvj7Gk16HF13
	pnxxNGhNqQZyqksewICqFZUMaLIP37jmubN2/FvGNaNaU1rnekkK+21+wdWADa4y4MMgn5250GEuc
	DdVGCqwAFusSPRgHDja7tD5zkmNUd9+yA9rBdGLBwfrkfKe8jT6hK4Eyh9PIxPd+sRT0H0+X7tloR
	BOOc4EcZjZnPWUwv26UxsiHKO1GSm8MxxjFAQRubjFtQk9MnGUZC5G1mkmH9N8DC5HjdEPpxAfl8o
	jXgzDfKisih7cl3Y41oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjBvm-00028b-Gw; Fri, 05 Jul 2019 00:18:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjBvi-00028A-F9
 for linux-riscv@lists.infradead.org; Fri, 05 Jul 2019 00:18:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so2312469pfn.2
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jul 2019 17:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ieoRpUxmUXtlmske89JbAl6yE+PFtkjAQtUvuulFg8E=;
 b=des6ixjMKnQvR6ExT7KYukXvC/tI+2vPZSaFyTdpAPTJNVkpvPQ7HqA6Y28Z/irgkv
 TjB+EIIQVi1T4+phwGES6MvjooIJjsMlulce7MAbKVl8G3itteydm9TqE4jeO6Qbznvj
 BbKpB5UbOUNjobTmk9CUo8cmy1nCSHy8KYsaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ieoRpUxmUXtlmske89JbAl6yE+PFtkjAQtUvuulFg8E=;
 b=Y0YRAzwfWMriRmCoZTq1CEg+aAO0zK8NGQi4Z54UZdFJG/J6/yBEzhKK0gYZ+VcmUH
 +3pXR+PVgU0LdqsMxfTlZOXRAUyxycJoQ+rMuErptt/y9glWeT2oYwW6JJnkeUGQ0wNc
 iGXf+SyEG6/PkQfB+E0mgaX/7emTgAsLQqchuKYYBCqlMQhbYPdykuwSRyW/VzpUja45
 lRAhtDTGPeFvaK6o17Jr7rjinp3YmGKVJPPYBYd3HXd4IEaHXS1Dj3ETzbsjjK57QwoS
 wM8aoKgdEXq2gRDOjO49z8LnmF4M1d9XrlfV8vWor8wRHOhXoFSJRsqVCdZ1Ff2CdBWg
 Z9rw==
X-Gm-Message-State: APjAAAX5/+gsJJVrY0h83cKw6xajqqy7n5NwJZqlp2+8FD+RwphQlyc8
 Gujulgaivear3DEMPPqxDVIKGQ==
X-Google-Smtp-Source: APXvYqzYqQYsnij9RBKsP2qGU6x1hHVuqBZ4VlRgngJa3AsE0s35Rkjntbz44duoTSCYeQYhJwoFPQ==
X-Received: by 2002:a17:90a:d3d4:: with SMTP id
 d20mr791957pjw.28.1562285897229; 
 Thu, 04 Jul 2019 17:18:17 -0700 (PDT)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:882:19c3:2cb3:4b10])
 by smtp.gmail.com with ESMTPSA id
 q1sm11494168pfn.178.2019.07.04.17.18.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 17:18:16 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH bpf-next] Enable zext optimization for more RV64G ALU ops
Date: Thu,  4 Jul 2019 17:18:02 -0700
Message-Id: <20190705001803.30094-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_171822_533213_3BE5B252 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>, Jiong Wang <jiong.wang@netronome.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Song Liu <liu.song.a23@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

commit 66d0d5a854a6 ("riscv: bpf: eliminate zero extension code-gen")
added the new zero-extension optimization for some BPF ALU operations.

Since then, bugs in the JIT that have been fixed in the bpf tree require
this optimization to be added to other operations: commit 1e692f09e091
("bpf, riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh"),
and commit fe121ee531d1 ("bpf, riscv: clear target register high 32-bits
for and/or/xor on ALU32")

Now that these have been merged to bpf-next, the zext optimization can
be enabled for the fixed operations.

Cc: Song Liu <liu.song.a23@gmail.com>
Cc: Jiong Wang <jiong.wang@netronome.com>
Cc: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 876cb9c705ce..5451ef3845f2 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -757,31 +757,31 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_ADD | BPF_X:
 	case BPF_ALU64 | BPF_ADD | BPF_X:
 		emit(is64 ? rv_add(rd, rd, rs) : rv_addw(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_SUB | BPF_X:
 	case BPF_ALU64 | BPF_SUB | BPF_X:
 		emit(is64 ? rv_sub(rd, rd, rs) : rv_subw(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_AND | BPF_X:
 	case BPF_ALU64 | BPF_AND | BPF_X:
 		emit(rv_and(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_OR | BPF_X:
 	case BPF_ALU64 | BPF_OR | BPF_X:
 		emit(rv_or(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_XOR | BPF_X:
 	case BPF_ALU64 | BPF_XOR | BPF_X:
 		emit(rv_xor(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_MUL | BPF_X:
@@ -811,13 +811,13 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_RSH | BPF_X:
 	case BPF_ALU64 | BPF_RSH | BPF_X:
 		emit(is64 ? rv_srl(rd, rd, rs) : rv_srlw(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_X:
 	case BPF_ALU64 | BPF_ARSH | BPF_X:
 		emit(is64 ? rv_sra(rd, rd, rs) : rv_sraw(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 
@@ -826,7 +826,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU64 | BPF_NEG:
 		emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
 		     rv_subw(rd, RV_REG_ZERO, rd), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
