Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA59C12009A
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJMg0Q8sOUthYx3cFqSRyerb3CBS/OU8cO8MoQc4pJM=; b=mtR/DyKGCxL5nM
	eQ9Of00Me+e9qr2Z01NPlwPS9yf4XDl/jUzuCUNRDS29DBV1NUfwktLS7z2bJ5u4bMqO5yjtf5tcc
	h/F+TFvWQUG+aGBtBywBocw3vnT0d8YaBXGMJIK6mkiXYgO6TbmnKqxVf9xmA3K6rhhl4NAQgQI+3
	giYjNbrxhjNZoBgM6NKagmeNx5VdOmn6PWfO3c027YkHJPI3Hemp9t7UV3QwmGj31Od/sPVCWxJli
	wbb+GYVduZupe9KTCU3sxNS87bxK3pHLGMe5NAzOOG7a/ZDPTTlTZ0eD7V3XUMZC5I67x3rs0D4uI
	6tjZ5WIRcSlhltvq5yEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmSE-0003Yt-1H; Mon, 16 Dec 2019 09:14:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmS4-0003QA-47
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:14:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id k20so4178451pll.13
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gJMg0Q8sOUthYx3cFqSRyerb3CBS/OU8cO8MoQc4pJM=;
 b=XPQz4evg0VbB6K1XDWp53Kbjm0ht98HVwNnW6mJQ1O+P9za2E0H0FBgIUI4lWGSRmm
 e47U7DRE05fU6Jm6GfUqHCUwTBjRBlkDzzGQkB/DDfc2zpuYuKZ51M9IYgRfKC/Vcb4E
 MbgHbf51mM7VdA+w/D8ywHwabtqnyU83pOt//xx4hy/5KAp87GRUUrFHEHxo6j6KtoQS
 VAaQOfZtMIdTLWUWXhSzLv/lZt6BI5JCeVpu/c6z2o0hdLLPZYw4+23KzAND93vM5VNH
 1SKhLVSBAuozBMnV9W4mMBhf+lfFjwkaPGr4bUiqm9eg1I2Rbt51W+L15oMr8AXf+/Ou
 a9IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gJMg0Q8sOUthYx3cFqSRyerb3CBS/OU8cO8MoQc4pJM=;
 b=SdKlmIL7mQrYa7f5kJU4AgwnJkRBW7rlx88PPZ86J0H2EnbMmboTkIimpcAj4ytX6D
 27wCexGJtgzxNGT6BUCs/Czk/LrgojlBXK7H9B+E5UvdO1/N8HYcWNr/0qM1Ekucvqiq
 kwFiVNuGb8NU4PFSgoSL/Pbxaf4KIZROl49PGniKnEmkTgi7wDfwi2snbngK95jlxBxs
 4PfiU5dO35oXyXUeg1FeJamCZPWfmGCWNJwTPv21Y+UpnGX8eByo1mB5H0W+GnWHE4Tr
 ErclIF/JKGR5yxKWCxSHzMoy2YLnrFI9+x819Xn8EOLngcY9B8O7O60UFZQ2hD0Bzj9K
 ndJQ==
X-Gm-Message-State: APjAAAU0spPORw4RfU7jfcOUkZy/e+cFDLoTdC+LmjmuP11aid9jQQOo
 Vlo8uIrLn5Lk4Ja2hppqF8o=
X-Google-Smtp-Source: APXvYqxc8umv14WzkAH/BRhw9GggK6mAxe2lkuZid3gzCbuWbXlbEx2Br/c0kwVybokpglnbQOzepQ==
X-Received: by 2002:a17:90b:85:: with SMTP id
 bb5mr16072485pjb.22.1576487643481; 
 Mon, 16 Dec 2019 01:14:03 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:14:03 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 4/9] riscv,
 bpf: add support for far jumps and exits
Date: Mon, 16 Dec 2019 10:13:38 +0100
Message-Id: <20191216091343.23260-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011404_232218_9C0E39CF 
X-CRM114-Status: GOOD (  11.24  )
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
 linux-riscv@lists.infradead.org, Luke Nelson <lukenels@cs.washington.edu>,
 bpf@vger.kernel.org, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This commit add support for far (offset > 21b) jumps and exits.

Reviewed-by: Luke Nelson <lukenels@cs.washington.edu>
Cc: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 37 ++++++++++++++++-------------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index c38c95df3440..2fc0f24ad30f 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -496,16 +496,6 @@ static int is_12b_check(int off, int insn)
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
@@ -820,6 +810,21 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
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
 static bool is_signed_bpf_cond(u8 cond)
 {
 	return cond == BPF_JSGT || cond == BPF_JSLT ||
@@ -1101,13 +1106,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
@@ -1245,9 +1244,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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


