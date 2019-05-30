Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8437830294
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 21:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PNLgC85HPDLRFRso9e3YTFASSawkQdKA7xPm+JPbyXg=; b=seqYSbTetm7Jyq
	9p9x+o9+s6ibwrHvG494+1SwVP2VOmql/iDLdN3EEBbtzM3eGK/WtCT33o4w51Qs2mYbDlwakQwmI
	gZ6knMHu0IRG8V3pfSskdFgd8ODDlUe/TkRV9GcfdIRqrdg2YMgh+MH52BuA8vzCoVLYl7jcxQDBu
	1EILqKw4vGjbMOSX+mnY3xgjv7VxKYKnejix7y8gHaDuwnnYG4rX4j79ohh708/yuzzfCHTtGB9An
	5/JA7Jhm5MetHmET02tunzmXrcMCtk8YOcn/qCcYkEID4D/xWxW98I4HvMS3maN4JHOuEZOATde/h
	Kt5RZgccED7ApUZc//tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQPT-0000eM-Ud; Thu, 30 May 2019 19:08:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQPQ-0000dg-3r
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 19:08:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id r22so4538551pfh.9
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 12:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Aw1+sSYubK2kKTOgJMDkRGNmYcY/5tKHyrYGQqz2ZTA=;
 b=nLT9x3U8ygNPGsLe8NupTDwL4qRw/wJoLtkJo4u0VKNY3v9PwehT9s7PvINtSL1Fr9
 Y0zpNr5QxSXK6ECOHsA6BHFHengti/s8GVotb1wtmw04jP+wbRDnog8CGl7+BPCtpCpy
 rPDlXC6uAHWTqmaaYuxT/YbkELVIxEAB8nSMn0i0PoHql24c3esGeMK8LW8cKlRi5LEv
 /k8WNoyzjlpFX7B7wXOU7nEpZ4wzmQ/+YOO8ANPoJRhcwVNHUWx6le+XNBVhB/jZ/rp8
 1u8Grduyq7q3syrhcSImKA8Sxr4GTQFKMtYx7loWUsOI0+O/QdZRDNQY45g6uzvoCnkB
 vUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Aw1+sSYubK2kKTOgJMDkRGNmYcY/5tKHyrYGQqz2ZTA=;
 b=MYNWikyyzXtNbxd2kIfFaRpRWslUZ1Fjj9uddMAL78bktYtpeHLHTV2A2PFO4XRxU8
 +fqHLnjdX1OjfXzrvO2gkP0bE38yyJjqOAzpzwwRESnWt/Wlyl47uEgyRoD00Bl5ddKB
 SHNvelX7FSTngt2bQy/LFP9dIB4fDiv9LpixdPze5iaZvW4EiMHYgiqQ7FoIpZK0qIMl
 eijD2aUFLQaWwjPpzVsq+jNLa+Wn5f37kAIArhcAqbltXfOKYswqvD8GPtcMpSfBPIv2
 o8IL2K2awJn8/fgl21kVm6zMxXzCW5aMU3atycfvx49EvAgUvp1/0AyilXLO8lym9n44
 L9gQ==
X-Gm-Message-State: APjAAAXunRbVia6wJ6LitcV+VDoxyNTlR8MJxgQ9rQBhc1NJtgLiAm2L
 xm1OIjyCvn5jajq0SwFBirI=
X-Google-Smtp-Source: APXvYqzSZhkQQcByjfuiX46oTYnBxfrMioBh7hahe5g9syL49KzcKXNe8X+WlpMhgB0TBdXGbfVYdQ==
X-Received: by 2002:a17:90a:2ec9:: with SMTP id
 h9mr5284774pjs.130.1559243295138; 
 Thu, 30 May 2019 12:08:15 -0700 (PDT)
Received: from kaby.cs.washington.edu ([2607:4000:200:15:61cb:56f1:2c08:844e])
 by smtp.gmail.com with ESMTPSA id
 a8sm3927617pfk.14.2019.05.30.12.08.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 12:08:09 -0700 (PDT)
From: Luke Nelson <luke.r.nels@gmail.com>
To: 
Subject: [PATCH 1/2] bpf, riscv: fix bugs in JIT for 32-bit ALU operations
Date: Thu, 30 May 2019 12:07:59 -0700
Message-Id: <20190530190800.7633-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_120816_184213_2297E4EC 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
the 64-bit registers.  The current BPF JIT on RISC-V emits incorrect
instructions that perform either sign extension only (e.g., addw/subw)
or no extension on 32-bit add, sub, and, or, xor, lsh, rsh, arsh,
and neg.  This behavior diverges from the interpreter and JITs for
other architectures.

This patch fixes the bugs by performing zero extension on the destination
register of 32-bit ALU operations.

Fixes: 2353ecc6f91f ("bpf, riscv: add BPF JIT for RV64G")
Cc: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 80b12aa5e10d..426d5c33ea90 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -751,22 +751,32 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
 		emit(rv_and(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_OR | BPF_X:
 	case BPF_ALU64 | BPF_OR | BPF_X:
 		emit(rv_or(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_XOR | BPF_X:
 	case BPF_ALU64 | BPF_XOR | BPF_X:
 		emit(rv_xor(rd, rd, rs), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 	case BPF_ALU | BPF_MUL | BPF_X:
 	case BPF_ALU64 | BPF_MUL | BPF_X:
@@ -789,14 +799,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
@@ -804,6 +820,8 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
 	case BPF_ALU64 | BPF_NEG:
 		emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
 		     rv_subw(rd, RV_REG_ZERO, rd), ctx);
+		if (!is64)
+			emit_zext_32(rd, ctx);
 		break;
 
 	/* dst = BSWAP##imm(dst) */
@@ -958,14 +976,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
