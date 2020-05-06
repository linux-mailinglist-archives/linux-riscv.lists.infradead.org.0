Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EB01C64C3
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Id4q2WjCYOrW61i2K14Kt2NNedsMqfC6xR/4pooTMDs=; b=pAgCUoK8FSKAd4
	GGe9nUAlrFJpmi4Yc2GS5R9GZ9nwcn393Ynvf1QTYHM+Vk6AC9eLDuSCrkKcAtDrHwovl4DHm55b8
	zaTpJPmd3yS/DiSKz7e/x6Wa/Gnog66LNz5EGYhZoaBSyCNejFszdZsRR8Vtc1dNlXdysTn77uGDq
	PlGBlHqK8b4Qwn/sM7F5TomfKUJSxA9BRmohcsbIzNzDHzbk8dc1xwAIlKyCj71C+huzhkTDN7q7Y
	FxvZZ95XvJQVz3OKcEXmg7czIS5v6tv6x8jvG1xWkMdtZ3fS2IgJQwSX5GrUMVi0b1l+8RgJ9Z97o
	PaJ+03Jk4dBvO3ByQ/AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7XG-0007jE-Mi; Wed, 06 May 2020 00:03:38 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7XB-0007eF-AE
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:03:34 +0000
Received: by mail-pj1-x1043.google.com with SMTP id t40so6069pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Id4q2WjCYOrW61i2K14Kt2NNedsMqfC6xR/4pooTMDs=;
 b=WWgQHX+Y4p9hK1G/FEcHNTzvkaxWU0KQ8imb0c+RIKk5ZSkTMKVkHpqsV715tijoGT
 Z80hmH950M3h4QaqBw3xqEQI7fMdRBGHEKkN82NyEi9jO1C8Z9hczLrQpMZT6/QJ6stu
 UHfCqrxFw4PhETIA/3OdRRpCBlXcKXHPGGpyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Id4q2WjCYOrW61i2K14Kt2NNedsMqfC6xR/4pooTMDs=;
 b=QyJUuigsavyBisA9ap77mgp3Nf1JsOyjmFSlJaBanxA8WWgqQkOU2UzhX/EdK/PcWP
 vWl35UNFG+lPwmfR9Yml37G7Qr+luL0sS/lowQdF0/L1HFiuT/ci3NB7udbH/XHGkJvq
 tn708hNhW5Bao5g2pwbCFIEMxRM8vF7AwK8wa53Ev2+BDRF3yTGFLzHBfBQdXDVuXNEk
 ZahUWOELSIr9ApmnuGcttspaKjnVKBhdmL9lk5759JePQrAtQOFkbUdzWMZ2HBTic1ms
 cZo60NMBbWhfUiI5bhxfJtwfF18ejz/+GrtDH32UGGqJYbsuzbxP3iL3VMX71BKygBKw
 OK/g==
X-Gm-Message-State: AGi0Pua8+Yu7YEVE6GiNHBDJI0hrxM3+eciBIovQAali2rI9vIWcngm4
 3WIPirZsfMDpovwrRO63i+AiHA==
X-Google-Smtp-Source: APiQypIGsXA7WERwt6mP7MtumZ6T6wthtsmMazY24L57aiRfQ7umVKhw5qH3l242C3V99Jnj+CTRdw==
X-Received: by 2002:a17:90b:3751:: with SMTP id
 ne17mr5833508pjb.114.1588723411567; 
 Tue, 05 May 2020 17:03:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id u3sm133912pfn.217.2020.05.05.17.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 17:03:31 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 1/4] bpf,
 riscv: Enable missing verifier_zext optimizations on RV64
Date: Tue,  5 May 2020 17:03:17 -0700
Message-Id: <20200506000320.28965-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506000320.28965-1-luke.r.nels@gmail.com>
References: <20200506000320.28965-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170333_350777_AD5EFC7D 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

Commit 66d0d5a854a6 ("riscv: bpf: eliminate zero extension code-gen")
added support for the verifier zero-extension optimization on RV64 and
commit 46dd3d7d287b ("bpf, riscv: Enable zext optimization for more
RV64G ALU ops") enabled it for more instruction cases.

However, BPF_LSH BPF_X and BPF_{LSH,RSH,ARSH} BPF_K are still missing
the optimization.

This patch enables the zero-extension optimization for these remaining
cases.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp64.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp64.c b/arch/riscv/net/bpf_jit_comp64.c
index d208a9fd6c52..e2636902a74e 100644
--- a/arch/riscv/net/bpf_jit_comp64.c
+++ b/arch/riscv/net/bpf_jit_comp64.c
@@ -515,7 +515,7 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_LSH | BPF_X:
 	case BPF_ALU64 | BPF_LSH | BPF_X:
 		emit(is64 ? rv_sll(rd, rd, rs) : rv_sllw(rd, rd, rs), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_X:
@@ -692,19 +692,19 @@ int bpf_jit_emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU | BPF_LSH | BPF_K:
 	case BPF_ALU64 | BPF_LSH | BPF_K:
 		emit(is64 ? rv_slli(rd, rd, imm) : rv_slliw(rd, rd, imm), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_K:
 	case BPF_ALU64 | BPF_RSH | BPF_K:
 		emit(is64 ? rv_srli(rd, rd, imm) : rv_srliw(rd, rd, imm), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_K:
 	case BPF_ALU64 | BPF_ARSH | BPF_K:
 		emit(is64 ? rv_srai(rd, rd, imm) : rv_sraiw(rd, rd, imm), ctx);
-		if (!is64)
+		if (!is64 && !aux->verifier_zext)
 			emit_zext_32(rd, ctx);
 		break;
 
-- 
2.17.1


